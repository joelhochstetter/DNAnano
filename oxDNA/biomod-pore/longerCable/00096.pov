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
	<23.984577, 35.041977, 35.115559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383427, 35.024490, 35.140312>,  <24.622736, 35.014000, 35.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383427, 35.024490, 35.140312>,  <23.984577, 35.041977, 35.115559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383427, 35.024490, 35.140312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059943, -0.954727, 0.291381,
		0.046347, -0.294253, -0.954603,
		0.997125, -0.043717, 0.061887,
		24.682564, 35.011375, 35.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274467, 34.311012, 34.839806>,  <23.984577, 35.041977, 35.115559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274467, 34.311012, 34.839806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539080, 34.474628, 35.091221>,  <24.697847, 34.572800, 35.242069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539080, 34.474628, 35.091221>,  <24.274467, 34.311012, 34.839806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539080, 34.474628, 35.091221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255599, -0.910943, 0.323809,
		0.705013, -0.053556, -0.707169,
		0.661533, 0.409042, 0.628538,
		24.737539, 34.597340, 35.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951405, 33.932911, 34.780155>,  <24.274467, 34.311012, 34.839806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951405, 33.932911, 34.780155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906246, 34.107578, 35.137161>,  <24.879152, 34.212379, 35.351364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906246, 34.107578, 35.137161>,  <24.951405, 33.932911, 34.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906246, 34.107578, 35.137161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268708, -0.851366, 0.450525,
		0.956583, 0.290687, -0.021222,
		-0.112894, 0.436666, 0.892512,
		24.872377, 34.238579, 35.404915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611612, 33.891140, 35.167583>,  <24.951405, 33.932911, 34.780155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611612, 33.891140, 35.167583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265358, 33.863968, 35.366001>,  <25.057606, 33.847664, 35.485054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265358, 33.863968, 35.366001>,  <25.611612, 33.891140, 35.167583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265358, 33.863968, 35.366001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316517, -0.841905, 0.437050,
		0.387936, 0.535333, 0.750283,
		-0.865635, -0.067930, 0.496047,
		25.005667, 33.843590, 35.514816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599157, 34.011070, 35.890377>,  <25.611612, 33.891140, 35.167583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599157, 34.011070, 35.890377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315596, 33.745220, 35.795944>,  <25.145458, 33.585712, 35.739285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315596, 33.745220, 35.795944>,  <25.599157, 34.011070, 35.890377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315596, 33.745220, 35.795944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552097, -0.731201, 0.400666,
		-0.438916, 0.153693, 0.885286,
		-0.708902, -0.664622, -0.236082,
		25.102924, 33.545834, 35.725121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351156, 33.696857, 36.518948>,  <25.599157, 34.011070, 35.890377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351156, 33.696857, 36.518948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307156, 33.462315, 36.197929>,  <25.280756, 33.321587, 36.005318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307156, 33.462315, 36.197929>,  <25.351156, 33.696857, 36.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307156, 33.462315, 36.197929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540881, -0.712736, 0.446604,
		-0.833875, -0.384956, 0.395552,
		-0.110001, -0.586359, -0.802548,
		25.274155, 33.286407, 35.957165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792908, 33.046852, 36.667599>,  <25.351156, 33.696857, 36.518948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792908, 33.046852, 36.667599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091045, 33.003063, 36.404545>,  <25.269928, 32.976791, 36.246712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091045, 33.003063, 36.404545>,  <24.792908, 33.046852, 36.667599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091045, 33.003063, 36.404545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374020, -0.747906, 0.548403,
		-0.551879, -0.654716, -0.516503,
		0.745344, -0.109470, -0.657630,
		25.314648, 32.970222, 36.207256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865740, 32.390396, 36.566654>,  <24.792908, 33.046852, 36.667599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865740, 32.390396, 36.566654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207603, 32.580894, 36.483952>,  <25.412722, 32.695194, 36.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207603, 32.580894, 36.483952>,  <24.865740, 32.390396, 36.566654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207603, 32.580894, 36.483952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490794, -0.611201, 0.620931,
		0.169342, -0.632161, -0.756106,
		0.854660, 0.476242, -0.206759,
		25.464001, 32.723766, 36.421925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247423, 31.848385, 36.200657>,  <24.865740, 32.390396, 36.566654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247423, 31.848385, 36.200657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512897, 32.110878, 36.344257>,  <25.672182, 32.268375, 36.430416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512897, 32.110878, 36.344257>,  <25.247423, 31.848385, 36.200657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512897, 32.110878, 36.344257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426684, -0.726327, 0.538878,
		0.614379, -0.204467, -0.762057,
		0.663686, 0.656233, 0.358997,
		25.712004, 32.307747, 36.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871298, 31.494001, 36.186062>,  <25.247423, 31.848385, 36.200657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871298, 31.494001, 36.186062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915411, 31.772854, 36.469425>,  <25.941879, 31.940165, 36.639442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915411, 31.772854, 36.469425>,  <25.871298, 31.494001, 36.186062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915411, 31.772854, 36.469425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526290, -0.645591, 0.553380,
		0.843122, 0.311800, -0.438092,
		0.110284, 0.697131, 0.708410,
		25.948496, 31.981993, 36.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544847, 31.568918, 36.451500>,  <25.871298, 31.494001, 36.186062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544847, 31.568918, 36.451500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321783, 31.683098, 36.763279>,  <26.187944, 31.751606, 36.950344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321783, 31.683098, 36.763279>,  <26.544847, 31.568918, 36.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321783, 31.683098, 36.763279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494562, -0.639886, 0.588179,
		0.666650, 0.713488, 0.215667,
		-0.557662, 0.285449, 0.779444,
		26.154484, 31.768732, 36.997112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375612, 31.506935, 36.524136>,  <26.544847, 31.568918, 36.451500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375612, 31.506935, 36.524136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091778, 31.326078, 36.307968>,  <26.921478, 31.217564, 36.178268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091778, 31.326078, 36.307968>,  <27.375612, 31.506935, 36.524136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091778, 31.326078, 36.307968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584026, -0.051696, 0.810087,
		-0.394213, 0.890446, -0.227381,
		-0.709584, -0.452144, -0.540422,
		26.878902, 31.190435, 36.145840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186554, 30.929405, 37.067692>,  <27.375612, 31.506935, 36.524136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186554, 30.929405, 37.067692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107529, 30.872850, 37.455708>,  <27.060114, 30.838917, 37.688519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107529, 30.872850, 37.455708>,  <27.186554, 30.929405, 37.067692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107529, 30.872850, 37.455708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414114, 0.908951, 0.048144,
		-0.888526, -0.392196, -0.238126,
		-0.197563, -0.141388, 0.970040,
		27.048260, 30.830435, 37.746719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481174, 30.779032, 37.263695>,  <27.186554, 30.929405, 37.067692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481174, 30.779032, 37.263695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693487, 30.996105, 37.524086>,  <26.820875, 31.126348, 37.680321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693487, 30.996105, 37.524086>,  <26.481174, 30.779032, 37.263695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693487, 30.996105, 37.524086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696525, 0.716916, -0.029731,
		-0.482828, -0.437638, 0.758518,
		0.530782, 0.542682, 0.650974,
		26.852722, 31.158909, 37.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022337, 30.907652, 37.900093>,  <26.481174, 30.779032, 37.263695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022337, 30.907652, 37.900093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323275, 31.156914, 37.814625>,  <26.503838, 31.306471, 37.763344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323275, 31.156914, 37.814625>,  <26.022337, 30.907652, 37.900093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323275, 31.156914, 37.814625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657800, 0.693015, -0.295008,
		-0.035758, 0.362501, 0.931297,
		0.752343, 0.623156, -0.213672,
		26.548977, 31.343861, 37.750523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696384, 31.533236, 37.832180>,  <26.022337, 30.907652, 37.900093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696384, 31.533236, 37.832180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055105, 31.646053, 37.695831>,  <26.270338, 31.713743, 37.614021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055105, 31.646053, 37.695831>,  <25.696384, 31.533236, 37.832180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055105, 31.646053, 37.695831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427457, 0.751085, -0.503142,
		0.114118, 0.596928, 0.794137,
		0.896804, 0.282042, -0.340874,
		26.324146, 31.730665, 37.593571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909075, 32.331745, 37.957062>,  <25.696384, 31.533236, 37.832180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909075, 32.331745, 37.957062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065466, 32.196308, 37.614719>,  <26.159300, 32.115047, 37.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065466, 32.196308, 37.614719>,  <25.909075, 32.331745, 37.957062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065466, 32.196308, 37.614719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359207, 0.800004, -0.480588,
		0.847412, 0.495329, 0.191159,
		0.390977, -0.338590, -0.855859,
		26.182758, 32.094730, 37.357964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222427, 32.872601, 37.585499>,  <25.909075, 32.331745, 37.957062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222427, 32.872601, 37.585499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165438, 32.611347, 37.288013>,  <26.131245, 32.454594, 37.109520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165438, 32.611347, 37.288013>,  <26.222427, 32.872601, 37.585499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165438, 32.611347, 37.288013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311842, 0.742735, -0.592536,
		0.939392, 0.147502, -0.309494,
		-0.142472, -0.653137, -0.743717,
		26.122696, 32.415405, 37.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538755, 33.194050, 36.985195>,  <26.222427, 32.872601, 37.585499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538755, 33.194050, 36.985195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279276, 32.939964, 36.817532>,  <26.123589, 32.787514, 36.716934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279276, 32.939964, 36.817532>,  <26.538755, 33.194050, 36.985195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279276, 32.939964, 36.817532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339231, 0.734369, -0.587899,
		0.681257, -0.239179, -0.691869,
		-0.648700, -0.635213, -0.419157,
		26.084667, 32.749401, 36.691784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601135, 33.383656, 36.241436>,  <26.538755, 33.194050, 36.985195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601135, 33.383656, 36.241436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257507, 33.185856, 36.294308>,  <26.051331, 33.067177, 36.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257507, 33.185856, 36.294308>,  <26.601135, 33.383656, 36.241436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257507, 33.185856, 36.294308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468158, 0.654668, -0.593497,
		0.206946, -0.571737, -0.793908,
		-0.859070, -0.494496, 0.132182,
		25.999786, 33.037506, 36.333961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193823, 33.609982, 36.691532>,  <26.601135, 33.383656, 36.241436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193823, 33.609982, 36.691532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315966, 33.468315, 37.045101>,  <27.389252, 33.383316, 37.257244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315966, 33.468315, 37.045101>,  <27.193823, 33.609982, 36.691532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315966, 33.468315, 37.045101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410281, -0.788745, -0.457767,
		0.859318, 0.502439, -0.095539,
		0.305355, -0.354170, 0.883924,
		27.407572, 33.362064, 37.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820433, 33.212952, 36.660839>,  <27.193823, 33.609982, 36.691532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820433, 33.212952, 36.660839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723803, 33.066700, 37.020386>,  <27.665825, 32.978951, 37.236115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723803, 33.066700, 37.020386>,  <27.820433, 33.212952, 36.660839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723803, 33.066700, 37.020386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194900, -0.925707, -0.324162,
		0.950608, 0.096879, 0.294889,
		-0.241576, -0.365625, 0.898866,
		27.651329, 32.957012, 37.290047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330875, 32.654976, 37.081718>,  <27.820433, 33.212952, 36.660839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330875, 32.654976, 37.081718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936796, 32.591293, 37.107132>,  <27.700348, 32.553085, 37.122379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936796, 32.591293, 37.107132>,  <28.330875, 32.654976, 37.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936796, 32.591293, 37.107132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131067, -0.938530, -0.319348,
		0.110472, -0.306294, 0.945505,
		-0.985199, -0.159203, 0.063536,
		27.641237, 32.543533, 37.126194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986547, 32.303951, 37.178898>,  <28.330875, 32.654976, 37.081718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986547, 32.303951, 37.178898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322508, 32.091141, 37.135975>,  <29.524084, 31.963453, 37.110222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322508, 32.091141, 37.135975>,  <28.986547, 32.303951, 37.178898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322508, 32.091141, 37.135975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514142, -0.716603, -0.471315,
		0.173860, 0.451027, -0.875413,
		0.839899, -0.532030, -0.107303,
		29.574478, 31.931532, 37.103783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141148, 32.042274, 36.444683>,  <28.986547, 32.303951, 37.178898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141148, 32.042274, 36.444683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222466, 31.785643, 36.740532>,  <29.271255, 31.631664, 36.918041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222466, 31.785643, 36.740532>,  <29.141148, 32.042274, 36.444683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222466, 31.785643, 36.740532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585613, -0.685066, -0.433291,
		0.784683, -0.345049, -0.514989,
		0.203295, -0.641580, 0.739626,
		29.283455, 31.593168, 36.962421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519957, 31.447363, 36.236301>,  <29.141148, 32.042274, 36.444683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519957, 31.447363, 36.236301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289921, 31.335409, 36.543793>,  <29.151899, 31.268238, 36.728287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289921, 31.335409, 36.543793>,  <29.519957, 31.447363, 36.236301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289921, 31.335409, 36.543793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497069, -0.626776, -0.600061,
		0.649766, -0.727198, 0.221330,
		-0.575088, -0.279883, 0.768726,
		29.117393, 31.251444, 36.774410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631031, 30.701744, 36.460438>,  <29.519957, 31.447363, 36.236301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631031, 30.701744, 36.460438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266474, 30.843502, 36.544121>,  <29.047739, 30.928556, 36.594330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266474, 30.843502, 36.544121>,  <29.631031, 30.701744, 36.460438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266474, 30.843502, 36.544121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410390, -0.744760, -0.526225,
		-0.030683, -0.565454, 0.824209,
		-0.911394, 0.354393, 0.209206,
		28.993055, 30.949820, 36.606884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347506, 30.481365, 36.258801>,  <29.631031, 30.701744, 36.460438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347506, 30.481365, 36.258801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482418, 30.841511, 36.368774>,  <30.563366, 31.057598, 36.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482418, 30.841511, 36.368774>,  <30.347506, 30.481365, 36.258801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482418, 30.841511, 36.368774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867357, -0.183670, -0.462556,
		-0.365970, 0.394478, -0.842883,
		0.337280, 0.900362, 0.274936,
		30.583603, 31.111620, 36.451256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574125, 30.914555, 35.685982>,  <30.347506, 30.481365, 36.258801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574125, 30.914555, 35.685982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783545, 31.017445, 36.010876>,  <30.909197, 31.079178, 36.205814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783545, 31.017445, 36.010876>,  <30.574125, 30.914555, 35.685982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783545, 31.017445, 36.010876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851680, -0.183923, -0.490728,
		0.023162, 0.948687, -0.315366,
		0.523550, 0.257225, 0.812238,
		30.940609, 31.094612, 36.254547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528769, 31.728472, 35.493950>,  <30.574125, 30.914555, 35.685982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528769, 31.728472, 35.493950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885052, 31.601625, 35.363674>,  <31.098822, 31.525518, 35.285507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885052, 31.601625, 35.363674>,  <30.528769, 31.728472, 35.493950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885052, 31.601625, 35.363674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341781, 0.005196, -0.939765,
		0.299707, 0.948372, -0.103756,
		0.890708, -0.317116, -0.325693,
		31.152264, 31.506491, 35.265965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662880, 32.254681, 34.990810>,  <30.528769, 31.728472, 35.493950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662880, 32.254681, 34.990810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842802, 31.905153, 34.916920>,  <30.950756, 31.695438, 34.872585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842802, 31.905153, 34.916920>,  <30.662880, 32.254681, 34.990810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842802, 31.905153, 34.916920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513494, -0.083792, -0.853992,
		0.730753, 0.478984, -0.486388,
		0.449805, -0.873815, -0.184724,
		30.977743, 31.643009, 34.861504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000700, 32.200966, 34.298965>,  <30.662880, 32.254681, 34.990810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000700, 32.200966, 34.298965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857689, 31.861895, 34.455738>,  <30.771883, 31.658451, 34.549801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857689, 31.861895, 34.455738>,  <31.000700, 32.200966, 34.298965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857689, 31.861895, 34.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584756, -0.124029, -0.801671,
		0.728171, -0.515807, -0.451342,
		-0.357528, -0.847679, 0.391936,
		30.750431, 31.607592, 34.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039867, 31.624237, 33.764660>,  <31.000700, 32.200966, 34.298965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039867, 31.624237, 33.764660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740894, 31.516514, 34.007584>,  <30.561510, 31.451880, 34.153336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740894, 31.516514, 34.007584>,  <31.039867, 31.624237, 33.764660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740894, 31.516514, 34.007584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612939, -0.073026, -0.786749,
		0.256226, -0.960282, -0.110487,
		-0.747432, -0.269307, 0.607305,
		30.516665, 31.435722, 34.189774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673595, 31.011381, 33.413647>,  <31.039867, 31.624237, 33.764660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673595, 31.011381, 33.413647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417879, 31.207798, 33.650352>,  <30.264450, 31.325647, 33.792377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417879, 31.207798, 33.650352>,  <30.673595, 31.011381, 33.413647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417879, 31.207798, 33.650352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672193, 0.016882, -0.740183,
		-0.373451, -0.870973, 0.319282,
		-0.639289, 0.491041, 0.591767,
		30.226091, 31.355110, 33.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933525, 30.873959, 33.179600>,  <30.673595, 31.011381, 33.413647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933525, 30.873959, 33.179600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913914, 31.202118, 33.407475>,  <29.902147, 31.399014, 33.544197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913914, 31.202118, 33.407475>,  <29.933525, 30.873959, 33.179600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913914, 31.202118, 33.407475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697390, 0.380195, -0.607535,
		-0.715013, -0.427078, 0.553499,
		-0.049028, 0.820400, 0.569684,
		29.899206, 31.448238, 33.578381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168089, 30.841990, 33.288242>,  <29.933525, 30.873959, 33.179600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168089, 30.841990, 33.288242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344849, 31.198645, 33.327644>,  <29.450905, 31.412638, 33.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344849, 31.198645, 33.327644>,  <29.168089, 30.841990, 33.288242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344849, 31.198645, 33.327644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785102, 0.437529, -0.438388,
		-0.433981, 0.116391, 0.893372,
		0.441900, 0.891640, 0.098500,
		29.477419, 31.466137, 33.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661791, 31.293304, 33.603020>,  <29.168089, 30.841990, 33.288242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661791, 31.293304, 33.603020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902555, 31.477873, 33.342316>,  <29.047014, 31.588614, 33.185894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902555, 31.477873, 33.342316>,  <28.661791, 31.293304, 33.603020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902555, 31.477873, 33.342316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789153, 0.218772, -0.573913,
		-0.122229, 0.859784, 0.495814,
		0.601912, 0.461422, -0.651760,
		29.083130, 31.616299, 33.146786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012495, 31.945915, 33.917118>,  <28.661791, 31.293304, 33.603020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012495, 31.945915, 33.917118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169796, 32.240585, 33.697060>,  <29.264175, 32.417389, 33.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169796, 32.240585, 33.697060>,  <29.012495, 31.945915, 33.917118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169796, 32.240585, 33.697060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857206, -0.510144, -0.070368,
		-0.332494, -0.443919, -0.832096,
		0.393251, 0.736674, -0.550150,
		29.287771, 32.461586, 33.532013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550724, 32.261635, 34.236626>,  <29.012495, 31.945915, 33.917118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550724, 32.261635, 34.236626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556574, 31.891426, 34.085258>,  <29.560083, 31.669302, 33.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556574, 31.891426, 34.085258>,  <29.550724, 32.261635, 34.236626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556574, 31.891426, 34.085258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759867, -0.235706, 0.605843,
		-0.649915, -0.296410, 0.699823,
		0.014626, -0.925518, -0.378421,
		29.560961, 31.613771, 33.971733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365108, 31.660191, 34.734554>,  <29.550724, 32.261635, 34.236626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365108, 31.660191, 34.734554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635956, 31.572153, 34.453678>,  <29.798464, 31.519331, 34.285152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635956, 31.572153, 34.453678>,  <29.365108, 31.660191, 34.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635956, 31.572153, 34.453678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642915, -0.287300, 0.710013,
		-0.358009, -0.932211, -0.053033,
		0.677118, -0.220095, -0.702189,
		29.839090, 31.506124, 34.243023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662756, 31.004580, 35.017693>,  <29.365108, 31.660191, 34.734554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662756, 31.004580, 35.017693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921041, 31.154478, 34.751575>,  <30.076014, 31.244417, 34.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921041, 31.154478, 34.751575>,  <29.662756, 31.004580, 35.017693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921041, 31.154478, 34.751575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758325, -0.212675, 0.616208,
		0.089430, -0.902405, -0.421507,
		0.645713, 0.374747, -0.665296,
		30.114756, 31.266903, 34.551987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205021, 30.512175, 35.003147>,  <29.662756, 31.004580, 35.017693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205021, 30.512175, 35.003147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354149, 30.867163, 34.894775>,  <30.443626, 31.080156, 34.829754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354149, 30.867163, 34.894775>,  <30.205021, 30.512175, 35.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354149, 30.867163, 34.894775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796826, -0.156591, 0.583565,
		0.475471, -0.433447, -0.765540,
		0.372821, 0.887470, -0.270927,
		30.465996, 31.133404, 34.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886793, 30.349674, 34.928505>,  <30.205021, 30.512175, 35.003147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886793, 30.349674, 34.928505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876360, 30.737173, 35.027176>,  <30.870100, 30.969673, 35.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876360, 30.737173, 35.027176>,  <30.886793, 30.349674, 34.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876360, 30.737173, 35.027176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787889, -0.131953, 0.601514,
		0.615265, 0.210045, -0.759823,
		-0.026084, 0.968746, 0.246678,
		30.868534, 31.027798, 35.101181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453320, 30.544378, 34.703770>,  <30.886793, 30.349674, 34.928505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453320, 30.544378, 34.703770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349529, 30.782738, 35.007763>,  <31.287254, 30.925753, 35.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349529, 30.782738, 35.007763>,  <31.453320, 30.544378, 34.703770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349529, 30.782738, 35.007763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927276, -0.066178, 0.368483,
		0.269872, 0.800330, -0.535389,
		-0.259477, 0.595896, 0.759986,
		31.271687, 30.961506, 35.235760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001781, 30.967337, 34.664650>,  <31.453320, 30.544378, 34.703770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001781, 30.967337, 34.664650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840322, 30.986273, 35.030125>,  <31.743446, 30.997635, 35.249409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840322, 30.986273, 35.030125>,  <32.001781, 30.967337, 34.664650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840322, 30.986273, 35.030125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890121, -0.210592, 0.404148,
		0.211548, 0.976427, 0.042866,
		-0.403648, 0.047341, 0.913689,
		31.719229, 31.000475, 35.304230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364475, 31.305044, 34.180958>,  <32.001781, 30.967337, 34.664650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364475, 31.305044, 34.180958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623299, 31.115646, 33.941921>,  <32.778595, 31.002007, 33.798500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623299, 31.115646, 33.941921>,  <32.364475, 31.305044, 34.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623299, 31.115646, 33.941921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762189, 0.381744, 0.522819,
		-0.019427, -0.793771, 0.607907,
		0.647063, -0.473497, -0.597587,
		32.817417, 30.973597, 33.762646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918362, 31.111214, 34.648815>,  <32.364475, 31.305044, 34.180958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918362, 31.111214, 34.648815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071312, 31.107637, 34.279228>,  <33.163082, 31.105492, 34.057476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071312, 31.107637, 34.279228>,  <32.918362, 31.111214, 34.648815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071312, 31.107637, 34.279228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875103, 0.324508, 0.359012,
		0.296625, -0.945841, 0.131907,
		0.382373, -0.008940, -0.923965,
		33.186024, 31.104956, 34.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572674, 31.245678, 34.791531>,  <32.918362, 31.111214, 34.648815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572674, 31.245678, 34.791531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544785, 31.302383, 34.396553>,  <33.528049, 31.336407, 34.159569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544785, 31.302383, 34.396553>,  <33.572674, 31.245678, 34.791531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544785, 31.302383, 34.396553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901940, 0.431859, -0.001689,
		0.426196, -0.890731, -0.157972,
		-0.069726, 0.141762, -0.987442,
		33.523869, 31.344912, 34.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008907, 30.843765, 34.287792>,  <33.572674, 31.245678, 34.791531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008907, 30.843765, 34.287792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938999, 31.212523, 34.149479>,  <33.897053, 31.433777, 34.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938999, 31.212523, 34.149479>,  <34.008907, 30.843765, 34.287792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938999, 31.212523, 34.149479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982164, 0.138504, -0.127163,
		-0.069339, -0.361837, -0.929659,
		-0.174774, 0.921895, -0.345779,
		33.886566, 31.489092, 34.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229767, 31.094818, 33.655384>,  <34.008907, 30.843765, 34.287792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229767, 31.094818, 33.655384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508724, 31.241356, 33.901775>,  <34.676098, 31.329279, 34.049610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508724, 31.241356, 33.901775>,  <34.229767, 31.094818, 33.655384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508724, 31.241356, 33.901775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055145, -0.884364, 0.463530,
		0.714560, -0.289296, -0.636955,
		0.697397, 0.366345, 0.615977,
		34.717945, 31.351259, 34.086567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857769, 30.661627, 33.655884>,  <34.229767, 31.094818, 33.655384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857769, 30.661627, 33.655884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828556, 30.850061, 34.007507>,  <34.811028, 30.963123, 34.218483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828556, 30.850061, 34.007507>,  <34.857769, 30.661627, 33.655884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828556, 30.850061, 34.007507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153254, -0.865642, 0.476631,
		0.985485, 0.169528, -0.008978,
		-0.073030, 0.471089, 0.879058,
		34.806648, 30.991388, 34.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485477, 30.500332, 34.028454>,  <34.857769, 30.661627, 33.655884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485477, 30.500332, 34.028454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210594, 30.612776, 34.296402>,  <35.045666, 30.680243, 34.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210594, 30.612776, 34.296402>,  <35.485477, 30.500332, 34.028454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210594, 30.612776, 34.296402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177576, -0.829122, 0.530116,
		0.704424, 0.483252, 0.519860,
		-0.687207, 0.281112, 0.669867,
		35.004433, 30.697109, 34.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811535, 30.302063, 34.676365>,  <35.485477, 30.500332, 34.028454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811535, 30.302063, 34.676365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424572, 30.355558, 34.762371>,  <35.192394, 30.387655, 34.813976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424572, 30.355558, 34.762371>,  <35.811535, 30.302063, 34.676365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424572, 30.355558, 34.762371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032223, -0.777221, 0.628403,
		0.251156, 0.614852, 0.747582,
		-0.967410, 0.133738, 0.215016,
		35.134350, 30.395679, 34.826878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642914, 30.207190, 35.340775>,  <35.811535, 30.302063, 34.676365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642914, 30.207190, 35.340775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308895, 30.110186, 35.143234>,  <35.108486, 30.051983, 35.024708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308895, 30.110186, 35.143234>,  <35.642914, 30.207190, 35.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308895, 30.110186, 35.143234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028014, -0.877709, 0.478375,
		-0.549472, 0.413298, 0.726130,
		-0.835042, -0.242512, -0.493855,
		35.058384, 30.037432, 34.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066193, 29.985203, 35.812656>,  <35.642914, 30.207190, 35.340775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066193, 29.985203, 35.812656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037197, 29.843367, 35.439774>,  <35.019798, 29.758265, 35.216045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037197, 29.843367, 35.439774>,  <35.066193, 29.985203, 35.812656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037197, 29.843367, 35.439774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272668, -0.906105, 0.323458,
		-0.959373, -0.230736, 0.162369,
		-0.072490, -0.354590, -0.932208,
		35.015450, 29.736990, 35.160110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902882, 29.249277, 35.624523>,  <35.066193, 29.985203, 35.812656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902882, 29.249277, 35.624523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107903, 29.308472, 35.286201>,  <35.230915, 29.343988, 35.083206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107903, 29.308472, 35.286201>,  <34.902882, 29.249277, 35.624523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107903, 29.308472, 35.286201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369404, -0.927223, 0.061624,
		-0.775133, -0.344030, -0.529918,
		0.512553, 0.147987, -0.845807,
		35.261669, 29.352867, 35.032459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565262, 28.686941, 35.291798>,  <34.902882, 29.249277, 35.624523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565262, 28.686941, 35.291798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908798, 28.811586, 35.129173>,  <35.114922, 28.886374, 35.031597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908798, 28.811586, 35.129173>,  <34.565262, 28.686941, 35.291798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908798, 28.811586, 35.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503053, 0.662743, -0.554716,
		0.096589, 0.680934, 0.725948,
		0.858841, 0.311611, -0.406559,
		35.166451, 28.905069, 35.007206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983318, 28.365494, 34.803860>,  <34.565262, 28.686941, 35.291798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983318, 28.365494, 34.803860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645882, 28.580286, 34.803108>,  <34.443420, 28.709162, 34.802658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645882, 28.580286, 34.803108>,  <34.983318, 28.365494, 34.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645882, 28.580286, 34.803108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532390, 0.836822, 0.127634,
		0.070106, 0.106673, -0.991820,
		-0.843591, 0.536983, -0.001874,
		34.392803, 28.741381, 34.802547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964748, 28.991701, 34.258667>,  <34.983318, 28.365494, 34.803860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964748, 28.991701, 34.258667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728523, 29.088520, 34.566601>,  <34.586788, 29.146612, 34.751362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728523, 29.088520, 34.566601>,  <34.964748, 28.991701, 34.258667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728523, 29.088520, 34.566601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390554, 0.920524, 0.010181,
		-0.706188, 0.306675, -0.638160,
		-0.590564, 0.242047, 0.769836,
		34.551353, 29.161135, 34.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449387, 29.602329, 34.185848>,  <34.964748, 28.991701, 34.258667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449387, 29.602329, 34.185848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513233, 29.618265, 34.580399>,  <34.551540, 29.627827, 34.817127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513233, 29.618265, 34.580399>,  <34.449387, 29.602329, 34.185848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513233, 29.618265, 34.580399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246889, 0.965821, -0.078961,
		-0.955808, 0.256128, 0.144327,
		0.159618, 0.039839, 0.986375,
		34.561119, 29.630217, 34.876312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953236, 29.946682, 34.547932>,  <34.449387, 29.602329, 34.185848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953236, 29.946682, 34.547932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279282, 29.998959, 34.773678>,  <34.474911, 30.030325, 34.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279282, 29.998959, 34.773678>,  <33.953236, 29.946682, 34.547932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279282, 29.998959, 34.773678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151734, 0.988373, -0.009728,
		-0.559074, -0.077704, 0.825469,
		0.815115, 0.130691, 0.564364,
		34.523815, 30.038166, 34.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792820, 30.434093, 35.108929>,  <33.953236, 29.946682, 34.547932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792820, 30.434093, 35.108929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182537, 30.422615, 35.019543>,  <34.416367, 30.415728, 34.965912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182537, 30.422615, 35.019543>,  <33.792820, 30.434093, 35.108929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182537, 30.422615, 35.019543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005652, 0.994656, -0.103092,
		0.225228, 0.099178, 0.969245,
		0.974290, -0.028697, -0.223463,
		34.474823, 30.414005, 34.952503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093563, 31.074856, 35.289436>,  <33.792820, 30.434093, 35.108929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093563, 31.074856, 35.289436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391438, 30.942331, 35.057686>,  <34.570164, 30.862816, 34.918636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391438, 30.942331, 35.057686>,  <34.093563, 31.074856, 35.289436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391438, 30.942331, 35.057686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234526, 0.942628, -0.237592,
		0.624853, 0.041053, 0.779663,
		0.744686, -0.331311, -0.579376,
		34.614841, 30.842937, 34.883873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782806, 31.516388, 35.470516>,  <34.093563, 31.074856, 35.289436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782806, 31.516388, 35.470516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787220, 31.382317, 35.093681>,  <34.789867, 31.301874, 34.867580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787220, 31.382317, 35.093681>,  <34.782806, 31.516388, 35.470516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787220, 31.382317, 35.093681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235167, 0.916591, -0.323353,
		0.971892, -0.217980, 0.088937,
		0.011034, -0.335180, -0.942090,
		34.790531, 31.281763, 34.811054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305573, 31.799660, 35.151855>,  <34.782806, 31.516388, 35.470516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305573, 31.799660, 35.151855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086880, 31.707603, 34.829830>,  <34.955666, 31.652369, 34.636616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086880, 31.707603, 34.829830>,  <35.305573, 31.799660, 35.151855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086880, 31.707603, 34.829830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172992, 0.909692, -0.377536,
		0.819243, -0.345680, -0.457545,
		-0.546732, -0.230142, -0.805059,
		34.922859, 31.638561, 34.588314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818607, 32.223965, 34.756458>,  <35.305573, 31.799660, 35.151855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818607, 32.223965, 34.756458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430435, 32.142529, 34.704582>,  <34.197533, 32.093666, 34.673458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430435, 32.142529, 34.704582>,  <34.818607, 32.223965, 34.756458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430435, 32.142529, 34.704582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046890, 0.686008, -0.726082,
		0.236793, -0.698529, -0.675268,
		-0.970428, -0.203594, -0.129688,
		34.139305, 32.081451, 34.665676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701759, 32.098656, 34.077263>,  <34.818607, 32.223965, 34.756458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701759, 32.098656, 34.077263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353970, 32.227322, 34.227219>,  <34.145294, 32.304520, 34.317192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353970, 32.227322, 34.227219>,  <34.701759, 32.098656, 34.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353970, 32.227322, 34.227219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053627, 0.692976, -0.718963,
		-0.491057, -0.645225, -0.585276,
		-0.869475, 0.321665, 0.374892,
		34.093128, 32.323822, 34.339687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096451, 31.969288, 33.625900>,  <34.701759, 32.098656, 34.077263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096451, 31.969288, 33.625900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113113, 32.296829, 33.854897>,  <34.123112, 32.493355, 33.992294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113113, 32.296829, 33.854897>,  <34.096451, 31.969288, 33.625900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113113, 32.296829, 33.854897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030546, 0.571672, -0.819913,
		-0.998665, 0.051640, -0.001200,
		0.041654, 0.818855, 0.572486,
		34.125610, 32.542484, 34.026642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596977, 32.440510, 33.426872>,  <34.096451, 31.969288, 33.625900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596977, 32.440510, 33.426872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907608, 32.646103, 33.572609>,  <34.093987, 32.769459, 33.660049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907608, 32.646103, 33.572609>,  <33.596977, 32.440510, 33.426872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907608, 32.646103, 33.572609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061364, 0.513843, -0.855686,
		-0.627022, 0.686867, 0.367501,
		0.776581, 0.513983, 0.364340,
		34.140583, 32.800297, 33.681911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501858, 33.091709, 33.189064>,  <33.596977, 32.440510, 33.426872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501858, 33.091709, 33.189064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885162, 33.092449, 33.303425>,  <34.115143, 33.092892, 33.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885162, 33.092449, 33.303425>,  <33.501858, 33.091709, 33.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885162, 33.092449, 33.303425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225776, 0.608613, -0.760668,
		-0.175406, 0.793465, 0.582791,
		0.958258, 0.001846, 0.285899,
		34.172638, 33.093002, 33.389194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660873, 33.819118, 33.062950>,  <33.501858, 33.091709, 33.189064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660873, 33.819118, 33.062950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005470, 33.625179, 33.123295>,  <34.212227, 33.508816, 33.159504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005470, 33.625179, 33.123295>,  <33.660873, 33.819118, 33.062950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005470, 33.625179, 33.123295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365046, 0.384840, -0.847726,
		0.352960, 0.785379, 0.508527,
		0.861488, -0.484849, 0.150866,
		34.263916, 33.479725, 33.168556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288486, 34.336071, 32.947666>,  <33.660873, 33.819118, 33.062950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288486, 34.336071, 32.947666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449402, 33.970505, 32.926052>,  <34.545952, 33.751163, 32.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449402, 33.970505, 32.926052>,  <34.288486, 34.336071, 32.947666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449402, 33.970505, 32.926052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463663, 0.254280, -0.848739,
		0.789417, 0.316385, 0.526043,
		0.402290, -0.913916, -0.054037,
		34.570087, 33.696331, 32.909840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925827, 34.398724, 32.797993>,  <34.288486, 34.336071, 32.947666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925827, 34.398724, 32.797993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895039, 34.009808, 32.709690>,  <34.876568, 33.776459, 32.656708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895039, 34.009808, 32.709690>,  <34.925827, 34.398724, 32.797993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895039, 34.009808, 32.709690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496837, 0.154562, -0.853969,
		0.864424, -0.175407, 0.471172,
		-0.076967, -0.972287, -0.220756,
		34.871948, 33.718121, 32.643463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586494, 34.222477, 32.564491>,  <34.925827, 34.398724, 32.797993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586494, 34.222477, 32.564491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365295, 33.926003, 32.412258>,  <35.232578, 33.748119, 32.320919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365295, 33.926003, 32.412258>,  <35.586494, 34.222477, 32.564491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365295, 33.926003, 32.412258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366594, 0.193749, -0.909984,
		0.748203, -0.642736, 0.164571,
		-0.552994, -0.741183, -0.380586,
		35.199398, 33.703648, 32.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033699, 33.730927, 32.183964>,  <35.586494, 34.222477, 32.564491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033699, 33.730927, 32.183964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673351, 33.668278, 32.022026>,  <35.457142, 33.630688, 31.924864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673351, 33.668278, 32.022026>,  <36.033699, 33.730927, 32.183964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673351, 33.668278, 32.022026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319246, 0.392887, -0.862393,
		0.294123, -0.906152, -0.303942,
		-0.900874, -0.156617, -0.404843,
		35.403088, 33.621292, 31.900574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128216, 33.571274, 31.571865>,  <36.033699, 33.730927, 32.183964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128216, 33.571274, 31.571865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736534, 33.649242, 31.549332>,  <35.501526, 33.696022, 31.535810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736534, 33.649242, 31.549332>,  <36.128216, 33.571274, 31.571865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736534, 33.649242, 31.549332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134414, 0.415197, -0.899747,
		-0.151991, -0.888604, -0.432762,
		-0.979200, 0.194923, -0.056335,
		35.442776, 33.707718, 31.532431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887356, 33.282738, 30.958809>,  <36.128216, 33.571274, 31.571865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887356, 33.282738, 30.958809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639313, 33.587421, 31.033916>,  <35.490486, 33.770233, 31.078981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639313, 33.587421, 31.033916>,  <35.887356, 33.282738, 30.958809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639313, 33.587421, 31.033916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149986, 0.350037, -0.924650,
		-0.770043, -0.545224, -0.331308,
		-0.620111, 0.761712, 0.187768,
		35.453278, 33.815933, 31.090246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538036, 33.353798, 30.422295>,  <35.887356, 33.282738, 30.958809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538036, 33.353798, 30.422295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484962, 33.720264, 30.573572>,  <35.453117, 33.940144, 30.664339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484962, 33.720264, 30.573572>,  <35.538036, 33.353798, 30.422295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484962, 33.720264, 30.573572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013819, 0.379819, -0.924958,
		-0.991062, -0.127956, -0.037736,
		-0.132687, 0.916169, 0.378192,
		35.445156, 33.995113, 30.687031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129601, 33.760376, 29.914923>,  <35.538036, 33.353798, 30.422295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129601, 33.760376, 29.914923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265945, 34.056740, 30.146391>,  <35.347752, 34.234558, 30.285273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265945, 34.056740, 30.146391>,  <35.129601, 33.760376, 29.914923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265945, 34.056740, 30.146391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022004, 0.621654, -0.782983,
		-0.939854, 0.254159, 0.228204,
		0.340866, 0.740911, 0.578672,
		35.368206, 34.279015, 30.319992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643639, 34.338181, 29.722561>,  <35.129601, 33.760376, 29.914923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643639, 34.338181, 29.722561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952198, 34.490669, 29.926371>,  <35.137333, 34.582161, 30.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952198, 34.490669, 29.926371>,  <34.643639, 34.338181, 29.722561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952198, 34.490669, 29.926371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022332, 0.816418, -0.577030,
		-0.635962, 0.433740, 0.638296,
		0.771397, 0.381223, 0.509525,
		35.183617, 34.605038, 30.079227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458103, 35.107059, 29.691559>,  <34.643639, 34.338181, 29.722561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458103, 35.107059, 29.691559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832031, 35.056103, 29.824148>,  <35.056389, 35.025528, 29.903702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832031, 35.056103, 29.824148>,  <34.458103, 35.107059, 29.691559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832031, 35.056103, 29.824148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244827, 0.907335, -0.341763,
		-0.257221, 0.400642, 0.879388,
		0.934825, -0.127389, 0.331474,
		35.112480, 35.017887, 29.923590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641792, 35.720989, 30.023706>,  <34.458103, 35.107059, 29.691559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641792, 35.720989, 30.023706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990986, 35.558117, 29.916296>,  <35.200500, 35.460392, 29.851851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990986, 35.558117, 29.916296>,  <34.641792, 35.720989, 30.023706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990986, 35.558117, 29.916296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197126, 0.798109, -0.569353,
		0.446143, 0.444102, 0.777001,
		0.872982, -0.407180, -0.268527,
		35.252880, 35.435963, 29.835737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167683, 36.186062, 30.091049>,  <34.641792, 35.720989, 30.023706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167683, 36.186062, 30.091049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311893, 35.937458, 29.812841>,  <35.398418, 35.788296, 29.645916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311893, 35.937458, 29.812841>,  <35.167683, 36.186062, 30.091049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311893, 35.937458, 29.812841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190614, 0.779022, -0.597319,
		0.913065, 0.082772, 0.399325,
		0.360524, -0.621509, -0.695521,
		35.420052, 35.751007, 29.604185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758915, 36.577168, 29.833464>,  <35.167683, 36.186062, 30.091049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758915, 36.577168, 29.833464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718575, 36.292484, 29.555384>,  <35.694370, 36.121674, 29.388535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718575, 36.292484, 29.555384>,  <35.758915, 36.577168, 29.833464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718575, 36.292484, 29.555384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158626, 0.678323, -0.717437,
		0.982175, -0.182631, 0.044487,
		-0.100850, -0.711705, -0.695202,
		35.688320, 36.078972, 29.346823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307281, 36.648182, 29.356010>,  <35.758915, 36.577168, 29.833464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307281, 36.648182, 29.356010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010799, 36.456547, 29.167927>,  <35.832909, 36.341568, 29.055077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010799, 36.456547, 29.167927>,  <36.307281, 36.648182, 29.356010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010799, 36.456547, 29.167927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049278, 0.737407, -0.673649,
		0.669466, -0.476142, -0.570178,
		-0.741206, -0.479082, -0.470206,
		35.788437, 36.312820, 29.026865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450840, 36.840652, 28.676079>,  <36.307281, 36.648182, 29.356010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450840, 36.840652, 28.676079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075188, 36.703243, 28.674179>,  <35.849796, 36.620800, 28.673038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075188, 36.703243, 28.674179>,  <36.450840, 36.840652, 28.676079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075188, 36.703243, 28.674179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265839, 0.735384, -0.623330,
		0.217621, -0.584127, -0.781945,
		-0.939133, -0.343521, -0.004751,
		35.793449, 36.600185, 28.672754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210972, 36.880959, 27.920317>,  <36.450840, 36.840652, 28.676079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210972, 36.880959, 27.920317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875866, 36.839546, 28.134764>,  <35.674801, 36.814697, 28.263432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875866, 36.839546, 28.134764>,  <36.210972, 36.880959, 27.920317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875866, 36.839546, 28.134764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475190, 0.621878, -0.622464,
		-0.268955, -0.776240, -0.570189,
		-0.837769, -0.103534, 0.536119,
		35.624535, 36.808487, 28.295599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598087, 36.631119, 27.460449>,  <36.210972, 36.880959, 27.920317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598087, 36.631119, 27.460449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497673, 36.846046, 27.782511>,  <35.437424, 36.975002, 27.975748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497673, 36.846046, 27.782511>,  <35.598087, 36.631119, 27.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497673, 36.846046, 27.782511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373017, 0.713848, -0.592688,
		-0.893219, -0.449121, 0.021227,
		-0.251036, 0.537318, 0.805152,
		35.422363, 37.007240, 28.024057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984203, 36.848892, 27.224360>,  <35.598087, 36.631119, 27.460449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984203, 36.848892, 27.224360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128353, 37.084167, 27.513956>,  <35.214844, 37.225334, 27.687714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128353, 37.084167, 27.513956>,  <34.984203, 36.848892, 27.224360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128353, 37.084167, 27.513956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296632, 0.808115, -0.508881,
		-0.884387, -0.031372, 0.465699,
		0.360373, 0.588189, 0.723993,
		35.236465, 37.260624, 27.731153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393951, 37.325245, 27.339582>,  <34.984203, 36.848892, 27.224360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393951, 37.325245, 27.339582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705780, 37.514835, 27.503344>,  <34.892879, 37.628590, 27.601601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705780, 37.514835, 27.503344>,  <34.393951, 37.325245, 27.339582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705780, 37.514835, 27.503344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287383, 0.851507, -0.438573,
		-0.556483, 0.224245, 0.800025,
		0.779575, 0.473972, 0.409405,
		34.939651, 37.657028, 27.626165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105061, 37.921234, 27.724916>,  <34.393951, 37.325245, 27.339582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105061, 37.921234, 27.724916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488609, 38.006233, 27.649647>,  <34.718739, 38.057232, 27.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488609, 38.006233, 27.649647>,  <34.105061, 37.921234, 27.724916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488609, 38.006233, 27.649647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267910, 0.896536, -0.352772,
		0.093743, 0.388677, 0.916593,
		0.958872, 0.212495, -0.188174,
		34.776272, 38.069981, 27.593195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047192, 38.561062, 27.866964>,  <34.105061, 37.921234, 27.724916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047192, 38.561062, 27.866964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388996, 38.497093, 27.669283>,  <34.594078, 38.458710, 27.550674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388996, 38.497093, 27.669283>,  <34.047192, 38.561062, 27.866964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388996, 38.497093, 27.669283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106071, 0.877653, -0.467413,
		0.508490, 0.451830, 0.732999,
		0.854510, -0.159925, -0.494204,
		34.645348, 38.449116, 27.521021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376911, 39.116356, 28.004993>,  <34.047192, 38.561062, 27.866964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376911, 39.116356, 28.004993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499321, 38.958378, 27.658497>,  <34.572765, 38.863590, 27.450600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499321, 38.958378, 27.658497>,  <34.376911, 39.116356, 28.004993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499321, 38.958378, 27.658497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116169, 0.887602, -0.445722,
		0.944909, 0.237032, 0.225748,
		0.306024, -0.394942, -0.866239,
		34.591129, 38.839897, 27.398624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738396, 39.654831, 27.696669>,  <34.376911, 39.116356, 28.004993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738396, 39.654831, 27.696669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744987, 39.408310, 27.381735>,  <34.748943, 39.260399, 27.192774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744987, 39.408310, 27.381735>,  <34.738396, 39.654831, 27.696669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744987, 39.408310, 27.381735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036872, 0.787283, -0.615489,
		0.999184, -0.018886, 0.035700,
		0.016482, -0.616303, -0.787337,
		34.749931, 39.223419, 27.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259308, 39.932911, 27.269735>,  <34.738396, 39.654831, 27.696669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259308, 39.932911, 27.269735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034161, 39.698544, 27.036535>,  <34.899075, 39.557922, 26.896616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034161, 39.698544, 27.036535>,  <35.259308, 39.932911, 27.269735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034161, 39.698544, 27.036535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028098, 0.691369, -0.721955,
		0.826072, -0.422743, -0.372684,
		-0.562863, -0.585915, -0.582999,
		34.865303, 39.522770, 26.861635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597713, 39.905285, 26.607052>,  <35.259308, 39.932911, 27.269735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597713, 39.905285, 26.607052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208630, 39.833500, 26.548227>,  <34.975178, 39.790428, 26.512932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208630, 39.833500, 26.548227>,  <35.597713, 39.905285, 26.607052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208630, 39.833500, 26.548227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025381, 0.712331, -0.701384,
		0.230628, -0.678512, -0.697447,
		-0.972711, -0.179461, -0.147062,
		34.916817, 39.779663, 26.504108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538322, 39.790268, 25.899492>,  <35.597713, 39.905285, 26.607052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538322, 39.790268, 25.899492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169655, 39.879574, 26.026407>,  <34.948452, 39.933159, 26.102556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169655, 39.879574, 26.026407>,  <35.538322, 39.790268, 25.899492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169655, 39.879574, 26.026407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083846, 0.683865, -0.724775,
		-0.378801, -0.694608, -0.611579,
		-0.921672, 0.223267, 0.317289,
		34.893154, 39.946552, 26.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129036, 39.686649, 25.214340>,  <35.538322, 39.790268, 25.899492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129036, 39.686649, 25.214340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975433, 39.932293, 25.490139>,  <34.883270, 40.079681, 25.655619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975433, 39.932293, 25.490139>,  <35.129036, 39.686649, 25.214340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975433, 39.932293, 25.490139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059338, 0.761619, -0.645303,
		-0.921422, -0.206888, -0.328907,
		-0.384007, 0.614113, 0.689495,
		34.860229, 40.116528, 25.696987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764095, 40.235359, 24.790203>,  <35.129036, 39.686649, 25.214340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764095, 40.235359, 24.790203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754295, 40.399570, 25.154812>,  <34.748417, 40.498096, 25.373577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754295, 40.399570, 25.154812>,  <34.764095, 40.235359, 24.790203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754295, 40.399570, 25.154812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083675, 0.907752, -0.411077,
		-0.996192, -0.086342, 0.012113,
		-0.024497, 0.410525, 0.911520,
		34.746944, 40.522728, 25.428268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211079, 40.663033, 24.766272>,  <34.764095, 40.235359, 24.790203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211079, 40.663033, 24.766272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461884, 40.783123, 25.053804>,  <34.612366, 40.855179, 25.226324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461884, 40.783123, 25.053804>,  <34.211079, 40.663033, 24.766272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461884, 40.783123, 25.053804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150397, 0.952044, -0.266446,
		-0.764354, 0.058955, 0.642096,
		0.627012, 0.300229, 0.718832,
		34.649986, 40.873192, 25.269453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927929, 41.225067, 24.952738>,  <34.211079, 40.663033, 24.766272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927929, 41.225067, 24.952738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300701, 41.262924, 25.092764>,  <34.524364, 41.285637, 25.176779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300701, 41.262924, 25.092764>,  <33.927929, 41.225067, 24.952738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300701, 41.262924, 25.092764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058025, 0.991822, -0.113678,
		-0.357960, 0.085628, 0.929802,
		0.931932, 0.094644, 0.350064,
		34.580280, 41.291317, 25.197783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972595, 41.880371, 25.331638>,  <33.927929, 41.225067, 24.952738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972595, 41.880371, 25.331638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359142, 41.814072, 25.252989>,  <34.591072, 41.774292, 25.205799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359142, 41.814072, 25.252989>,  <33.972595, 41.880371, 25.331638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359142, 41.814072, 25.252989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133959, 0.977107, -0.165279,
		0.219517, 0.133381, 0.966448,
		0.966368, -0.165746, -0.196624,
		34.649052, 41.764347, 25.194002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391224, 42.402367, 25.680145>,  <33.972595, 41.880371, 25.331638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391224, 42.402367, 25.680145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653576, 42.258934, 25.414442>,  <34.810986, 42.172874, 25.255020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653576, 42.258934, 25.414442>,  <34.391224, 42.402367, 25.680145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653576, 42.258934, 25.414442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444841, 0.894544, -0.043667,
		0.609866, -0.266849, 0.746227,
		0.655881, -0.358584, -0.664258,
		34.850342, 42.151360, 25.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136276, 42.520836, 25.898010>,  <34.391224, 42.402367, 25.680145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136276, 42.520836, 25.898010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087200, 42.490658, 25.502182>,  <35.057755, 42.472549, 25.264685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087200, 42.490658, 25.502182>,  <35.136276, 42.520836, 25.898010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087200, 42.490658, 25.502182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555409, 0.821119, -0.131467,
		0.822477, -0.565747, -0.058834,
		-0.122687, -0.075452, -0.989573,
		35.050392, 42.468021, 25.205311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801319, 42.817776, 25.683277>,  <35.136276, 42.520836, 25.898010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801319, 42.817776, 25.683277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584240, 42.791603, 25.348326>,  <35.453995, 42.775898, 25.147354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584240, 42.791603, 25.348326>,  <35.801319, 42.817776, 25.683277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584240, 42.791603, 25.348326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461997, 0.809344, -0.362658,
		0.701457, -0.583678, -0.408996,
		-0.542694, -0.065434, -0.837378,
		35.421432, 42.771973, 25.097113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224056, 42.852093, 25.145864>,  <35.801319, 42.817776, 25.683277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224056, 42.852093, 25.145864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870644, 42.989990, 25.019039>,  <35.658596, 43.072727, 24.942944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870644, 42.989990, 25.019039>,  <36.224056, 42.852093, 25.145864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870644, 42.989990, 25.019039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422001, 0.879608, -0.219556,
		0.203204, -0.327786, -0.922640,
		-0.883529, 0.344740, -0.317066,
		35.605583, 43.093410, 24.923920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394039, 43.312359, 24.563948>,  <36.224056, 42.852093, 25.145864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394039, 43.312359, 24.563948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022266, 43.420124, 24.664806>,  <35.799202, 43.484783, 24.725323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022266, 43.420124, 24.664806>,  <36.394039, 43.312359, 24.563948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022266, 43.420124, 24.664806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247862, 0.962034, -0.114259,
		-0.273358, -0.043697, -0.960919,
		-0.929430, 0.269409, 0.252149,
		35.743439, 43.500946, 24.740452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264580, 43.916100, 24.095713>,  <36.394039, 43.312359, 24.563948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264580, 43.916100, 24.095713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991909, 43.942894, 24.387146>,  <35.828308, 43.958969, 24.562006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991909, 43.942894, 24.387146>,  <36.264580, 43.916100, 24.095713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991909, 43.942894, 24.387146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043697, 0.997750, -0.050849,
		-0.730349, -0.002825, -0.683069,
		-0.681675, 0.066986, 0.728582,
		35.787407, 43.962990, 24.605721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903831, 44.560024, 23.921295>,  <36.264580, 43.916100, 24.095713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903831, 44.560024, 23.921295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845890, 44.477856, 24.308453>,  <35.811127, 44.428555, 24.540747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845890, 44.477856, 24.308453>,  <35.903831, 44.560024, 23.921295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845890, 44.477856, 24.308453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182943, 0.955785, 0.230232,
		-0.972394, 0.210419, -0.100864,
		-0.144850, -0.205423, 0.967894,
		35.802437, 44.416229, 24.598822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384342, 45.052624, 24.152111>,  <35.903831, 44.560024, 23.921295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384342, 45.052624, 24.152111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620762, 44.952995, 24.459000>,  <35.762611, 44.893219, 24.643133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620762, 44.952995, 24.459000>,  <35.384342, 45.052624, 24.152111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620762, 44.952995, 24.459000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067375, 0.963056, 0.260738,
		-0.803820, -0.102416, 0.585991,
		0.591046, -0.249067, 0.767223,
		35.798077, 44.878277, 24.689167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184074, 45.465397, 24.699774>,  <35.384342, 45.052624, 24.152111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184074, 45.465397, 24.699774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560089, 45.381348, 24.807241>,  <35.785698, 45.330917, 24.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560089, 45.381348, 24.807241>,  <35.184074, 45.465397, 24.699774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560089, 45.381348, 24.807241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084509, 0.906633, 0.413369,
		-0.330443, -0.365876, 0.870024,
		0.940035, -0.210120, 0.268671,
		35.842098, 45.318314, 24.887842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229847, 45.688919, 25.408875>,  <35.184074, 45.465397, 24.699774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229847, 45.688919, 25.408875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583160, 45.714211, 25.223049>,  <35.795147, 45.729385, 25.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583160, 45.714211, 25.223049>,  <35.229847, 45.688919, 25.408875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583160, 45.714211, 25.223049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125872, 0.922506, 0.364882,
		0.451634, -0.380768, 0.806872,
		0.883279, 0.063231, -0.464563,
		35.848145, 45.733181, 25.083679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611858, 45.577988, 25.808292>,  <35.229847, 45.688919, 25.408875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611858, 45.577988, 25.808292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884300, 45.773750, 26.026129>,  <35.047764, 45.891209, 26.156832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884300, 45.773750, 26.026129>,  <34.611858, 45.577988, 25.808292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884300, 45.773750, 26.026129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418791, 0.349713, -0.838043,
		-0.600595, 0.798863, 0.033231,
		0.681102, 0.489407, 0.544592,
		35.088631, 45.920574, 26.189507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631702, 46.350800, 25.574697>,  <34.611858, 45.577988, 25.808292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631702, 46.350800, 25.574697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961830, 46.183231, 25.726147>,  <35.159904, 46.082691, 25.817017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961830, 46.183231, 25.726147>,  <34.631702, 46.350800, 25.574697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961830, 46.183231, 25.726147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521711, 0.309187, -0.795123,
		0.216032, 0.853759, 0.473735,
		0.825317, -0.418925, 0.378621,
		35.209427, 46.057552, 25.839733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138691, 46.728268, 25.223206>,  <34.631702, 46.350800, 25.574697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138691, 46.728268, 25.223206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335548, 46.437565, 25.414881>,  <35.453663, 46.263145, 25.529886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335548, 46.437565, 25.414881>,  <35.138691, 46.728268, 25.223206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335548, 46.437565, 25.414881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533980, -0.182706, -0.825521,
		0.687501, 0.662153, 0.298155,
		0.492146, -0.726755, 0.479187,
		35.483192, 46.219540, 25.558638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856667, 46.866814, 25.143593>,  <35.138691, 46.728268, 25.223206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856667, 46.866814, 25.143593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815922, 46.481342, 25.242348>,  <35.791477, 46.250061, 25.301601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815922, 46.481342, 25.242348>,  <35.856667, 46.866814, 25.143593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815922, 46.481342, 25.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513422, -0.263495, -0.816681,
		0.852070, 0.043571, 0.521612,
		-0.101858, -0.963676, 0.246887,
		35.785366, 46.192238, 25.316414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369556, 46.842655, 25.687454>,  <35.856667, 46.866814, 25.143593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369556, 46.842655, 25.687454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978527, 46.798653, 25.759285>,  <35.743908, 46.772251, 25.802383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978527, 46.798653, 25.759285>,  <36.369556, 46.842655, 25.687454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978527, 46.798653, 25.759285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208460, -0.626609, 0.750936,
		0.029915, 0.771530, 0.635489,
		-0.977573, -0.110010, 0.179579,
		35.685257, 46.765648, 25.813158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224350, 46.839550, 26.481117>,  <36.369556, 46.842655, 25.687454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224350, 46.839550, 26.481117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916100, 46.672031, 26.288977>,  <35.731148, 46.571518, 26.173693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916100, 46.672031, 26.288977>,  <36.224350, 46.839550, 26.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916100, 46.672031, 26.288977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082820, -0.681543, 0.727077,
		-0.631879, 0.600089, 0.490532,
		-0.770630, -0.418798, -0.480352,
		35.684910, 46.546391, 26.144871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870655, 46.550873, 26.974022>,  <36.224350, 46.839550, 26.481117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870655, 46.550873, 26.974022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660042, 46.334515, 26.711664>,  <35.533672, 46.204700, 26.554251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660042, 46.334515, 26.711664>,  <35.870655, 46.550873, 26.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660042, 46.334515, 26.711664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142019, -0.704695, 0.695151,
		-0.838207, 0.459171, 0.294229,
		-0.526535, -0.540894, -0.655892,
		35.502083, 46.172245, 26.514896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325584, 46.392311, 27.358776>,  <35.870655, 46.550873, 26.974022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325584, 46.392311, 27.358776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372547, 46.157040, 27.038712>,  <35.400726, 46.015877, 26.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372547, 46.157040, 27.038712>,  <35.325584, 46.392311, 27.358776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372547, 46.157040, 27.038712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152565, -0.806853, 0.570712,
		-0.981295, 0.055071, -0.184466,
		0.117407, -0.588180, -0.800162,
		35.407768, 45.980587, 26.798662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837147, 45.827995, 27.420729>,  <35.325584, 46.392311, 27.358776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837147, 45.827995, 27.420729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117035, 45.689541, 27.170746>,  <35.284969, 45.606468, 27.020756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117035, 45.689541, 27.170746>,  <34.837147, 45.827995, 27.420729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117035, 45.689541, 27.170746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030837, -0.859336, 0.510481,
		-0.713746, -0.376468, -0.590626,
		0.699726, -0.346140, -0.624957,
		35.326954, 45.585697, 26.983259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602604, 45.206448, 27.169647>,  <34.837147, 45.827995, 27.420729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602604, 45.206448, 27.169647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992649, 45.151070, 27.100376>,  <35.226677, 45.117844, 27.058813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992649, 45.151070, 27.100376>,  <34.602604, 45.206448, 27.169647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992649, 45.151070, 27.100376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040584, -0.879345, 0.474453,
		-0.217967, -0.455617, -0.863078,
		0.975112, -0.138442, -0.173177,
		35.285183, 45.109535, 27.048424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714973, 44.553345, 26.789362>,  <34.602604, 45.206448, 27.169647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714973, 44.553345, 26.789362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084095, 44.638882, 26.917559>,  <35.305569, 44.690205, 26.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084095, 44.638882, 26.917559>,  <34.714973, 44.553345, 26.789362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084095, 44.638882, 26.917559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068943, -0.910058, 0.408707,
		0.379062, -0.355059, -0.854544,
		0.922799, 0.213840, 0.320490,
		35.360935, 44.703033, 27.013706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144112, 43.878597, 26.741673>,  <34.714973, 44.553345, 26.789362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144112, 43.878597, 26.741673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363644, 44.093533, 26.997814>,  <35.495361, 44.222496, 27.151499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363644, 44.093533, 26.997814>,  <35.144112, 43.878597, 26.741673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363644, 44.093533, 26.997814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132334, -0.812221, 0.568141,
		0.825394, -0.227071, -0.516878,
		0.548828, 0.537341, 0.640354,
		35.528294, 44.254734, 27.189920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678833, 43.412804, 26.879007>,  <35.144112, 43.878597, 26.741673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678833, 43.412804, 26.879007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699074, 43.699848, 27.156851>,  <35.711220, 43.872074, 27.323557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699074, 43.699848, 27.156851>,  <35.678833, 43.412804, 26.879007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699074, 43.699848, 27.156851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113662, -0.695118, 0.709853,
		0.992230, 0.043030, -0.116739,
		0.050602, 0.717607, 0.694608,
		35.714256, 43.915131, 27.365232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305084, 43.295044, 27.245506>,  <35.678833, 43.412804, 26.879007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305084, 43.295044, 27.245506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069530, 43.514584, 27.482817>,  <35.928196, 43.646309, 27.625202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069530, 43.514584, 27.482817>,  <36.305084, 43.295044, 27.245506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069530, 43.514584, 27.482817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064104, -0.700023, 0.711237,
		0.805670, 0.456869, 0.377050,
		-0.588886, 0.548852, 0.593275,
		35.892864, 43.679237, 27.660799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684948, 43.592197, 27.967913>,  <36.305084, 43.295044, 27.245506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684948, 43.592197, 27.967913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292812, 43.571327, 28.044043>,  <36.057533, 43.558807, 28.089720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292812, 43.571327, 28.044043>,  <36.684948, 43.592197, 27.967913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292812, 43.571327, 28.044043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190491, -0.502106, 0.843565,
		0.051552, 0.863231, 0.502170,
		-0.980334, -0.052171, 0.190323,
		35.998711, 43.555676, 28.101139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727966, 43.542152, 28.648542>,  <36.684948, 43.592197, 27.967913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727966, 43.542152, 28.648542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343491, 43.460995, 28.573767>,  <36.112804, 43.412300, 28.528900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343491, 43.460995, 28.573767>,  <36.727966, 43.542152, 28.648542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343491, 43.460995, 28.573767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037526, -0.575150, 0.817187,
		-0.273324, 0.792487, 0.545214,
		-0.961190, -0.202897, -0.186941,
		36.055134, 43.400127, 28.517685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441799, 43.668671, 29.314707>,  <36.727966, 43.542152, 28.648542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441799, 43.668671, 29.314707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211823, 43.427830, 29.093105>,  <36.073837, 43.283325, 28.960144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211823, 43.427830, 29.093105>,  <36.441799, 43.668671, 29.314707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211823, 43.427830, 29.093105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130172, -0.601168, 0.788450,
		-0.807772, 0.525430, 0.267261,
		-0.574944, -0.602098, -0.554002,
		36.039341, 43.247200, 28.926905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814171, 43.624180, 29.674229>,  <36.441799, 43.668671, 29.314707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814171, 43.624180, 29.674229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866787, 43.305359, 29.438463>,  <35.898357, 43.114067, 29.297005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866787, 43.305359, 29.438463>,  <35.814171, 43.624180, 29.674229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866787, 43.305359, 29.438463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124651, -0.576562, 0.807490,
		-0.983443, -0.179687, 0.023512,
		0.131539, -0.797050, -0.589413,
		35.906250, 43.066242, 29.261639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462917, 43.070206, 30.004753>,  <35.814171, 43.624180, 29.674229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462917, 43.070206, 30.004753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700893, 42.862221, 29.759583>,  <35.843681, 42.737431, 29.612480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700893, 42.862221, 29.759583>,  <35.462917, 43.070206, 30.004753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700893, 42.862221, 29.759583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081030, -0.719882, 0.689350,
		-0.799673, -0.459790, -0.386156,
		0.594943, -0.519965, -0.612927,
		35.879375, 42.706230, 29.575705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169106, 42.425819, 29.932192>,  <35.462917, 43.070206, 30.004753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169106, 42.425819, 29.932192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552544, 42.384052, 29.826212>,  <35.782604, 42.358994, 29.762623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552544, 42.384052, 29.826212>,  <35.169106, 42.425819, 29.932192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552544, 42.384052, 29.826212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135112, -0.652235, 0.745878,
		-0.250692, -0.750791, -0.611119,
		0.958592, -0.104416, -0.264951,
		35.840122, 42.352726, 29.746727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262714, 41.688835, 29.565758>,  <35.169106, 42.425819, 29.932192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262714, 41.688835, 29.565758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596226, 41.835896, 29.730513>,  <35.796333, 41.924133, 29.829367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596226, 41.835896, 29.730513>,  <35.262714, 41.688835, 29.565758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596226, 41.835896, 29.730513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030172, -0.775262, 0.630919,
		0.551279, -0.513617, -0.657487,
		0.833775, 0.367650, 0.411889,
		35.846359, 41.946190, 29.854078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586494, 41.130253, 29.637556>,  <35.262714, 41.688835, 29.565758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586494, 41.130253, 29.637556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784908, 41.383549, 29.875195>,  <35.903957, 41.535526, 30.017778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784908, 41.383549, 29.875195>,  <35.586494, 41.130253, 29.637556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784908, 41.383549, 29.875195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035342, -0.698363, 0.714871,
		0.867583, -0.333604, -0.368792,
		0.496034, 0.633243, 0.594098,
		35.933720, 41.573521, 30.053425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138458, 40.774334, 29.765995>,  <35.586494, 41.130253, 29.637556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138458, 40.774334, 29.765995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089993, 41.050510, 30.051264>,  <36.060913, 41.216217, 30.222425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089993, 41.050510, 30.051264>,  <36.138458, 40.774334, 29.765995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089993, 41.050510, 30.051264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019237, -0.716695, 0.697121,
		0.992446, 0.098185, 0.073555,
		-0.121163, 0.690440, 0.713171,
		36.053642, 41.257641, 30.265215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385010, 40.426647, 30.308022>,  <36.138458, 40.774334, 29.765995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385010, 40.426647, 30.308022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205311, 40.728687, 30.499018>,  <36.097492, 40.909912, 30.613615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205311, 40.728687, 30.499018>,  <36.385010, 40.426647, 30.308022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205311, 40.728687, 30.499018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219997, -0.611503, 0.760043,
		0.865895, 0.236404, 0.440839,
		-0.449251, 0.755101, 0.477489,
		36.070534, 40.955219, 30.642265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679367, 40.433769, 31.022200>,  <36.385010, 40.426647, 30.308022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679367, 40.433769, 31.022200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331909, 40.631931, 31.020178>,  <36.123436, 40.750828, 31.018965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331909, 40.631931, 31.020178>,  <36.679367, 40.433769, 31.022200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331909, 40.631931, 31.020178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384836, -0.668276, 0.636638,
		0.312018, 0.554958, 0.771146,
		-0.868646, 0.495407, -0.005054,
		36.071316, 40.780552, 31.018661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505756, 40.628475, 31.771368>,  <36.679367, 40.433769, 31.022200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505756, 40.628475, 31.771368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158997, 40.597195, 31.574446>,  <35.950939, 40.578426, 31.456293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158997, 40.597195, 31.574446>,  <36.505756, 40.628475, 31.771368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158997, 40.597195, 31.574446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417822, -0.424624, 0.803193,
		-0.271852, 0.901986, 0.335435,
		-0.866903, -0.078198, -0.492305,
		35.898926, 40.573734, 31.426754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046349, 40.940159, 32.139526>,  <36.505756, 40.628475, 31.771368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046349, 40.940159, 32.139526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 40.646118, 31.923744>,  <35.783543, 40.469696, 31.794275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 40.646118, 31.923744>,  <36.046349, 40.940159, 32.139526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882095, 40.646118, 31.923744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294430, -0.453039, 0.841467,
		-0.862954, 0.504367, -0.030401,
		-0.410635, -0.735098, -0.539453,
		35.758904, 40.425591, 31.761908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787403, 40.472839, 32.688435>,  <36.046349, 40.940159, 32.139526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787403, 40.472839, 32.688435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661282, 40.275700, 32.364044>,  <35.585609, 40.157413, 32.169411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661282, 40.275700, 32.364044>,  <35.787403, 40.472839, 32.688435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661282, 40.275700, 32.364044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460054, -0.668048, 0.584861,
		-0.830019, 0.557503, -0.016099,
		-0.315307, -0.492852, -0.810974,
		35.566689, 40.127846, 32.120750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920403, 40.460579, 32.699787>,  <35.787403, 40.472839, 32.688435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920403, 40.460579, 32.699787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081150, 40.176556, 32.468506>,  <35.177597, 40.006142, 32.329739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081150, 40.176556, 32.468506>,  <34.920403, 40.460579, 32.699787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081150, 40.176556, 32.468506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522415, -0.696374, 0.492083,
		-0.752052, 0.104306, -0.650798,
		0.401871, -0.710059, -0.578201,
		35.201710, 39.963539, 32.295044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335079, 39.985107, 32.627533>,  <34.920403, 40.460579, 32.699787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335079, 39.985107, 32.627533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654102, 39.785652, 32.491730>,  <34.845516, 39.665977, 32.410248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654102, 39.785652, 32.491730>,  <34.335079, 39.985107, 32.627533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654102, 39.785652, 32.491730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238463, -0.777563, 0.581834,
		-0.554113, -0.383085, -0.739056,
		0.797555, -0.498639, -0.339506,
		34.893368, 39.636059, 32.389877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171082, 39.395042, 32.207630>,  <34.335079, 39.985107, 32.627533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171082, 39.395042, 32.207630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530529, 39.277245, 32.337719>,  <34.746197, 39.206566, 32.415771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530529, 39.277245, 32.337719>,  <34.171082, 39.395042, 32.207630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530529, 39.277245, 32.337719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410861, -0.824863, 0.388323,
		0.153903, -0.482572, -0.862228,
		0.898614, -0.294492, 0.325219,
		34.800114, 39.188896, 32.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272945, 38.716850, 31.955738>,  <34.171082, 39.395042, 32.207630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272945, 38.716850, 31.955738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521652, 38.763588, 32.265511>,  <34.670876, 38.791630, 32.451374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521652, 38.763588, 32.265511>,  <34.272945, 38.716850, 31.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521652, 38.763588, 32.265511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318124, -0.865885, 0.386056,
		0.715679, -0.486405, -0.501212,
		0.621771, 0.116845, 0.774434,
		34.708183, 38.798641, 32.497841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716019, 38.118610, 31.969824>,  <34.272945, 38.716850, 31.955738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716019, 38.118610, 31.969824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735565, 38.269211, 32.339874>,  <34.747292, 38.359573, 32.561905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735565, 38.269211, 32.339874>,  <34.716019, 38.118610, 31.969824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735565, 38.269211, 32.339874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054122, -0.923873, 0.378853,
		0.997338, -0.068582, -0.024767,
		0.048865, 0.376504, 0.925125,
		34.750225, 38.382164, 32.617413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096420, 37.659840, 32.277191>,  <34.716019, 38.118610, 31.969824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096420, 37.659840, 32.277191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926487, 37.856476, 32.581261>,  <34.824528, 37.974457, 32.763702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926487, 37.856476, 32.581261>,  <35.096420, 37.659840, 32.277191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926487, 37.856476, 32.581261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048662, -0.826100, 0.561419,
		0.903962, 0.275501, 0.327034,
		-0.424834, 0.491587, 0.760170,
		34.799038, 38.003952, 32.809311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483379, 37.520645, 32.889851>,  <35.096420, 37.659840, 32.277191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483379, 37.520645, 32.889851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131207, 37.655918, 33.022804>,  <34.919903, 37.737080, 33.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131207, 37.655918, 33.022804>,  <35.483379, 37.520645, 32.889851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131207, 37.655918, 33.022804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073761, -0.790116, 0.608503,
		0.468407, 0.511226, 0.720585,
		-0.880428, 0.338178, 0.332388,
		34.867077, 37.757370, 33.122520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540604, 37.632359, 33.724216>,  <35.483379, 37.520645, 32.889851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540604, 37.632359, 33.724216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159214, 37.588497, 33.611893>,  <34.930378, 37.562180, 33.544498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159214, 37.588497, 33.611893>,  <35.540604, 37.632359, 33.724216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159214, 37.588497, 33.611893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096945, -0.770487, 0.630041,
		-0.285451, 0.627953, 0.724012,
		-0.953477, -0.109657, -0.280814,
		34.873169, 37.555599, 33.527649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303047, 37.597847, 34.319683>,  <35.540604, 37.632359, 33.724216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303047, 37.597847, 34.319683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013477, 37.450218, 34.086544>,  <34.839733, 37.361641, 33.946659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013477, 37.450218, 34.086544>,  <35.303047, 37.597847, 34.319683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013477, 37.450218, 34.086544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157203, -0.734381, 0.660281,
		-0.671727, 0.569621, 0.473619,
		-0.723927, -0.369074, -0.582850,
		34.796299, 37.339497, 33.911690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836216, 37.393085, 34.748241>,  <35.303047, 37.597847, 34.319683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836216, 37.393085, 34.748241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741619, 37.197895, 34.412159>,  <34.684860, 37.080780, 34.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741619, 37.197895, 34.412159>,  <34.836216, 37.393085, 34.748241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741619, 37.197895, 34.412159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168722, -0.830975, 0.530107,
		-0.956871, 0.267129, 0.114190,
		-0.236496, -0.487978, -0.840207,
		34.670670, 37.051502, 34.160095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221485, 36.958973, 34.953362>,  <34.836216, 37.393085, 34.748241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221485, 36.958973, 34.953362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377289, 36.810608, 34.616146>,  <34.470772, 36.721588, 34.413818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377289, 36.810608, 34.616146>,  <34.221485, 36.958973, 34.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377289, 36.810608, 34.616146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172435, -0.928506, 0.328850,
		-0.904737, 0.017279, -0.425620,
		0.389509, -0.370915, -0.843034,
		34.494141, 36.699333, 34.363235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661724, 36.584656, 34.709957>,  <34.221485, 36.958973, 34.953362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661724, 36.584656, 34.709957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003822, 36.442192, 34.559380>,  <34.209080, 36.356712, 34.469032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003822, 36.442192, 34.559380>,  <33.661724, 36.584656, 34.709957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003822, 36.442192, 34.559380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143463, -0.860735, 0.488419,
		-0.497977, -0.363710, -0.787232,
		0.855241, -0.356160, -0.376447,
		34.260395, 36.335342, 34.446445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482609, 35.915020, 34.525635>,  <33.661724, 36.584656, 34.709957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482609, 35.915020, 34.525635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882507, 35.921955, 34.519829>,  <34.122444, 35.926117, 34.516346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882507, 35.921955, 34.519829>,  <33.482609, 35.915020, 34.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882507, 35.921955, 34.519829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021053, -0.947781, 0.318225,
		-0.008241, -0.318449, -0.947904,
		0.999744, 0.017334, -0.014515,
		34.182430, 35.927155, 34.515476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710869, 35.270172, 34.116283>,  <33.482609, 35.915020, 34.525635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710869, 35.270172, 34.116283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017185, 35.394115, 34.341690>,  <34.200977, 35.468483, 34.476933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017185, 35.394115, 34.341690>,  <33.710869, 35.270172, 34.116283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017185, 35.394115, 34.341690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069526, -0.831236, 0.551555,
		0.639316, -0.461556, -0.615013,
		0.765794, 0.309859, 0.563513,
		34.246925, 35.487072, 34.510742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166840, 34.693260, 34.232689>,  <33.710869, 35.270172, 34.116283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166840, 34.693260, 34.232689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265759, 34.950981, 34.522163>,  <34.325111, 35.105614, 34.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265759, 34.950981, 34.522163>,  <34.166840, 34.693260, 34.232689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265759, 34.950981, 34.522163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180742, -0.764446, 0.618833,
		0.951932, -0.022237, -0.305500,
		0.247300, 0.644304, 0.723682,
		34.339947, 35.144272, 34.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721397, 34.377983, 34.631443>,  <34.166840, 34.693260, 34.232689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721397, 34.377983, 34.631443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574364, 34.665565, 34.867405>,  <34.486145, 34.838116, 35.008984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574364, 34.665565, 34.867405>,  <34.721397, 34.377983, 34.631443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574364, 34.665565, 34.867405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041250, -0.621085, 0.782657,
		0.929076, 0.312023, 0.198642,
		-0.367581, 0.718954, 0.589906,
		34.464088, 34.881252, 35.044376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191772, 34.419006, 35.237625>,  <34.721397, 34.377983, 34.631443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191772, 34.419006, 35.237625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841225, 34.572090, 35.354591>,  <34.630898, 34.663940, 35.424770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841225, 34.572090, 35.354591>,  <35.191772, 34.419006, 35.237625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841225, 34.572090, 35.354591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076134, -0.709574, 0.700506,
		0.475585, 0.591639, 0.650986,
		-0.876369, 0.382712, 0.292419,
		34.578316, 34.686905, 35.442318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127659, 34.362980, 35.979111>,  <35.191772, 34.419006, 35.237625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127659, 34.362980, 35.979111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744156, 34.401340, 35.872082>,  <34.514053, 34.424355, 35.807865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744156, 34.401340, 35.872082>,  <35.127659, 34.362980, 35.979111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744156, 34.401340, 35.872082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272500, -0.577854, 0.769304,
		-0.080841, 0.810487, 0.580152,
		-0.958754, 0.095900, -0.267572,
		34.456532, 34.430111, 35.791809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599579, 34.665379, 36.612087>,  <35.127659, 34.362980, 35.979111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599579, 34.665379, 36.612087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417500, 34.413155, 36.360630>,  <34.308250, 34.261822, 36.209755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417500, 34.413155, 36.360630>,  <34.599579, 34.665379, 36.612087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417500, 34.413155, 36.360630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391045, -0.492716, 0.777377,
		-0.799925, 0.599686, -0.022295,
		-0.455197, -0.630561, -0.628640,
		34.280941, 34.223988, 36.172039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101040, 35.077465, 36.294846>,  <34.599579, 34.665379, 36.612087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101040, 35.077465, 36.294846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431347, 35.018425, 36.512589>,  <35.629532, 34.983002, 36.643234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431347, 35.018425, 36.512589>,  <35.101040, 35.077465, 36.294846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431347, 35.018425, 36.512589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513572, 0.595742, -0.617524,
		-0.233151, 0.789497, 0.567745,
		0.825763, -0.147602, 0.544361,
		35.679077, 34.974144, 36.675896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320213, 35.771999, 36.571461>,  <35.101040, 35.077465, 36.294846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320213, 35.771999, 36.571461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640629, 35.532681, 36.563652>,  <35.832878, 35.389091, 36.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640629, 35.532681, 36.563652>,  <35.320213, 35.771999, 36.571461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640629, 35.532681, 36.563652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508850, 0.697740, -0.504213,
		0.315288, 0.393961, 0.863359,
		0.801040, -0.598293, -0.019522,
		35.880939, 35.353191, 36.557796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974602, 36.082947, 36.894260>,  <35.320213, 35.771999, 36.571461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974602, 36.082947, 36.894260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122074, 35.806953, 36.645100>,  <36.210556, 35.641357, 36.495605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122074, 35.806953, 36.645100>,  <35.974602, 36.082947, 36.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122074, 35.806953, 36.645100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645005, 0.672420, -0.363070,
		0.669361, -0.267917, 0.692947,
		0.368679, -0.689979, -0.622900,
		36.232677, 35.599960, 36.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611347, 36.180397, 37.031265>,  <35.974602, 36.082947, 36.894260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611347, 36.180397, 37.031265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630497, 35.964581, 36.695026>,  <36.641987, 35.835091, 36.493282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630497, 35.964581, 36.695026>,  <36.611347, 36.180397, 37.031265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630497, 35.964581, 36.695026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757886, 0.567795, -0.321275,
		0.650628, -0.621696, 0.436093,
		0.047876, -0.539539, -0.840598,
		36.644859, 35.802719, 36.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428947, 36.087406, 36.855984>,  <36.611347, 36.180397, 37.031265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428947, 36.087406, 36.855984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213024, 35.995216, 36.532135>,  <37.083469, 35.939903, 36.337826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213024, 35.995216, 36.532135>,  <37.428947, 36.087406, 36.855984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213024, 35.995216, 36.532135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638888, 0.514083, -0.572312,
		0.548114, -0.826198, -0.130261,
		-0.539808, -0.230470, -0.809624,
		37.051083, 35.926075, 36.289249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989906, 35.921021, 36.291401>,  <37.428947, 36.087406, 36.855984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989906, 35.921021, 36.291401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654888, 35.994492, 36.085571>,  <37.453876, 36.038574, 35.962074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654888, 35.994492, 36.085571>,  <37.989906, 35.921021, 36.291401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654888, 35.994492, 36.085571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473439, 0.714084, -0.515693,
		0.272726, -0.675533, -0.685037,
		-0.837542, 0.183681, -0.514573,
		37.403625, 36.049595, 35.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051785, 35.852848, 35.556599>,  <37.989906, 35.921021, 36.291401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051785, 35.852848, 35.556599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759636, 36.122032, 35.603394>,  <37.584347, 36.283543, 35.631470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759636, 36.122032, 35.603394>,  <38.051785, 35.852848, 35.556599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759636, 36.122032, 35.603394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435026, 0.590333, -0.679897,
		-0.526605, -0.445683, -0.723916,
		-0.730370, 0.672959, 0.116989,
		37.540524, 36.323921, 35.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052269, 36.059719, 34.907581>,  <38.051785, 35.852848, 35.556599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052269, 36.059719, 34.907581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840412, 36.340260, 35.098408>,  <37.713299, 36.508583, 35.212902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840412, 36.340260, 35.098408>,  <38.052269, 36.059719, 34.907581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840412, 36.340260, 35.098408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238153, 0.662762, -0.709950,
		-0.814102, -0.262406, -0.518055,
		-0.529642, 0.701348, 0.477063,
		37.681519, 36.550663, 35.241528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738361, 36.298897, 34.365719>,  <38.052269, 36.059719, 34.907581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738361, 36.298897, 34.365719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697132, 36.581867, 34.645409>,  <37.672394, 36.751652, 34.813225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697132, 36.581867, 34.645409>,  <37.738361, 36.298897, 34.365719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697132, 36.581867, 34.645409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165987, 0.705347, -0.689155,
		-0.980726, 0.045028, -0.190128,
		-0.103075, 0.707431, 0.699226,
		37.666210, 36.794098, 34.855175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305534, 36.828587, 33.993305>,  <37.738361, 36.298897, 34.365719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305534, 36.828587, 33.993305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485512, 36.980282, 34.316719>,  <37.593498, 37.071301, 34.510765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485512, 36.980282, 34.316719>,  <37.305534, 36.828587, 33.993305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485512, 36.980282, 34.316719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112831, 0.873959, -0.472720,
		-0.885900, 0.303926, 0.350443,
		0.449945, 0.379242, 0.808533,
		37.620495, 37.094055, 34.559280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996189, 37.391449, 34.025482>,  <37.305534, 36.828587, 33.993305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996189, 37.391449, 34.025482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344925, 37.413055, 34.220203>,  <37.554165, 37.426018, 34.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344925, 37.413055, 34.220203>,  <36.996189, 37.391449, 34.025482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344925, 37.413055, 34.220203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219671, 0.845210, -0.487201,
		-0.437771, 0.531698, 0.725020,
		0.871838, 0.054016, 0.486807,
		37.606476, 37.429260, 34.366245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977837, 38.025669, 34.225368>,  <36.996189, 37.391449, 34.025482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977837, 38.025669, 34.225368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361168, 37.921627, 34.272621>,  <37.591167, 37.859203, 34.300972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361168, 37.921627, 34.272621>,  <36.977837, 38.025669, 34.225368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361168, 37.921627, 34.272621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282072, 0.927007, -0.247169,
		-0.045223, 0.270191, 0.961744,
		0.958327, -0.260104, 0.118135,
		37.648666, 37.843597, 34.308064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316200, 38.499275, 34.612953>,  <36.977837, 38.025669, 34.225368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316200, 38.499275, 34.612953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608295, 38.322811, 34.404289>,  <37.783554, 38.216934, 34.279091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608295, 38.322811, 34.404289>,  <37.316200, 38.499275, 34.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608295, 38.322811, 34.404289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314662, 0.894934, -0.316355,
		0.606411, 0.066871, 0.792335,
		0.730242, -0.441159, -0.521656,
		37.827370, 38.190464, 34.247791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708618, 38.969139, 34.763275>,  <37.316200, 38.499275, 34.612953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708618, 38.969139, 34.763275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859898, 38.757164, 34.459663>,  <37.950665, 38.629978, 34.277496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859898, 38.757164, 34.459663>,  <37.708618, 38.969139, 34.763275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859898, 38.757164, 34.459663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234664, 0.848033, -0.475157,
		0.895488, 0.001586, 0.445082,
		0.378198, -0.529942, -0.759031,
		37.973358, 38.598183, 34.231953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483215, 39.162640, 34.700424>,  <37.708618, 38.969139, 34.763275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483215, 39.162640, 34.700424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377125, 39.015995, 34.343719>,  <38.313469, 38.928009, 34.129696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377125, 39.015995, 34.343719>,  <38.483215, 39.162640, 34.700424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377125, 39.015995, 34.343719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196324, 0.884981, -0.422216,
		0.943987, -0.287059, -0.162746,
		-0.265228, -0.366615, -0.891766,
		38.297558, 38.906010, 34.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905262, 39.415703, 34.160721>,  <38.483215, 39.162640, 34.700424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905262, 39.415703, 34.160721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583050, 39.313061, 33.947075>,  <38.389725, 39.251476, 33.818886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583050, 39.313061, 33.947075>,  <38.905262, 39.415703, 34.160721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583050, 39.313061, 33.947075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048799, 0.869585, -0.491366,
		0.590544, -0.421874, -0.687954,
		-0.805529, -0.256602, -0.534115,
		38.341393, 39.236080, 33.786839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078239, 39.516247, 33.476810>,  <38.905262, 39.415703, 34.160721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078239, 39.516247, 33.476810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678497, 39.503086, 33.471184>,  <38.438652, 39.495190, 33.467808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678497, 39.503086, 33.471184>,  <39.078239, 39.516247, 33.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678497, 39.503086, 33.471184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013361, 0.707814, -0.706273,
		0.033197, -0.705632, -0.707800,
		-0.999359, -0.032903, -0.014069,
		38.378689, 39.493214, 33.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844112, 39.523041, 32.721027>,  <39.078239, 39.516247, 33.476810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844112, 39.523041, 32.721027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534634, 39.657078, 32.936104>,  <38.348946, 39.737499, 33.065151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534634, 39.657078, 32.936104>,  <38.844112, 39.523041, 32.721027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534634, 39.657078, 32.936104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080486, 0.789824, -0.608030,
		-0.628425, -0.513706, -0.584112,
		-0.773695, 0.335089, 0.537691,
		38.302525, 39.757603, 33.097412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288776, 39.633945, 32.226570>,  <38.844112, 39.523041, 32.721027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288776, 39.633945, 32.226570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179081, 39.852520, 32.543102>,  <38.113266, 39.983665, 32.733021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179081, 39.852520, 32.543102>,  <38.288776, 39.633945, 32.226570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179081, 39.852520, 32.543102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187222, 0.776793, -0.601282,
		-0.943262, -0.313047, -0.110719,
		-0.274235, 0.546438, 0.791329,
		38.096809, 40.016453, 32.780502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765972, 40.081394, 31.938046>,  <38.288776, 39.633945, 32.226570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765972, 40.081394, 31.938046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845860, 40.269283, 32.282017>,  <37.893791, 40.382015, 32.488400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845860, 40.269283, 32.282017>,  <37.765972, 40.081394, 31.938046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845860, 40.269283, 32.282017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226227, 0.876002, -0.425960,
		-0.953380, -0.109466, 0.281218,
		0.199719, 0.469721, 0.859927,
		37.905777, 40.410198, 32.539993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276752, 40.592651, 32.001202>,  <37.765972, 40.081394, 31.938046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276752, 40.592651, 32.001202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564762, 40.700283, 32.257065>,  <37.737568, 40.764862, 32.410583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564762, 40.700283, 32.257065>,  <37.276752, 40.592651, 32.001202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564762, 40.700283, 32.257065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069058, 0.944972, -0.319781,
		-0.690509, 0.186075, 0.698981,
		0.720020, 0.269082, 0.639661,
		37.780769, 40.781006, 32.448963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028988, 41.183060, 32.286030>,  <37.276752, 40.592651, 32.001202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028988, 41.183060, 32.286030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428574, 41.185650, 32.304062>,  <37.668324, 41.187206, 32.314880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428574, 41.185650, 32.304062>,  <37.028988, 41.183060, 32.286030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428574, 41.185650, 32.304062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014278, 0.895379, -0.445076,
		-0.043246, 0.445258, 0.894358,
		0.998962, 0.006478, 0.045079,
		37.728264, 41.187592, 32.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231106, 41.926464, 32.206982>,  <37.028988, 41.183060, 32.286030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231106, 41.926464, 32.206982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596745, 41.776394, 32.145451>,  <37.816128, 41.686352, 32.108532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596745, 41.776394, 32.145451>,  <37.231106, 41.926464, 32.206982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596745, 41.776394, 32.145451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233116, 0.796641, -0.557692,
		0.331782, 0.473925, 0.815669,
		0.914099, -0.375178, -0.153832,
		37.870975, 41.663841, 32.099300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787727, 42.508350, 32.248955>,  <37.231106, 41.926464, 32.206982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787727, 42.508350, 32.248955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951248, 42.208866, 32.040222>,  <38.049362, 42.029175, 31.914984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951248, 42.208866, 32.040222>,  <37.787727, 42.508350, 32.248955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951248, 42.208866, 32.040222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270217, 0.645454, -0.714403,
		0.871699, 0.151046, 0.466181,
		0.408807, -0.748715, -0.521827,
		38.073891, 41.984253, 31.883675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540405, 42.693150, 32.069050>,  <37.787727, 42.508350, 32.248955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540405, 42.693150, 32.069050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401127, 42.415504, 31.817028>,  <38.317558, 42.248917, 31.665813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401127, 42.415504, 31.817028>,  <38.540405, 42.693150, 32.069050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401127, 42.415504, 31.817028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213399, 0.595779, -0.774279,
		0.912809, -0.404054, -0.059325,
		-0.348195, -0.694110, -0.630057,
		38.296669, 42.207272, 31.628012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016582, 42.607056, 31.505028>,  <38.540405, 42.693150, 32.069050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016582, 42.607056, 31.505028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671677, 42.466248, 31.359381>,  <38.464733, 42.381763, 31.271992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671677, 42.466248, 31.359381>,  <39.016582, 42.607056, 31.505028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671677, 42.466248, 31.359381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124818, 0.549063, -0.826408,
		0.490835, -0.758031, -0.429499,
		-0.862265, -0.352021, -0.364116,
		38.412998, 42.360641, 31.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228371, 42.351624, 30.821228>,  <39.016582, 42.607056, 31.505028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228371, 42.351624, 30.821228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833660, 42.416420, 30.819185>,  <38.596832, 42.455296, 30.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833660, 42.416420, 30.819185>,  <39.228371, 42.351624, 30.821228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833660, 42.416420, 30.819185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105209, 0.616300, -0.780452,
		-0.123276, -0.770671, -0.625195,
		-0.986780, 0.161987, -0.005106,
		38.537624, 42.465015, 30.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948994, 42.150551, 30.111732>,  <39.228371, 42.351624, 30.821228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948994, 42.150551, 30.111732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690754, 42.410412, 30.272314>,  <38.535812, 42.566326, 30.368664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690754, 42.410412, 30.272314>,  <38.948994, 42.150551, 30.111732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690754, 42.410412, 30.272314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090091, 0.586800, -0.804704,
		-0.758347, -0.483346, -0.437363,
		-0.645595, 0.649648, 0.401453,
		38.497074, 42.605305, 30.392750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517437, 42.270847, 29.628071>,  <38.948994, 42.150551, 30.111732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517437, 42.270847, 29.628071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490208, 42.575260, 29.886124>,  <38.473869, 42.757908, 30.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490208, 42.575260, 29.886124>,  <38.517437, 42.270847, 29.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490208, 42.575260, 29.886124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147743, 0.631814, -0.760910,
		-0.986681, -0.147108, 0.069430,
		-0.068070, 0.761033, 0.645132,
		38.469788, 42.803570, 30.079664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979244, 42.700714, 29.418158>,  <38.517437, 42.270847, 29.628071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979244, 42.700714, 29.418158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212418, 42.964249, 29.608362>,  <38.352322, 43.122372, 29.722485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212418, 42.964249, 29.608362>,  <37.979244, 42.700714, 29.418158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212418, 42.964249, 29.608362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153291, 0.663903, -0.731939,
		-0.797926, 0.353783, 0.488008,
		0.582937, 0.658840, 0.475514,
		38.387299, 43.161900, 29.751017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586834, 43.418564, 29.381277>,  <37.979244, 42.700714, 29.418158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586834, 43.418564, 29.381277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968380, 43.480064, 29.484434>,  <38.197308, 43.516964, 29.546328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968380, 43.480064, 29.484434>,  <37.586834, 43.418564, 29.381277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968380, 43.480064, 29.484434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038190, 0.789826, -0.612141,
		-0.297809, 0.593747, 0.747512,
		0.953861, 0.153754, 0.257893,
		38.254539, 43.526192, 29.561802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580650, 44.162930, 29.588512>,  <37.586834, 43.418564, 29.381277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580650, 44.162930, 29.588512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954716, 44.056305, 29.495201>,  <38.179153, 43.992329, 29.439215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954716, 44.056305, 29.495201>,  <37.580650, 44.162930, 29.588512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954716, 44.056305, 29.495201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083708, 0.806207, -0.585682,
		0.344194, 0.528179, 0.776246,
		0.935160, -0.266566, -0.233279,
		38.235264, 43.976334, 29.425217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889252, 44.738899, 29.772018>,  <37.580650, 44.162930, 29.588512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889252, 44.738899, 29.772018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146023, 44.559292, 29.523401>,  <38.300083, 44.451527, 29.374231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146023, 44.559292, 29.523401>,  <37.889252, 44.738899, 29.772018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146023, 44.559292, 29.523401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145954, 0.867335, -0.475844,
		0.752748, 0.214739, 0.622300,
		0.641925, -0.449018, -0.621542,
		38.338600, 44.424587, 29.336939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499878, 45.200897, 29.620401>,  <37.889252, 44.738899, 29.772018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499878, 45.200897, 29.620401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531391, 44.940010, 29.318830>,  <38.550301, 44.783478, 29.137888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531391, 44.940010, 29.318830>,  <38.499878, 45.200897, 29.620401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531391, 44.940010, 29.318830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313837, 0.734051, -0.602226,
		0.946203, -0.189166, 0.262520,
		0.078782, -0.652217, -0.753928,
		38.555027, 44.744347, 29.092651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179462, 45.340538, 29.229692>,  <38.499878, 45.200897, 29.620401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179462, 45.340538, 29.229692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944424, 45.133999, 28.980495>,  <38.803402, 45.010075, 28.830978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944424, 45.133999, 28.980495>,  <39.179462, 45.340538, 29.229692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944424, 45.133999, 28.980495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342703, 0.538653, -0.769680,
		0.733000, -0.665759, -0.139554,
		-0.587593, -0.516350, -0.622991,
		38.768147, 44.979095, 28.793598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540798, 45.113884, 28.707241>,  <39.179462, 45.340538, 29.229692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540798, 45.113884, 28.707241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 45.103264, 28.552551>,  <38.950840, 45.096893, 28.459738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172073, 45.103264, 28.552551>,  <39.540798, 45.113884, 28.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172073, 45.103264, 28.552551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299560, 0.584379, -0.754165,
		0.246018, -0.811047, -0.530734,
		-0.921813, -0.026551, -0.386725,
		38.895531, 45.095299, 28.436533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565971, 44.857376, 27.957848>,  <39.540798, 45.113884, 28.707241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565971, 44.857376, 27.957848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254387, 45.101231, 28.016598>,  <39.067436, 45.247543, 28.051847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254387, 45.101231, 28.016598>,  <39.565971, 44.857376, 27.957848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254387, 45.101231, 28.016598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329465, 0.597169, -0.731329,
		-0.533553, -0.521283, -0.666022,
		-0.778957, 0.609634, 0.146877,
		39.020699, 45.284122, 28.060661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194546, 45.337463, 27.534237>,  <39.565971, 44.857376, 27.957848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194546, 45.337463, 27.534237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416260, 45.196655, 27.232550>,  <39.549290, 45.112171, 27.051537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416260, 45.196655, 27.232550>,  <39.194546, 45.337463, 27.534237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416260, 45.196655, 27.232550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250039, -0.793880, 0.554288,
		-0.793880, -0.495820, -0.352019,
		-0.554288, 0.352019, 0.754219,
		39.582546, 45.091049, 27.006285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028358, 44.612934, 27.255083>,  <39.194546, 45.337463, 27.534237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028358, 44.612934, 27.255083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416367, 44.668423, 27.175257>,  <39.649170, 44.701714, 27.127361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416367, 44.668423, 27.175257>,  <39.028358, 44.612934, 27.255083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416367, 44.668423, 27.175257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209478, -0.893557, 0.397082,
		-0.123242, -0.426981, -0.895823,
		0.970016, 0.138718, -0.199567,
		39.707371, 44.710037, 27.115387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243530, 43.961029, 26.938383>,  <39.028358, 44.612934, 27.255083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243530, 43.961029, 26.938383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561283, 44.156715, 27.082394>,  <39.751934, 44.274128, 27.168800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561283, 44.156715, 27.082394>,  <39.243530, 43.961029, 26.938383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561283, 44.156715, 27.082394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306931, -0.834778, 0.457099,
		0.524164, -0.252608, -0.813290,
		0.794384, 0.489219, 0.360027,
		39.799599, 44.303482, 27.190401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789898, 43.463238, 26.839985>,  <39.243530, 43.961029, 26.938383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789898, 43.463238, 26.839985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953854, 43.718266, 27.100904>,  <40.052227, 43.871284, 27.257456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953854, 43.718266, 27.100904>,  <39.789898, 43.463238, 26.839985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953854, 43.718266, 27.100904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511562, -0.752760, 0.414314,
		0.755181, 0.163870, -0.634703,
		0.409886, 0.637573, 0.652300,
		40.076820, 43.909538, 27.296595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433483, 43.118858, 27.018784>,  <39.789898, 43.463238, 26.839985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433483, 43.118858, 27.018784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409531, 43.393860, 27.308266>,  <40.395161, 43.558861, 27.481955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409531, 43.393860, 27.308266>,  <40.433483, 43.118858, 27.018784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409531, 43.393860, 27.308266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709868, -0.480384, 0.515091,
		0.701785, 0.544580, -0.459272,
		-0.059881, 0.687506, 0.723706,
		40.391567, 43.600113, 27.525377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121071, 43.237236, 27.178402>,  <40.433483, 43.118858, 27.018784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121071, 43.237236, 27.178402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905254, 43.347931, 27.496473>,  <40.775764, 43.414349, 27.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905254, 43.347931, 27.496473>,  <41.121071, 43.237236, 27.178402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905254, 43.347931, 27.496473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652185, -0.459942, 0.602585,
		0.532496, 0.843723, 0.067671,
		-0.539539, 0.276740, 0.795181,
		40.743393, 43.430954, 27.735027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592827, 43.419601, 27.729460>,  <41.121071, 43.237236, 27.178402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592827, 43.419601, 27.729460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244076, 43.340473, 27.908653>,  <41.034824, 43.292995, 28.016169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244076, 43.340473, 27.908653>,  <41.592827, 43.419601, 27.729460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244076, 43.340473, 27.908653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477942, -0.543118, 0.690358,
		0.106739, 0.816020, 0.568082,
		-0.871882, -0.197822, 0.447982,
		40.982510, 43.281128, 28.043049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728340, 43.456882, 28.437519>,  <41.592827, 43.419601, 27.729460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728340, 43.456882, 28.437519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374626, 43.270119, 28.435163>,  <41.162399, 43.158062, 28.433750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374626, 43.270119, 28.435163>,  <41.728340, 43.456882, 28.437519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374626, 43.270119, 28.435163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240872, -0.466928, 0.850858,
		-0.400023, 0.750983, 0.525363,
		-0.884287, -0.466908, -0.005891,
		41.109341, 43.130047, 28.433395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473114, 43.481976, 29.167999>,  <41.728340, 43.456882, 28.437519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473114, 43.481976, 29.167999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258236, 43.183037, 29.011595>,  <41.129307, 43.003674, 28.917751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258236, 43.183037, 29.011595>,  <41.473114, 43.481976, 29.167999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258236, 43.183037, 29.011595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096853, -0.515173, 0.851596,
		-0.837876, 0.419607, 0.349133,
		-0.537200, -0.747347, -0.391011,
		41.097076, 42.958832, 28.894291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947075, 43.319695, 29.646032>,  <41.473114, 43.481976, 29.167999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947075, 43.319695, 29.646032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992844, 42.984520, 29.432575>,  <41.020306, 42.783417, 29.304501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992844, 42.984520, 29.432575>,  <40.947075, 43.319695, 29.646032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992844, 42.984520, 29.432575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, -0.537455, 0.843287,
		-0.993428, -0.094922, -0.063954,
		0.114419, -0.837933, -0.533645,
		41.027168, 42.733139, 29.272482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603138, 42.844059, 30.020800>,  <40.947075, 43.319695, 29.646032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603138, 42.844059, 30.020800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861065, 42.643040, 29.790442>,  <41.015820, 42.522427, 29.652227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861065, 42.643040, 29.790442>,  <40.603138, 42.844059, 30.020800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861065, 42.643040, 29.790442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141033, -0.662288, 0.735856,
		-0.751213, -0.555712, -0.356177,
		0.644816, -0.502552, -0.575893,
		41.054508, 42.492275, 29.617674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435345, 42.192360, 30.099710>,  <40.603138, 42.844059, 30.020800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435345, 42.192360, 30.099710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795944, 42.160610, 29.929537>,  <41.012306, 42.141560, 29.827433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795944, 42.160610, 29.929537>,  <40.435345, 42.192360, 30.099710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795944, 42.160610, 29.929537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214585, -0.771699, 0.598694,
		-0.375827, -0.631015, -0.678655,
		0.901503, -0.079376, -0.425432,
		41.066395, 42.136799, 29.801907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497509, 41.630600, 29.685469>,  <40.435345, 42.192360, 30.099710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497509, 41.630600, 29.685469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862045, 41.712959, 29.828054>,  <41.080769, 41.762375, 29.913607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862045, 41.712959, 29.828054>,  <40.497509, 41.630600, 29.685469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862045, 41.712959, 29.828054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103755, -0.952862, 0.285113,
		0.398365, -0.222850, -0.889743,
		0.911340, 0.205894, 0.356465,
		41.135448, 41.774727, 29.934994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792118, 41.096050, 29.479671>,  <40.497509, 41.630600, 29.685469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792118, 41.096050, 29.479671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964687, 41.265610, 29.798214>,  <41.068230, 41.367348, 29.989340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964687, 41.265610, 29.798214>,  <40.792118, 41.096050, 29.479671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964687, 41.265610, 29.798214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076683, -0.862304, 0.500551,
		0.898885, -0.277016, -0.339512,
		0.431423, 0.423903, 0.796355,
		41.094112, 41.392780, 30.037121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159489, 40.520660, 29.729118>,  <40.792118, 41.096050, 29.479671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159489, 40.520660, 29.729118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195507, 40.778973, 30.032398>,  <41.217117, 40.933960, 30.214365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195507, 40.778973, 30.032398>,  <41.159489, 40.520660, 29.729118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195507, 40.778973, 30.032398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034587, -0.758804, 0.650400,
		0.995337, -0.084789, -0.045990,
		0.090044, 0.645776, 0.758199,
		41.222519, 40.972706, 30.259857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633713, 40.183079, 30.155413>,  <41.159489, 40.520660, 29.729118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633713, 40.183079, 30.155413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461426, 40.457111, 30.390409>,  <41.358051, 40.621529, 30.531408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461426, 40.457111, 30.390409>,  <41.633713, 40.183079, 30.155413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461426, 40.457111, 30.390409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086204, -0.679225, 0.728850,
		0.898359, 0.263286, 0.351612,
		-0.430720, 0.685079, 0.587492,
		41.332211, 40.662636, 30.566656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909130, 40.146812, 30.768751>,  <41.633713, 40.183079, 30.155413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909130, 40.146812, 30.768751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553158, 40.315521, 30.838194>,  <41.339577, 40.416744, 30.879860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553158, 40.315521, 30.838194>,  <41.909130, 40.146812, 30.768751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553158, 40.315521, 30.838194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102150, -0.555271, 0.825372,
		0.444514, 0.716788, 0.537235,
		-0.889928, 0.421768, 0.173606,
		41.286179, 40.442051, 30.890276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971695, 40.290577, 31.470087>,  <41.909130, 40.146812, 30.768751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971695, 40.290577, 31.470087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584942, 40.304939, 31.369007>,  <41.352890, 40.313557, 31.308359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584942, 40.304939, 31.369007>,  <41.971695, 40.290577, 31.470087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584942, 40.304939, 31.369007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225488, -0.584053, 0.779767,
		-0.119588, 0.810921, 0.572805,
		-0.966878, 0.035910, -0.252699,
		41.294880, 40.315712, 31.293198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560722, 40.214340, 32.149853>,  <41.971695, 40.290577, 31.470087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560722, 40.214340, 32.149853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278820, 40.150204, 31.873415>,  <41.109680, 40.111721, 31.707552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278820, 40.150204, 31.873415>,  <41.560722, 40.214340, 32.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278820, 40.150204, 31.873415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468503, -0.626325, 0.623075,
		-0.532756, 0.762894, 0.366283,
		-0.704752, -0.160343, -0.691096,
		41.067394, 40.102100, 31.666086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977123, 40.265713, 32.570137>,  <41.560722, 40.214340, 32.149853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977123, 40.265713, 32.570137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884823, 40.073303, 32.231819>,  <40.829441, 39.957855, 32.028828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884823, 40.073303, 32.231819>,  <40.977123, 40.265713, 32.570137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884823, 40.073303, 32.231819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468519, -0.706917, 0.529866,
		-0.852786, 0.518537, -0.062249,
		-0.230750, -0.481027, -0.845794,
		40.815598, 39.928993, 31.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283699, 40.033180, 32.721424>,  <40.977123, 40.265713, 32.570137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283699, 40.033180, 32.721424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400154, 39.826126, 32.399605>,  <40.470028, 39.701893, 32.206512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400154, 39.826126, 32.399605>,  <40.283699, 40.033180, 32.721424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400154, 39.826126, 32.399605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414758, -0.826125, 0.381435,
		-0.862099, 0.222641, -0.455210,
		0.291138, -0.517637, -0.804544,
		40.487495, 39.670834, 32.158241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643684, 39.653408, 32.275566>,  <40.283699, 40.033180, 32.721424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643684, 39.653408, 32.275566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992924, 39.468872, 32.212494>,  <40.202469, 39.358150, 32.174652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992924, 39.468872, 32.212494>,  <39.643684, 39.653408, 32.275566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992924, 39.468872, 32.212494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329368, -0.796600, 0.506896,
		-0.359458, -0.390637, -0.847462,
		0.873102, -0.461335, -0.157681,
		40.254856, 39.330471, 32.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377125, 39.007099, 32.283459>,  <39.643684, 39.653408, 32.275566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377125, 39.007099, 32.283459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772839, 38.950436, 32.297588>,  <40.010265, 38.916439, 32.306065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772839, 38.950436, 32.297588>,  <39.377125, 39.007099, 32.283459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772839, 38.950436, 32.297588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142307, -0.881604, 0.450025,
		-0.032609, -0.450229, -0.892317,
		0.989285, -0.141658, 0.035322,
		40.069626, 38.907940, 32.308186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427948, 38.242107, 32.156151>,  <39.377125, 39.007099, 32.283459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427948, 38.242107, 32.156151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763474, 38.369637, 32.332672>,  <39.964787, 38.446152, 32.438583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763474, 38.369637, 32.332672>,  <39.427948, 38.242107, 32.156151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763474, 38.369637, 32.332672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001256, -0.809457, 0.587178,
		0.544421, -0.493086, -0.678581,
		0.838811, 0.318820, 0.441305,
		40.015118, 38.465282, 32.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841408, 37.683960, 32.341953>,  <39.427948, 38.242107, 32.156151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841408, 37.683960, 32.341953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001789, 37.935043, 32.608852>,  <40.098019, 38.085693, 32.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001789, 37.935043, 32.608852>,  <39.841408, 37.683960, 32.341953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001789, 37.935043, 32.608852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107771, -0.690984, 0.714791,
		0.909738, -0.358508, -0.209403,
		0.400952, 0.627705, 0.667251,
		40.122074, 38.123356, 32.809029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526272, 37.309654, 32.678513>,  <39.841408, 37.683960, 32.341953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526272, 37.309654, 32.678513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351223, 37.602222, 32.887707>,  <40.246193, 37.777763, 33.013222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351223, 37.602222, 32.887707>,  <40.526272, 37.309654, 32.678513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351223, 37.602222, 32.887707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019871, -0.573626, 0.818876,
		0.898940, 0.368750, 0.236497,
		-0.437621, 0.731421, 0.522983,
		40.219936, 37.821648, 33.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971684, 37.465122, 33.232033>,  <40.526272, 37.309654, 32.678513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971684, 37.465122, 33.232033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648342, 37.638271, 33.391628>,  <40.454338, 37.742161, 33.487385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648342, 37.638271, 33.391628>,  <40.971684, 37.465122, 33.232033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648342, 37.638271, 33.391628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106057, -0.559576, 0.821965,
		0.579067, 0.706753, 0.406425,
		-0.808352, 0.432869, 0.398988,
		40.405838, 37.768131, 33.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046295, 37.729427, 33.989819>,  <40.971684, 37.465122, 33.232033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046295, 37.729427, 33.989819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667622, 37.614285, 33.931938>,  <40.440418, 37.545200, 33.897209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667622, 37.614285, 33.931938>,  <41.046295, 37.729427, 33.989819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667622, 37.614285, 33.931938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039507, -0.549466, 0.834581,
		-0.319745, 0.784364, 0.531541,
		-0.946680, -0.287853, -0.144702,
		40.383617, 37.527927, 33.888527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681129, 37.912548, 34.651524>,  <41.046295, 37.729427, 33.989819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681129, 37.912548, 34.651524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480316, 37.634991, 34.445038>,  <40.359829, 37.468456, 34.321148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480316, 37.634991, 34.445038>,  <40.681129, 37.912548, 34.651524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480316, 37.634991, 34.445038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150877, -0.657993, 0.737754,
		-0.851588, 0.292490, 0.435025,
		-0.502029, -0.693898, -0.516210,
		40.329708, 37.426823, 34.290176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402214, 37.598438, 35.173992>,  <40.681129, 37.912548, 34.651524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402214, 37.598438, 35.173992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324402, 37.335224, 34.883022>,  <40.277714, 37.177296, 34.708439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324402, 37.335224, 34.883022>,  <40.402214, 37.598438, 35.173992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324402, 37.335224, 34.883022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003816, -0.741078, 0.671409,
		-0.980888, 0.133387, 0.141654,
		-0.194534, -0.658036, -0.727423,
		40.266041, 37.137814, 34.664795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895920, 37.126324, 35.435905>,  <40.402214, 37.598438, 35.173992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895920, 37.126324, 35.435905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107174, 36.949211, 35.146072>,  <40.233925, 36.842945, 34.972172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107174, 36.949211, 35.146072>,  <39.895920, 37.126324, 35.435905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107174, 36.949211, 35.146072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086012, -0.821012, 0.564395,
		-0.844797, -0.360396, -0.395515,
		0.528129, -0.442780, -0.724587,
		40.265614, 36.816380, 34.928696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580807, 36.513756, 35.415119>,  <39.895920, 37.126324, 35.435905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580807, 36.513756, 35.415119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935692, 36.448200, 35.242615>,  <40.148624, 36.408867, 35.139111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935692, 36.448200, 35.242615>,  <39.580807, 36.513756, 35.415119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935692, 36.448200, 35.242615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092778, -0.852300, 0.514758,
		-0.451930, -0.496713, -0.740969,
		0.887216, -0.163889, -0.431264,
		40.201855, 36.399033, 35.113235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576660, 35.821049, 35.285160>,  <39.580807, 36.513756, 35.415119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576660, 35.821049, 35.285160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967308, 35.905174, 35.267365>,  <40.201698, 35.955650, 35.256687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967308, 35.905174, 35.267365>,  <39.576660, 35.821049, 35.285160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967308, 35.905174, 35.267365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203068, -0.834720, 0.511865,
		0.070516, -0.508933, -0.857913,
		0.976622, 0.210309, -0.044487,
		40.260296, 35.968266, 35.254017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798534, 35.187611, 35.212700>,  <39.576660, 35.821049, 35.285160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798534, 35.187611, 35.212700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111294, 35.406227, 35.332645>,  <40.298950, 35.537399, 35.404613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111294, 35.406227, 35.332645>,  <39.798534, 35.187611, 35.212700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111294, 35.406227, 35.332645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432085, -0.821860, 0.371279,
		0.449371, -0.160735, -0.878766,
		0.781901, 0.546544, 0.299869,
		40.345863, 35.570190, 35.422607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355053, 34.913300, 34.995090>,  <39.798534, 35.187611, 35.212700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355053, 34.913300, 34.995090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512737, 35.121532, 35.298035>,  <40.607349, 35.246471, 35.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512737, 35.121532, 35.298035>,  <40.355053, 34.913300, 34.995090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512737, 35.121532, 35.298035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456934, -0.826041, 0.329951,
		0.797375, 0.215992, -0.563508,
		0.394213, 0.520580, 0.757358,
		40.631001, 35.277706, 35.525242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112217, 34.792774, 35.059246>,  <40.355053, 34.913300, 34.995090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112217, 34.792774, 35.059246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962746, 34.917065, 35.408833>,  <40.873062, 34.991638, 35.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962746, 34.917065, 35.408833>,  <41.112217, 34.792774, 35.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962746, 34.917065, 35.408833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387621, -0.803692, 0.451474,
		0.842681, 0.507475, 0.179883,
		-0.373682, 0.310722, 0.873964,
		40.850639, 35.010281, 35.671021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600132, 34.645035, 35.514156>,  <41.112217, 34.792774, 35.059246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600132, 34.645035, 35.514156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241726, 34.642696, 35.691753>,  <41.026684, 34.641293, 35.798309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241726, 34.642696, 35.691753>,  <41.600132, 34.645035, 35.514156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241726, 34.642696, 35.691753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188246, -0.910605, 0.367916,
		0.402149, 0.413237, 0.817014,
		-0.896013, -0.005843, 0.443989,
		40.972923, 34.640942, 35.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806389, 34.422478, 36.063080>,  <41.600132, 34.645035, 35.514156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806389, 34.422478, 36.063080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409996, 34.376053, 36.089851>,  <41.172161, 34.348198, 36.105915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409996, 34.376053, 36.089851>,  <41.806389, 34.422478, 36.063080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409996, 34.376053, 36.089851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133842, -0.835318, 0.533226,
		-0.005981, 0.537377, 0.843321,
		-0.990985, -0.116061, 0.066927,
		41.112701, 34.341236, 36.109928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598595, 34.422272, 36.814892>,  <41.806389, 34.422478, 36.063080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598595, 34.422272, 36.814892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306942, 34.221123, 36.629211>,  <41.131950, 34.100433, 36.517803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306942, 34.221123, 36.629211>,  <41.598595, 34.422272, 36.814892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306942, 34.221123, 36.629211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078712, -0.735409, 0.673036,
		-0.679829, 0.454196, 0.575794,
		-0.729134, -0.502871, -0.464202,
		41.088203, 34.070263, 36.489952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153709, 34.139359, 37.342487>,  <41.598595, 34.422272, 36.814892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153709, 34.139359, 37.342487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061253, 33.926186, 37.016899>,  <41.005779, 33.798283, 36.821545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061253, 33.926186, 37.016899>,  <41.153709, 34.139359, 37.342487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061253, 33.926186, 37.016899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141605, -0.809292, 0.570083,
		-0.962559, 0.247034, 0.111598,
		-0.231145, -0.532936, -0.813973,
		40.991909, 33.766304, 36.772709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417526, 33.824100, 37.402958>,  <41.153709, 34.139359, 37.342487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417526, 33.824100, 37.402958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693375, 33.632149, 37.186024>,  <40.858883, 33.516979, 37.055862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693375, 33.632149, 37.186024>,  <40.417526, 33.824100, 37.402958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693375, 33.632149, 37.186024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035517, -0.770427, 0.636538,
		-0.723296, -0.419710, -0.548349,
		0.689624, -0.479881, -0.542340,
		40.900261, 33.488186, 37.023323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246990, 33.114655, 37.347301>,  <40.417526, 33.824100, 37.402958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246990, 33.114655, 37.347301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639328, 33.095299, 37.271824>,  <40.874729, 33.083683, 37.226536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639328, 33.095299, 37.271824>,  <40.246990, 33.114655, 37.347301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639328, 33.095299, 37.271824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049743, -0.874321, 0.482792,
		-0.188346, -0.482929, -0.855164,
		0.980842, -0.048393, -0.188698,
		40.933582, 33.080780, 37.215214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391224, 32.505444, 36.985043>,  <40.246990, 33.114655, 37.347301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391224, 32.505444, 36.985043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747700, 32.610596, 37.132923>,  <40.961586, 32.673687, 37.221649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747700, 32.610596, 37.132923>,  <40.391224, 32.505444, 36.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747700, 32.610596, 37.132923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156350, -0.943036, 0.293662,
		0.425838, -0.203906, -0.881524,
		0.891189, 0.262879, 0.369699,
		41.015057, 32.689461, 37.243832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929039, 32.071209, 36.662304>,  <40.391224, 32.505444, 36.985043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929039, 32.071209, 36.662304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073212, 32.186726, 37.017086>,  <41.159714, 32.256035, 37.229954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073212, 32.186726, 37.017086>,  <40.929039, 32.071209, 36.662304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073212, 32.186726, 37.017086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043144, -0.944686, 0.325124,
		0.931788, -0.155452, -0.328034,
		0.360431, 0.288794, 0.886954,
		41.181339, 32.273365, 37.283173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477657, 31.733534, 36.865536>,  <40.929039, 32.071209, 36.662304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477657, 31.733534, 36.865536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386417, 31.852234, 37.236462>,  <41.331673, 31.923454, 37.459019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386417, 31.852234, 37.236462>,  <41.477657, 31.733534, 36.865536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386417, 31.852234, 37.236462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168658, -0.925980, 0.337810,
		0.958919, 0.233452, 0.161164,
		-0.228097, 0.296751, 0.927314,
		41.317989, 31.941259, 37.514656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814747, 31.335520, 37.329338>,  <41.477657, 31.733534, 36.865536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814747, 31.335520, 37.329338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550880, 31.478380, 37.593845>,  <41.392559, 31.564096, 37.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550880, 31.478380, 37.593845>,  <41.814747, 31.335520, 37.329338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550880, 31.478380, 37.593845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229970, -0.741741, 0.630026,
		0.715506, 0.567682, 0.407171,
		-0.659671, 0.357150, 0.661270,
		41.352978, 31.585526, 37.792225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073738, 31.349907, 37.885513>,  <41.814747, 31.335520, 37.329338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073738, 31.349907, 37.885513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689545, 31.329330, 37.994923>,  <41.459026, 31.316984, 38.060570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689545, 31.329330, 37.994923>,  <42.073738, 31.349907, 37.885513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689545, 31.329330, 37.994923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230664, -0.697089, 0.678867,
		0.155750, 0.715137, 0.681412,
		-0.960488, -0.051444, 0.273527,
		41.401398, 31.313898, 38.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080441, 31.494772, 38.676994>,  <42.073738, 31.349907, 37.885513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080441, 31.494772, 38.676994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745819, 31.296604, 38.583405>,  <41.545048, 31.177704, 38.527252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745819, 31.296604, 38.583405>,  <42.080441, 31.494772, 38.676994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745819, 31.296604, 38.583405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182930, -0.655098, 0.733065,
		-0.516452, 0.570443, 0.638648,
		-0.836549, -0.495420, -0.233975,
		41.494854, 31.147978, 38.513210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772076, 31.336891, 39.329063>,  <42.080441, 31.494772, 38.676994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772076, 31.336891, 39.329063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612061, 31.077805, 39.069698>,  <41.516052, 30.922354, 38.914082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612061, 31.077805, 39.069698>,  <41.772076, 31.336891, 39.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612061, 31.077805, 39.069698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176740, -0.748727, 0.638883,
		-0.899296, 0.140977, 0.413996,
		-0.400037, -0.647714, -0.648411,
		41.492050, 30.883490, 38.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675285, 30.854923, 39.776173>,  <41.772076, 31.336891, 39.329063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675285, 30.854923, 39.776173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570465, 30.677143, 39.433525>,  <41.507572, 30.570475, 39.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570465, 30.677143, 39.433525>,  <41.675285, 30.854923, 39.776173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570465, 30.677143, 39.433525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060575, -0.893461, 0.445036,
		-0.963152, 0.064731, 0.261053,
		-0.262048, -0.444451, -0.856618,
		41.491852, 30.543808, 39.176540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214180, 30.323841, 39.866592>,  <41.675285, 30.854923, 39.776173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214180, 30.323841, 39.866592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298599, 30.214252, 39.491276>,  <41.349251, 30.148500, 39.266087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298599, 30.214252, 39.491276>,  <41.214180, 30.323841, 39.866592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298599, 30.214252, 39.491276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043668, -0.961602, 0.270952,
		-0.976500, -0.016211, -0.214909,
		0.211049, -0.273969, -0.938296,
		41.361916, 30.132061, 39.209785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856426, 29.685560, 39.801975>,  <41.214180, 30.323841, 39.866592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856426, 29.685560, 39.801975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139439, 29.670523, 39.519703>,  <41.309246, 29.661501, 39.350342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139439, 29.670523, 39.519703>,  <40.856426, 29.685560, 39.801975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139439, 29.670523, 39.519703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075922, -0.996848, -0.023017,
		-0.702588, 0.069862, -0.708159,
		0.707535, -0.037593, -0.705677,
		41.351700, 29.659245, 39.307999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727161, 29.134190, 39.578281>,  <40.856426, 29.685560, 39.801975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727161, 29.134190, 39.578281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066883, 29.171049, 39.370361>,  <41.270718, 29.193165, 39.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066883, 29.171049, 39.370361>,  <40.727161, 29.134190, 39.578281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066883, 29.171049, 39.370361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015066, -0.988477, -0.150619,
		-0.527689, 0.120090, -0.840906,
		0.849304, 0.092149, -0.519799,
		41.321674, 29.198694, 39.214420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737736, 28.869358, 38.939209>,  <40.727161, 29.134190, 39.578281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737736, 28.869358, 38.939209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123692, 28.838106, 39.039513>,  <41.355267, 28.819355, 39.099693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123692, 28.838106, 39.039513>,  <40.737736, 28.869358, 38.939209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123692, 28.838106, 39.039513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029061, -0.917111, -0.397572,
		0.261034, 0.390901, -0.882642,
		0.964892, -0.078129, 0.250758,
		41.413158, 28.814667, 39.114738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067989, 28.702412, 38.347916>,  <40.737736, 28.869358, 38.939209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067989, 28.702412, 38.347916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319077, 28.569567, 38.629532>,  <41.469727, 28.489861, 38.798500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319077, 28.569567, 38.629532>,  <41.067989, 28.702412, 38.347916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319077, 28.569567, 38.629532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036222, -0.890982, -0.452592,
		0.777600, 0.309601, -0.547253,
		0.627716, -0.332112, 0.704042,
		41.507393, 28.469933, 38.840744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613083, 28.286430, 37.983871>,  <41.067989, 28.702412, 38.347916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613083, 28.286430, 37.983871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611649, 28.189882, 38.372044>,  <41.610786, 28.131954, 38.604946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611649, 28.189882, 38.372044>,  <41.613083, 28.286430, 37.983871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611649, 28.189882, 38.372044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019060, -0.970273, -0.241262,
		0.999812, 0.017631, 0.008082,
		-0.003588, -0.241371, 0.970426,
		41.610573, 28.117472, 38.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110420, 27.783306, 38.144951>,  <41.613083, 28.286430, 37.983871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110420, 27.783306, 38.144951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809254, 27.751081, 38.406216>,  <41.628551, 27.731747, 38.562977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809254, 27.751081, 38.406216>,  <42.110420, 27.783306, 38.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809254, 27.751081, 38.406216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126678, -0.956179, -0.263957,
		0.645807, -0.281480, 0.709720,
		-0.752918, -0.080559, 0.653165,
		41.583378, 27.726913, 38.602165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298431, 27.235126, 38.552837>,  <42.110420, 27.783306, 38.144951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298431, 27.235126, 38.552837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903721, 27.294704, 38.527260>,  <41.666893, 27.330450, 38.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903721, 27.294704, 38.527260>,  <42.298431, 27.235126, 38.552837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903721, 27.294704, 38.527260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126464, -0.954214, -0.271075,
		-0.101387, -0.259404, 0.960432,
		-0.986776, 0.148943, -0.063940,
		41.607689, 27.339388, 38.508080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096077, 26.683882, 38.892334>,  <42.298431, 27.235126, 38.552837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096077, 26.683882, 38.892334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805626, 26.823811, 38.655567>,  <41.631355, 26.907768, 38.513508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805626, 26.823811, 38.655567>,  <42.096077, 26.683882, 38.892334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805626, 26.823811, 38.655567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263145, -0.936742, -0.230801,
		-0.635214, -0.011830, 0.772246,
		-0.726125, 0.349820, -0.591918,
		41.587788, 26.928757, 38.477993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507938, 26.347790, 39.008469>,  <42.096077, 26.683882, 38.892334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507938, 26.347790, 39.008469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418335, 26.501791, 38.650341>,  <41.364571, 26.594193, 38.435467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418335, 26.501791, 38.650341>,  <41.507938, 26.347790, 39.008469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418335, 26.501791, 38.650341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379518, -0.880606, -0.283723,
		-0.897655, 0.276232, 0.343382,
		-0.224011, 0.385005, -0.895315,
		41.351131, 26.617292, 38.381748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797009, 26.240288, 38.907356>,  <41.507938, 26.347790, 39.008469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797009, 26.240288, 38.907356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988628, 26.271511, 38.557632>,  <41.103600, 26.290245, 38.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988628, 26.271511, 38.557632>,  <40.797009, 26.240288, 38.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988628, 26.271511, 38.557632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465008, -0.822227, -0.328193,
		-0.744500, 0.563781, -0.357588,
		0.479048, 0.078058, -0.874311,
		41.132343, 26.294928, 38.295338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360134, 26.016176, 38.377319>,  <40.797009, 26.240288, 38.907356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360134, 26.016176, 38.377319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700924, 26.014421, 38.167892>,  <40.905399, 26.013369, 38.042236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700924, 26.014421, 38.167892>,  <40.360134, 26.016176, 38.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700924, 26.014421, 38.167892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335000, -0.773065, -0.538652,
		-0.402385, 0.634312, -0.660102,
		0.851975, -0.004389, -0.523564,
		40.956516, 26.013105, 38.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346809, 26.091824, 37.573071>,  <40.360134, 26.016176, 38.377319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346809, 26.091824, 37.573071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649857, 25.854843, 37.682625>,  <40.831684, 25.712654, 37.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649857, 25.854843, 37.682625>,  <40.346809, 26.091824, 37.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649857, 25.854843, 37.682625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387770, -0.746097, -0.541270,
		0.525019, 0.303874, -0.794994,
		0.757621, -0.592452, 0.273882,
		40.877144, 25.677107, 37.764790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276535, 25.869179, 36.943470>,  <40.346809, 26.091824, 37.573071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276535, 25.869179, 36.943470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326309, 25.507681, 36.779633>,  <40.356174, 25.290783, 36.681332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326309, 25.507681, 36.779633>,  <40.276535, 25.869179, 36.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326309, 25.507681, 36.779633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531355, 0.409316, -0.741703,
		0.837960, -0.125341, 0.531143,
		0.124439, -0.903742, -0.409591,
		40.363640, 25.236559, 36.656754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025303, 25.681541, 36.886360>,  <40.276535, 25.869179, 36.943470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025303, 25.681541, 36.886360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787117, 25.569807, 36.585056>,  <40.644207, 25.502768, 36.404274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787117, 25.569807, 36.585056>,  <41.025303, 25.681541, 36.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787117, 25.569807, 36.585056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464448, 0.645350, -0.606475,
		0.655526, -0.710981, -0.254543,
		-0.595461, -0.279338, -0.753257,
		40.608479, 25.486008, 36.359077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746864, 25.905285, 37.235092>,  <41.025303, 25.681541, 36.886360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746864, 25.905285, 37.235092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395462, 25.993963, 37.404366>,  <41.184620, 26.047171, 37.505928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395462, 25.993963, 37.404366>,  <41.746864, 25.905285, 37.235092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395462, 25.993963, 37.404366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422929, 0.772859, 0.473096,
		-0.222174, 0.594592, -0.772722,
		-0.878504, 0.221697, 0.423180,
		41.131912, 26.060472, 37.531319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560947, 26.556398, 37.062157>,  <41.746864, 25.905285, 37.235092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560947, 26.556398, 37.062157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313038, 26.493015, 37.369602>,  <41.164291, 26.454985, 37.554070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313038, 26.493015, 37.369602>,  <41.560947, 26.556398, 37.062157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313038, 26.493015, 37.369602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330794, 0.835399, 0.438959,
		-0.711659, 0.526308, -0.465340,
		-0.619772, -0.158457, 0.768618,
		41.127106, 26.445478, 37.600189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109272, 27.141630, 37.229691>,  <41.560947, 26.556398, 37.062157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109272, 27.141630, 37.229691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161610, 26.971863, 37.588074>,  <41.193012, 26.870003, 37.803104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161610, 26.971863, 37.588074>,  <41.109272, 27.141630, 37.229691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161610, 26.971863, 37.588074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383881, 0.854923, 0.348916,
		-0.914065, 0.298289, 0.274789,
		0.130846, -0.424419, 0.895962,
		41.200863, 26.844538, 37.856861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597378, 27.417263, 37.711655>,  <41.109272, 27.141630, 37.229691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597378, 27.417263, 37.711655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889294, 27.268738, 37.941277>,  <41.064442, 27.179623, 38.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889294, 27.268738, 37.941277>,  <40.597378, 27.417263, 37.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889294, 27.268738, 37.941277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100553, 0.888821, 0.447086,
		-0.676239, -0.268556, 0.685987,
		0.729787, -0.371315, 0.574052,
		41.108231, 27.157343, 38.113491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341923, 27.516695, 38.425713>,  <40.597378, 27.417263, 37.711655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341923, 27.516695, 38.425713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736736, 27.454203, 38.440475>,  <40.973625, 27.416708, 38.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736736, 27.454203, 38.440475>,  <40.341923, 27.516695, 38.425713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736736, 27.454203, 38.440475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109566, 0.823647, 0.556418,
		-0.117323, -0.545159, 0.830083,
		0.987031, -0.156229, 0.036902,
		41.032845, 27.407333, 38.451546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719761, 27.716331, 39.059414>,  <40.341923, 27.516695, 38.425713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719761, 27.716331, 39.059414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030781, 27.483118, 38.965191>,  <41.217392, 27.343191, 38.908657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030781, 27.483118, 38.965191>,  <40.719761, 27.716331, 39.059414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030781, 27.483118, 38.965191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623255, 0.764273, 0.165646,
		0.083451, -0.275609, 0.957640,
		0.777553, -0.583031, -0.235554,
		41.264046, 27.308208, 38.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235882, 27.601967, 39.593525>,  <40.719761, 27.716331, 39.059414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235882, 27.601967, 39.593525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442814, 27.555592, 39.254368>,  <41.566975, 27.527767, 39.050873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442814, 27.555592, 39.254368>,  <41.235882, 27.601967, 39.593525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442814, 27.555592, 39.254368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557407, 0.797440, 0.231055,
		0.649358, -0.592155, 0.477165,
		0.517331, -0.115937, -0.847896,
		41.598015, 27.520811, 39.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937241, 27.515730, 39.746975>,  <41.235882, 27.601967, 39.593525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937241, 27.515730, 39.746975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830040, 27.697798, 39.407330>,  <41.765720, 27.807039, 39.203541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830040, 27.697798, 39.407330>,  <41.937241, 27.515730, 39.746975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830040, 27.697798, 39.407330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353143, 0.866424, 0.352987,
		0.896362, -0.205256, -0.392945,
		-0.268004, 0.455170, -0.849114,
		41.749638, 27.834349, 39.152596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380104, 28.159140, 39.685081>,  <41.937241, 27.515730, 39.746975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380104, 28.159140, 39.685081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 28.232643, 39.421875>,  <41.912754, 28.276745, 39.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 28.232643, 39.421875>,  <42.380104, 28.159140, 39.685081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088009, 28.232643, 39.421875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113964, 0.982417, 0.147883,
		0.673626, 0.032999, -0.738336,
		-0.730233, 0.183761, -0.658021,
		41.868938, 28.287771, 39.224468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632565, 28.689579, 39.359161>,  <42.380104, 28.159140, 39.685081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632565, 28.689579, 39.359161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241619, 28.717970, 39.279446>,  <42.007050, 28.735004, 39.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241619, 28.717970, 39.279446>,  <42.632565, 28.689579, 39.359161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241619, 28.717970, 39.279446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044519, 0.989947, 0.134251,
		0.206812, 0.122340, -0.970702,
		-0.977367, 0.070979, -0.199287,
		41.948410, 28.739264, 39.219658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582790, 29.430405, 39.226051>,  <42.632565, 28.689579, 39.359161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582790, 29.430405, 39.226051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200619, 29.324842, 39.173115>,  <41.971317, 29.261505, 39.141354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200619, 29.324842, 39.173115>,  <42.582790, 29.430405, 39.226051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200619, 29.324842, 39.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247279, 0.960235, -0.129622,
		0.161287, -0.091119, -0.982692,
		-0.955426, -0.263905, -0.132342,
		41.913990, 29.245670, 39.133411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387688, 29.697441, 38.503792>,  <42.582790, 29.430405, 39.226051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387688, 29.697441, 38.503792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073704, 29.675661, 38.750652>,  <41.885311, 29.662594, 38.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073704, 29.675661, 38.750652>,  <42.387688, 29.697441, 38.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073704, 29.675661, 38.750652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291783, 0.911230, -0.290729,
		-0.546533, -0.408284, -0.731168,
		-0.784962, -0.054449, 0.617147,
		41.838215, 29.659327, 38.935795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756241, 29.763514, 38.129868>,  <42.387688, 29.697441, 38.503792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756241, 29.763514, 38.129868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691338, 29.880083, 38.506962>,  <41.652397, 29.950026, 38.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691338, 29.880083, 38.506962>,  <41.756241, 29.763514, 38.129868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691338, 29.880083, 38.506962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506205, 0.795514, -0.333038,
		-0.847012, -0.531253, 0.018444,
		-0.162255, 0.291424, 0.942733,
		41.642662, 29.967510, 38.789783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074718, 29.869659, 38.206444>,  <41.756241, 29.763514, 38.129868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074718, 29.869659, 38.206444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234928, 30.083946, 38.503788>,  <41.331055, 30.212519, 38.682194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234928, 30.083946, 38.503788>,  <41.074718, 29.869659, 38.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234928, 30.083946, 38.503788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517152, 0.801877, -0.299244,
		-0.756394, -0.264575, 0.598221,
		0.400527, 0.535718, 0.743360,
		41.355087, 30.244661, 38.726795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606373, 30.410755, 38.134922>,  <41.074718, 29.869659, 38.206444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606373, 30.410755, 38.134922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873302, 30.567003, 38.388565>,  <41.033463, 30.660753, 38.540749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873302, 30.567003, 38.388565>,  <40.606373, 30.410755, 38.134922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873302, 30.567003, 38.388565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265318, 0.920246, -0.287670,
		-0.695903, 0.023730, 0.717744,
		0.667327, 0.390621, 0.634105,
		41.073502, 30.684189, 38.578796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234985, 31.017101, 38.309681>,  <40.606373, 30.410755, 38.134922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234985, 31.017101, 38.309681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 31.045305, 38.373001>,  <40.865303, 31.062227, 38.410992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 31.045305, 38.373001>,  <40.234985, 31.017101, 38.309681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628933, 31.045305, 38.373001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011992, 0.939019, -0.343657,
		-0.172878, 0.336559, 0.925657,
		0.984870, 0.070511, 0.158299,
		40.924393, 31.066458, 38.420490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292107, 31.674660, 38.194294>,  <40.234985, 31.017101, 38.309681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292107, 31.674660, 38.194294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665417, 31.592140, 38.311897>,  <40.889400, 31.542629, 38.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665417, 31.592140, 38.311897>,  <40.292107, 31.674660, 38.194294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665417, 31.592140, 38.311897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298089, 0.901542, -0.313632,
		-0.200362, 0.380346, 0.902880,
		0.933273, -0.206299, 0.294012,
		40.945400, 31.530251, 38.400101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487537, 32.199928, 38.576424>,  <40.292107, 31.674660, 38.194294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487537, 32.199928, 38.576424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765495, 32.011635, 38.358971>,  <40.932270, 31.898659, 38.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765495, 32.011635, 38.358971>,  <40.487537, 32.199928, 38.576424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765495, 32.011635, 38.358971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112603, 0.817875, -0.564270,
		0.710241, 0.330894, 0.621343,
		0.694894, -0.470733, -0.543629,
		40.973965, 31.870415, 38.195881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033134, 32.695057, 38.454788>,  <40.487537, 32.199928, 38.576424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033134, 32.695057, 38.454788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095463, 32.408180, 38.183098>,  <41.132862, 32.236053, 38.020084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095463, 32.408180, 38.183098>,  <41.033134, 32.695057, 38.454788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095463, 32.408180, 38.183098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297702, 0.689752, -0.660012,
		0.941856, -0.099361, 0.320991,
		0.155824, -0.717196, -0.679227,
		41.142212, 32.193020, 37.979328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714996, 32.733604, 38.377499>,  <41.033134, 32.695057, 38.454788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714996, 32.733604, 38.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537861, 32.613792, 38.039463>,  <41.431580, 32.541904, 37.836643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537861, 32.613792, 38.039463>,  <41.714996, 32.733604, 38.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537861, 32.613792, 38.039463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278135, 0.850156, -0.447074,
		0.852380, -0.433024, -0.293153,
		-0.442820, -0.299540, -0.845095,
		41.405006, 32.523933, 37.785938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176121, 33.018364, 37.884789>,  <41.714996, 32.733604, 38.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176121, 33.018364, 37.884789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843716, 32.914017, 37.688271>,  <41.644272, 32.851410, 37.570358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843716, 32.914017, 37.688271>,  <42.176121, 33.018364, 37.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843716, 32.914017, 37.688271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172152, 0.719244, -0.673091,
		0.528951, -0.643922, -0.552788,
		-0.831008, -0.260869, -0.491297,
		41.594414, 32.835754, 37.540882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218113, 33.123661, 37.101841>,  <42.176121, 33.018364, 37.884789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218113, 33.123661, 37.101841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818409, 33.118542, 37.116356>,  <41.578587, 33.115471, 37.125065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818409, 33.118542, 37.116356>,  <42.218113, 33.123661, 37.101841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818409, 33.118542, 37.116356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036137, 0.635930, -0.770900,
		-0.013207, -0.771640, -0.635922,
		-0.999260, -0.012799, 0.036284,
		41.518631, 33.114700, 37.127239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881573, 33.025112, 36.452549>,  <42.218113, 33.123661, 37.101841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881573, 33.025112, 36.452549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663315, 33.247707, 36.703178>,  <41.532360, 33.381264, 36.853558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663315, 33.247707, 36.703178>,  <41.881573, 33.025112, 36.452549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663315, 33.247707, 36.703178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067877, 0.774577, -0.628827,
		-0.835264, -0.300585, -0.460416,
		-0.545644, 0.556488, 0.626574,
		41.499622, 33.414654, 36.891151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871605, 32.333096, 36.539173>,  <41.881573, 33.025112, 36.452549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871605, 32.333096, 36.539173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953373, 32.550587, 36.213581>,  <42.002434, 32.681080, 36.018227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953373, 32.550587, 36.213581>,  <41.871605, 32.333096, 36.539173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953373, 32.550587, 36.213581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895497, 0.231959, 0.379841,
		0.395342, -0.806569, -0.439490,
		0.204424, 0.543729, -0.813984,
		42.014702, 32.713707, 35.969387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513878, 32.200516, 36.434917>,  <41.871605, 32.333096, 36.539173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513878, 32.200516, 36.434917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471214, 32.554901, 36.254387>,  <42.445618, 32.767532, 36.146069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471214, 32.554901, 36.254387>,  <42.513878, 32.200516, 36.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471214, 32.554901, 36.254387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896896, 0.281658, 0.340949,
		0.429188, -0.368430, -0.824656,
		-0.106655, 0.885962, -0.451328,
		42.439217, 32.820690, 36.118988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181175, 32.236828, 36.058472>,  <42.513878, 32.200516, 36.434917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181175, 32.236828, 36.058472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000126, 32.591053, 36.100239>,  <42.891495, 32.803589, 36.125298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000126, 32.591053, 36.100239>,  <43.181175, 32.236828, 36.058472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000126, 32.591053, 36.100239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843755, 0.387460, 0.371421,
		0.288462, 0.256214, -0.922575,
		-0.452624, 0.885567, 0.104414,
		42.864338, 32.856724, 36.131561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611485, 32.826683, 35.709522>,  <43.181175, 32.236828, 36.058472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611485, 32.826683, 35.709522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385910, 32.951130, 36.015511>,  <43.250565, 33.025799, 36.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385910, 32.951130, 36.015511>,  <43.611485, 32.826683, 35.709522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385910, 32.951130, 36.015511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778363, 0.509738, 0.366496,
		-0.275912, 0.802106, -0.529622,
		-0.563937, 0.311117, 0.764972,
		43.216728, 33.044464, 36.245003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968250, 33.364502, 36.060410>,  <43.611485, 32.826683, 35.709522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968250, 33.364502, 36.060410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688499, 33.362926, 36.346306>,  <43.520649, 33.361980, 36.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688499, 33.362926, 36.346306>,  <43.968250, 33.364502, 36.060410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688499, 33.362926, 36.346306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617165, 0.501071, 0.606659,
		-0.360524, 0.865397, -0.348009,
		-0.699378, -0.003936, 0.714741,
		43.478687, 33.361744, 36.560730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565804, 33.986774, 36.337025>,  <43.968250, 33.364502, 36.060410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565804, 33.986774, 36.337025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579151, 33.714268, 36.629536>,  <43.587162, 33.550766, 36.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579151, 33.714268, 36.629536>,  <43.565804, 33.986774, 36.337025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579151, 33.714268, 36.629536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426602, 0.671392, 0.606007,
		-0.903823, 0.291740, 0.313035,
		0.033373, -0.681264, 0.731276,
		43.589165, 33.509888, 36.848919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157501, 34.220440, 36.990192>,  <43.565804, 33.986774, 36.337025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157501, 34.220440, 36.990192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461086, 33.978470, 37.086563>,  <43.643238, 33.833290, 37.144386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461086, 33.978470, 37.086563>,  <43.157501, 34.220440, 36.990192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461086, 33.978470, 37.086563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213538, 0.580779, 0.785555,
		-0.615121, -0.544762, 0.569965,
		0.758965, -0.604921, 0.240922,
		43.688774, 33.796993, 37.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231144, 34.055965, 37.730518>,  <43.157501, 34.220440, 36.990192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231144, 34.055965, 37.730518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574654, 34.119431, 37.535656>,  <43.780762, 34.157509, 37.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574654, 34.119431, 37.535656>,  <43.231144, 34.055965, 37.730518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574654, 34.119431, 37.535656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297123, 0.620389, 0.725834,
		0.417394, -0.768077, 0.485633,
		0.858778, 0.158666, -0.487161,
		43.832287, 34.167030, 37.389507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758949, 33.997780, 38.198326>,  <43.231144, 34.055965, 37.730518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758949, 33.997780, 38.198326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876717, 34.245537, 37.907215>,  <43.947376, 34.394192, 37.732548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876717, 34.245537, 37.907215>,  <43.758949, 33.997780, 38.198326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876717, 34.245537, 37.907215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389790, 0.617485, 0.683211,
		0.872572, -0.484831, -0.059637,
		0.294417, 0.619396, -0.727782,
		43.965042, 34.431355, 37.688881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509747, 34.050091, 38.241875>,  <43.758949, 33.997780, 38.198326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509747, 34.050091, 38.241875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347294, 34.377647, 38.079655>,  <44.249825, 34.574181, 37.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347294, 34.377647, 38.079655>,  <44.509747, 34.050091, 38.241875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347294, 34.377647, 38.079655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451019, 0.565602, 0.690417,
		0.794758, 0.097488, -0.599045,
		-0.406129, 0.818896, -0.405547,
		44.225456, 34.623318, 37.957989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028522, 34.476334, 37.947769>,  <44.509747, 34.050091, 38.241875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028522, 34.476334, 37.947769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715126, 34.717232, 38.009022>,  <44.527088, 34.861771, 38.045773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715126, 34.717232, 38.009022>,  <45.028522, 34.476334, 37.947769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715126, 34.717232, 38.009022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589782, 0.643079, 0.488474,
		0.195706, 0.473026, -0.859037,
		-0.783490, 0.602242, 0.153128,
		44.480080, 34.897903, 38.054958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984348, 35.074032, 37.460560>,  <45.028522, 34.476334, 37.947769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984348, 35.074032, 37.460560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880550, 35.140068, 37.841171>,  <44.818272, 35.179691, 38.069538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880550, 35.140068, 37.841171>,  <44.984348, 35.074032, 37.460560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880550, 35.140068, 37.841171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832854, 0.537037, 0.133958,
		-0.488891, 0.827246, -0.276858,
		-0.259499, 0.165092, 0.951528,
		44.802700, 35.189594, 38.126629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543400, 35.159393, 36.757095>,  <44.984348, 35.074032, 37.460560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543400, 35.159393, 36.757095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769382, 34.856297, 36.626461>,  <44.904972, 34.674438, 36.548080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769382, 34.856297, 36.626461>,  <44.543400, 35.159393, 36.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769382, 34.856297, 36.626461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154655, 0.486034, -0.860147,
		0.810500, 0.435434, 0.391774,
		0.564953, -0.757739, -0.326589,
		44.938869, 34.628975, 36.528484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340809, 35.318283, 36.667187>,  <44.543400, 35.159393, 36.757095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340809, 35.318283, 36.667187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157143, 35.070301, 36.412685>,  <45.046944, 34.921513, 36.259983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157143, 35.070301, 36.412685>,  <45.340809, 35.318283, 36.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157143, 35.070301, 36.412685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166966, 0.643228, -0.747249,
		0.872519, -0.449343, -0.191836,
		-0.459165, -0.619959, -0.636254,
		45.019394, 34.884312, 36.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531384, 35.909595, 36.183678>,  <45.340809, 35.318283, 36.667187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531384, 35.909595, 36.183678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567284, 36.299057, 36.099834>,  <45.588825, 36.532734, 36.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567284, 36.299057, 36.099834>,  <45.531384, 35.909595, 36.183678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567284, 36.299057, 36.099834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550072, 0.126984, 0.825406,
		0.830280, -0.189379, -0.524185,
		0.089752, 0.973658, -0.209605,
		45.594208, 36.591156, 36.036953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230614, 36.165627, 36.198734>,  <45.531384, 35.909595, 36.183678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230614, 36.165627, 36.198734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978104, 36.466984, 36.272366>,  <45.826595, 36.647797, 36.316544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978104, 36.466984, 36.272366>,  <46.230614, 36.165627, 36.198734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978104, 36.466984, 36.272366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594530, 0.317692, 0.738651,
		0.498017, 0.575733, -0.648468,
		-0.631279, 0.753394, 0.184075,
		45.788719, 36.693001, 36.327587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397137, 35.611828, 35.699684>,  <46.230614, 36.165627, 36.198734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397137, 35.611828, 35.699684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596630, 35.750202, 35.381790>,  <46.716324, 35.833225, 35.191055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596630, 35.750202, 35.381790>,  <46.397137, 35.611828, 35.699684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596630, 35.750202, 35.381790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570476, -0.821314, 0.000496,
		-0.652554, -0.453623, -0.606960,
		0.498730, 0.345932, -0.794732,
		46.746250, 35.853981, 35.143372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219296, 35.869759, 35.644619>,  <46.397137, 35.611828, 35.699684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219296, 35.869759, 35.644619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230461, 35.470840, 35.617409>,  <47.237160, 35.231491, 35.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230461, 35.470840, 35.617409>,  <47.219296, 35.869759, 35.644619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230461, 35.470840, 35.617409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111971, 0.070741, -0.991190,
		0.993319, 0.020056, 0.113643,
		0.027919, -0.997293, -0.068023,
		47.238838, 35.171654, 35.597000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.851910, 35.566433, 35.313095>,  <47.219296, 35.869759, 35.644619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.851910, 35.566433, 35.313095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537151, 35.326363, 35.255699>,  <47.348297, 35.182320, 35.221260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537151, 35.326363, 35.255699>,  <47.851910, 35.566433, 35.313095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537151, 35.326363, 35.255699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182771, -0.004578, -0.983145,
		0.589400, -0.799857, 0.113297,
		-0.786894, -0.600173, -0.143492,
		47.301083, 35.146313, 35.212650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.049900, 34.899776, 35.003880>,  <47.851910, 35.566433, 35.313095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.049900, 34.899776, 35.003880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683903, 35.001972, 34.878967>,  <47.464306, 35.063290, 34.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683903, 35.001972, 34.878967>,  <48.049900, 34.899776, 35.003880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683903, 35.001972, 34.878967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292575, -0.112825, -0.949563,
		-0.277837, -0.960206, 0.028484,
		-0.914990, 0.255490, -0.312279,
		47.409405, 35.078617, 34.785282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.574883, 37.092804, 26.627834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181942, 37.018818, 26.638975>,  <37.946178, 36.974426, 26.645660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181942, 37.018818, 26.638975>,  <38.574883, 37.092804, 26.627834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181942, 37.018818, 26.638975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164284, -0.781992, 0.601248,
		-0.089427, 0.595212, 0.798577,
		-0.982351, -0.184961, 0.027853,
		37.887238, 36.963329, 26.647331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425690, 37.036392, 27.316387>,  <38.574883, 37.092804, 26.627834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425690, 37.036392, 27.316387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111824, 36.847740, 27.155453>,  <37.923504, 36.734550, 27.058893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111824, 36.847740, 27.155453>,  <38.425690, 37.036392, 27.316387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111824, 36.847740, 27.155453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072140, -0.575130, 0.814875,
		-0.615712, 0.668426, 0.417260,
		-0.784662, -0.471627, -0.402334,
		37.876427, 36.706253, 27.034752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936367, 36.984589, 27.840235>,  <38.425690, 37.036392, 27.316387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936367, 36.984589, 27.840235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846226, 36.716213, 27.557659>,  <37.792141, 36.555187, 27.388115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846226, 36.716213, 27.557659>,  <37.936367, 36.984589, 27.840235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846226, 36.716213, 27.557659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028569, -0.720226, 0.693151,
		-0.973858, 0.176387, 0.143137,
		-0.225354, -0.670941, -0.706437,
		37.778618, 36.514931, 27.345728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398460, 36.646206, 28.063400>,  <37.936367, 36.984589, 27.840235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398460, 36.646206, 28.063400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551708, 36.373798, 27.813784>,  <37.643658, 36.210354, 27.664013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551708, 36.373798, 27.813784>,  <37.398460, 36.646206, 28.063400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551708, 36.373798, 27.813784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185710, -0.718587, 0.670182,
		-0.904836, -0.140872, -0.401780,
		0.383124, -0.681020, -0.624042,
		37.666645, 36.169491, 27.626572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977737, 36.076405, 28.129782>,  <37.398460, 36.646206, 28.063400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977737, 36.076405, 28.129782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290356, 35.946629, 27.916641>,  <37.477928, 35.868763, 27.788757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290356, 35.946629, 27.916641>,  <36.977737, 36.076405, 28.129782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290356, 35.946629, 27.916641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030809, -0.873163, 0.486454,
		-0.623088, -0.363768, -0.692412,
		0.781545, -0.324436, -0.532850,
		37.524818, 35.849297, 27.756786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847622, 35.388752, 27.920570>,  <36.977737, 36.076405, 28.129782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847622, 35.388752, 27.920570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246864, 35.407448, 27.904539>,  <37.486408, 35.418663, 27.894920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246864, 35.407448, 27.904539>,  <36.847622, 35.388752, 27.920570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246864, 35.407448, 27.904539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061102, -0.831880, 0.551581,
		-0.007561, -0.552984, -0.833158,
		0.998103, 0.046737, -0.040079,
		37.546295, 35.421471, 27.892515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005928, 34.628517, 28.021881>,  <36.847622, 35.388752, 27.920570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005928, 34.628517, 28.021881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347546, 34.820358, 28.102465>,  <37.552517, 34.935463, 28.150816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347546, 34.820358, 28.102465>,  <37.005928, 34.628517, 28.021881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347546, 34.820358, 28.102465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241046, -0.708055, 0.663743,
		0.460976, -0.518307, -0.720319,
		0.854048, 0.479600, 0.201461,
		37.603760, 34.964237, 28.162903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491615, 34.083927, 28.108879>,  <37.005928, 34.628517, 28.021881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491615, 34.083927, 28.108879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643101, 34.410904, 28.282482>,  <37.733994, 34.607090, 28.386644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643101, 34.410904, 28.282482>,  <37.491615, 34.083927, 28.108879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643101, 34.410904, 28.282482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286882, -0.549522, 0.784681,
		0.879928, -0.172661, -0.442622,
		0.378715, 0.817443, 0.434007,
		37.756714, 34.656136, 28.412683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130199, 33.773285, 28.390049>,  <37.491615, 34.083927, 28.108879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130199, 33.773285, 28.390049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045414, 34.118546, 28.573372>,  <37.994541, 34.325703, 28.683367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045414, 34.118546, 28.573372>,  <38.130199, 33.773285, 28.390049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045414, 34.118546, 28.573372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288084, -0.392940, 0.873273,
		0.933852, 0.317134, -0.165370,
		-0.211964, 0.863148, 0.458309,
		37.981823, 34.377491, 28.710865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682732, 33.920029, 28.887266>,  <38.130199, 33.773285, 28.390049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682732, 33.920029, 28.887266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397770, 34.169445, 29.016060>,  <38.226791, 34.319096, 29.093336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397770, 34.169445, 29.016060>,  <38.682732, 33.920029, 28.887266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397770, 34.169445, 29.016060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214858, -0.242984, 0.945936,
		0.668066, 0.743072, 0.039131,
		-0.712407, 0.623540, 0.321984,
		38.184048, 34.356506, 29.112656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899303, 34.358807, 29.414083>,  <38.682732, 33.920029, 28.887266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899303, 34.358807, 29.414083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508339, 34.350563, 29.498213>,  <38.273758, 34.345615, 29.548691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508339, 34.350563, 29.498213>,  <38.899303, 34.358807, 29.414083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508339, 34.350563, 29.498213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211161, -0.135325, 0.968038,
		0.008511, 0.990587, 0.136621,
		-0.977414, -0.020610, 0.210325,
		38.215115, 34.344379, 29.561310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840012, 34.850685, 29.937021>,  <38.899303, 34.358807, 29.414083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840012, 34.850685, 29.937021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517002, 34.614864, 29.944443>,  <38.323196, 34.473373, 29.948895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517002, 34.614864, 29.944443>,  <38.840012, 34.850685, 29.937021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517002, 34.614864, 29.944443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060328, -0.051261, 0.996861,
		-0.586748, 0.806104, 0.076961,
		-0.807520, -0.589549, 0.018553,
		38.274746, 34.438000, 29.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532505, 35.018944, 30.534544>,  <38.840012, 34.850685, 29.937021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532505, 35.018944, 30.534544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315899, 34.691376, 30.458519>,  <38.185936, 34.494835, 30.412905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315899, 34.691376, 30.458519>,  <38.532505, 35.018944, 30.534544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315899, 34.691376, 30.458519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111682, -0.153998, 0.981739,
		-0.833238, 0.552856, -0.008066,
		-0.541518, -0.818923, -0.190061,
		38.153442, 34.445698, 30.401501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877762, 35.065742, 30.941004>,  <38.532505, 35.018944, 30.534544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877762, 35.065742, 30.941004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981869, 34.688030, 30.860399>,  <38.044331, 34.461403, 30.812037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981869, 34.688030, 30.860399>,  <37.877762, 35.065742, 30.941004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981869, 34.688030, 30.860399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069747, -0.189770, 0.979348,
		-0.963015, -0.268943, 0.016470,
		0.260263, -0.944276, -0.201510,
		38.059948, 34.404747, 30.799946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603748, 34.719307, 31.470463>,  <37.877762, 35.065742, 30.941004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603748, 34.719307, 31.470463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848427, 34.446934, 31.309387>,  <37.995235, 34.283508, 31.212742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848427, 34.446934, 31.309387>,  <37.603748, 34.719307, 31.470463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848427, 34.446934, 31.309387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146016, -0.403099, 0.903433,
		-0.777500, -0.611425, -0.147148,
		0.611697, -0.680933, -0.402687,
		38.031937, 34.242653, 31.188581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572258, 34.130161, 31.926069>,  <37.603748, 34.719307, 31.470463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572258, 34.130161, 31.926069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882259, 34.020660, 31.698233>,  <38.068260, 33.954960, 31.561531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882259, 34.020660, 31.698233>,  <37.572258, 34.130161, 31.926069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882259, 34.020660, 31.698233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363216, -0.544623, 0.755950,
		-0.517154, -0.792747, -0.322653,
		0.775001, -0.273750, -0.569593,
		38.114758, 33.938534, 31.527355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637024, 33.318707, 31.848120>,  <37.572258, 34.130161, 31.926069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637024, 33.318707, 31.848120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993450, 33.494938, 31.804489>,  <38.207306, 33.600677, 31.778311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993450, 33.494938, 31.804489>,  <37.637024, 33.318707, 31.848120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993450, 33.494938, 31.804489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371584, -0.570113, 0.732732,
		0.260638, -0.693442, -0.671718,
		0.891063, 0.440577, -0.109079,
		38.260769, 33.627110, 31.771765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079269, 32.708447, 31.719551>,  <37.637024, 33.318707, 31.848120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079269, 32.708447, 31.719551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335331, 32.989544, 31.843716>,  <38.488968, 33.158203, 31.918215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335331, 32.989544, 31.843716>,  <38.079269, 32.708447, 31.719551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335331, 32.989544, 31.843716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185711, -0.533621, 0.825082,
		0.745464, -0.470530, -0.472106,
		0.640152, 0.702744, 0.310413,
		38.527378, 33.200367, 31.936840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726875, 32.424267, 31.765675>,  <38.079269, 32.708447, 31.719551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726875, 32.424267, 31.765675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692043, 32.736698, 32.013008>,  <38.671143, 32.924156, 32.161407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692043, 32.736698, 32.013008>,  <38.726875, 32.424267, 31.765675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692043, 32.736698, 32.013008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016116, -0.621714, 0.783078,
		0.996071, 0.058226, 0.066727,
		-0.087080, 0.781077, 0.618333,
		38.665920, 32.971020, 32.198509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243019, 32.384678, 32.301075>,  <38.726875, 32.424267, 31.765675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243019, 32.384678, 32.301075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961910, 32.626598, 32.450920>,  <38.793247, 32.771751, 32.540829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961910, 32.626598, 32.450920>,  <39.243019, 32.384678, 32.301075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961910, 32.626598, 32.450920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052861, -0.569512, 0.820281,
		0.709451, 0.556666, 0.432206,
		-0.702769, 0.604797, 0.374616,
		38.751080, 32.808037, 32.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348320, 32.505066, 33.023571>,  <39.243019, 32.384678, 32.301075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348320, 32.505066, 33.023571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962132, 32.597725, 32.975906>,  <38.730419, 32.653320, 32.947308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962132, 32.597725, 32.975906>,  <39.348320, 32.505066, 33.023571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962132, 32.597725, 32.975906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221161, -0.487176, 0.844836,
		0.137651, 0.842021, 0.521587,
		-0.965474, 0.231647, -0.119162,
		38.672489, 32.667217, 32.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129608, 32.682270, 33.712475>,  <39.348320, 32.505066, 33.023571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129608, 32.682270, 33.712475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793568, 32.611168, 33.507484>,  <38.591942, 32.568508, 33.384491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793568, 32.611168, 33.507484>,  <39.129608, 32.682270, 33.712475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793568, 32.611168, 33.507484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375779, -0.490625, 0.786179,
		-0.391181, 0.853049, 0.345378,
		-0.840100, -0.177752, -0.512480,
		38.541538, 32.557842, 33.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875988, 32.796406, 33.749107>,  <39.129608, 32.682270, 33.712475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875988, 32.796406, 33.749107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271164, 32.849388, 33.781174>,  <40.508270, 32.881176, 33.800415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271164, 32.849388, 33.781174>,  <39.875988, 32.796406, 33.749107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271164, 32.849388, 33.781174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027790, 0.661083, -0.749798,
		-0.152312, 0.738528, 0.656793,
		0.987942, 0.132456, 0.080167,
		40.567547, 32.889126, 33.805225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932575, 33.477592, 33.708420>,  <39.875988, 32.796406, 33.749107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932575, 33.477592, 33.708420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299595, 33.335609, 33.636749>,  <40.519806, 33.250420, 33.593746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299595, 33.335609, 33.636749>,  <39.932575, 33.477592, 33.708420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299595, 33.335609, 33.636749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093716, 0.631000, -0.770101,
		0.386413, 0.689816, 0.612241,
		0.917552, -0.354954, -0.179179,
		40.574860, 33.229122, 33.582996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375874, 34.099464, 33.524143>,  <39.932575, 33.477592, 33.708420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375874, 34.099464, 33.524143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577541, 33.784046, 33.383282>,  <40.698540, 33.594795, 33.298763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.577541, 33.784046, 33.383282>,  <40.375874, 34.099464, 33.524143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577541, 33.784046, 33.383282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393424, 0.572718, -0.719175,
		0.768787, 0.224037, 0.598977,
		0.504166, -0.788544, -0.352157,
		40.728790, 33.547482, 33.277634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073906, 34.313236, 33.453827>,  <40.375874, 34.099464, 33.524143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073906, 34.313236, 33.453827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.058495, 34.006111, 33.198021>,  <41.049248, 33.821835, 33.044537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.058495, 34.006111, 33.198021>,  <41.073906, 34.313236, 33.453827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058495, 34.006111, 33.198021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277870, 0.606511, -0.744938,
		0.959846, -0.206402, 0.189985,
		-0.038528, -0.767817, -0.639510,
		41.046936, 33.775764, 33.006168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609070, 34.439514, 32.972988>,  <41.073906, 34.313236, 33.453827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609070, 34.439514, 32.972988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394455, 34.171570, 32.767689>,  <41.265686, 34.010803, 32.644508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394455, 34.171570, 32.767689>,  <41.609070, 34.439514, 32.972988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394455, 34.171570, 32.767689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085659, 0.561826, -0.822809,
		0.839520, -0.485429, -0.244059,
		-0.536534, -0.669858, -0.513246,
		41.233494, 33.970612, 32.613716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007130, 34.226913, 32.372112>,  <41.609070, 34.439514, 32.972988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007130, 34.226913, 32.372112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622803, 34.152943, 32.289524>,  <41.392208, 34.108559, 32.239971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622803, 34.152943, 32.289524>,  <42.007130, 34.226913, 32.372112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622803, 34.152943, 32.289524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126669, 0.369621, -0.920508,
		0.246546, -0.910594, -0.331713,
		-0.960817, -0.184930, -0.206473,
		41.334557, 34.097462, 32.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061718, 34.011570, 31.709141>,  <42.007130, 34.226913, 32.372112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061718, 34.011570, 31.709141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.674366, 34.093941, 31.765482>,  <41.441956, 34.143364, 31.799286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.674366, 34.093941, 31.765482>,  <42.061718, 34.011570, 31.709141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674366, 34.093941, 31.765482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045780, 0.408308, -0.911696,
		-0.245258, -0.889313, -0.385968,
		-0.968376, 0.205931, 0.140853,
		41.383854, 34.155720, 31.807737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687122, 33.830917, 31.017147>,  <42.061718, 34.011570, 31.709141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687122, 33.830917, 31.017147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442951, 34.076912, 31.216814>,  <41.296448, 34.224510, 31.336615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442951, 34.076912, 31.216814>,  <41.687122, 33.830917, 31.017147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442951, 34.076912, 31.216814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247431, 0.450611, -0.857746,
		-0.752434, -0.647100, -0.122897,
		-0.610426, 0.614988, 0.499168,
		41.259823, 34.261410, 31.366564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092739, 33.846325, 30.648903>,  <41.687122, 33.830917, 31.017147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092739, 33.846325, 30.648903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092495, 34.177547, 30.873163>,  <41.092350, 34.376282, 31.007719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092495, 34.177547, 30.873163>,  <41.092739, 33.846325, 30.648903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092495, 34.177547, 30.873163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067845, 0.559325, -0.826168,
		-0.997696, -0.038538, 0.055840,
		-0.000606, 0.828052, 0.560651,
		41.092312, 34.425964, 31.041359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532803, 34.281025, 30.301071>,  <41.092739, 33.846325, 30.648903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532803, 34.281025, 30.301071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.733414, 34.537369, 30.533541>,  <40.853779, 34.691177, 30.673023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.733414, 34.537369, 30.533541>,  <40.532803, 34.281025, 30.301071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733414, 34.537369, 30.533541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145147, 0.724575, -0.673738,
		-0.852879, 0.253543, 0.456414,
		0.501528, 0.640864, 0.581174,
		40.883873, 34.729630, 30.707893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078220, 34.848980, 30.384655>,  <40.532803, 34.281025, 30.301071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078220, 34.848980, 30.384655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449791, 34.984013, 30.445503>,  <40.672733, 35.065033, 30.482012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449791, 34.984013, 30.445503>,  <40.078220, 34.848980, 30.384655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449791, 34.984013, 30.445503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184656, 0.778450, -0.599932,
		-0.320943, 0.529201, 0.785456,
		0.928923, 0.337583, 0.152118,
		40.728466, 35.085289, 30.491138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056564, 35.518253, 30.577950>,  <40.078220, 34.848980, 30.384655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056564, 35.518253, 30.577950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.417191, 35.463490, 30.413790>,  <40.633568, 35.430634, 30.315294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.417191, 35.463490, 30.413790>,  <40.056564, 35.518253, 30.577950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417191, 35.463490, 30.413790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106686, 0.848961, -0.517575,
		0.419275, 0.510414, 0.750791,
		0.901569, -0.136907, -0.410401,
		40.687660, 35.422417, 30.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427868, 36.182602, 30.626463>,  <40.056564, 35.518253, 30.577950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427868, 36.182602, 30.626463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.652996, 35.988850, 30.358549>,  <40.788071, 35.872597, 30.197802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.652996, 35.988850, 30.358549>,  <40.427868, 36.182602, 30.626463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652996, 35.988850, 30.358549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084908, 0.839899, -0.536059,
		0.822208, 0.244834, 0.513838,
		0.562818, -0.484382, -0.669784,
		40.821842, 35.843536, 30.157614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880909, 36.714161, 30.485773>,  <40.427868, 36.182602, 30.626463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880909, 36.714161, 30.485773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.932373, 36.447651, 30.191963>,  <40.963253, 36.287746, 30.015676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.932373, 36.447651, 30.191963>,  <40.880909, 36.714161, 30.485773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932373, 36.447651, 30.191963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178492, 0.744146, -0.643730,
		0.975493, -0.048283, 0.214668,
		0.128663, -0.666271, -0.734527,
		40.970970, 36.247768, 29.971605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490990, 36.917156, 30.172087>,  <40.880909, 36.714161, 30.485773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490990, 36.917156, 30.172087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270256, 36.703655, 29.915779>,  <41.137814, 36.575554, 29.761995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270256, 36.703655, 29.915779>,  <41.490990, 36.917156, 30.172087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270256, 36.703655, 29.915779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159385, 0.686686, -0.709267,
		0.818579, -0.493529, -0.293867,
		-0.551838, -0.533753, -0.640767,
		41.104706, 36.543530, 29.723549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728470, 37.111187, 29.442726>,  <41.490990, 36.917156, 30.172087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728470, 37.111187, 29.442726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.382782, 36.938183, 29.339920>,  <41.175369, 36.834381, 29.278236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.382782, 36.938183, 29.339920>,  <41.728470, 37.111187, 29.442726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382782, 36.938183, 29.339920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116864, 0.669448, -0.733609,
		0.489350, -0.603965, -0.629096,
		-0.864222, -0.432511, -0.257013,
		41.123516, 36.808430, 29.262815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594418, 37.206879, 28.637878>,  <41.728470, 37.111187, 29.442726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594418, 37.206879, 28.637878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.238091, 37.091213, 28.778069>,  <41.024296, 37.021816, 28.862183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.238091, 37.091213, 28.778069>,  <41.594418, 37.206879, 28.637878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238091, 37.091213, 28.778069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453927, 0.600247, -0.658524,
		-0.019954, -0.745714, -0.665967,
		-0.890815, -0.289160, 0.350477,
		40.970844, 37.004463, 28.883211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126865, 37.000446, 28.112465>,  <41.594418, 37.206879, 28.637878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126865, 37.000446, 28.112465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.878468, 37.099262, 28.410011>,  <40.729427, 37.158550, 28.588539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.878468, 37.099262, 28.410011>,  <41.126865, 37.000446, 28.112465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878468, 37.099262, 28.410011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573925, 0.503044, -0.646186,
		-0.533828, -0.828203, -0.170609,
		-0.620997, 0.247035, 0.743866,
		40.692169, 37.173374, 28.633171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.391861, 36.820656, 27.847973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403042, 37.108688, 28.125305>,  <40.409752, 37.281506, 28.291704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403042, 37.108688, 28.125305>,  <40.391861, 36.820656, 27.847973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403042, 37.108688, 28.125305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391258, 0.646145, -0.655297,
		-0.919857, -0.252952, 0.299799,
		0.027955, 0.720078, 0.693330,
		40.411427, 37.324711, 28.333303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717010, 37.032249, 27.820885>,  <40.391861, 36.820656, 27.847973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717010, 37.032249, 27.820885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906830, 37.343216, 27.986015>,  <40.020721, 37.529797, 28.085094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906830, 37.343216, 27.986015>,  <39.717010, 37.032249, 27.820885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906830, 37.343216, 27.986015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548396, 0.627974, -0.552187,
		-0.688525, 0.035645, 0.724336,
		0.474547, 0.777418, 0.412828,
		40.049194, 37.576443, 28.109863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211998, 37.556904, 28.066023>,  <39.717010, 37.032249, 27.820885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211998, 37.556904, 28.066023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558315, 37.756783, 28.055462>,  <39.766106, 37.876709, 28.049126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558315, 37.756783, 28.055462>,  <39.211998, 37.556904, 28.066023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558315, 37.756783, 28.055462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452525, 0.759356, -0.467546,
		-0.213583, 0.416748, 0.883575,
		0.865796, 0.499699, -0.026403,
		39.818054, 37.906693, 28.047541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065643, 38.196648, 28.061630>,  <39.211998, 37.556904, 28.066023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065643, 38.196648, 28.061630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432156, 38.195042, 27.901423>,  <39.652061, 38.194080, 27.805298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432156, 38.195042, 27.901423>,  <39.065643, 38.196648, 28.061630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432156, 38.195042, 27.901423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289860, 0.683464, -0.669969,
		0.276426, 0.729974, 0.625082,
		0.916281, -0.004011, -0.400517,
		39.707039, 38.193840, 27.781267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198589, 38.981613, 27.961523>,  <39.065643, 38.196648, 28.061630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198589, 38.981613, 27.961523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463829, 38.796993, 27.725805>,  <39.622974, 38.686222, 27.584373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.463829, 38.796993, 27.725805>,  <39.198589, 38.981613, 27.961523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463829, 38.796993, 27.725805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012310, 0.780440, -0.625110,
		0.748431, 0.421764, 0.511827,
		0.663099, -0.461551, -0.589297,
		39.662758, 38.658527, 27.549017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767254, 39.462578, 27.764656>,  <39.198589, 38.981613, 27.961523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767254, 39.462578, 27.764656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782597, 39.183754, 27.478262>,  <39.791801, 39.016460, 27.306425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782597, 39.183754, 27.478262>,  <39.767254, 39.462578, 27.764656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782597, 39.183754, 27.478262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061635, 0.713499, -0.697940,
		0.997361, 0.070902, -0.015594,
		0.038359, -0.697059, -0.715987,
		39.794106, 38.974636, 27.263466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281746, 39.750225, 27.311161>,  <39.767254, 39.462578, 27.764656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281746, 39.750225, 27.311161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101307, 39.465946, 27.095226>,  <39.993042, 39.295380, 26.965666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101307, 39.465946, 27.095226>,  <40.281746, 39.750225, 27.311161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101307, 39.465946, 27.095226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132385, 0.651472, -0.747033,
		0.882601, -0.265518, -0.387963,
		-0.451098, -0.710693, -0.539839,
		39.965977, 39.252739, 26.933275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617599, 39.680153, 26.736584>,  <40.281746, 39.750225, 27.311161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617599, 39.680153, 26.736584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262211, 39.525585, 26.637554>,  <40.048977, 39.432846, 26.578136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262211, 39.525585, 26.637554>,  <40.617599, 39.680153, 26.736584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262211, 39.525585, 26.637554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097942, 0.686692, -0.720320,
		0.448351, -0.615739, -0.647956,
		-0.888475, -0.386419, -0.247573,
		39.995667, 39.409660, 26.563282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543423, 39.759720, 25.933121>,  <40.617599, 39.680153, 26.736584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543423, 39.759720, 25.933121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163456, 39.712002, 26.048658>,  <39.935474, 39.683372, 26.117981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163456, 39.712002, 26.048658>,  <40.543423, 39.759720, 25.933121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163456, 39.712002, 26.048658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289259, 0.685456, -0.668191,
		-0.118280, -0.718276, -0.685631,
		-0.949915, -0.119291, 0.288843,
		39.878483, 39.676216, 26.135311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236664, 39.717739, 25.279438>,  <40.543423, 39.759720, 25.933121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236664, 39.717739, 25.279438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983776, 39.816109, 25.573328>,  <39.832043, 39.875130, 25.749662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983776, 39.816109, 25.573328>,  <40.236664, 39.717739, 25.279438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983776, 39.816109, 25.573328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324946, 0.776696, -0.539587,
		-0.703354, -0.579883, -0.411131,
		-0.632221, 0.245925, 0.734723,
		39.794109, 39.889885, 25.793745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619102, 39.931595, 24.916574>,  <40.236664, 39.717739, 25.279438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619102, 39.931595, 24.916574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576458, 40.107773, 25.273146>,  <39.550873, 40.213478, 25.487089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576458, 40.107773, 25.273146>,  <39.619102, 39.931595, 24.916574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576458, 40.107773, 25.273146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194662, 0.869942, -0.453109,
		-0.975060, -0.221832, -0.007004,
		-0.106607, 0.440445, 0.891427,
		39.544476, 40.239906, 25.540573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022667, 40.422596, 24.839884>,  <39.619102, 39.931595, 24.916574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022667, 40.422596, 24.839884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233620, 40.549393, 25.155195>,  <39.360191, 40.625469, 25.344383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233620, 40.549393, 25.155195>,  <39.022667, 40.422596, 24.839884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233620, 40.549393, 25.155195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083780, 0.942676, -0.323022,
		-0.845487, 0.104314, 0.523708,
		0.527383, 0.316987, 0.788281,
		39.391834, 40.644489, 25.391680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680035, 40.955833, 25.154282>,  <39.022667, 40.422596, 24.839884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680035, 40.955833, 25.154282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037327, 41.048775, 25.308245>,  <39.251701, 41.104542, 25.400621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037327, 41.048775, 25.308245>,  <38.680035, 40.955833, 25.154282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037327, 41.048775, 25.308245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084932, 0.927893, -0.363045,
		-0.441507, 0.291591, 0.848555,
		0.893229, 0.232357, 0.384906,
		39.305294, 41.118481, 25.423716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663555, 41.695484, 25.540369>,  <38.680035, 40.955833, 25.154282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663555, 41.695484, 25.540369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039051, 41.592945, 25.448244>,  <39.264351, 41.531422, 25.392969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039051, 41.592945, 25.448244>,  <38.663555, 41.695484, 25.540369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039051, 41.592945, 25.448244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180170, 0.934792, -0.306108,
		0.293766, 0.245861, 0.923717,
		0.938744, -0.256351, -0.230314,
		39.320675, 41.516041, 25.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011806, 42.240261, 25.663523>,  <38.663555, 41.695484, 25.540369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011806, 42.240261, 25.663523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300865, 42.070343, 25.445410>,  <39.474300, 41.968391, 25.314543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300865, 42.070343, 25.445410>,  <39.011806, 42.240261, 25.663523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300865, 42.070343, 25.445410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263265, 0.898562, -0.351110,
		0.639117, 0.110176, 0.761178,
		0.722649, -0.424792, -0.545280,
		39.517658, 41.942905, 25.281826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704914, 42.443962, 25.835060>,  <39.011806, 42.240261, 25.663523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704914, 42.443962, 25.835060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721184, 42.346546, 25.447445>,  <39.730946, 42.288097, 25.214876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721184, 42.346546, 25.447445>,  <39.704914, 42.443962, 25.835060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721184, 42.346546, 25.447445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258318, 0.939431, -0.225260,
		0.965203, -0.241156, 0.101125,
		0.040677, -0.243544, -0.969037,
		39.733387, 42.273483, 25.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256958, 42.874817, 25.574883>,  <39.704914, 42.443962, 25.835060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256958, 42.874817, 25.574883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063519, 42.745354, 25.249580>,  <39.947456, 42.667675, 25.054399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063519, 42.745354, 25.249580>,  <40.256958, 42.874817, 25.574883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063519, 42.745354, 25.249580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155293, 0.882659, -0.443618,
		0.861405, -0.340825, -0.376589,
		-0.483596, -0.323653, -0.813255,
		39.918442, 42.648258, 25.005604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735722, 42.897400, 25.108992>,  <40.256958, 42.874817, 25.574883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735722, 42.897400, 25.108992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389061, 42.913902, 24.910107>,  <40.181065, 42.923805, 24.790775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389061, 42.913902, 24.910107>,  <40.735722, 42.897400, 25.108992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389061, 42.913902, 24.910107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266379, 0.880910, -0.391203,
		0.421857, -0.471482, -0.774430,
		-0.866649, 0.041260, -0.497211,
		40.129066, 42.926281, 24.760942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941803, 43.155510, 24.424030>,  <40.735722, 42.897400, 25.108992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941803, 43.155510, 24.424030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543514, 43.189285, 24.439058>,  <40.304543, 43.209553, 24.448074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543514, 43.189285, 24.439058>,  <40.941803, 43.155510, 24.424030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543514, 43.189285, 24.439058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051966, 0.847674, -0.527966,
		-0.076428, -0.523754, -0.848434,
		-0.995720, 0.084441, 0.037569,
		40.244797, 43.214619, 24.450329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809055, 43.401726, 23.765387>,  <40.941803, 43.155510, 24.424030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809055, 43.401726, 23.765387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.464783, 43.472763, 23.956249>,  <40.258217, 43.515385, 24.070766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.464783, 43.472763, 23.956249>,  <40.809055, 43.401726, 23.765387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464783, 43.472763, 23.956249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123198, 0.836695, -0.533632,
		-0.494007, -0.518075, -0.698252,
		-0.860686, 0.177595, 0.477159,
		40.206577, 43.526043, 24.099398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577343, 43.828686, 23.286936>,  <40.809055, 43.401726, 23.765387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577343, 43.828686, 23.286936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363762, 43.864479, 23.623243>,  <40.235615, 43.885956, 23.825027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363762, 43.864479, 23.623243>,  <40.577343, 43.828686, 23.286936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363762, 43.864479, 23.623243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225782, 0.943184, -0.243775,
		-0.814813, -0.319993, -0.483409,
		-0.533950, 0.089486, 0.840767,
		40.203575, 43.891323, 23.875473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921364, 44.136738, 23.105331>,  <40.577343, 43.828686, 23.286936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921364, 44.136738, 23.105331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975277, 44.211948, 23.494480>,  <40.007626, 44.257076, 23.727970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975277, 44.211948, 23.494480>,  <39.921364, 44.136738, 23.105331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975277, 44.211948, 23.494480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304141, 0.942286, -0.139982,
		-0.943044, -0.277022, 0.184192,
		0.134784, 0.188029, 0.972871,
		40.015713, 44.268356, 23.786341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420063, 44.594185, 23.310263>,  <39.921364, 44.136738, 23.105331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420063, 44.594185, 23.310263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736450, 44.677990, 23.540213>,  <39.926281, 44.728271, 23.678183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736450, 44.677990, 23.540213>,  <39.420063, 44.594185, 23.310263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736450, 44.677990, 23.540213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076300, 0.965988, -0.247073,
		-0.607087, 0.151563, 0.780047,
		0.790963, 0.209513, 0.574875,
		39.973740, 44.740845, 23.712675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920532, 44.899673, 23.659422>,  <39.420063, 44.594185, 23.310263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920532, 44.899673, 23.659422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575703, 45.075626, 23.558760>,  <38.368805, 45.181198, 23.498363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575703, 45.075626, 23.558760>,  <38.920532, 44.899673, 23.659422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575703, 45.075626, 23.558760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479060, -0.545353, 0.687816,
		0.165321, 0.713505, 0.680867,
		-0.862074, 0.439886, -0.251654,
		38.317081, 45.207592, 23.483263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653805, 44.086018, 23.678049>,  <38.920532, 44.899673, 23.659422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653805, 44.086018, 23.678049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357937, 44.030869, 23.414572>,  <38.180416, 43.997780, 23.256485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357937, 44.030869, 23.414572>,  <38.653805, 44.086018, 23.678049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357937, 44.030869, 23.414572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173734, -0.906487, 0.384834,
		-0.650155, 0.399088, 0.646550,
		-0.739672, -0.137874, -0.658692,
		38.136036, 43.989506, 23.216965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034149, 43.829201, 24.085272>,  <38.653805, 44.086018, 23.678049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034149, 43.829201, 24.085272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013943, 43.712433, 23.703230>,  <38.001820, 43.642372, 23.474005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013943, 43.712433, 23.703230>,  <38.034149, 43.829201, 24.085272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013943, 43.712433, 23.703230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420970, -0.860997, 0.285427,
		-0.905666, 0.416491, -0.079394,
		-0.050520, -0.291924, -0.955106,
		37.998787, 43.624855, 23.416698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497864, 43.379978, 24.068745>,  <38.034149, 43.829201, 24.085272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497864, 43.379978, 24.068745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658504, 43.299129, 23.711452>,  <37.754890, 43.250622, 23.497076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658504, 43.299129, 23.711452>,  <37.497864, 43.379978, 24.068745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658504, 43.299129, 23.711452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474113, -0.880353, -0.013961,
		-0.783538, 0.429100, -0.449379,
		0.401603, -0.202118, -0.893232,
		37.778984, 43.238495, 23.443483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925179, 43.185287, 23.697296>,  <37.497864, 43.379978, 24.068745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925179, 43.185287, 23.697296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240707, 43.022362, 23.513186>,  <37.430023, 42.924606, 23.402719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240707, 43.022362, 23.513186>,  <36.925179, 43.185287, 23.697296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240707, 43.022362, 23.513186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460503, -0.887651, -0.003700,
		-0.407059, 0.214878, -0.887767,
		0.788822, -0.407313, -0.460278,
		37.477352, 42.900169, 23.375101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589111, 42.605049, 23.304058>,  <36.925179, 43.185287, 23.697296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589111, 42.605049, 23.304058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981369, 42.528282, 23.319563>,  <37.216724, 42.482224, 23.328865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981369, 42.528282, 23.319563>,  <36.589111, 42.605049, 23.304058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981369, 42.528282, 23.319563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195754, -0.957151, 0.213407,
		-0.003854, -0.216865, -0.976194,
		0.980646, -0.191916, 0.038763,
		37.275562, 42.470707, 23.331192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604378, 41.993813, 22.925598>,  <36.589111, 42.605049, 23.304058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604378, 41.993813, 22.925598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918011, 42.021057, 23.172359>,  <37.106190, 42.037403, 23.320415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918011, 42.021057, 23.172359>,  <36.604378, 41.993813, 22.925598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918011, 42.021057, 23.172359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159876, -0.938253, 0.306791,
		0.599706, -0.339179, -0.724783,
		0.784087, 0.068109, 0.616903,
		37.153236, 42.041489, 23.357430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933342, 41.295929, 22.921455>,  <36.604378, 41.993813, 22.925598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933342, 41.295929, 22.921455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081120, 41.435101, 23.266119>,  <37.169788, 41.518604, 23.472918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081120, 41.435101, 23.266119>,  <36.933342, 41.295929, 22.921455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081120, 41.435101, 23.266119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086053, -0.936085, 0.341085,
		0.925259, -0.051864, -0.375773,
		0.369446, 0.347929, 0.861658,
		37.191952, 41.539478, 23.524616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459457, 40.896404, 23.133169>,  <36.933342, 41.295929, 22.921455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459457, 40.896404, 23.133169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331856, 41.062904, 23.473749>,  <37.255295, 41.162804, 23.678097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331856, 41.062904, 23.473749>,  <37.459457, 40.896404, 23.133169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331856, 41.062904, 23.473749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033452, -0.902775, 0.428810,
		0.947163, 0.108310, 0.301914,
		-0.319005, 0.416252, 0.851452,
		37.236153, 41.187778, 23.729185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865944, 40.519051, 23.617498>,  <37.459457, 40.896404, 23.133169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865944, 40.519051, 23.617498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582989, 40.693760, 23.839790>,  <37.413216, 40.798588, 23.973166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582989, 40.693760, 23.839790>,  <37.865944, 40.519051, 23.617498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582989, 40.693760, 23.839790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034515, -0.806634, 0.590043,
		0.705987, 0.398206, 0.585674,
		-0.707383, 0.436777, 0.555729,
		37.370773, 40.824795, 24.006510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094673, 40.615578, 24.319477>,  <37.865944, 40.519051, 23.617498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094673, 40.615578, 24.319477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696308, 40.641277, 24.344898>,  <37.457291, 40.656696, 24.360151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696308, 40.641277, 24.344898>,  <38.094673, 40.615578, 24.319477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696308, 40.641277, 24.344898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012309, -0.600251, 0.799717,
		0.089525, 0.797227, 0.597004,
		-0.995908, 0.064246, 0.063551,
		37.397537, 40.660553, 24.363964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870579, 40.698643, 25.071819>,  <38.094673, 40.615578, 24.319477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870579, 40.698643, 25.071819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519489, 40.590092, 24.913860>,  <37.308834, 40.524960, 24.819084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519489, 40.590092, 24.913860>,  <37.870579, 40.698643, 25.071819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519489, 40.590092, 24.913860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095768, -0.708164, 0.699523,
		-0.469491, 0.651810, 0.595585,
		-0.877728, -0.271381, -0.394899,
		37.256172, 40.508678, 24.795391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400681, 40.719601, 25.591270>,  <37.870579, 40.698643, 25.071819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400681, 40.719601, 25.591270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229572, 40.456074, 25.343735>,  <37.126907, 40.297958, 25.195213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229572, 40.456074, 25.343735>,  <37.400681, 40.719601, 25.591270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229572, 40.456074, 25.343735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049598, -0.666505, 0.743848,
		-0.902523, 0.348893, 0.252438,
		-0.427775, -0.658820, -0.618841,
		37.101238, 40.258427, 25.158083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972218, 40.359203, 26.017677>,  <37.400681, 40.719601, 25.591270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972218, 40.359203, 26.017677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984245, 40.117558, 25.699144>,  <36.991463, 39.972572, 25.508024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984245, 40.117558, 25.699144>,  <36.972218, 40.359203, 26.017677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984245, 40.117558, 25.699144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186317, -0.786118, 0.589325,
		-0.982029, 0.130648, -0.136197,
		0.030073, -0.604111, -0.796333,
		36.993267, 39.936325, 25.460245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483692, 39.826527, 26.108612>,  <36.972218, 40.359203, 26.017677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483692, 39.826527, 26.108612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726925, 39.657246, 25.839945>,  <36.872864, 39.555676, 25.678745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726925, 39.657246, 25.839945>,  <36.483692, 39.826527, 26.108612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726925, 39.657246, 25.839945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002138, -0.845184, 0.534471,
		-0.793875, -0.326436, -0.513032,
		0.608077, -0.423206, -0.671669,
		36.909348, 39.530285, 25.638445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237503, 39.200932, 26.069223>,  <36.483692, 39.826527, 26.108612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237503, 39.200932, 26.069223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601765, 39.174187, 25.906132>,  <36.820320, 39.158138, 25.808277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601765, 39.174187, 25.906132>,  <36.237503, 39.200932, 26.069223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601765, 39.174187, 25.906132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111505, -0.910430, 0.398351,
		-0.397845, -0.408223, -0.821629,
		0.910652, -0.066866, -0.407729,
		36.874962, 39.154125, 25.783813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309467, 38.577320, 25.676807>,  <36.237503, 39.200932, 26.069223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309467, 38.577320, 25.676807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698803, 38.640133, 25.743673>,  <36.932404, 38.677822, 25.783792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698803, 38.640133, 25.743673>,  <36.309467, 38.577320, 25.676807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698803, 38.640133, 25.743673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105261, -0.953410, 0.282717,
		0.203770, -0.257585, -0.944525,
		0.973344, 0.157031, 0.167163,
		36.990807, 38.687241, 25.793821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581421, 38.010452, 25.353586>,  <36.309467, 38.577320, 25.676807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581421, 38.010452, 25.353586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851898, 38.150169, 25.613050>,  <37.014183, 38.234001, 25.768728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851898, 38.150169, 25.613050>,  <36.581421, 38.010452, 25.353586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851898, 38.150169, 25.613050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243431, -0.936940, 0.250769,
		0.695347, -0.011664, -0.718579,
		0.676190, 0.349296, 0.648659,
		37.054756, 38.254959, 25.807648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108936, 37.496967, 25.258478>,  <36.581421, 38.010452, 25.353586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108936, 37.496967, 25.258478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248867, 37.681461, 25.584639>,  <37.332825, 37.792160, 25.780334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248867, 37.681461, 25.584639>,  <37.108936, 37.496967, 25.258478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248867, 37.681461, 25.584639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185616, -0.887268, 0.422258,
		0.918243, 0.003635, -0.396001,
		0.349824, 0.461239, 0.815403,
		37.353813, 37.819832, 25.829260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810585, 37.272278, 25.381033>,  <37.108936, 37.496967, 25.258478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810585, 37.272278, 25.381033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660477, 37.392693, 25.731701>,  <37.570412, 37.464939, 25.942102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660477, 37.392693, 25.731701>,  <37.810585, 37.272278, 25.381033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660477, 37.392693, 25.731701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081465, -0.931422, 0.354705,
		0.923328, 0.204529, 0.325014,
		-0.375273, 0.301032, 0.876670,
		37.547894, 37.483002, 25.994701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331932, 37.016575, 25.862057>,  <37.810585, 37.272278, 25.381033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331932, 37.016575, 25.862057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998432, 37.079391, 26.073792>,  <37.798332, 37.117081, 26.200832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998432, 37.079391, 26.073792>,  <38.331932, 37.016575, 25.862057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998432, 37.079391, 26.073792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200432, -0.807220, 0.555178,
		0.514474, 0.568977, 0.641547,
		-0.833753, 0.157038, 0.529335,
		37.748306, 37.126503, 26.232592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.920532, 35.225609, 29.942135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544136, 35.299328, 30.055679>,  <41.318298, 35.343559, 30.123806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544136, 35.299328, 30.055679>,  <41.920532, 35.225609, 29.942135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544136, 35.299328, 30.055679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107234, -0.633161, 0.766556,
		0.321000, 0.751760, 0.576035,
		-0.940989, 0.184294, 0.283859,
		41.261841, 35.354614, 30.140837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999596, 35.387444, 30.719675>,  <41.920532, 35.225609, 29.942135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999596, 35.387444, 30.719675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613033, 35.307961, 30.654470>,  <41.381096, 35.260269, 30.615347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613033, 35.307961, 30.654470>,  <41.999596, 35.387444, 30.719675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613033, 35.307961, 30.654470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037552, -0.518274, 0.854390,
		-0.254259, 0.831810, 0.493401,
		-0.966407, -0.198708, -0.163011,
		41.323112, 35.248348, 30.605568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653442, 35.588001, 31.367313>,  <41.999596, 35.387444, 30.719675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653442, 35.588001, 31.367313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411518, 35.326794, 31.184986>,  <41.266361, 35.170071, 31.075590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411518, 35.326794, 31.184986>,  <41.653442, 35.588001, 31.367313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411518, 35.326794, 31.184986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006384, -0.576326, 0.817195,
		-0.796342, 0.491340, 0.352738,
		-0.604813, -0.653018, -0.455816,
		41.230076, 35.130890, 31.048241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145699, 35.497852, 31.862900>,  <41.653442, 35.588001, 31.367313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145699, 35.497852, 31.862900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110245, 35.185703, 31.615297>,  <41.088974, 34.998413, 31.466736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110245, 35.185703, 31.615297>,  <41.145699, 35.497852, 31.862900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110245, 35.185703, 31.615297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072374, -0.614766, 0.785382,
		-0.993432, 0.114409, -0.001992,
		-0.088630, -0.780368, -0.619008,
		41.083656, 34.951591, 31.429594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559891, 35.133293, 31.969421>,  <41.145699, 35.497852, 31.862900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559891, 35.133293, 31.969421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795914, 34.854923, 31.805704>,  <40.937527, 34.687901, 31.707474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795914, 34.854923, 31.805704>,  <40.559891, 35.133293, 31.969421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795914, 34.854923, 31.805704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163388, -0.599394, 0.783602,
		-0.790653, -0.395500, -0.467384,
		0.590062, -0.695922, -0.409292,
		40.972931, 34.646145, 31.682917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164684, 34.617802, 32.128769>,  <40.559891, 35.133293, 31.969421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164684, 34.617802, 32.128769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524944, 34.483265, 32.018711>,  <40.741100, 34.402542, 31.952675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524944, 34.483265, 32.018711>,  <40.164684, 34.617802, 32.128769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524944, 34.483265, 32.018711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066241, -0.732049, 0.678024,
		-0.429468, -0.592436, -0.681599,
		0.900649, -0.336339, -0.275148,
		40.795139, 34.382362, 31.936167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072651, 33.911987, 31.985180>,  <40.164684, 34.617802, 32.128769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072651, 33.911987, 31.985180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463818, 33.952061, 32.058556>,  <40.698517, 33.976105, 32.102581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463818, 33.952061, 32.058556>,  <40.072651, 33.911987, 31.985180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463818, 33.952061, 32.058556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015387, -0.840764, 0.541184,
		0.208446, -0.532053, -0.820652,
		0.977913, 0.100180, 0.183441,
		40.757191, 33.982113, 32.113586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451244, 33.213791, 31.913050>,  <40.072651, 33.911987, 31.985180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451244, 33.213791, 31.913050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.671753, 33.451889, 32.146896>,  <40.804058, 33.594749, 32.287205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.671753, 33.451889, 32.146896>,  <40.451244, 33.213791, 31.913050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671753, 33.451889, 32.146896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021461, -0.710590, 0.703279,
		0.834048, -0.375153, -0.404505,
		0.551275, 0.595249, 0.584615,
		40.837135, 33.630463, 32.322281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021843, 32.829174, 32.179905>,  <40.451244, 33.213791, 31.913050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021843, 32.829174, 32.179905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013554, 33.123085, 32.451103>,  <41.008579, 33.299431, 32.613823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013554, 33.123085, 32.451103>,  <41.021843, 32.829174, 32.179905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013554, 33.123085, 32.451103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116476, -0.671750, 0.731564,
		0.992977, 0.094131, -0.071662,
		-0.020723, 0.734773, 0.677996,
		41.007336, 33.343517, 32.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374123, 32.587708, 32.756748>,  <41.021843, 32.829174, 32.179905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374123, 32.587708, 32.756748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191990, 32.896107, 32.934841>,  <41.082710, 33.081146, 33.041698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191990, 32.896107, 32.934841>,  <41.374123, 32.587708, 32.756748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191990, 32.896107, 32.934841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023981, -0.510524, 0.859529,
		0.889997, 0.380698, 0.250949,
		-0.455336, 0.770996, 0.445235,
		41.055389, 33.127407, 33.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773026, 32.761139, 33.299538>,  <41.374123, 32.587708, 32.756748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773026, 32.761139, 33.299538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413651, 32.911777, 33.389866>,  <41.198025, 33.002159, 33.444065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413651, 32.911777, 33.389866>,  <41.773026, 32.761139, 33.299538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413651, 32.911777, 33.389866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012967, -0.491296, 0.870896,
		0.438919, 0.785370, 0.436513,
		-0.898433, 0.376593, 0.225823,
		41.144119, 33.024754, 33.457611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843086, 33.240143, 33.924618>,  <41.773026, 32.761139, 33.299538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843086, 33.240143, 33.924618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467506, 33.105740, 33.895042>,  <41.242157, 33.025097, 33.877296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467506, 33.105740, 33.895042>,  <41.843086, 33.240143, 33.924618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467506, 33.105740, 33.895042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054859, -0.358366, 0.931968,
		-0.339647, 0.871017, 0.354922,
		-0.938952, -0.336011, -0.073935,
		41.185822, 33.004936, 33.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537483, 33.386887, 34.543922>,  <41.843086, 33.240143, 33.924618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537483, 33.386887, 34.543922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296009, 33.104832, 34.395145>,  <41.151123, 32.935596, 34.305878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.296009, 33.104832, 34.395145>,  <41.537483, 33.386887, 34.543922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296009, 33.104832, 34.395145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042709, -0.494481, 0.868138,
		-0.796079, 0.508196, 0.328626,
		-0.603685, -0.705142, -0.371941,
		41.114902, 32.893288, 34.283562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122704, 33.126713, 35.036140>,  <41.537483, 33.386887, 34.543922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122704, 33.126713, 35.036140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166420, 32.829762, 34.771736>,  <41.192650, 32.651592, 34.613094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166420, 32.829762, 34.771736>,  <41.122704, 33.126713, 35.036140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166420, 32.829762, 34.771736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157092, -0.643739, 0.748948,
		-0.981518, -0.185691, 0.046267,
		0.109289, -0.742374, -0.661012,
		41.199207, 32.607048, 34.573433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166615, 32.995865, 35.819153>,  <41.122704, 33.126713, 35.036140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166615, 32.995865, 35.819153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277489, 32.624767, 35.719185>,  <41.344013, 32.402107, 35.659206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277489, 32.624767, 35.719185>,  <41.166615, 32.995865, 35.819153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277489, 32.624767, 35.719185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242073, -0.184288, 0.952595,
		-0.929823, -0.324541, 0.173501,
		0.277182, -0.927745, -0.249918,
		41.360641, 32.346443, 35.644211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424126, 33.126949, 35.818813>,  <41.166615, 32.995865, 35.819153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424126, 33.126949, 35.818813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608097, 33.332722, 36.108318>,  <40.718479, 33.456184, 36.282021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.608097, 33.332722, 36.108318>,  <40.424126, 33.126949, 35.818813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608097, 33.332722, 36.108318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323408, 0.856147, -0.403012,
		-0.826968, -0.048715, 0.560134,
		0.459924, 0.514431, 0.723761,
		40.746075, 33.487049, 36.325447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993027, 33.627815, 35.935745>,  <40.424126, 33.126949, 35.818813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993027, 33.627815, 35.935745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.334332, 33.754932, 36.101128>,  <40.539116, 33.831203, 36.200359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.334332, 33.754932, 36.101128>,  <39.993027, 33.627815, 35.935745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334332, 33.754932, 36.101128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098908, 0.877089, -0.470034,
		-0.512014, 0.360169, 0.779821,
		0.853264, 0.317795, 0.413458,
		40.590309, 33.850269, 36.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821556, 34.260464, 36.302464>,  <39.993027, 33.627815, 35.935745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821556, 34.260464, 36.302464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214554, 34.286060, 36.232487>,  <40.450352, 34.301418, 36.190502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214554, 34.286060, 36.232487>,  <39.821556, 34.260464, 36.302464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214554, 34.286060, 36.232487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113029, 0.951296, -0.286812,
		0.148063, 0.301565, 0.941879,
		0.982498, 0.063994, -0.174937,
		40.509304, 34.305260, 36.180004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935780, 34.941181, 36.528934>,  <39.821556, 34.260464, 36.302464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935780, 34.941181, 36.528934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258476, 34.850185, 36.310791>,  <40.452095, 34.795589, 36.179905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.258476, 34.850185, 36.310791>,  <39.935780, 34.941181, 36.528934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258476, 34.850185, 36.310791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113181, 0.965323, -0.235248,
		0.579961, 0.128061, 0.804515,
		0.806743, -0.227491, -0.545356,
		40.500500, 34.781937, 36.147182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401974, 35.437168, 36.779510>,  <39.935780, 34.941181, 36.528934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401974, 35.437168, 36.779510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547127, 35.303356, 36.431625>,  <40.634216, 35.223068, 36.222893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547127, 35.303356, 36.431625>,  <40.401974, 35.437168, 36.779510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547127, 35.303356, 36.431625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208068, 0.938860, -0.274316,
		0.908309, -0.081416, 0.410299,
		0.362880, -0.334534, -0.869716,
		40.655991, 35.202995, 36.170712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836369, 35.965744, 36.582813>,  <40.401974, 35.437168, 36.779510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836369, 35.965744, 36.582813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799767, 35.747959, 36.249302>,  <40.777805, 35.617290, 36.049194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799767, 35.747959, 36.249302>,  <40.836369, 35.965744, 36.582813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799767, 35.747959, 36.249302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056158, 0.838784, -0.541561,
		0.994220, -0.002734, -0.107332,
		-0.091509, -0.544458, -0.833782,
		40.772312, 35.584621, 35.999168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275330, 36.232197, 35.977497>,  <40.836369, 35.965744, 36.582813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275330, 36.232197, 35.977497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990219, 36.020763, 35.793083>,  <40.819153, 35.893902, 35.682434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990219, 36.020763, 35.793083>,  <41.275330, 36.232197, 35.977497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990219, 36.020763, 35.793083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084977, 0.717548, -0.691306,
		0.696220, -0.453573, -0.556372,
		-0.712781, -0.528580, -0.461028,
		40.776386, 35.862190, 35.654774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519768, 36.169682, 35.316433>,  <41.275330, 36.232197, 35.977497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519768, 36.169682, 35.316433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.128799, 36.099762, 35.268929>,  <40.894218, 36.057812, 35.240425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.128799, 36.099762, 35.268929>,  <41.519768, 36.169682, 35.316433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128799, 36.099762, 35.268929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032926, 0.681096, -0.731454,
		0.208742, -0.711025, -0.671469,
		-0.977417, -0.174794, -0.118762,
		40.835575, 36.047325, 35.233299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440781, 36.216991, 34.549961>,  <41.519768, 36.169682, 35.316433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440781, 36.216991, 34.549961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074047, 36.244312, 34.707310>,  <40.854008, 36.260704, 34.801720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074047, 36.244312, 34.707310>,  <41.440781, 36.216991, 34.549961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074047, 36.244312, 34.707310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248588, 0.673335, -0.696293,
		-0.312432, -0.736176, -0.600359,
		-0.916837, 0.068302, 0.393376,
		40.798996, 36.264801, 34.825321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935352, 36.223526, 33.983807>,  <41.440781, 36.216991, 34.549961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935352, 36.223526, 33.983807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731731, 36.407104, 34.275074>,  <40.609558, 36.517254, 34.449837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.731731, 36.407104, 34.275074>,  <40.935352, 36.223526, 33.983807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731731, 36.407104, 34.275074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455100, 0.574549, -0.680277,
		-0.730583, -0.677686, -0.083606,
		-0.509049, 0.458950, 0.728171,
		40.579018, 36.544788, 34.493526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175545, 36.251827, 33.752857>,  <40.935352, 36.223526, 33.983807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175545, 36.251827, 33.752857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188469, 36.531219, 34.038815>,  <40.196224, 36.698856, 34.210388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188469, 36.531219, 34.038815>,  <40.175545, 36.251827, 33.752857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188469, 36.531219, 34.038815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407493, 0.662331, -0.628703,
		-0.912636, -0.270999, 0.306030,
		0.032315, 0.698482, 0.714898,
		40.198162, 36.740765, 34.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556705, 36.516525, 33.793770>,  <40.175545, 36.251827, 33.752857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556705, 36.516525, 33.793770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819065, 36.789589, 33.922626>,  <39.976479, 36.953426, 33.999939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819065, 36.789589, 33.922626>,  <39.556705, 36.516525, 33.793770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819065, 36.789589, 33.922626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330416, 0.643351, -0.690598,
		-0.678694, 0.346519, 0.647533,
		0.655897, 0.682659, 0.322143,
		40.015835, 36.994389, 34.019268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189217, 37.058575, 33.835857>,  <39.556705, 36.516525, 33.793770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189217, 37.058575, 33.835857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563953, 37.198093, 33.825489>,  <39.788795, 37.281803, 33.819267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563953, 37.198093, 33.825489>,  <39.189217, 37.058575, 33.835857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563953, 37.198093, 33.825489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269102, 0.671483, -0.690431,
		-0.223411, 0.653799, 0.722934,
		0.936841, 0.348793, -0.025922,
		39.845005, 37.302731, 33.817711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871075, 37.515766, 34.262817>,  <39.189217, 37.058575, 33.835857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871075, 37.515766, 34.262817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487869, 37.630177, 34.270809>,  <38.257946, 37.698822, 34.275604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487869, 37.630177, 34.270809>,  <38.871075, 37.515766, 34.262817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487869, 37.630177, 34.270809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226709, -0.798313, 0.557942,
		0.175533, 0.529987, 0.829640,
		-0.958014, 0.286024, 0.019977,
		38.200466, 37.715984, 34.276802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749462, 37.578205, 35.059338>,  <38.871075, 37.515766, 34.262817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749462, 37.578205, 35.059338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400436, 37.559185, 34.864864>,  <38.191021, 37.547771, 34.748180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400436, 37.559185, 34.864864>,  <38.749462, 37.578205, 35.059338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400436, 37.559185, 34.864864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351800, -0.629353, 0.692929,
		-0.338933, 0.775663, 0.532420,
		-0.872560, -0.047551, -0.486187,
		38.138668, 37.544918, 34.719009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254681, 37.748756, 35.549946>,  <38.749462, 37.578205, 35.059338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254681, 37.748756, 35.549946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059303, 37.541050, 35.269440>,  <37.942078, 37.416424, 35.101135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059303, 37.541050, 35.269440>,  <38.254681, 37.748756, 35.549946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059303, 37.541050, 35.269440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331492, -0.632988, 0.699600,
		-0.807175, 0.574183, 0.137048,
		-0.488447, -0.519269, -0.701269,
		37.912769, 37.385269, 35.059059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651360, 37.667034, 35.824646>,  <38.254681, 37.748756, 35.549946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651360, 37.667034, 35.824646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634106, 37.421528, 35.509319>,  <37.623753, 37.274223, 35.320126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634106, 37.421528, 35.509319>,  <37.651360, 37.667034, 35.824646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634106, 37.421528, 35.509319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568768, -0.633613, 0.524440,
		-0.821366, 0.470990, -0.321755,
		-0.043138, -0.613761, -0.788312,
		37.621166, 37.237400, 35.272827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895214, 37.467010, 35.767960>,  <37.651360, 37.667034, 35.824646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895214, 37.467010, 35.767960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121063, 37.180317, 35.604256>,  <37.256573, 37.008301, 35.506035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.121063, 37.180317, 35.604256>,  <36.895214, 37.467010, 35.767960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121063, 37.180317, 35.604256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526505, -0.694653, 0.490153,
		-0.635602, -0.061276, -0.769582,
		0.564627, -0.716731, -0.409261,
		37.290451, 36.965298, 35.481476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522091, 37.038284, 35.404736>,  <36.895214, 37.467010, 35.767960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522091, 37.038284, 35.404736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841789, 36.823940, 35.513596>,  <37.033607, 36.695335, 35.578911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841789, 36.823940, 35.513596>,  <36.522091, 37.038284, 35.404736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841789, 36.823940, 35.513596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600719, -0.698223, 0.389386,
		-0.018638, -0.474697, -0.879952,
		0.799243, -0.535861, 0.272146,
		37.081562, 36.663181, 35.595238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325485, 36.354485, 35.260838>,  <36.522091, 37.038284, 35.404736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325485, 36.354485, 35.260838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655869, 36.230953, 35.449482>,  <36.854099, 36.156834, 35.562668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655869, 36.230953, 35.449482>,  <36.325485, 36.354485, 35.260838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655869, 36.230953, 35.449482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513692, -0.756904, 0.404002,
		0.232200, -0.575953, -0.783812,
		0.825957, -0.308829, 0.471615,
		36.903656, 36.138306, 35.590965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442375, 35.609104, 35.172672>,  <36.325485, 36.354485, 35.260838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442375, 35.609104, 35.172672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603428, 35.719994, 35.521622>,  <36.700058, 35.786530, 35.730991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603428, 35.719994, 35.521622>,  <36.442375, 35.609104, 35.172672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603428, 35.719994, 35.521622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432727, -0.782173, 0.448278,
		0.806621, -0.557990, -0.194962,
		0.402629, 0.277225, 0.872374,
		36.724216, 35.803162, 35.783333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676994, 34.984238, 35.363144>,  <36.442375, 35.609104, 35.172672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676994, 34.984238, 35.363144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641289, 35.233212, 35.674171>,  <36.619865, 35.382595, 35.860786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641289, 35.233212, 35.674171>,  <36.676994, 34.984238, 35.363144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641289, 35.233212, 35.674171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345394, -0.751583, 0.561985,
		0.934203, -0.218400, 0.282076,
		-0.089265, 0.622435, 0.777565,
		36.614510, 35.419941, 35.907440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783749, 34.610878, 35.880768>,  <36.676994, 34.984238, 35.363144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783749, 34.610878, 35.880768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621952, 34.927734, 36.063587>,  <36.524872, 35.117847, 36.173279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621952, 34.927734, 36.063587>,  <36.783749, 34.610878, 35.880768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621952, 34.927734, 36.063587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384348, -0.600723, 0.701006,
		0.829855, 0.107889, 0.547449,
		-0.404496, 0.792144, 0.457046,
		36.500603, 35.165379, 36.200703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864559, 34.510521, 36.572067>,  <36.783749, 34.610878, 35.880768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864559, 34.510521, 36.572067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.573769, 34.785179, 36.570129>,  <36.399296, 34.949974, 36.568966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.573769, 34.785179, 36.570129>,  <36.864559, 34.510521, 36.572067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573769, 34.785179, 36.570129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460210, -0.481973, 0.745593,
		0.509626, 0.544255, 0.666384,
		-0.726972, 0.686650, -0.004846,
		36.355679, 34.991173, 36.568676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715981, 34.523148, 37.248985>,  <36.864559, 34.510521, 36.572067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715981, 34.523148, 37.248985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.400143, 34.694450, 37.073193>,  <36.210640, 34.797230, 36.967716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.400143, 34.694450, 37.073193>,  <36.715981, 34.523148, 37.248985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400143, 34.694450, 37.073193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595346, -0.361098, 0.717754,
		0.148687, 0.828375, 0.540080,
		-0.789592, 0.428255, -0.439479,
		36.163265, 34.822926, 36.941349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.794930, 41.232315, 33.077637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474743, 41.088295, 32.885963>,  <38.282631, 41.001881, 32.770958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474743, 41.088295, 32.885963>,  <38.794930, 41.232315, 33.077637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474743, 41.088295, 32.885963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150971, -0.652574, 0.742533,
		-0.580054, 0.666715, 0.468005,
		-0.800466, -0.360054, -0.479182,
		38.234604, 40.980278, 32.742210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193226, 41.122589, 33.611504>,  <38.794930, 41.232315, 33.077637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193226, 41.122589, 33.611504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123169, 40.884632, 33.297707>,  <38.081135, 40.741856, 33.109428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123169, 40.884632, 33.297707>,  <38.193226, 41.122589, 33.611504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123169, 40.884632, 33.297707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172356, -0.765974, 0.619336,
		-0.969339, 0.243683, 0.031620,
		-0.175141, -0.594897, -0.784489,
		38.070625, 40.706161, 33.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665306, 40.724991, 33.771103>,  <38.193226, 41.122589, 33.611504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665306, 40.724991, 33.771103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828903, 40.506443, 33.478745>,  <37.927059, 40.375313, 33.303329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828903, 40.506443, 33.478745>,  <37.665306, 40.724991, 33.771103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828903, 40.506443, 33.478745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204722, -0.835467, 0.509984,
		-0.889279, -0.058947, -0.453550,
		0.408988, -0.546370, -0.730896,
		37.951599, 40.342533, 33.259476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220627, 40.200188, 33.668026>,  <37.665306, 40.724991, 33.771103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220627, 40.200188, 33.668026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570930, 40.074528, 33.521412>,  <37.781113, 39.999130, 33.433441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570930, 40.074528, 33.521412>,  <37.220627, 40.200188, 33.668026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570930, 40.074528, 33.521412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150966, -0.899425, 0.410175,
		-0.458531, -0.303881, -0.835108,
		0.875762, -0.314151, -0.366539,
		37.833660, 39.980282, 33.411449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077137, 39.512577, 33.396564>,  <37.220627, 40.200188, 33.668026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077137, 39.512577, 33.396564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475586, 39.510578, 33.431679>,  <37.714657, 39.509380, 33.452747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475586, 39.510578, 33.431679>,  <37.077137, 39.512577, 33.396564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475586, 39.510578, 33.431679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034537, -0.940386, 0.338352,
		0.080864, -0.340073, -0.936916,
		0.996127, -0.004997, 0.087788,
		37.774426, 39.509079, 33.458015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287086, 38.848595, 33.173000>,  <37.077137, 39.512577, 33.396564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287086, 38.848595, 33.173000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625725, 38.971165, 33.347069>,  <37.828907, 39.044708, 33.451511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625725, 38.971165, 33.347069>,  <37.287086, 38.848595, 33.173000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625725, 38.971165, 33.347069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136385, -0.915236, 0.379133,
		0.514464, -0.261622, -0.816628,
		0.846597, 0.306426, 0.435175,
		37.879704, 39.063091, 33.477623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849533, 38.473484, 32.951149>,  <37.287086, 38.848595, 33.173000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849533, 38.473484, 32.951149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940582, 38.617760, 33.312943>,  <37.995213, 38.704327, 33.530018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940582, 38.617760, 33.312943>,  <37.849533, 38.473484, 32.951149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940582, 38.617760, 33.312943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017064, -0.930201, 0.366654,
		0.973600, -0.068024, -0.217888,
		0.227621, 0.360692, 0.904483,
		38.008869, 38.725967, 33.584286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459938, 38.141247, 33.114983>,  <37.849533, 38.473484, 32.951149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459938, 38.141247, 33.114983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295189, 38.247765, 33.463570>,  <38.196339, 38.311676, 33.672722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295189, 38.247765, 33.463570>,  <38.459938, 38.141247, 33.114983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295189, 38.247765, 33.463570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117379, -0.932876, 0.340536,
		0.903650, 0.242549, 0.352968,
		-0.411872, 0.266294, 0.871463,
		38.171627, 38.327652, 33.725010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943813, 37.850170, 33.608166>,  <38.459938, 38.141247, 33.114983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943813, 37.850170, 33.608166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601486, 37.924496, 33.801266>,  <38.396091, 37.969093, 33.917126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601486, 37.924496, 33.801266>,  <38.943813, 37.850170, 33.608166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601486, 37.924496, 33.801266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040031, -0.906664, 0.419950,
		0.515729, 0.378725, 0.768499,
		-0.855816, 0.185816, 0.482754,
		38.344742, 37.980240, 33.946091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289703, 38.317966, 33.964462>,  <38.943813, 37.850170, 33.608166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289703, 38.317966, 33.964462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625469, 38.146545, 33.830757>,  <39.826927, 38.043694, 33.750534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625469, 38.146545, 33.830757>,  <39.289703, 38.317966, 33.964462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625469, 38.146545, 33.830757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020051, 0.639023, -0.768927,
		0.543125, 0.638745, 0.544996,
		0.839413, -0.428551, -0.334262,
		39.877293, 38.017979, 33.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772652, 38.795868, 33.853271>,  <39.289703, 38.317966, 33.964462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772652, 38.795868, 33.853271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896355, 38.499596, 33.614693>,  <39.970577, 38.321831, 33.471546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896355, 38.499596, 33.614693>,  <39.772652, 38.795868, 33.853271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896355, 38.499596, 33.614693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235303, 0.667286, -0.706655,
		0.921407, 0.078195, 0.380650,
		0.309259, -0.740685, -0.596443,
		39.989132, 38.277390, 33.435760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438244, 39.016567, 33.653183>,  <39.772652, 38.795868, 33.853271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438244, 39.016567, 33.653183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345745, 38.725178, 33.395237>,  <40.290245, 38.550343, 33.240471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345745, 38.725178, 33.395237>,  <40.438244, 39.016567, 33.653183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345745, 38.725178, 33.395237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402775, 0.531679, -0.745043,
		0.885606, -0.432023, 0.170462,
		-0.231245, -0.728473, -0.644867,
		40.276371, 38.506638, 33.201778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050518, 39.046017, 33.181087>,  <40.438244, 39.016567, 33.653183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050518, 39.046017, 33.181087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749168, 38.888748, 32.970245>,  <40.568359, 38.794388, 32.843739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749168, 38.888748, 32.970245>,  <41.050518, 39.046017, 33.181087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749168, 38.888748, 32.970245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313781, 0.489498, -0.813592,
		0.577899, -0.778336, -0.245406,
		-0.753375, -0.393171, -0.527108,
		40.523155, 38.770798, 32.812115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319252, 38.803844, 32.602989>,  <41.050518, 39.046017, 33.181087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319252, 38.803844, 32.602989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933601, 38.842999, 32.504295>,  <40.702209, 38.866489, 32.445080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933601, 38.842999, 32.504295>,  <41.319252, 38.803844, 32.602989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933601, 38.842999, 32.504295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256052, 0.588023, -0.767246,
		0.069986, -0.802899, -0.591991,
		-0.964126, 0.097884, -0.246737,
		40.644363, 38.872364, 32.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311859, 38.715122, 31.837383>,  <41.319252, 38.803844, 32.602989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311859, 38.715122, 31.837383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977741, 38.904072, 31.949917>,  <40.777271, 39.017441, 32.017437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977741, 38.904072, 31.949917>,  <41.311859, 38.715122, 31.837383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977741, 38.904072, 31.949917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152229, 0.690396, -0.707234,
		-0.528311, -0.547920, -0.648592,
		-0.835293, 0.472374, 0.281334,
		40.727154, 39.045784, 32.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827488, 38.786018, 31.228895>,  <41.311859, 38.715122, 31.837383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827488, 38.786018, 31.228895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720974, 39.061142, 31.499008>,  <40.657066, 39.226215, 31.661076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720974, 39.061142, 31.499008>,  <40.827488, 38.786018, 31.228895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720974, 39.061142, 31.499008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282667, 0.725499, -0.627496,
		-0.921517, 0.023789, -0.387609,
		-0.266283, 0.687812, 0.675283,
		40.641090, 39.267487, 31.701593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696854, 39.290318, 30.852152>,  <40.827488, 38.786018, 31.228895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696854, 39.290318, 30.852152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695797, 39.484772, 31.201704>,  <40.695164, 39.601444, 31.411434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695797, 39.484772, 31.201704>,  <40.696854, 39.290318, 30.852152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695797, 39.484772, 31.201704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144866, 0.864850, -0.480675,
		-0.989448, 0.125326, -0.072709,
		-0.002642, 0.486136, 0.873879,
		40.695004, 39.630611, 31.463867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213657, 39.822395, 30.739885>,  <40.696854, 39.290318, 30.852152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213657, 39.822395, 30.739885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463448, 39.919983, 31.036671>,  <40.613323, 39.978535, 31.214743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463448, 39.919983, 31.036671>,  <40.213657, 39.822395, 30.739885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463448, 39.919983, 31.036671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326749, 0.781238, -0.531886,
		-0.709413, 0.574585, 0.408148,
		0.624475, 0.243964, 0.741965,
		40.650791, 39.993172, 31.259260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055016, 40.398388, 31.180882>,  <40.213657, 39.822395, 30.739885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055016, 40.398388, 31.180882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454060, 40.376560, 31.197840>,  <40.693485, 40.363464, 31.208014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454060, 40.376560, 31.197840>,  <40.055016, 40.398388, 31.180882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454060, 40.376560, 31.197840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068143, 0.878798, -0.472304,
		-0.011481, 0.474064, 0.880415,
		0.997610, -0.054571, 0.042394,
		40.753342, 40.360188, 31.210558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193047, 41.111870, 31.081858>,  <40.055016, 40.398388, 31.180882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193047, 41.111870, 31.081858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541050, 40.915657, 31.062004>,  <40.749851, 40.797928, 31.050093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541050, 40.915657, 31.062004>,  <40.193047, 41.111870, 31.081858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541050, 40.915657, 31.062004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372240, 0.719522, -0.586281,
		0.323304, 0.491592, 0.808586,
		0.870007, -0.490535, -0.049634,
		40.802052, 40.768497, 31.047113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779510, 41.623589, 31.271114>,  <40.193047, 41.111870, 31.081858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779510, 41.623589, 31.271114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928154, 41.319023, 31.058640>,  <41.017342, 41.136284, 30.931154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928154, 41.319023, 31.058640>,  <40.779510, 41.623589, 31.271114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928154, 41.319023, 31.058640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432983, 0.648264, -0.626322,
		0.821237, 0.002753, 0.570580,
		0.371611, -0.761411, -0.531187,
		41.039639, 41.090599, 30.899284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456043, 41.751347, 31.264729>,  <40.779510, 41.623589, 31.271114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456043, 41.751347, 31.264729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357704, 41.529167, 30.946976>,  <41.298702, 41.395859, 30.756325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357704, 41.529167, 30.946976>,  <41.456043, 41.751347, 31.264729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357704, 41.529167, 30.946976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157151, 0.785852, -0.598114,
		0.956486, -0.271880, -0.105908,
		-0.245843, -0.555444, -0.794382,
		41.283951, 41.362534, 30.708660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004082, 41.758175, 30.860031>,  <41.456043, 41.751347, 31.264729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004082, 41.758175, 30.860031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706211, 41.660419, 30.611605>,  <41.527489, 41.601765, 30.462549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706211, 41.660419, 30.611605>,  <42.004082, 41.758175, 30.860031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706211, 41.660419, 30.611605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216489, 0.791785, -0.571147,
		0.631334, -0.559777, -0.536720,
		-0.744681, -0.244390, -0.621066,
		41.482807, 41.587101, 30.425285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.019913, 38.884029, 26.039007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258942, 39.060387, 26.306892>,  <34.402359, 39.166199, 26.467625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258942, 39.060387, 26.306892>,  <34.019913, 38.884029, 26.039007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258942, 39.060387, 26.306892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221012, -0.893467, 0.390986,
		0.770750, -0.085629, -0.631358,
		0.597577, 0.440890, 0.669715,
		34.438213, 39.192654, 26.507807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508736, 38.484104, 26.139095>,  <34.019913, 38.884029, 26.039007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508736, 38.484104, 26.139095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573532, 38.705616, 26.465796>,  <34.612411, 38.838524, 26.661816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573532, 38.705616, 26.465796>,  <34.508736, 38.484104, 26.139095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573532, 38.705616, 26.465796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353694, -0.805276, 0.475848,
		0.921226, 0.211795, -0.326320,
		0.161996, 0.553781, 0.816752,
		34.622131, 38.871750, 26.710821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057735, 38.117748, 26.410406>,  <34.508736, 38.484104, 26.139095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057735, 38.117748, 26.410406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941311, 38.378395, 26.690599>,  <34.871456, 38.534782, 26.858715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941311, 38.378395, 26.690599>,  <35.057735, 38.117748, 26.410406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941311, 38.378395, 26.690599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401832, -0.581205, 0.707624,
		0.868224, 0.487440, -0.092673,
		-0.291062, 0.651616, 0.700485,
		34.853992, 38.573879, 26.900745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668533, 38.338646, 26.796049>,  <35.057735, 38.117748, 26.410406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668533, 38.338646, 26.796049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332794, 38.366276, 27.011726>,  <35.131351, 38.382854, 27.141132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332794, 38.366276, 27.011726>,  <35.668533, 38.338646, 26.796049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332794, 38.366276, 27.011726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404639, -0.582960, 0.704574,
		0.362998, 0.809559, 0.461353,
		-0.839345, 0.069078, 0.539192,
		35.080990, 38.386997, 27.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003551, 38.389240, 27.495758>,  <35.668533, 38.338646, 26.796049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003551, 38.389240, 27.495758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617821, 38.286530, 27.521500>,  <35.386383, 38.224903, 27.536943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617821, 38.286530, 27.521500>,  <36.003551, 38.389240, 27.495758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617821, 38.286530, 27.521500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218775, -0.636189, 0.739865,
		-0.149040, 0.727550, 0.669670,
		-0.964326, -0.256776, 0.064352,
		35.328522, 38.209496, 27.540806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895351, 38.237267, 28.301355>,  <36.003551, 38.389240, 27.495758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895351, 38.237267, 28.301355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597260, 38.067745, 28.095430>,  <35.418404, 37.966034, 27.971876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597260, 38.067745, 28.095430>,  <35.895351, 38.237267, 28.301355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597260, 38.067745, 28.095430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029556, -0.792282, 0.609439,
		-0.666157, 0.438954, 0.602955,
		-0.745226, -0.423803, -0.514811,
		35.373692, 37.940605, 27.940987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420021, 38.021301, 28.788948>,  <35.895351, 38.237267, 28.301355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420021, 38.021301, 28.788948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359234, 37.784855, 28.472092>,  <35.322762, 37.642986, 28.281979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359234, 37.784855, 28.472092>,  <35.420021, 38.021301, 28.788948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359234, 37.784855, 28.472092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010625, -0.802380, 0.596720,
		-0.988329, 0.082263, 0.128214,
		-0.151964, -0.591117, -0.792141,
		35.313644, 37.607521, 28.234449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916504, 37.478333, 29.099483>,  <35.420021, 38.021301, 28.788948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916504, 37.478333, 29.099483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076664, 37.347847, 28.756962>,  <35.172760, 37.269554, 28.551449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.076664, 37.347847, 28.756962>,  <34.916504, 37.478333, 29.099483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076664, 37.347847, 28.756962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205136, -0.878859, 0.430727,
		-0.893082, -0.348124, -0.284980,
		0.400403, -0.326215, -0.856306,
		35.196785, 37.249981, 28.500071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548481, 36.871811, 29.019848>,  <34.916504, 37.478333, 29.099483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548481, 36.871811, 29.019848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881527, 36.849213, 28.799465>,  <35.081356, 36.835655, 28.667234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881527, 36.849213, 28.799465>,  <34.548481, 36.871811, 29.019848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881527, 36.849213, 28.799465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207720, -0.890316, 0.405203,
		-0.513419, -0.451825, -0.729558,
		0.832618, -0.056495, -0.550959,
		35.131313, 36.832264, 28.634178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524776, 36.291634, 28.546425>,  <34.548481, 36.871811, 29.019848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524776, 36.291634, 28.546425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910587, 36.361485, 28.625620>,  <35.142075, 36.403397, 28.673136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910587, 36.361485, 28.625620>,  <34.524776, 36.291634, 28.546425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910587, 36.361485, 28.625620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109279, -0.946796, 0.302712,
		0.240315, -0.270338, -0.932291,
		0.964524, 0.174626, 0.197987,
		35.199944, 36.413872, 28.685017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849243, 35.684380, 28.419641>,  <34.524776, 36.291634, 28.546425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849243, 35.684380, 28.419641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.104309, 35.897232, 28.642431>,  <35.257347, 36.024944, 28.776106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.104309, 35.897232, 28.642431>,  <34.849243, 35.684380, 28.419641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104309, 35.897232, 28.642431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274136, -0.832478, 0.481488,
		0.719883, -0.154341, -0.676718,
		0.637666, 0.532128, 0.556976,
		35.295609, 36.056870, 28.809525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502678, 35.297882, 28.374855>,  <34.849243, 35.684380, 28.419641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502678, 35.297882, 28.374855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510437, 35.537655, 28.694931>,  <35.515091, 35.681519, 28.886976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510437, 35.537655, 28.694931>,  <35.502678, 35.297882, 28.374855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510437, 35.537655, 28.694931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380085, -0.744673, 0.548633,
		0.924748, 0.293498, -0.242280,
		0.019397, 0.599434, 0.800189,
		35.516254, 35.717484, 28.934988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082764, 35.044556, 28.723118>,  <35.502678, 35.297882, 28.374855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082764, 35.044556, 28.723118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875832, 35.250156, 28.996807>,  <35.751671, 35.373516, 29.161020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875832, 35.250156, 28.996807>,  <36.082764, 35.044556, 28.723118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875832, 35.250156, 28.996807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058099, -0.776590, 0.627322,
		0.853809, 0.364288, 0.371893,
		-0.517334, 0.514006, 0.684224,
		35.720631, 35.404358, 29.202074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390476, 34.955029, 29.349466>,  <36.082764, 35.044556, 28.723118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390476, 34.955029, 29.349466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028740, 35.059208, 29.484716>,  <35.811699, 35.121716, 29.565866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028740, 35.059208, 29.484716>,  <36.390476, 34.955029, 29.349466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028740, 35.059208, 29.484716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077560, -0.678752, 0.730260,
		0.419696, 0.686632, 0.593626,
		-0.904345, 0.260446, 0.338125,
		35.757435, 35.137341, 29.586153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151680, 35.091282, 29.488691>,  <36.390476, 34.955029, 29.349466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151680, 35.091282, 29.488691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471394, 34.878407, 29.377031>,  <37.663223, 34.750683, 29.310036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.471394, 34.878407, 29.377031>,  <37.151680, 35.091282, 29.488691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471394, 34.878407, 29.377031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066861, 0.382877, -0.921377,
		0.597224, 0.755105, 0.270444,
		0.799283, -0.532186, -0.279150,
		37.711178, 34.718750, 29.293285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728676, 35.577694, 29.306452>,  <37.151680, 35.091282, 29.488691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728676, 35.577694, 29.306452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797211, 35.227104, 29.126480>,  <37.838329, 35.016750, 29.018497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797211, 35.227104, 29.126480>,  <37.728676, 35.577694, 29.306452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797211, 35.227104, 29.126480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089297, 0.468619, -0.878876,
		0.981158, 0.110402, 0.158557,
		0.171333, -0.876475, -0.449930,
		37.848610, 34.964161, 28.991501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320881, 35.718521, 28.876041>,  <37.728676, 35.577694, 29.306452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320881, 35.718521, 28.876041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136597, 35.391048, 28.738922>,  <38.026028, 35.194565, 28.656651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136597, 35.391048, 28.738922>,  <38.320881, 35.718521, 28.876041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136597, 35.391048, 28.738922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118663, 0.439580, -0.890330,
		0.879582, -0.369507, -0.299666,
		-0.460710, -0.818678, -0.342800,
		37.998383, 35.145447, 28.636082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788471, 35.522945, 28.363386>,  <38.320881, 35.718521, 28.876041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788471, 35.522945, 28.363386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429909, 35.363224, 28.286438>,  <38.214771, 35.267391, 28.240269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429909, 35.363224, 28.286438>,  <38.788471, 35.522945, 28.363386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429909, 35.363224, 28.286438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074674, 0.563885, -0.822470,
		0.436890, -0.722905, -0.535290,
		-0.896410, -0.399301, -0.192373,
		38.160984, 35.243435, 28.228725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811020, 35.446140, 27.697172>,  <38.788471, 35.522945, 28.363386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811020, 35.446140, 27.697172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415234, 35.408531, 27.741198>,  <38.177761, 35.385967, 27.767612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415234, 35.408531, 27.741198>,  <38.811020, 35.446140, 27.697172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415234, 35.408531, 27.741198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143331, 0.529898, -0.835861,
		0.020266, -0.842833, -0.537793,
		-0.989467, -0.094022, 0.110065,
		38.118393, 35.380325, 27.774218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581192, 35.282318, 27.098574>,  <38.811020, 35.446140, 27.697172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581192, 35.282318, 27.098574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276646, 35.454422, 27.292564>,  <38.093918, 35.557686, 27.408958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276646, 35.454422, 27.292564>,  <38.581192, 35.282318, 27.098574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276646, 35.454422, 27.292564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174883, 0.584021, -0.792676,
		-0.624293, -0.688329, -0.369407,
		-0.761363, 0.430259, 0.484977,
		38.048237, 35.583500, 27.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904995, 35.301250, 26.682774>,  <38.581192, 35.282318, 27.098574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904995, 35.301250, 26.682774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840889, 35.577316, 26.965046>,  <37.802425, 35.742958, 27.134409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840889, 35.577316, 26.965046>,  <37.904995, 35.301250, 26.682774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840889, 35.577316, 26.965046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313634, 0.642267, -0.699376,
		-0.935921, -0.333412, 0.113525,
		-0.160267, 0.690166, 0.705680,
		37.792809, 35.784367, 27.176750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325436, 35.608814, 26.491768>,  <37.904995, 35.301250, 26.682774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325436, 35.608814, 26.491768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496189, 35.875206, 26.736469>,  <37.598640, 36.035042, 26.883289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.496189, 35.875206, 26.736469>,  <37.325436, 35.608814, 26.491768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496189, 35.875206, 26.736469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168476, 0.723214, -0.669759,
		-0.888476, 0.182841, 0.420927,
		0.426880, 0.665981, 0.611754,
		37.624252, 36.075001, 26.919996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884048, 36.092705, 26.353647>,  <37.325436, 35.608814, 26.491768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884048, 36.092705, 26.353647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171146, 36.273792, 26.565266>,  <37.343407, 36.382442, 26.692238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171146, 36.273792, 26.565266>,  <36.884048, 36.092705, 26.353647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171146, 36.273792, 26.565266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080732, 0.808772, -0.582555,
		-0.691611, 0.375414, 0.617040,
		0.717744, 0.452717, 0.529048,
		37.386471, 36.409607, 26.723980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603382, 36.648449, 26.634045>,  <36.884048, 36.092705, 26.353647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603382, 36.648449, 26.634045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991646, 36.744186, 26.643309>,  <37.224606, 36.801628, 26.648867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991646, 36.744186, 26.643309>,  <36.603382, 36.648449, 26.634045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991646, 36.744186, 26.643309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223262, 0.932824, -0.282830,
		-0.089295, 0.269361, 0.958890,
		0.970660, 0.239339, 0.023159,
		37.282845, 36.815987, 26.650257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701050, 37.323757, 26.963472>,  <36.603382, 36.648449, 26.634045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701050, 37.323757, 26.963472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056194, 37.293068, 26.782007>,  <37.269283, 37.274654, 26.673128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056194, 37.293068, 26.782007>,  <36.701050, 37.323757, 26.963472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056194, 37.293068, 26.782007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068449, 0.953003, -0.295126,
		0.454985, 0.293084, 0.840886,
		0.887864, -0.076720, -0.453663,
		37.322556, 37.270050, 26.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101250, 37.970173, 27.116083>,  <36.701050, 37.323757, 26.963472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101250, 37.970173, 27.116083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242264, 37.810963, 26.777309>,  <37.326870, 37.715435, 26.574045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242264, 37.810963, 26.777309>,  <37.101250, 37.970173, 27.116083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242264, 37.810963, 26.777309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052475, 0.912021, -0.406773,
		0.934328, 0.098957, 0.342402,
		0.352531, -0.398027, -0.846933,
		37.348022, 37.691555, 26.523230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615314, 38.394726, 26.986332>,  <37.101250, 37.970173, 27.116083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615314, 38.394726, 26.986332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543018, 38.211426, 26.638231>,  <37.499641, 38.101448, 26.429371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543018, 38.211426, 26.638231>,  <37.615314, 38.394726, 26.986332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543018, 38.211426, 26.638231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092072, 0.888824, -0.448904,
		0.979211, -0.001011, -0.202842,
		-0.180745, -0.458248, -0.870253,
		37.488796, 38.073952, 26.377155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059448, 38.794388, 26.607489>,  <37.615314, 38.394726, 26.986332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059448, 38.794388, 26.607489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775124, 38.635899, 26.375019>,  <37.604530, 38.540806, 26.235538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775124, 38.635899, 26.375019>,  <38.059448, 38.794388, 26.607489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775124, 38.635899, 26.375019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194476, 0.904746, -0.378965,
		0.675966, -0.156348, -0.720156,
		-0.710808, -0.396221, -0.581172,
		37.561882, 38.517033, 26.200668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830048, 38.892212, 26.302790>,  <38.059448, 38.794388, 26.607489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830048, 38.892212, 26.302790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187458, 39.058666, 26.370245>,  <39.401905, 39.158539, 26.410719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187458, 39.058666, 26.370245>,  <38.830048, 38.892212, 26.302790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187458, 39.058666, 26.370245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237519, -0.756792, 0.608975,
		0.381041, -0.504081, -0.775055,
		0.893528, 0.416134, 0.168640,
		39.455517, 39.183506, 26.420837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325932, 38.389153, 26.171171>,  <38.830048, 38.892212, 26.302790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325932, 38.389153, 26.171171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514629, 38.653141, 26.405060>,  <39.627850, 38.811535, 26.545393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514629, 38.653141, 26.405060>,  <39.325932, 38.389153, 26.171171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514629, 38.653141, 26.405060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385493, -0.750785, 0.536393,
		0.793001, -0.027636, -0.608593,
		0.471747, 0.659968, 0.584720,
		39.656155, 38.851131, 26.580475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929558, 38.095001, 26.336477>,  <39.325932, 38.389153, 26.171171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929558, 38.095001, 26.336477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907028, 38.368713, 26.627295>,  <39.893509, 38.532940, 26.801785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907028, 38.368713, 26.627295>,  <39.929558, 38.095001, 26.336477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907028, 38.368713, 26.627295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521795, -0.600662, 0.605752,
		0.851209, 0.413488, -0.323219,
		-0.056326, 0.684276, 0.727045,
		39.890129, 38.573997, 26.845407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555298, 38.089954, 26.759665>,  <39.929558, 38.095001, 26.336477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555298, 38.089954, 26.759665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295368, 38.266323, 27.007313>,  <40.139408, 38.372147, 27.155901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.295368, 38.266323, 27.007313>,  <40.555298, 38.089954, 26.759665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295368, 38.266323, 27.007313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297953, -0.601579, 0.741166,
		0.699247, 0.666099, 0.259548,
		-0.649829, 0.440925, 0.619118,
		40.100418, 38.398602, 27.193048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933014, 38.124958, 27.340866>,  <40.555298, 38.089954, 26.759665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933014, 38.124958, 27.340866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553635, 38.158749, 27.463047>,  <40.326008, 38.179024, 27.536356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553635, 38.158749, 27.463047>,  <40.933014, 38.124958, 27.340866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553635, 38.158749, 27.463047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235990, -0.455057, 0.858622,
		0.211534, 0.886446, 0.411664,
		-0.948452, 0.084479, 0.305453,
		40.269100, 38.184093, 27.554684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940876, 38.541016, 27.981512>,  <40.933014, 38.124958, 27.340866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940876, 38.541016, 27.981512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588676, 38.354126, 28.013580>,  <40.377357, 38.241993, 28.032822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588676, 38.354126, 28.013580>,  <40.940876, 38.541016, 27.981512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588676, 38.354126, 28.013580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329760, -0.482177, 0.811643,
		-0.340559, 0.741088, 0.578626,
		-0.880499, -0.467220, 0.080171,
		40.324528, 38.213959, 28.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748241, 38.490440, 28.754253>,  <40.940876, 38.541016, 27.981512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748241, 38.490440, 28.754253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533009, 38.219334, 28.553814>,  <40.403870, 38.056671, 28.433550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533009, 38.219334, 28.553814>,  <40.748241, 38.490440, 28.754253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533009, 38.219334, 28.553814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179467, -0.672990, 0.717549,
		-0.823567, 0.296167, 0.483758,
		-0.538079, -0.677768, -0.501100,
		40.371586, 38.016003, 28.403484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365181, 38.196632, 29.264174>,  <40.748241, 38.490440, 28.754253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365181, 38.196632, 29.264174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.372704, 37.924973, 28.970671>,  <40.377216, 37.761978, 28.794569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.372704, 37.924973, 28.970671>,  <40.365181, 38.196632, 29.264174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372704, 37.924973, 28.970671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241254, -0.709121, 0.662528,
		-0.970280, -0.189479, 0.150515,
		0.018802, -0.679150, -0.733758,
		40.378345, 37.721226, 28.750544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989292, 37.647499, 29.592310>,  <40.365181, 38.196632, 29.264174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989292, 37.647499, 29.592310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203957, 37.506100, 29.285837>,  <40.332756, 37.421261, 29.101954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203957, 37.506100, 29.285837>,  <39.989292, 37.647499, 29.592310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203957, 37.506100, 29.285837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250855, -0.800121, 0.544865,
		-0.805667, -0.484595, -0.340688,
		0.536630, -0.353517, -0.766194,
		40.364956, 37.400051, 29.055983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863232, 36.990398, 29.515207>,  <39.989292, 37.647499, 29.592310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863232, 36.990398, 29.515207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211544, 36.988308, 29.318552>,  <40.420532, 36.987053, 29.200558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211544, 36.988308, 29.318552>,  <39.863232, 36.990398, 29.515207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211544, 36.988308, 29.318552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260497, -0.843156, 0.470350,
		-0.416988, -0.537643, -0.732844,
		0.870783, -0.005226, -0.491640,
		40.472778, 36.986740, 29.171061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985668, 36.271580, 29.186289>,  <39.863232, 36.990398, 29.515207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985668, 36.271580, 29.186289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330177, 36.468014, 29.238518>,  <40.536880, 36.585873, 29.269855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330177, 36.468014, 29.238518>,  <39.985668, 36.271580, 29.186289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330177, 36.468014, 29.238518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399816, -0.813499, 0.422334,
		0.313624, -0.311538, -0.896986,
		0.861271, 0.491084, 0.130575,
		40.588558, 36.615337, 29.277691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373604, 35.803432, 28.972696>,  <39.985668, 36.271580, 29.186289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373604, 35.803432, 28.972696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.606808, 36.046677, 29.188215>,  <40.746731, 36.192623, 29.317528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.606808, 36.046677, 29.188215>,  <40.373604, 35.803432, 28.972696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606808, 36.046677, 29.188215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450494, -0.793839, 0.408504,
		0.676136, 0.004565, -0.736763,
		0.583006, 0.608111, 0.538799,
		40.781708, 36.229111, 29.349855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002628, 35.465363, 28.940836>,  <40.373604, 35.803432, 28.972696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002628, 35.465363, 28.940836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001469, 35.701538, 29.263668>,  <41.000771, 35.843243, 29.457367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001469, 35.701538, 29.263668>,  <41.002628, 35.465363, 28.940836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001469, 35.701538, 29.263668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257261, -0.779476, 0.571169,
		0.966338, 0.209288, -0.149634,
		-0.002903, 0.590437, 0.807078,
		41.000599, 35.878670, 29.505791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584606, 35.356388, 29.291492>,  <41.002628, 35.465363, 28.940836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584606, 35.356388, 29.291492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.340733, 35.489452, 29.579277>,  <41.194408, 35.569290, 29.751947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.340733, 35.489452, 29.579277>,  <41.584606, 35.356388, 29.291492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340733, 35.489452, 29.579277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149320, -0.843219, 0.516415,
		0.778454, 0.422279, 0.464424,
		-0.609683, 0.332658, 0.719462,
		41.157829, 35.589249, 29.795116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.382347, 42.037846, 30.190777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003613, 41.937622, 30.110065>,  <41.776371, 41.877487, 30.061638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003613, 41.937622, 30.110065>,  <42.382347, 42.037846, 30.190777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003613, 41.937622, 30.110065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051110, 0.736404, -0.674609,
		0.317623, -0.628433, -0.710062,
		-0.946839, -0.250563, -0.201779,
		41.719563, 41.862453, 30.049532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307728, 41.980083, 29.490696>,  <42.382347, 42.037846, 30.190777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307728, 41.980083, 29.490696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.924309, 42.042946, 29.585768>,  <41.694256, 42.080662, 29.642811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.924309, 42.042946, 29.585768>,  <42.307728, 41.980083, 29.490696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924309, 42.042946, 29.585768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146065, 0.445198, -0.883439,
		-0.244652, -0.881533, -0.403788,
		-0.958546, 0.157155, 0.237680,
		41.636745, 42.090092, 29.657072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904488, 41.859257, 28.968275>,  <42.307728, 41.980083, 29.490696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904488, 41.859257, 28.968275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604942, 42.040108, 29.162096>,  <41.425217, 42.148617, 29.278389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604942, 42.040108, 29.162096>,  <41.904488, 41.859257, 28.968275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604942, 42.040108, 29.162096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443932, 0.200650, -0.873306,
		-0.492071, -0.869092, 0.050455,
		-0.748860, 0.452127, 0.484552,
		41.380283, 42.175747, 29.307461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232506, 41.639072, 28.652086>,  <41.904488, 41.859257, 28.968275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232506, 41.639072, 28.652086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.178619, 41.991108, 28.834208>,  <41.146286, 42.202328, 28.943481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.178619, 41.991108, 28.834208>,  <41.232506, 41.639072, 28.652086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178619, 41.991108, 28.834208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520935, 0.327965, -0.788077,
		-0.842899, -0.343350, 0.414285,
		-0.134715, 0.880085, 0.455305,
		41.138206, 42.255135, 28.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574139, 41.912796, 28.403307>,  <41.232506, 41.639072, 28.652086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574139, 41.912796, 28.403307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.698795, 42.254120, 28.570518>,  <40.773590, 42.458916, 28.670845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.698795, 42.254120, 28.570518>,  <40.574139, 41.912796, 28.403307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698795, 42.254120, 28.570518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478249, 0.521007, -0.706987,
		-0.821073, 0.020402, 0.570459,
		0.311637, 0.853309, 0.418027,
		40.792286, 42.510113, 28.695927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006592, 42.421032, 28.421444>,  <40.574139, 41.912796, 28.403307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006592, 42.421032, 28.421444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.344898, 42.633877, 28.437140>,  <40.547882, 42.761581, 28.446556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.344898, 42.633877, 28.437140>,  <40.006592, 42.421032, 28.421444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344898, 42.633877, 28.437140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410621, 0.696096, -0.588933,
		-0.340689, 0.481988, 0.807229,
		0.845767, 0.532108, 0.039238,
		40.598629, 42.793510, 28.448912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825062, 43.100735, 28.622124>,  <40.006592, 42.421032, 28.421444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825062, 43.100735, 28.622124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184902, 43.153145, 28.455488>,  <40.400806, 43.184589, 28.355507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184902, 43.153145, 28.455488>,  <39.825062, 43.100735, 28.622124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184902, 43.153145, 28.455488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357573, 0.768640, -0.530410,
		0.250709, 0.626119, 0.738322,
		0.899604, 0.131026, -0.416588,
		40.454784, 43.192451, 28.330511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029190, 43.781597, 28.827244>,  <39.825062, 43.100735, 28.622124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029190, 43.781597, 28.827244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239159, 43.686516, 28.500328>,  <40.365139, 43.629467, 28.304178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239159, 43.686516, 28.500328>,  <40.029190, 43.781597, 28.827244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239159, 43.686516, 28.500328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315767, 0.837305, -0.446332,
		0.790413, 0.492360, 0.364457,
		0.524917, -0.237703, -0.817288,
		40.396633, 43.615204, 28.255142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318901, 44.392445, 28.554991>,  <40.029190, 43.781597, 28.827244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318901, 44.392445, 28.554991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325489, 44.140564, 28.244328>,  <40.329441, 43.989433, 28.057930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325489, 44.140564, 28.244328>,  <40.318901, 44.392445, 28.554991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325489, 44.140564, 28.244328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262334, 0.746831, -0.611085,
		0.964837, 0.213809, -0.152892,
		0.016471, -0.629706, -0.776659,
		40.330429, 43.951653, 28.011330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716820, 44.710884, 28.125624>,  <40.318901, 44.392445, 28.554991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716820, 44.710884, 28.125624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.507126, 44.469013, 27.885775>,  <40.381310, 44.323891, 27.741865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.507126, 44.469013, 27.885775>,  <40.716820, 44.710884, 28.125624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507126, 44.469013, 27.885775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253871, 0.783088, -0.567734,
		0.812857, -0.145394, -0.564026,
		-0.524227, -0.604676, -0.599627,
		40.349857, 44.287609, 27.705887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874554, 45.026936, 27.555004>,  <40.716820, 44.710884, 28.125624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874554, 45.026936, 27.555004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571922, 44.785477, 27.454441>,  <40.390343, 44.640602, 27.394102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571922, 44.785477, 27.454441>,  <40.874554, 45.026936, 27.555004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571922, 44.785477, 27.454441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260264, 0.630691, -0.731089,
		0.599877, -0.487694, -0.634273,
		-0.756578, -0.603642, -0.251407,
		40.344948, 44.604385, 27.379019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953514, 44.954304, 26.855745>,  <40.874554, 45.026936, 27.555004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953514, 44.954304, 26.855745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573250, 44.852890, 26.927263>,  <40.345093, 44.792042, 26.970175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573250, 44.852890, 26.927263>,  <40.953514, 44.954304, 26.855745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573250, 44.852890, 26.927263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304175, 0.648322, -0.697966,
		0.061040, -0.717913, -0.693451,
		-0.950658, -0.253535, 0.178797,
		40.288052, 44.776829, 26.980902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677574, 44.806236, 26.230503>,  <40.953514, 44.954304, 26.855745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677574, 44.806236, 26.230503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357128, 44.899189, 26.451124>,  <40.164860, 44.954960, 26.583496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357128, 44.899189, 26.451124>,  <40.677574, 44.806236, 26.230503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357128, 44.899189, 26.451124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218763, 0.744088, -0.631250,
		-0.557095, -0.626364, -0.545264,
		-0.801116, 0.232382, 0.551553,
		40.116795, 44.968903, 26.616590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089317, 44.971252, 25.764284>,  <40.677574, 44.806236, 26.230503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089317, 44.971252, 25.764284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009666, 45.146313, 26.115011>,  <39.961876, 45.251347, 26.325447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009666, 45.146313, 26.115011>,  <40.089317, 44.971252, 25.764284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009666, 45.146313, 26.115011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097627, 0.881428, -0.462119,
		-0.975099, -0.177621, -0.132789,
		-0.199126, 0.437648, 0.876819,
		39.949928, 45.277607, 26.378057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266026, 44.477856, 25.033918>,  <40.089317, 44.971252, 25.764284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266026, 44.477856, 25.033918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.161991, 44.408497, 24.653963>,  <40.099571, 44.366882, 24.425989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.161991, 44.408497, 24.653963>,  <40.266026, 44.477856, 25.033918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161991, 44.408497, 24.653963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137712, -0.967027, 0.214230,
		-0.955714, 0.186530, 0.227635,
		-0.260090, -0.173395, -0.949888,
		40.083965, 44.356480, 24.368998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708118, 43.953140, 25.056124>,  <40.266026, 44.477856, 25.033918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708118, 43.953140, 25.056124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861511, 43.952908, 24.686705>,  <39.953545, 43.952766, 24.465054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861511, 43.952908, 24.686705>,  <39.708118, 43.953140, 25.056124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861511, 43.952908, 24.686705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130402, -0.990016, -0.053517,
		-0.914297, 0.140955, -0.379728,
		0.383480, -0.000586, -0.923549,
		39.976555, 43.952732, 24.409639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138367, 43.789261, 24.729694>,  <39.708118, 43.953140, 25.056124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138367, 43.789261, 24.729694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.474533, 43.698956, 24.532623>,  <39.676235, 43.644772, 24.414381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.474533, 43.698956, 24.532623>,  <39.138367, 43.789261, 24.729694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474533, 43.698956, 24.532623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201407, -0.974099, 0.102795,
		-0.503124, 0.012838, -0.864119,
		0.840418, -0.225759, -0.492678,
		39.726658, 43.631229, 24.384821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915581, 43.267826, 24.323837>,  <39.138367, 43.789261, 24.729694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915581, 43.267826, 24.323837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314014, 43.242947, 24.348957>,  <39.553074, 43.228020, 24.364029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314014, 43.242947, 24.348957>,  <38.915581, 43.267826, 24.323837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314014, 43.242947, 24.348957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070703, -0.987084, 0.143755,
		0.053047, -0.147633, -0.987619,
		0.996086, -0.062202, 0.062800,
		39.612839, 43.224285, 24.367798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067574, 42.770718, 23.966019>,  <38.915581, 43.267826, 24.323837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067574, 42.770718, 23.966019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379166, 42.819077, 24.212132>,  <39.566120, 42.848091, 24.359800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379166, 42.819077, 24.212132>,  <39.067574, 42.770718, 23.966019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379166, 42.819077, 24.212132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055196, -0.990649, 0.124771,
		0.624614, -0.063233, -0.778369,
		0.778981, 0.120896, 0.615283,
		39.612862, 42.855347, 24.396717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372425, 42.183323, 23.902941>,  <39.067574, 42.770718, 23.966019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372425, 42.183323, 23.902941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567493, 42.317192, 24.225473>,  <39.684536, 42.397514, 24.418993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567493, 42.317192, 24.225473>,  <39.372425, 42.183323, 23.902941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567493, 42.317192, 24.225473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077810, -0.903267, 0.421965,
		0.869551, -0.268522, -0.414460,
		0.487675, 0.334671, 0.806331,
		39.713795, 42.417595, 24.467373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973026, 41.760376, 24.025522>,  <39.372425, 42.183323, 23.902941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973026, 41.760376, 24.025522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.891075, 41.929596, 24.378576>,  <39.841904, 42.031128, 24.590408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.891075, 41.929596, 24.378576>,  <39.973026, 41.760376, 24.025522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891075, 41.929596, 24.378576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266908, -0.843442, 0.466224,
		0.941692, 0.331104, 0.059889,
		-0.204881, 0.423054, 0.882637,
		39.829609, 42.056511, 24.643368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404964, 41.360310, 24.575615>,  <39.973026, 41.760376, 24.025522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404964, 41.360310, 24.575615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145454, 41.568974, 24.797230>,  <39.989746, 41.694172, 24.930199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145454, 41.568974, 24.797230>,  <40.404964, 41.360310, 24.575615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145454, 41.568974, 24.797230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046109, -0.699774, 0.712874,
		0.759580, 0.488042, 0.429944,
		-0.648777, 0.521661, 0.554038,
		39.950821, 41.725471, 24.963442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601513, 41.540493, 25.286289>,  <40.404964, 41.360310, 24.575615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601513, 41.540493, 25.286289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204094, 41.504009, 25.313255>,  <39.965641, 41.482117, 25.329435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204094, 41.504009, 25.313255>,  <40.601513, 41.540493, 25.286289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204094, 41.504009, 25.313255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113024, -0.746486, 0.655732,
		-0.009485, 0.659120, 0.751978,
		-0.993547, -0.091211, 0.067416,
		39.906029, 41.476646, 25.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501579, 41.339142, 25.925148>,  <40.601513, 41.540493, 25.286289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501579, 41.339142, 25.925148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139851, 41.267860, 25.769999>,  <39.922813, 41.225090, 25.676908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139851, 41.267860, 25.769999>,  <40.501579, 41.339142, 25.925148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139851, 41.267860, 25.769999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059723, -0.846918, 0.528359,
		-0.422653, 0.500972, 0.755243,
		-0.904322, -0.178207, -0.387872,
		39.868553, 41.214397, 25.653637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039127, 41.031879, 26.504730>,  <40.501579, 41.339142, 25.925148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039127, 41.031879, 26.504730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.857540, 40.920296, 26.166241>,  <39.748589, 40.853344, 25.963146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.857540, 40.920296, 26.166241>,  <40.039127, 41.031879, 26.504730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857540, 40.920296, 26.166241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262923, -0.865498, 0.426363,
		-0.851343, 0.416047, 0.319563,
		-0.453968, -0.278961, -0.846223,
		39.721352, 40.836609, 25.912374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357635, 40.778244, 26.731575>,  <40.039127, 41.031879, 26.504730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357635, 40.778244, 26.731575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430824, 40.616547, 26.373110>,  <39.474739, 40.519527, 26.158031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430824, 40.616547, 26.373110>,  <39.357635, 40.778244, 26.731575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430824, 40.616547, 26.373110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120011, -0.913918, 0.387752,
		-0.975765, 0.036601, -0.215738,
		0.182975, -0.404246, -0.896162,
		39.485718, 40.495274, 26.104261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828976, 40.269505, 26.601019>,  <39.357635, 40.778244, 26.731575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828976, 40.269505, 26.601019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137009, 40.166214, 26.367682>,  <39.321831, 40.104240, 26.227680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137009, 40.166214, 26.367682>,  <38.828976, 40.269505, 26.601019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137009, 40.166214, 26.367682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028506, -0.927428, 0.372914,
		-0.637305, -0.270546, -0.721559,
		0.770084, -0.258229, -0.583342,
		39.368034, 40.088745, 26.192678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660759, 39.600368, 26.220367>,  <38.828976, 40.269505, 26.601019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660759, 39.600368, 26.220367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060673, 39.606876, 26.225451>,  <39.300621, 39.610783, 26.228500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060673, 39.606876, 26.225451>,  <38.660759, 39.600368, 26.220367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060673, 39.606876, 26.225451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010763, -0.936083, 0.351614,
		0.017614, -0.351402, -0.936059,
		0.999787, 0.016268, 0.012706,
		39.360607, 39.611755, 26.229261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181370, 39.109062, 25.911554>,  <38.660759, 39.600368, 26.220367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181370, 39.109062, 25.911554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819595, 38.942787, 25.873173>,  <37.602531, 38.843021, 25.850143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819595, 38.942787, 25.873173>,  <38.181370, 39.109062, 25.911554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819595, 38.942787, 25.873173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237751, 0.677873, -0.695674,
		0.354228, -0.606376, -0.711920,
		-0.904431, -0.415687, -0.095955,
		37.548267, 38.818081, 25.844387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068268, 39.133575, 25.221275>,  <38.181370, 39.109062, 25.911554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068268, 39.133575, 25.221275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710625, 39.094887, 25.396187>,  <37.496040, 39.071674, 25.501135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710625, 39.094887, 25.396187>,  <38.068268, 39.133575, 25.221275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710625, 39.094887, 25.396187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400928, 0.607964, -0.685300,
		-0.199565, -0.788051, -0.582366,
		-0.894109, -0.096725, 0.437280,
		37.442390, 39.065868, 25.527370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613335, 38.944145, 24.691227>,  <38.068268, 39.133575, 25.221275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613335, 38.944145, 24.691227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417351, 39.134140, 24.983618>,  <37.299759, 39.248138, 25.159052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417351, 39.134140, 24.983618>,  <37.613335, 38.944145, 24.691227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417351, 39.134140, 24.983618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305600, 0.691722, -0.654316,
		-0.816425, -0.543974, -0.193759,
		-0.489958, 0.474988, 0.730977,
		37.270363, 39.276638, 25.202911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948124, 39.065063, 24.446424>,  <37.613335, 38.944145, 24.691227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948124, 39.065063, 24.446424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003830, 39.327415, 24.743187>,  <37.037254, 39.484829, 24.921244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003830, 39.327415, 24.743187>,  <36.948124, 39.065063, 24.446424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003830, 39.327415, 24.743187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322888, 0.738334, -0.592120,
		-0.936135, -0.157093, 0.314598,
		0.139261, 0.655884, 0.741904,
		37.045609, 39.524181, 24.965757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389359, 39.438187, 24.425526>,  <36.948124, 39.065063, 24.446424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389359, 39.438187, 24.425526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640968, 39.673771, 24.628487>,  <36.791935, 39.815121, 24.750263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640968, 39.673771, 24.628487>,  <36.389359, 39.438187, 24.425526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640968, 39.673771, 24.628487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140201, 0.727946, -0.671147,
		-0.764639, 0.351029, 0.540468,
		0.629024, 0.588959, 0.507401,
		36.829674, 39.850460, 24.780706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092609, 40.070305, 24.365196>,  <36.389359, 39.438187, 24.425526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092609, 40.070305, 24.365196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452034, 40.188480, 24.495001>,  <36.667686, 40.259388, 24.572884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452034, 40.188480, 24.495001>,  <36.092609, 40.070305, 24.365196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452034, 40.188480, 24.495001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099534, 0.857377, -0.504973,
		-0.427418, 0.421448, 0.799809,
		0.898558, 0.295443, 0.324510,
		36.721600, 40.277115, 24.592354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086510, 40.825172, 24.484144>,  <36.092609, 40.070305, 24.365196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086510, 40.825172, 24.484144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482910, 40.774765, 24.466137>,  <36.720753, 40.744518, 24.455332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482910, 40.774765, 24.466137>,  <36.086510, 40.825172, 24.484144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482910, 40.774765, 24.466137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090301, 0.878023, -0.470024,
		0.098760, 0.461731, 0.881505,
		0.991006, -0.126020, -0.045019,
		36.780212, 40.736958, 24.452631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870678, 41.328793, 24.950033>,  <36.086510, 40.825172, 24.484144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870678, 41.328793, 24.950033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506794, 41.478062, 25.022875>,  <35.288464, 41.567623, 25.066580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506794, 41.478062, 25.022875>,  <35.870678, 41.328793, 24.950033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506794, 41.478062, 25.022875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182894, -0.753824, 0.631110,
		0.372790, 0.540823, 0.754015,
		-0.909713, 0.373176, 0.182105,
		35.233879, 41.590015, 25.077507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861176, 41.386696, 25.652515>,  <35.870678, 41.328793, 24.950033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861176, 41.386696, 25.652515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 41.369846, 25.530125>,  <35.252468, 41.359737, 25.456690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 41.369846, 25.530125>,  <35.861176, 41.386696, 25.652515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480732, 41.369846, 25.530125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151258, -0.800197, 0.580350,
		-0.269290, 0.598256, 0.754700,
		-0.951106, -0.042128, -0.305977,
		35.195400, 41.357208, 25.438332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479004, 41.281673, 26.234587>,  <35.861176, 41.386696, 25.652515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479004, 41.281673, 26.234587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226791, 41.153801, 25.951679>,  <35.075462, 41.077076, 25.781935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226791, 41.153801, 25.951679>,  <35.479004, 41.281673, 26.234587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226791, 41.153801, 25.951679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174506, -0.829519, 0.530514,
		-0.756289, 0.457930, 0.467254,
		-0.630535, -0.319683, -0.707268,
		35.037632, 41.057896, 25.739498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824547, 41.111874, 26.565395>,  <35.479004, 41.281673, 26.234587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824547, 41.111874, 26.565395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789513, 40.913994, 26.219540>,  <34.768494, 40.795265, 26.012026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789513, 40.913994, 26.219540>,  <34.824547, 41.111874, 26.565395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789513, 40.913994, 26.219540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179605, -0.845907, 0.502179,
		-0.979832, 0.199276, -0.014764,
		-0.087584, -0.494703, -0.864637,
		34.763237, 40.765583, 25.960148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103497, 40.798477, 26.545475>,  <34.824547, 41.111874, 26.565395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103497, 40.798477, 26.545475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321411, 40.596066, 26.278000>,  <34.452160, 40.474617, 26.117516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321411, 40.596066, 26.278000>,  <34.103497, 40.798477, 26.545475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321411, 40.596066, 26.278000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230130, -0.857009, 0.461060,
		-0.806382, -0.097293, -0.583338,
		0.544783, -0.506034, -0.668686,
		34.484848, 40.444256, 26.077394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716408, 40.311291, 26.579269>,  <34.103497, 40.798477, 26.545475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716408, 40.311291, 26.579269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051289, 40.186371, 26.399687>,  <34.252216, 40.111420, 26.291937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051289, 40.186371, 26.399687>,  <33.716408, 40.311291, 26.579269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051289, 40.186371, 26.399687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034233, -0.849233, 0.526906,
		-0.545824, -0.425757, -0.721670,
		0.837200, -0.312303, -0.448957,
		34.302448, 40.092678, 26.264999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638390, 39.602928, 26.335308>,  <33.716408, 40.311291, 26.579269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638390, 39.602928, 26.335308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027634, 39.669506, 26.398994>,  <34.261181, 39.709454, 26.437206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027634, 39.669506, 26.398994>,  <33.638390, 39.602928, 26.335308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027634, 39.669506, 26.398994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071967, -0.876342, 0.476283,
		0.218802, -0.452019, -0.864757,
		0.973112, 0.166446, 0.159215,
		34.319569, 39.719440, 26.446758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.424042, 46.287281, 28.486753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531517, 46.055744, 28.178793>,  <38.596001, 45.916821, 27.994017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531517, 46.055744, 28.178793>,  <38.424042, 46.287281, 28.486753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531517, 46.055744, 28.178793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088828, -0.810776, 0.578578,
		-0.959123, -0.087067, -0.269261,
		0.268685, -0.578845, -0.769900,
		38.612122, 45.882092, 27.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860340, 45.869579, 28.220640>,  <38.424042, 46.287281, 28.486753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860340, 45.869579, 28.220640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207981, 45.685963, 28.146948>,  <38.416565, 45.575790, 28.102734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.207981, 45.685963, 28.146948>,  <37.860340, 45.869579, 28.220640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207981, 45.685963, 28.146948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225540, -0.699257, 0.678360,
		-0.440222, -0.548012, -0.711258,
		0.869101, -0.459046, -0.184229,
		38.468712, 45.548248, 28.091679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671207, 45.119064, 28.034025>,  <37.860340, 45.869579, 28.220640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671207, 45.119064, 28.034025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058807, 45.131721, 28.132034>,  <38.291367, 45.139317, 28.190840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058807, 45.131721, 28.132034>,  <37.671207, 45.119064, 28.034025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058807, 45.131721, 28.132034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164436, -0.657585, 0.735216,
		0.184387, -0.752715, -0.631998,
		0.969001, 0.031641, 0.245024,
		38.349506, 45.141212, 28.205542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925316, 44.416805, 28.031462>,  <37.671207, 45.119064, 28.034025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925316, 44.416805, 28.031462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188759, 44.601791, 28.268904>,  <38.346825, 44.712784, 28.411369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188759, 44.601791, 28.268904>,  <37.925316, 44.416805, 28.031462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188759, 44.601791, 28.268904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048156, -0.761334, 0.646569,
		0.750948, -0.454418, -0.479146,
		0.658603, 0.462466, 0.593605,
		38.386341, 44.740532, 28.446985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570904, 43.887482, 28.126078>,  <37.925316, 44.416805, 28.031462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570904, 43.887482, 28.126078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558655, 44.167240, 28.411711>,  <38.551304, 44.335094, 28.583090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558655, 44.167240, 28.411711>,  <38.570904, 43.887482, 28.126078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558655, 44.167240, 28.411711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118347, -0.706853, 0.697390,
		0.992500, 0.105866, -0.061124,
		-0.030625, 0.699393, 0.714081,
		38.549469, 44.377060, 28.625935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161263, 43.775452, 28.551950>,  <38.570904, 43.887482, 28.126078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161263, 43.775452, 28.551950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888077, 43.970016, 28.769928>,  <38.724167, 44.086758, 28.900715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888077, 43.970016, 28.769928>,  <39.161263, 43.775452, 28.551950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888077, 43.970016, 28.769928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047272, -0.773902, 0.631539,
		0.728922, 0.405558, 0.551540,
		-0.682963, 0.486414, 0.544942,
		38.683189, 44.115940, 28.933411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499882, 43.821259, 29.314352>,  <39.161263, 43.775452, 28.551950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499882, 43.821259, 29.314352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100246, 43.837906, 29.310602>,  <38.860466, 43.847893, 29.308352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100246, 43.837906, 29.310602>,  <39.499882, 43.821259, 29.314352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100246, 43.837906, 29.310602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031172, -0.562144, 0.826452,
		0.029125, 0.825992, 0.562929,
		-0.999090, 0.041618, -0.009376,
		38.800518, 43.850391, 29.307789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447094, 43.760914, 29.972017>,  <39.499882, 43.821259, 29.314352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447094, 43.760914, 29.972017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076698, 43.696705, 29.835329>,  <38.854462, 43.658180, 29.753317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076698, 43.696705, 29.835329>,  <39.447094, 43.760914, 29.972017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076698, 43.696705, 29.835329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283031, -0.303865, 0.909703,
		-0.249866, 0.939094, 0.235943,
		-0.925991, -0.160525, -0.341719,
		38.798901, 43.648548, 29.732813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997448, 43.961754, 30.512554>,  <39.447094, 43.760914, 29.972017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997448, 43.961754, 30.512554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.816246, 43.703320, 30.266836>,  <38.707527, 43.548260, 30.119406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.816246, 43.703320, 30.266836>,  <38.997448, 43.961754, 30.512554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816246, 43.703320, 30.266836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396211, -0.471357, 0.787933,
		-0.798628, 0.600325, -0.042463,
		-0.453001, -0.646090, -0.614295,
		38.680347, 43.509491, 30.082548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233997, 43.877129, 30.708441>,  <38.997448, 43.961754, 30.512554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233997, 43.877129, 30.708441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322090, 43.535034, 30.520796>,  <38.374947, 43.329777, 30.408209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322090, 43.535034, 30.520796>,  <38.233997, 43.877129, 30.708441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322090, 43.535034, 30.520796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284738, -0.516340, 0.807662,
		-0.932964, -0.044299, -0.357233,
		0.220233, -0.855237, -0.469113,
		38.388161, 43.278461, 30.380062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605778, 43.417389, 30.944191>,  <38.233997, 43.877129, 30.708441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605778, 43.417389, 30.944191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.860096, 43.164604, 30.766924>,  <38.012688, 43.012936, 30.660564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.860096, 43.164604, 30.766924>,  <37.605778, 43.417389, 30.944191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860096, 43.164604, 30.766924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388238, -0.758068, 0.524026,
		-0.667113, -0.161118, -0.727325,
		0.635792, -0.631960, -0.443165,
		38.050835, 42.975018, 30.633974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194950, 42.847347, 30.714609>,  <37.605778, 43.417389, 30.944191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194950, 42.847347, 30.714609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575565, 42.734650, 30.763922>,  <37.803936, 42.667030, 30.793509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575565, 42.734650, 30.763922>,  <37.194950, 42.847347, 30.714609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575565, 42.734650, 30.763922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301418, -0.774876, 0.555621,
		-0.061014, -0.565853, -0.822245,
		0.951538, -0.281740, 0.123280,
		37.861027, 42.650127, 30.800905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977421, 42.421715, 30.134787>,  <37.194950, 42.847347, 30.714609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977421, 42.421715, 30.134787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631943, 42.245083, 30.037601>,  <36.424656, 42.139103, 29.979290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631943, 42.245083, 30.037601>,  <36.977421, 42.421715, 30.134787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631943, 42.245083, 30.037601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057945, 0.565868, -0.822457,
		0.500664, -0.696278, -0.514327,
		-0.863700, -0.441578, -0.242964,
		36.372833, 42.112610, 29.964712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118374, 42.216583, 29.466457>,  <36.977421, 42.421715, 30.134787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118374, 42.216583, 29.466457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724770, 42.234455, 29.535414>,  <36.488605, 42.245178, 29.576788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724770, 42.234455, 29.535414>,  <37.118374, 42.216583, 29.466457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724770, 42.234455, 29.535414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120216, 0.547547, -0.828094,
		-0.131388, -0.835581, -0.533424,
		-0.984015, 0.044676, 0.172391,
		36.429565, 42.247856, 29.587132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699291, 42.070347, 28.853411>,  <37.118374, 42.216583, 29.466457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699291, 42.070347, 28.853411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435593, 42.282093, 29.067013>,  <36.277374, 42.409142, 29.195173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435593, 42.282093, 29.067013>,  <36.699291, 42.070347, 28.853411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435593, 42.282093, 29.067013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249295, 0.516141, -0.819421,
		-0.709396, -0.673327, -0.208298,
		-0.659249, 0.529366, 0.534005,
		36.237820, 42.440903, 29.227215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990456, 41.971226, 28.575012>,  <36.699291, 42.070347, 28.853411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990456, 41.971226, 28.575012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002213, 42.315079, 28.779036>,  <36.009266, 42.521393, 28.901449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.002213, 42.315079, 28.779036>,  <35.990456, 41.971226, 28.575012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002213, 42.315079, 28.779036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319409, 0.491605, -0.810125,
		-0.947161, -0.139103, 0.289027,
		0.029396, 0.859637, 0.510059,
		36.011032, 42.572971, 28.932053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339916, 42.326153, 28.317581>,  <35.990456, 41.971226, 28.575012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339916, 42.326153, 28.317581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.565590, 42.606068, 28.492847>,  <35.700993, 42.774017, 28.598007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.565590, 42.606068, 28.492847>,  <35.339916, 42.326153, 28.317581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565590, 42.606068, 28.492847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261637, 0.654871, -0.709006,
		-0.783099, 0.285369, 0.552559,
		0.564183, 0.699792, 0.438166,
		35.734844, 42.816006, 28.624296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892166, 42.908077, 28.312761>,  <35.339916, 42.326153, 28.317581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892166, 42.908077, 28.312761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.260426, 43.058060, 28.356249>,  <35.481380, 43.148048, 28.382341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.260426, 43.058060, 28.356249>,  <34.892166, 42.908077, 28.312761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260426, 43.058060, 28.356249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241331, 0.765498, -0.596467,
		-0.306872, 0.522897, 0.795241,
		0.920646, 0.374955, 0.108719,
		35.536621, 43.170547, 28.388865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763920, 43.622101, 28.376217>,  <34.892166, 42.908077, 28.312761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763920, 43.622101, 28.376217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.151390, 43.603752, 28.278599>,  <35.383873, 43.592743, 28.220028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.151390, 43.603752, 28.278599>,  <34.763920, 43.622101, 28.376217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151390, 43.603752, 28.278599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095247, 0.838976, -0.535768,
		0.229325, 0.542232, 0.808329,
		0.968679, -0.045874, -0.244044,
		35.441994, 43.589989, 28.205385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077862, 44.210930, 28.504454>,  <34.763920, 43.622101, 28.376217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077862, 44.210930, 28.504454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338203, 44.060242, 28.240795>,  <35.494408, 43.969830, 28.082600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338203, 44.060242, 28.240795>,  <35.077862, 44.210930, 28.504454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338203, 44.060242, 28.240795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018581, 0.860039, -0.509891,
		0.758978, 0.344111, 0.552757,
		0.650852, -0.376725, -0.659144,
		35.533459, 43.947224, 28.043053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561558, 44.758904, 28.391289>,  <35.077862, 44.210930, 28.504454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561558, 44.758904, 28.391289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.610226, 44.496716, 28.093147>,  <35.639427, 44.339401, 27.914263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.610226, 44.496716, 28.093147>,  <35.561558, 44.758904, 28.391289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610226, 44.496716, 28.093147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014337, 0.752015, -0.658991,
		0.992467, 0.069495, 0.100897,
		0.121673, -0.655473, -0.745353,
		35.646729, 44.300072, 27.869541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153580, 44.957748, 28.069866>,  <35.561558, 44.758904, 28.391289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153580, 44.957748, 28.069866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958530, 44.750465, 27.788815>,  <35.841499, 44.626095, 27.620184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958530, 44.750465, 27.788815>,  <36.153580, 44.957748, 28.069866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958530, 44.750465, 27.788815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022096, 0.797211, -0.603296,
		0.872774, -0.309707, -0.377290,
		-0.487625, -0.518205, -0.702628,
		35.812244, 44.595005, 27.578026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546978, 45.002876, 27.447178>,  <36.153580, 44.957748, 28.069866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546978, 45.002876, 27.447178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186188, 44.902939, 27.306311>,  <35.969715, 44.842976, 27.221790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186188, 44.902939, 27.306311>,  <36.546978, 45.002876, 27.447178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186188, 44.902939, 27.306311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015388, 0.796475, -0.604476,
		0.431520, -0.550640, -0.714553,
		-0.901972, -0.249848, -0.352169,
		35.915596, 44.827984, 27.200661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565174, 45.196030, 26.722357>,  <36.546978, 45.002876, 27.447178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565174, 45.196030, 26.722357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.179764, 45.164471, 26.824640>,  <35.948517, 45.145535, 26.886011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.179764, 45.164471, 26.824640>,  <36.565174, 45.196030, 26.722357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179764, 45.164471, 26.824640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213977, 0.800976, -0.559152,
		-0.160703, -0.593476, -0.788645,
		-0.963529, -0.078894, 0.255710,
		35.890705, 45.140804, 26.901354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227856, 45.158627, 26.159510>,  <36.565174, 45.196030, 26.722357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227856, 45.158627, 26.159510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.965725, 45.295521, 26.428856>,  <35.808445, 45.377659, 26.590464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.965725, 45.295521, 26.428856>,  <36.227856, 45.158627, 26.159510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965725, 45.295521, 26.428856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188907, 0.788881, -0.584792,
		-0.731341, -0.510433, -0.452326,
		-0.655328, 0.342235, 0.673365,
		35.769127, 45.398190, 26.630865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215466, 44.385189, 25.813007>,  <36.227856, 45.158627, 26.159510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215466, 44.385189, 25.813007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079681, 44.562115, 25.480955>,  <35.998211, 44.668270, 25.281723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079681, 44.562115, 25.480955>,  <36.215466, 44.385189, 25.813007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079681, 44.562115, 25.480955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538958, -0.814765, -0.213735,
		-0.770901, 0.374851, 0.514974,
		-0.339463, 0.442318, -0.830132,
		35.977844, 44.694809, 25.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563160, 44.243851, 25.839283>,  <36.215466, 44.385189, 25.813007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563160, 44.243851, 25.839283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627708, 44.314934, 25.450979>,  <35.666439, 44.357582, 25.217997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.627708, 44.314934, 25.450979>,  <35.563160, 44.243851, 25.839283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627708, 44.314934, 25.450979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514876, -0.824015, -0.236434,
		-0.841939, 0.537977, -0.041478,
		0.161375, 0.177707, -0.970762,
		35.676121, 44.368244, 25.159750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873791, 44.148544, 25.512421>,  <35.563160, 44.243851, 25.839283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873791, 44.148544, 25.512421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168667, 44.082169, 25.250425>,  <35.345592, 44.042343, 25.093227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168667, 44.082169, 25.250425>,  <34.873791, 44.148544, 25.512421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168667, 44.082169, 25.250425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462848, -0.830239, -0.310604,
		-0.492257, 0.532136, -0.688850,
		0.737193, -0.165936, -0.654989,
		35.389824, 44.032387, 25.053928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502300, 43.786968, 24.957579>,  <34.873791, 44.148544, 25.512421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502300, 43.786968, 24.957579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890217, 43.708443, 24.899656>,  <35.122967, 43.661327, 24.864902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890217, 43.708443, 24.899656>,  <34.502300, 43.786968, 24.957579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890217, 43.708443, 24.899656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233326, -0.919708, -0.315748,
		-0.071191, 0.339995, -0.937729,
		0.969789, -0.196318, -0.144805,
		35.181152, 43.649548, 24.856215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495632, 43.382042, 24.382711>,  <34.502300, 43.786968, 24.957579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495632, 43.382042, 24.382711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.850143, 43.301479, 24.549541>,  <35.062851, 43.253143, 24.649639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.850143, 43.301479, 24.549541>,  <34.495632, 43.382042, 24.382711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850143, 43.301479, 24.549541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152916, -0.977250, -0.146968,
		0.437185, 0.066477, -0.896911,
		0.886276, -0.201404, 0.417074,
		35.116028, 43.241058, 24.674664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634148, 42.760792, 24.074841>,  <34.495632, 43.382042, 24.382711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634148, 42.760792, 24.074841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886673, 42.750294, 24.384872>,  <35.038189, 42.743996, 24.570892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.886673, 42.750294, 24.384872>,  <34.634148, 42.760792, 24.074841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886673, 42.750294, 24.384872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123648, -0.990049, 0.067193,
		0.765603, -0.138258, -0.628280,
		0.631318, -0.026242, 0.775080,
		35.076069, 42.742420, 24.617397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251904, 42.187271, 24.018089>,  <34.634148, 42.760792, 24.074841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251904, 42.187271, 24.018089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183254, 42.278519, 24.401445>,  <35.142063, 42.333267, 24.631458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183254, 42.278519, 24.401445>,  <35.251904, 42.187271, 24.018089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183254, 42.278519, 24.401445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076852, -0.972958, 0.217822,
		0.982161, -0.036271, 0.184513,
		-0.171623, 0.228117, 0.958389,
		35.131767, 42.346954, 24.688961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698814, 41.733860, 24.296795>,  <35.251904, 42.187271, 24.018089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698814, 41.733860, 24.296795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.416088, 41.851669, 24.554064>,  <35.246452, 41.922356, 24.708426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.416088, 41.851669, 24.554064>,  <35.698814, 41.733860, 24.296795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416088, 41.851669, 24.554064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064104, -0.932134, 0.356393,
		0.704490, 0.210673, 0.677725,
		-0.706813, 0.294520, 0.643174,
		35.204044, 41.940025, 24.747017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381027, 41.589451, 24.538599>,  <35.698814, 41.733860, 24.296795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381027, 41.589451, 24.538599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.664783, 41.344601, 24.398846>,  <36.835037, 41.197689, 24.314995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.664783, 41.344601, 24.398846>,  <36.381027, 41.589451, 24.538599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664783, 41.344601, 24.398846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411627, 0.762196, -0.499621,
		0.572130, 0.210610, 0.792661,
		0.709388, -0.612129, -0.349382,
		36.877602, 41.160961, 24.294031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988148, 41.810215, 24.820816>,  <36.381027, 41.589451, 24.538599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988148, 41.810215, 24.820816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090733, 41.616154, 24.486427>,  <37.152283, 41.499718, 24.285793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090733, 41.616154, 24.486427>,  <36.988148, 41.810215, 24.820816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090733, 41.616154, 24.486427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559945, 0.779556, -0.280632,
		0.787837, -0.396126, 0.471590,
		0.256466, -0.485156, -0.835972,
		37.167671, 41.470608, 24.235636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696232, 42.038731, 24.579741>,  <36.988148, 41.810215, 24.820816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696232, 42.038731, 24.579741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526928, 41.895866, 24.246685>,  <37.425346, 41.810146, 24.046852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526928, 41.895866, 24.246685>,  <37.696232, 42.038731, 24.579741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526928, 41.895866, 24.246685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354228, 0.780630, -0.514916,
		0.833893, -0.512885, -0.203888,
		-0.423254, -0.357162, -0.832641,
		37.399952, 41.788719, 23.996893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198112, 41.970280, 24.128288>,  <37.696232, 42.038731, 24.579741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198112, 41.970280, 24.128288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885014, 42.000496, 23.881191>,  <37.697155, 42.018627, 23.732933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885014, 42.000496, 23.881191>,  <38.198112, 41.970280, 24.128288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885014, 42.000496, 23.881191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355671, 0.868833, -0.344422,
		0.510695, -0.489307, -0.706944,
		-0.782745, 0.075544, -0.617741,
		37.650188, 42.023159, 23.695869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494263, 42.077938, 23.393726>,  <38.198112, 41.970280, 24.128288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494263, 42.077938, 23.393726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113457, 42.197998, 23.369833>,  <37.884972, 42.270035, 23.355497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113457, 42.197998, 23.369833>,  <38.494263, 42.077938, 23.393726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113457, 42.197998, 23.369833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295247, 0.849406, -0.437423,
		-0.080556, -0.434071, -0.897270,
		-0.952019, 0.300153, -0.059734,
		37.827850, 42.288044, 23.351913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359585, 42.338001, 22.607368>,  <38.494263, 42.077938, 23.393726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359585, 42.338001, 22.607368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116100, 42.522137, 22.865845>,  <37.970009, 42.632618, 23.020931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116100, 42.522137, 22.865845>,  <38.359585, 42.338001, 22.607368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116100, 42.522137, 22.865845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262594, 0.885456, -0.383421,
		-0.748676, -0.063707, -0.659868,
		-0.608711, 0.460336, 0.646191,
		37.933487, 42.660236, 23.059702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375801, 42.885101, 22.385313>,  <38.359585, 42.338001, 22.607368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375801, 42.885101, 22.385313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189880, 42.997395, 22.721207>,  <38.078327, 43.064770, 22.922743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189880, 42.997395, 22.721207>,  <38.375801, 42.885101, 22.385313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189880, 42.997395, 22.721207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132737, 0.959778, -0.247400,
		-0.875411, -0.003527, -0.483366,
		-0.464797, 0.280737, 0.839732,
		38.050442, 43.081615, 22.973125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797348, 43.350578, 22.190763>,  <38.375801, 42.885101, 22.385313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797348, 43.350578, 22.190763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877357, 43.440945, 22.572121>,  <37.925362, 43.495163, 22.800934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877357, 43.440945, 22.572121>,  <37.797348, 43.350578, 22.190763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877357, 43.440945, 22.572121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001577, 0.972980, -0.230885,
		-0.979790, 0.047686, 0.194264,
		0.200025, 0.225912, 0.953391,
		37.937366, 43.508717, 22.858137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250088, 43.754261, 22.302200>,  <37.797348, 43.350578, 22.190763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250088, 43.754261, 22.302200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560654, 43.811756, 22.547646>,  <37.746994, 43.846252, 22.694914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560654, 43.811756, 22.547646>,  <37.250088, 43.754261, 22.302200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560654, 43.811756, 22.547646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077584, 0.988037, -0.133280,
		-0.625431, 0.055873, 0.778276,
		0.776412, 0.143739, 0.613615,
		37.793579, 43.854877, 22.731730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.408813, 32.496609, 32.641552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719090, 32.528866, 32.891926>,  <37.905254, 32.548222, 33.042152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719090, 32.528866, 32.891926>,  <37.408813, 32.496609, 32.641552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719090, 32.528866, 32.891926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298546, 0.826924, -0.476515,
		-0.556031, 0.556500, 0.617363,
		0.775693, 0.080646, 0.625936,
		37.951797, 32.553059, 33.079708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506191, 33.184547, 32.898468>,  <37.408813, 32.496609, 32.641552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506191, 33.184547, 32.898468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866703, 33.012806, 32.921635>,  <38.083008, 32.909760, 32.935535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866703, 33.012806, 32.921635>,  <37.506191, 33.184547, 32.898468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866703, 33.012806, 32.921635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398399, 0.768826, -0.500185,
		0.170231, 0.473878, 0.863980,
		0.901277, -0.429356, 0.057915,
		38.137085, 32.883999, 32.939011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931286, 33.681103, 33.048664>,  <37.506191, 33.184547, 32.898468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931286, 33.681103, 33.048664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190136, 33.413757, 32.901955>,  <38.345448, 33.253349, 32.813931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.190136, 33.413757, 32.901955>,  <37.931286, 33.681103, 33.048664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190136, 33.413757, 32.901955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333510, 0.680786, -0.652151,
		0.685566, 0.299702, 0.663459,
		0.647125, -0.668363, -0.366770,
		38.384274, 33.213249, 32.791924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568882, 34.041374, 32.942886>,  <37.931286, 33.681103, 33.048664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568882, 34.041374, 32.942886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609058, 33.717163, 32.712078>,  <38.633163, 33.522636, 32.573593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609058, 33.717163, 32.712078>,  <38.568882, 34.041374, 32.942886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609058, 33.717163, 32.712078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274482, 0.580020, -0.766966,
		0.956332, -0.081342, 0.280736,
		0.100446, -0.810531, -0.577018,
		38.639191, 33.474003, 32.538971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026482, 34.265823, 32.412243>,  <38.568882, 34.041374, 32.942886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026482, 34.265823, 32.412243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850548, 33.943871, 32.252888>,  <38.744987, 33.750698, 32.157272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850548, 33.943871, 32.252888>,  <39.026482, 34.265823, 32.412243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850548, 33.943871, 32.252888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070112, 0.473023, -0.878256,
		0.895339, -0.358352, -0.264482,
		-0.439831, -0.804880, -0.398392,
		38.718597, 33.702408, 32.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368034, 34.235405, 31.668837>,  <39.026482, 34.265823, 32.412243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368034, 34.235405, 31.668837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022457, 34.038376, 31.710728>,  <38.815109, 33.920158, 31.735863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022457, 34.038376, 31.710728>,  <39.368034, 34.235405, 31.668837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022457, 34.038376, 31.710728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290496, 0.317601, -0.902631,
		0.411350, -0.810247, -0.417481,
		-0.863946, -0.492574, 0.104728,
		38.763275, 33.890602, 31.742146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313759, 33.862602, 31.064926>,  <39.368034, 34.235405, 31.668837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313759, 33.862602, 31.064926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.942192, 33.885086, 31.211325>,  <38.719254, 33.898575, 31.299164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.942192, 33.885086, 31.211325>,  <39.313759, 33.862602, 31.064926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942192, 33.885086, 31.211325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349497, 0.193439, -0.916751,
		-0.122326, -0.979501, -0.160045,
		-0.928918, 0.056207, 0.365995,
		38.663517, 33.901947, 31.321123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860367, 33.471893, 30.569483>,  <39.313759, 33.862602, 31.064926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860367, 33.471893, 30.569483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580173, 33.664001, 30.780640>,  <38.412060, 33.779266, 30.907333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580173, 33.664001, 30.780640>,  <38.860367, 33.471893, 30.569483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580173, 33.664001, 30.780640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520746, 0.161832, -0.838233,
		-0.488010, -0.862061, 0.136740,
		-0.700479, 0.480273, 0.527890,
		38.370029, 33.808083, 30.939007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261604, 33.148033, 30.475330>,  <38.860367, 33.471893, 30.569483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261604, 33.148033, 30.475330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176880, 33.526829, 30.571953>,  <38.126045, 33.754105, 30.629927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176880, 33.526829, 30.571953>,  <38.261604, 33.148033, 30.475330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176880, 33.526829, 30.571953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282065, 0.177412, -0.942849,
		-0.935723, -0.267836, 0.229536,
		-0.211806, 0.946990, 0.241555,
		38.113338, 33.810925, 30.644419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676422, 33.274395, 30.171881>,  <38.261604, 33.148033, 30.475330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676422, 33.274395, 30.171881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817520, 33.643349, 30.234856>,  <37.902180, 33.864719, 30.272640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817520, 33.643349, 30.234856>,  <37.676422, 33.274395, 30.171881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817520, 33.643349, 30.234856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292819, 0.268613, -0.917662,
		-0.888723, 0.277602, 0.364842,
		0.352746, 0.922380, 0.157435,
		37.923344, 33.920063, 30.282085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196278, 33.669155, 29.990534>,  <37.676422, 33.274395, 30.171881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196278, 33.669155, 29.990534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519981, 33.904007, 29.982855>,  <37.714203, 34.044918, 29.978249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519981, 33.904007, 29.982855>,  <37.196278, 33.669155, 29.990534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519981, 33.904007, 29.982855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303733, 0.390227, -0.869177,
		-0.502832, 0.709223, 0.494128,
		0.809263, 0.587133, -0.019195,
		37.762760, 34.080147, 29.977097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992661, 34.404835, 29.785273>,  <37.196278, 33.669155, 29.990534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992661, 34.404835, 29.785273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388409, 34.398281, 29.727467>,  <37.625858, 34.394348, 29.692783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388409, 34.398281, 29.727467>,  <36.992661, 34.404835, 29.785273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388409, 34.398281, 29.727467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120465, 0.464464, -0.877361,
		0.081496, 0.885440, 0.457551,
		0.989367, -0.016383, -0.144516,
		37.685219, 34.393368, 29.684113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381042, 34.705296, 30.053509>,  <36.992661, 34.404835, 29.785273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381042, 34.705296, 30.053509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997696, 34.810825, 30.009817>,  <35.767689, 34.874146, 29.983603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997696, 34.810825, 30.009817>,  <36.381042, 34.705296, 30.053509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997696, 34.810825, 30.009817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216935, -0.423979, 0.879307,
		0.185676, 0.866392, 0.463561,
		-0.958365, 0.263829, -0.109228,
		35.710186, 34.889973, 29.977049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219990, 35.128601, 30.611965>,  <36.381042, 34.705296, 30.053509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219990, 35.128601, 30.611965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885475, 34.971848, 30.458574>,  <35.684765, 34.877796, 30.366539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885475, 34.971848, 30.458574>,  <36.219990, 35.128601, 30.611965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885475, 34.971848, 30.458574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179380, -0.465360, 0.866754,
		-0.518122, 0.793642, 0.318878,
		-0.836285, -0.391884, -0.383477,
		35.634590, 34.854282, 30.343531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744209, 35.211613, 31.136169>,  <36.219990, 35.128601, 30.611965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744209, 35.211613, 31.136169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591480, 34.931629, 30.894749>,  <35.499844, 34.763641, 30.749897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591480, 34.931629, 30.894749>,  <35.744209, 35.211613, 31.136169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591480, 34.931629, 30.894749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225924, -0.562532, 0.795309,
		-0.896199, 0.440021, 0.056648,
		-0.381820, -0.699957, -0.603552,
		35.476936, 34.721642, 30.713684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099968, 35.024574, 31.417292>,  <35.744209, 35.211613, 31.136169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099968, 35.024574, 31.417292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179615, 34.717201, 31.174025>,  <35.227402, 34.532776, 31.028065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179615, 34.717201, 31.174025>,  <35.099968, 35.024574, 31.417292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179615, 34.717201, 31.174025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304620, -0.638381, 0.706878,
		-0.931430, 0.044511, -0.361189,
		0.199112, -0.768432, -0.608166,
		35.239349, 34.486671, 30.991575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475006, 34.647346, 31.263514>,  <35.099968, 35.024574, 31.417292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475006, 34.647346, 31.263514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789532, 34.401131, 31.242252>,  <34.978245, 34.253399, 31.229496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789532, 34.401131, 31.242252>,  <34.475006, 34.647346, 31.263514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789532, 34.401131, 31.242252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386437, -0.557119, 0.735041,
		-0.482059, -0.557431, -0.675936,
		0.786311, -0.615540, -0.053152,
		35.025425, 34.216469, 31.226307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214813, 34.107025, 31.497686>,  <34.475006, 34.647346, 31.263514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214813, 34.107025, 31.497686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600941, 34.009605, 31.535313>,  <34.832615, 33.951153, 31.557888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600941, 34.009605, 31.535313>,  <34.214813, 34.107025, 31.497686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600941, 34.009605, 31.535313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218992, -0.559162, 0.799613,
		-0.142146, -0.792479, -0.593103,
		0.965317, -0.243547, 0.094064,
		34.890537, 33.936543, 31.563532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153748, 33.469162, 31.615330>,  <34.214813, 34.107025, 31.497686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153748, 33.469162, 31.615330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538139, 33.534954, 31.704296>,  <34.768776, 33.574429, 31.757675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538139, 33.534954, 31.704296>,  <34.153748, 33.469162, 31.615330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538139, 33.534954, 31.704296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082463, -0.597140, 0.797887,
		0.264047, -0.785093, -0.560275,
		0.960978, 0.164478, 0.222414,
		34.826431, 33.584297, 31.771021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333260, 32.882633, 31.745754>,  <34.153748, 33.469162, 31.615330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333260, 32.882633, 31.745754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569107, 33.142975, 31.937057>,  <34.710617, 33.299179, 32.051842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569107, 33.142975, 31.937057>,  <34.333260, 32.882633, 31.745754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569107, 33.142975, 31.937057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116188, -0.517631, 0.847678,
		0.799281, -0.555375, -0.229582,
		0.589618, 0.650858, 0.478260,
		34.745991, 33.338234, 32.080536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724297, 32.499378, 32.254559>,  <34.333260, 32.882633, 31.745754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724297, 32.499378, 32.254559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757313, 32.872864, 32.393906>,  <34.777122, 33.096954, 32.477512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757313, 32.872864, 32.393906>,  <34.724297, 32.499378, 32.254559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757313, 32.872864, 32.393906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143491, -0.334784, 0.931305,
		0.986203, -0.126859, 0.106347,
		0.082541, 0.933716, 0.348369,
		34.782074, 33.152977, 32.498417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100849, 32.459339, 32.842243>,  <34.724297, 32.499378, 32.254559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100849, 32.459339, 32.842243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943283, 32.826641, 32.858387>,  <34.848743, 33.047024, 32.868073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943283, 32.826641, 32.858387>,  <35.100849, 32.459339, 32.842243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943283, 32.826641, 32.858387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271694, -0.158273, 0.949280,
		0.878072, 0.362974, 0.311832,
		-0.393918, 0.918259, 0.040358,
		34.825108, 33.102119, 32.870495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312717, 32.797684, 33.446217>,  <35.100849, 32.459339, 32.842243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312717, 32.797684, 33.446217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994190, 33.017754, 33.345669>,  <34.803074, 33.149796, 33.285339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994190, 33.017754, 33.345669>,  <35.312717, 32.797684, 33.446217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994190, 33.017754, 33.345669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324701, -0.038187, 0.945045,
		0.510339, 0.834177, 0.209051,
		-0.796319, 0.550173, -0.251370,
		34.755295, 33.182804, 33.270260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326885, 33.348263, 33.898567>,  <35.312717, 32.797684, 33.446217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326885, 33.348263, 33.898567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962650, 33.264946, 33.755772>,  <34.744110, 33.214954, 33.670094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962650, 33.264946, 33.755772>,  <35.326885, 33.348263, 33.898567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962650, 33.264946, 33.755772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327577, -0.162989, 0.930660,
		-0.252038, 0.964390, 0.080183,
		-0.910588, -0.208296, -0.356991,
		34.689472, 33.202457, 33.648674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933697, 33.649418, 34.317734>,  <35.326885, 33.348263, 33.898567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933697, 33.649418, 34.317734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709351, 33.368633, 34.142151>,  <34.574745, 33.200161, 34.036800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709351, 33.368633, 34.142151>,  <34.933697, 33.649418, 34.317734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709351, 33.368633, 34.142151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202013, -0.398136, 0.894806,
		-0.802885, 0.590537, 0.081494,
		-0.560862, -0.701964, -0.438954,
		34.541092, 33.158043, 34.010464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351276, 33.540852, 34.778816>,  <34.933697, 33.649418, 34.317734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351276, 33.540852, 34.778816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314915, 33.223011, 34.538700>,  <34.293098, 33.032307, 34.394630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314915, 33.223011, 34.538700>,  <34.351276, 33.540852, 34.778816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314915, 33.223011, 34.538700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239267, -0.567704, 0.787695,
		-0.966689, 0.215234, -0.138515,
		-0.090903, -0.794598, -0.600292,
		34.287643, 32.984631, 34.358612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746235, 33.275185, 35.022224>,  <34.351276, 33.540852, 34.778816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746235, 33.275185, 35.022224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958050, 32.998196, 34.826237>,  <34.085140, 32.832001, 34.708645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958050, 32.998196, 34.826237>,  <33.746235, 33.275185, 35.022224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958050, 32.998196, 34.826237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254865, -0.680790, 0.686709,
		-0.809096, -0.238759, -0.536989,
		0.529535, -0.692473, -0.489973,
		34.116909, 32.790455, 34.679245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710304, 33.286201, 35.751331>,  <33.746235, 33.275185, 35.022224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710304, 33.286201, 35.751331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781815, 33.594852, 35.995506>,  <33.824722, 33.780045, 36.142010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781815, 33.594852, 35.995506>,  <33.710304, 33.286201, 35.751331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781815, 33.594852, 35.995506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172719, 0.586182, -0.791555,
		-0.968611, 0.246945, -0.028479,
		0.178777, 0.771627, 0.610435,
		33.835449, 33.826340, 36.178638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258896, 33.772701, 35.665276>,  <33.710304, 33.286201, 35.751331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258896, 33.772701, 35.665276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591461, 33.945255, 35.805370>,  <33.791000, 34.048786, 35.889427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591461, 33.945255, 35.805370>,  <33.258896, 33.772701, 35.665276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591461, 33.945255, 35.805370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021849, 0.655199, -0.755140,
		-0.555226, 0.620181, 0.554166,
		0.831412, 0.431381, 0.350233,
		33.840885, 34.074669, 35.910439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203938, 34.454964, 35.510567>,  <33.258896, 33.772701, 35.665276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203938, 34.454964, 35.510567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592987, 34.424938, 35.598537>,  <33.826416, 34.406921, 35.651321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592987, 34.424938, 35.598537>,  <33.203938, 34.454964, 35.510567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592987, 34.424938, 35.598537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189527, 0.803885, -0.563780,
		-0.134478, 0.590029, 0.796104,
		0.972623, -0.075067, 0.219931,
		33.884773, 34.402416, 35.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369743, 35.220921, 35.607586>,  <33.203938, 34.454964, 35.510567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369743, 35.220921, 35.607586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701515, 35.009613, 35.534939>,  <33.900578, 34.882828, 35.491352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701515, 35.009613, 35.534939>,  <33.369743, 35.220921, 35.607586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701515, 35.009613, 35.534939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377624, 0.769815, -0.514572,
		0.411641, 0.358218, 0.837993,
		0.829429, -0.528265, -0.181616,
		33.950344, 34.851135, 35.480453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866234, 35.806686, 35.814804>,  <33.369743, 35.220921, 35.607586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866234, 35.806686, 35.814804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045601, 35.532227, 35.585678>,  <34.153221, 35.367550, 35.448204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045601, 35.532227, 35.585678>,  <33.866234, 35.806686, 35.814804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045601, 35.532227, 35.585678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195944, 0.700733, -0.685987,
		0.872081, 0.195370, 0.448670,
		0.448420, -0.686151, -0.572815,
		34.180126, 35.326382, 35.413834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640648, 35.918076, 35.735374>,  <33.866234, 35.806686, 35.814804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640648, 35.918076, 35.735374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526474, 35.689148, 35.427872>,  <34.457970, 35.551792, 35.243370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526474, 35.689148, 35.427872>,  <34.640648, 35.918076, 35.735374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526474, 35.689148, 35.427872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315406, 0.701348, -0.639241,
		0.905013, -0.424929, -0.019675,
		-0.285431, -0.572316, -0.768754,
		34.440845, 35.517452, 35.197247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182091, 35.910957, 35.317272>,  <34.640648, 35.918076, 35.735374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182091, 35.910957, 35.317272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895241, 35.779854, 35.071247>,  <34.723129, 35.701191, 34.923630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895241, 35.779854, 35.071247>,  <35.182091, 35.910957, 35.317272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895241, 35.779854, 35.071247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217824, 0.732904, -0.644519,
		0.662028, -0.596178, -0.454193,
		-0.717128, -0.327755, -0.615065,
		34.680103, 35.681526, 34.886726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500298, 35.914509, 34.667862>,  <35.182091, 35.910957, 35.317272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500298, 35.914509, 34.667862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103745, 35.935619, 34.619900>,  <34.865814, 35.948288, 34.591122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103745, 35.935619, 34.619900>,  <35.500298, 35.914509, 34.667862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103745, 35.935619, 34.619900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113718, 0.801146, -0.587566,
		0.065053, -0.596137, -0.800242,
		-0.991381, 0.052779, -0.119909,
		34.806332, 35.951454, 34.583927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406693, 35.883541, 33.945747>,  <35.500298, 35.914509, 34.667862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406693, 35.883541, 33.945747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073803, 36.039349, 34.103569>,  <34.874069, 36.132835, 34.198261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073803, 36.039349, 34.103569>,  <35.406693, 35.883541, 33.945747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073803, 36.039349, 34.103569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012567, 0.724699, -0.688951,
		-0.554295, -0.568404, -0.608007,
		-0.832225, 0.389523, 0.394554,
		34.824135, 36.156204, 34.221935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017422, 36.079308, 33.378651>,  <35.406693, 35.883541, 33.945747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017422, 36.079308, 33.378651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845417, 36.286846, 33.674187>,  <34.742214, 36.411369, 33.851509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845417, 36.286846, 33.674187>,  <35.017422, 36.079308, 33.378651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845417, 36.286846, 33.674187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043030, 0.805656, -0.590818,
		-0.901796, -0.285852, -0.324117,
		-0.430014, 0.518851, 0.738838,
		34.716412, 36.442501, 33.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389961, 36.374050, 33.084839>,  <35.017422, 36.079308, 33.378651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389961, 36.374050, 33.084839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510101, 36.587349, 33.401176>,  <34.582188, 36.715328, 33.590981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510101, 36.587349, 33.401176>,  <34.389961, 36.374050, 33.084839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510101, 36.587349, 33.401176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140324, 0.844811, -0.516336,
		-0.943450, 0.044108, 0.328568,
		0.300353, 0.533243, 0.790847,
		34.600208, 36.747322, 33.638432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913380, 36.847347, 33.092949>,  <34.389961, 36.374050, 33.084839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913380, 36.847347, 33.092949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184391, 37.017834, 33.332714>,  <34.347000, 37.120125, 33.476574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184391, 37.017834, 33.332714>,  <33.913380, 36.847347, 33.092949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184391, 37.017834, 33.332714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128885, 0.871166, -0.473770,
		-0.724113, 0.243739, 0.645176,
		0.677532, 0.426217, 0.599408,
		34.387650, 37.145699, 33.512535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624596, 37.469604, 33.327766>,  <33.913380, 36.847347, 33.092949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624596, 37.469604, 33.327766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019047, 37.501171, 33.386166>,  <34.255718, 37.520111, 33.421204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019047, 37.501171, 33.386166>,  <33.624596, 37.469604, 33.327766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019047, 37.501171, 33.386166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019240, 0.928128, -0.371762,
		-0.164843, 0.363798, 0.916776,
		0.986132, 0.078921, 0.145996,
		34.314888, 37.524849, 33.429966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724499, 38.114700, 33.628296>,  <33.624596, 37.469604, 33.327766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724499, 38.114700, 33.628296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077755, 38.012344, 33.471024>,  <34.289707, 37.950932, 33.376659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077755, 38.012344, 33.471024>,  <33.724499, 38.114700, 33.628296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077755, 38.012344, 33.471024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143227, 0.945188, -0.293439,
		0.446716, 0.202833, 0.871381,
		0.883137, -0.255889, -0.393179,
		34.342697, 37.935577, 33.353069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200928, 38.623734, 33.829155>,  <33.724499, 38.114700, 33.628296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200928, 38.623734, 33.829155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376373, 38.443356, 33.518215>,  <34.481640, 38.335129, 33.331654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376373, 38.443356, 33.518215>,  <34.200928, 38.623734, 33.829155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376373, 38.443356, 33.518215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472880, 0.851367, -0.227065,
		0.764200, -0.267997, 0.586666,
		0.438615, -0.450945, -0.777345,
		34.507957, 38.308071, 33.285011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909416, 38.857746, 33.815773>,  <34.200928, 38.623734, 33.829155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909416, 38.857746, 33.815773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877895, 38.713081, 33.444183>,  <34.858982, 38.626282, 33.221230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877895, 38.713081, 33.444183>,  <34.909416, 38.857746, 33.815773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877895, 38.713081, 33.444183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500807, 0.791386, -0.350573,
		0.861965, -0.492861, 0.118760,
		-0.078799, -0.361657, -0.928975,
		34.854256, 38.604584, 33.165489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592655, 38.953903, 33.486771>,  <34.909416, 38.857746, 33.815773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592655, 38.953903, 33.486771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327641, 38.902351, 33.191628>,  <35.168633, 38.871418, 33.014542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327641, 38.902351, 33.191628>,  <35.592655, 38.953903, 33.486771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327641, 38.902351, 33.191628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543296, 0.595442, -0.591843,
		0.515630, -0.792993, -0.324481,
		-0.662537, -0.128883, -0.737858,
		35.128880, 38.863686, 32.970268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993332, 39.013988, 32.911114>,  <35.592655, 38.953903, 33.486771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993332, 39.013988, 32.911114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635330, 39.020496, 32.732807>,  <35.420528, 39.024399, 32.625824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635330, 39.020496, 32.732807>,  <35.993332, 39.013988, 32.911114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635330, 39.020496, 32.732807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368241, 0.590924, -0.717779,
		0.251738, -0.806563, -0.534868,
		-0.895001, 0.016268, -0.445768,
		35.366829, 39.025375, 32.599075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075912, 39.019142, 32.257481>,  <35.993332, 39.013988, 32.911114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075912, 39.019142, 32.257481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711960, 39.182369, 32.287415>,  <35.493587, 39.280304, 32.305374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711960, 39.182369, 32.287415>,  <36.075912, 39.019142, 32.257481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711960, 39.182369, 32.287415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236510, 0.658403, -0.714541,
		-0.340851, -0.632447, -0.695580,
		-0.909881, 0.408064, 0.074837,
		35.438995, 39.304787, 32.309864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789829, 39.026943, 31.601721>,  <36.075912, 39.019142, 32.257481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789829, 39.026943, 31.601721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581467, 39.306038, 31.798422>,  <35.456448, 39.473495, 31.916443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581467, 39.306038, 31.798422>,  <35.789829, 39.026943, 31.601721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581467, 39.306038, 31.798422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255115, 0.677004, -0.690349,
		-0.814601, -0.234153, -0.530658,
		-0.520905, 0.697738, 0.491752,
		35.425194, 39.515358, 31.945948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245949, 39.360863, 31.119652>,  <35.789829, 39.026943, 31.601721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245949, 39.360863, 31.119652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338566, 39.610600, 31.418070>,  <35.394135, 39.760441, 31.597120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338566, 39.610600, 31.418070>,  <35.245949, 39.360863, 31.119652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338566, 39.610600, 31.418070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388518, 0.643726, -0.659296,
		-0.891876, 0.442505, -0.093521,
		0.231540, 0.624345, 0.746044,
		35.408028, 39.797905, 31.641884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696384, 39.926788, 31.149628>,  <35.245949, 39.360863, 31.119652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696384, 39.926788, 31.149628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039455, 40.030762, 31.327089>,  <35.245296, 40.093143, 31.433567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039455, 40.030762, 31.327089>,  <34.696384, 39.926788, 31.149628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039455, 40.030762, 31.327089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036603, 0.829766, -0.556910,
		-0.512886, 0.493887, 0.702156,
		0.857676, 0.259930, 0.443653,
		35.296757, 40.108742, 31.460186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779461, 40.517323, 30.866592>,  <34.696384, 39.926788, 31.149628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779461, 40.517323, 30.866592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121677, 40.568153, 31.067352>,  <35.327007, 40.598652, 31.187807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121677, 40.568153, 31.067352>,  <34.779461, 40.517323, 30.866592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121677, 40.568153, 31.067352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150128, 0.866867, -0.475398,
		-0.495491, 0.482071, 0.722562,
		0.855541, 0.127079, 0.501898,
		35.378338, 40.606277, 31.217922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835850, 41.253281, 30.958378>,  <34.779461, 40.517323, 30.866592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835850, 41.253281, 30.958378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211666, 41.120762, 30.993036>,  <35.437157, 41.041248, 31.013832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.211666, 41.120762, 30.993036>,  <34.835850, 41.253281, 30.958378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211666, 41.120762, 30.993036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315305, 0.738205, -0.596352,
		0.133609, 0.587616, 0.798033,
		0.939538, -0.331301, 0.086647,
		35.493526, 41.021370, 31.019030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257706, 41.822739, 31.127932>,  <34.835850, 41.253281, 30.958378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257706, 41.822739, 31.127932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520397, 41.559669, 30.980324>,  <35.678013, 41.401829, 30.891760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520397, 41.559669, 30.980324>,  <35.257706, 41.822739, 31.127932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520397, 41.559669, 30.980324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483813, 0.742797, -0.462794,
		0.578472, 0.125395, 0.806007,
		0.656731, -0.657669, -0.369019,
		35.717415, 41.362370, 30.869617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977608, 42.161160, 31.172567>,  <35.257706, 41.822739, 31.127932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977608, 42.161160, 31.172567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981243, 41.889465, 30.879021>,  <35.983425, 41.726448, 30.702892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981243, 41.889465, 30.879021>,  <35.977608, 42.161160, 31.172567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981243, 41.889465, 30.879021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522885, 0.628795, -0.575507,
		0.852355, -0.378500, 0.360872,
		0.009085, -0.679231, -0.733869,
		35.983967, 41.685696, 30.658859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669697, 42.311932, 30.763426>,  <35.977608, 42.161160, 31.172567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669697, 42.311932, 30.763426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409321, 42.096638, 30.549294>,  <36.253098, 41.967461, 30.420815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409321, 42.096638, 30.549294>,  <36.669697, 42.311932, 30.763426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409321, 42.096638, 30.549294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182204, 0.573803, -0.798468,
		0.736942, -0.617292, -0.275440,
		-0.650936, -0.538239, -0.535332,
		36.214039, 41.935165, 30.388695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290604, 41.890327, 30.789642>,  <36.669697, 42.311932, 30.763426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290604, 41.890327, 30.789642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643703, 42.029316, 30.916147>,  <37.855564, 42.112709, 30.992050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643703, 42.029316, 30.916147>,  <37.290604, 41.890327, 30.789642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643703, 42.029316, 30.916147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065075, -0.757047, 0.650112,
		0.465318, -0.553304, -0.690893,
		0.882748, 0.347469, 0.316261,
		37.908527, 42.133556, 31.011026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725170, 41.330524, 30.834280>,  <37.290604, 41.890327, 30.789642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725170, 41.330524, 30.834280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893322, 41.604305, 31.072544>,  <37.994213, 41.768574, 31.215502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893322, 41.604305, 31.072544>,  <37.725170, 41.330524, 30.834280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893322, 41.604305, 31.072544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039676, -0.669722, 0.741551,
		0.906478, -0.288103, -0.308696,
		0.420384, 0.684448, 0.595658,
		38.019436, 41.809639, 31.251242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367218, 40.961742, 31.147587>,  <37.725170, 41.330524, 30.834280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367218, 40.961742, 31.147587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300282, 41.284027, 31.374857>,  <38.260120, 41.477398, 31.511219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300282, 41.284027, 31.374857>,  <38.367218, 40.961742, 31.147587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300282, 41.284027, 31.374857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056988, -0.567431, 0.821446,
		0.984250, 0.169842, 0.049039,
		-0.167342, 0.805714, 0.568174,
		38.250080, 41.525742, 31.545309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935257, 40.984451, 31.720446>,  <38.367218, 40.961742, 31.147587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935257, 40.984451, 31.720446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607166, 41.182102, 31.835726>,  <38.410313, 41.300694, 31.904894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607166, 41.182102, 31.835726>,  <38.935257, 40.984451, 31.720446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607166, 41.182102, 31.835726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017426, -0.525169, 0.850819,
		0.571769, 0.692845, 0.439370,
		-0.820229, 0.494129, 0.288202,
		38.361099, 41.330341, 31.922186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080704, 41.200336, 32.368492>,  <38.935257, 40.984451, 31.720446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080704, 41.200336, 32.368492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682247, 41.189083, 32.335217>,  <38.443172, 41.182331, 32.315250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682247, 41.189083, 32.335217>,  <39.080704, 41.200336, 32.368492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682247, 41.189083, 32.335217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054074, -0.549870, 0.833498,
		-0.069193, 0.834776, 0.546224,
		-0.996137, -0.028136, -0.083187,
		38.383408, 41.180641, 32.310261>
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
