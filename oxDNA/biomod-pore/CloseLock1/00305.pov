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
	<24.482998, 34.839901, 34.845989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327946, 34.871696, 35.213341>,  <24.234915, 34.890774, 35.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327946, 34.871696, 35.213341>,  <24.482998, 34.839901, 34.845989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327946, 34.871696, 35.213341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901973, -0.172890, 0.395668,
		0.190231, 0.981728, -0.004682,
		-0.387629, 0.079491, 0.918382,
		24.211657, 34.895542, 35.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953903, 35.186764, 35.201305>,  <24.482998, 34.839901, 34.845989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953903, 35.186764, 35.201305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734289, 34.991188, 35.472450>,  <24.602522, 34.873840, 35.635136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734289, 34.991188, 35.472450>,  <24.953903, 35.186764, 35.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734289, 34.991188, 35.472450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834276, -0.271639, 0.479786,
		-0.050453, 0.828944, 0.557052,
		-0.549033, -0.488942, 0.677863,
		24.569580, 34.844505, 35.675808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938812, 35.381207, 35.996658>,  <24.953903, 35.186764, 35.201305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938812, 35.381207, 35.996658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912710, 34.998199, 35.884304>,  <24.897049, 34.768394, 35.816891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912710, 34.998199, 35.884304>,  <24.938812, 35.381207, 35.996658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912710, 34.998199, 35.884304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913711, -0.170477, 0.368877,
		-0.401091, -0.232574, 0.886022,
		-0.065255, -0.957521, -0.280883,
		24.893133, 34.710941, 35.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231781, 35.049740, 36.459129>,  <24.938812, 35.381207, 35.996658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231781, 35.049740, 36.459129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240980, 34.803886, 36.143738>,  <25.246500, 34.656376, 35.954502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240980, 34.803886, 36.143738>,  <25.231781, 35.049740, 36.459129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240980, 34.803886, 36.143738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891985, -0.343552, 0.293826,
		-0.451479, -0.710068, 0.540344,
		0.023000, -0.614635, -0.788476,
		25.247881, 34.619495, 35.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955261, 35.323601, 36.896111>,  <25.231781, 35.049740, 36.459129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955261, 35.323601, 36.896111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337967, 35.406887, 36.977348>,  <26.567591, 35.456860, 37.026089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337967, 35.406887, 36.977348>,  <25.955261, 35.323601, 36.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337967, 35.406887, 36.977348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121540, 0.920561, -0.371209,
		-0.264248, 0.330476, 0.906068,
		0.956766, 0.208215, 0.203090,
		26.624996, 35.469353, 37.038277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955664, 35.982281, 37.348911>,  <25.955261, 35.323601, 36.896111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955664, 35.982281, 37.348911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301746, 35.916752, 37.159351>,  <26.509396, 35.877434, 37.045616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301746, 35.916752, 37.159351>,  <25.955664, 35.982281, 37.348911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301746, 35.916752, 37.159351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105374, 0.864608, -0.491272,
		0.490219, 0.474989, 0.730802,
		0.865206, -0.163824, -0.473898,
		26.561308, 35.867603, 37.017181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519209, 36.607727, 37.544765>,  <25.955664, 35.982281, 37.348911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519209, 36.607727, 37.544765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593973, 36.415493, 37.202045>,  <26.638832, 36.300152, 36.996414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593973, 36.415493, 37.202045>,  <26.519209, 36.607727, 37.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593973, 36.415493, 37.202045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010909, 0.873129, -0.487367,
		0.982316, 0.081748, 0.168441,
		0.186912, -0.480586, -0.856797,
		26.650047, 36.271317, 36.945007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184965, 36.922859, 37.277946>,  <26.519209, 36.607727, 37.544765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184965, 36.922859, 37.277946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983730, 36.748631, 36.979366>,  <26.862989, 36.644093, 36.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983730, 36.748631, 36.979366>,  <27.184965, 36.922859, 37.277946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983730, 36.748631, 36.979366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101176, 0.828085, -0.551396,
		0.858295, -0.352921, -0.372527,
		-0.503084, -0.435570, -0.746449,
		26.832804, 36.617962, 36.755432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629911, 37.007084, 36.769489>,  <27.184965, 36.922859, 37.277946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629911, 37.007084, 36.769489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268242, 36.978134, 36.601093>,  <27.051241, 36.960766, 36.500057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268242, 36.978134, 36.601093>,  <27.629911, 37.007084, 36.769489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268242, 36.978134, 36.601093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170300, 0.842757, -0.510645,
		0.391748, -0.533406, -0.749674,
		-0.904174, -0.072375, -0.420988,
		26.996990, 36.956421, 36.474796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665331, 37.386490, 36.127522>,  <27.629911, 37.007084, 36.769489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665331, 37.386490, 36.127522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269203, 37.351910, 36.170956>,  <27.031527, 37.331161, 36.197018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269203, 37.351910, 36.170956>,  <27.665331, 37.386490, 36.127522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269203, 37.351910, 36.170956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135647, 0.768458, -0.625358,
		-0.029382, -0.634035, -0.772746,
		-0.990321, -0.086446, 0.108584,
		26.972107, 37.325977, 36.203529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490389, 38.043713, 35.859501>,  <27.665331, 37.386490, 36.127522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490389, 38.043713, 35.859501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143850, 37.849480, 35.906250>,  <26.935928, 37.732941, 35.934299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143850, 37.849480, 35.906250>,  <27.490389, 38.043713, 35.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143850, 37.849480, 35.906250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469538, 0.712087, -0.521984,
		0.170237, -0.507096, -0.844910,
		-0.866345, -0.485578, 0.116877,
		26.883947, 37.703808, 35.941315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264185, 37.762547, 35.248135>,  <27.490389, 38.043713, 35.859501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264185, 37.762547, 35.248135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956160, 37.854332, 35.486244>,  <26.771343, 37.909405, 35.629108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956160, 37.854332, 35.486244>,  <27.264185, 37.762547, 35.248135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956160, 37.854332, 35.486244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292395, 0.702357, -0.648999,
		-0.567014, -0.673825, -0.473767,
		-0.770065, 0.229465, 0.595269,
		26.725140, 37.923172, 35.664825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683615, 37.756271, 34.820946>,  <27.264185, 37.762547, 35.248135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683615, 37.756271, 34.820946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603518, 37.991482, 35.134411>,  <26.555460, 38.132607, 35.322491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603518, 37.991482, 35.134411>,  <26.683615, 37.756271, 34.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603518, 37.991482, 35.134411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218959, 0.752777, -0.620793,
		-0.954966, -0.295900, -0.021985,
		-0.200243, 0.588022, 0.783666,
		26.543446, 38.167889, 35.369511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046913, 38.201717, 34.695236>,  <26.683615, 37.756271, 34.820946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046913, 38.201717, 34.695236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186226, 38.418579, 35.001118>,  <26.269814, 38.548695, 35.184647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186226, 38.418579, 35.001118>,  <26.046913, 38.201717, 34.695236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186226, 38.418579, 35.001118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116762, 0.834514, -0.538473,
		-0.930089, 0.098253, 0.353950,
		0.348283, 0.542156, 0.764700,
		26.290710, 38.581226, 35.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553276, 38.768860, 34.817123>,  <26.046913, 38.201717, 34.695236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553276, 38.768860, 34.817123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896599, 38.876892, 34.991646>,  <26.102592, 38.941711, 35.096359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896599, 38.876892, 34.991646>,  <25.553276, 38.768860, 34.817123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896599, 38.876892, 34.991646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132613, 0.938141, -0.319850,
		-0.495707, 0.216669, 0.841029,
		0.858306, 0.270084, 0.436310,
		26.154091, 38.957916, 35.122540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286795, 39.399899, 35.160294>,  <25.553276, 38.768860, 34.817123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286795, 39.399899, 35.160294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684982, 39.436817, 35.151157>,  <25.923895, 39.458969, 35.145676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684982, 39.436817, 35.151157>,  <25.286795, 39.399899, 35.160294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684982, 39.436817, 35.151157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094520, 0.986692, -0.132308,
		0.010323, 0.133867, 0.990946,
		0.995470, 0.092298, -0.022839,
		25.983624, 39.464508, 35.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349070, 40.010490, 35.460728>,  <25.286795, 39.399899, 35.160294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349070, 40.010490, 35.460728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702740, 39.932384, 35.290974>,  <25.914942, 39.885521, 35.189121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702740, 39.932384, 35.290974>,  <25.349070, 40.010490, 35.460728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702740, 39.932384, 35.290974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083736, 0.959986, -0.267236,
		0.459587, 0.200747, 0.865147,
		0.884176, -0.195262, -0.424387,
		25.967993, 39.873806, 35.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780434, 40.568901, 35.732174>,  <25.349070, 40.010490, 35.460728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780434, 40.568901, 35.732174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925629, 40.421017, 35.390049>,  <26.012745, 40.332287, 35.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925629, 40.421017, 35.390049>,  <25.780434, 40.568901, 35.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925629, 40.421017, 35.390049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128921, 0.929014, -0.346860,
		0.922832, 0.015639, 0.384885,
		0.362988, -0.369714, -0.855308,
		26.034525, 40.310104, 35.133457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534319, 40.834129, 35.607193>,  <25.780434, 40.568901, 35.732174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534319, 40.834129, 35.607193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398445, 40.728130, 35.246220>,  <26.316921, 40.664532, 35.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398445, 40.728130, 35.246220>,  <26.534319, 40.834129, 35.607193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398445, 40.728130, 35.246220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345594, 0.857201, -0.381800,
		0.874746, -0.441568, -0.199595,
		-0.339684, -0.264999, -0.902435,
		26.296541, 40.648632, 34.975491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022369, 41.077400, 35.173134>,  <26.534319, 40.834129, 35.607193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022369, 41.077400, 35.173134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709146, 41.018940, 34.931320>,  <26.521214, 40.983864, 34.786232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709146, 41.018940, 34.931320>,  <27.022369, 41.077400, 35.173134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709146, 41.018940, 34.931320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214899, 0.848556, -0.483499,
		0.583643, -0.508521, -0.633061,
		-0.783058, -0.146147, -0.604535,
		26.474230, 40.975098, 34.749958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182495, 41.157211, 34.476353>,  <27.022369, 41.077400, 35.173134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182495, 41.157211, 34.476353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788860, 41.228249, 34.478497>,  <26.552679, 41.270870, 34.479782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788860, 41.228249, 34.478497>,  <27.182495, 41.157211, 34.476353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788860, 41.228249, 34.478497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141594, 0.802103, -0.580157,
		-0.107335, -0.570166, -0.814487,
		-0.984089, 0.177598, 0.005362,
		26.493633, 41.281528, 34.480106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983391, 41.267372, 33.768532>,  <27.182495, 41.157211, 34.476353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983391, 41.267372, 33.768532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669186, 41.418488, 33.964588>,  <26.480663, 41.509159, 34.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669186, 41.418488, 33.964588>,  <26.983391, 41.267372, 33.768532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669186, 41.418488, 33.964588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006381, 0.787046, -0.616862,
		-0.618812, -0.487680, -0.615824,
		-0.785513, 0.377792, 0.490145,
		26.433531, 41.531826, 34.111633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634211, 41.507450, 33.236420>,  <26.983391, 41.267372, 33.768532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634211, 41.507450, 33.236420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483013, 41.700638, 33.552357>,  <26.392294, 41.816551, 33.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483013, 41.700638, 33.552357>,  <26.634211, 41.507450, 33.236420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483013, 41.700638, 33.552357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093305, 0.828927, -0.551520,
		-0.921094, -0.282168, -0.268267,
		-0.377995, 0.482971, 0.789847,
		26.369614, 41.845528, 33.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234640, 42.098576, 32.979435>,  <26.634211, 41.507450, 33.236420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234640, 42.098576, 32.979435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282892, 42.214989, 33.359066>,  <26.311844, 42.284836, 33.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282892, 42.214989, 33.359066>,  <26.234640, 42.098576, 32.979435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282892, 42.214989, 33.359066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173629, 0.935136, -0.308825,
		-0.977395, 0.202042, 0.062276,
		0.120632, 0.291031, 0.949078,
		26.319082, 42.302299, 33.643791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850235, 42.723949, 33.014977>,  <26.234640, 42.098576, 32.979435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850235, 42.723949, 33.014977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113029, 42.723946, 33.316536>,  <26.270706, 42.723942, 33.497471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113029, 42.723946, 33.316536>,  <25.850235, 42.723949, 33.014977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113029, 42.723946, 33.316536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165229, 0.975690, -0.143977,
		-0.735572, 0.219157, 0.641018,
		0.656989, -0.000009, 0.753901,
		26.310125, 42.723942, 33.542706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348492, 43.087841, 32.625183>,  <25.850235, 42.723949, 33.014977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348492, 43.087841, 32.625183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275105, 43.437035, 32.805954>,  <26.231071, 43.646549, 32.914417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275105, 43.437035, 32.805954>,  <26.348492, 43.087841, 32.625183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275105, 43.437035, 32.805954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422132, -0.345220, 0.838229,
		0.887775, 0.344562, -0.305177,
		-0.183469, 0.872983, 0.451929,
		26.220064, 43.698929, 32.941532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953337, 43.372417, 33.012497>,  <26.348492, 43.087841, 32.625183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953337, 43.372417, 33.012497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640722, 43.563286, 33.173252>,  <26.453154, 43.677807, 33.269703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640722, 43.563286, 33.173252>,  <26.953337, 43.372417, 33.012497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640722, 43.563286, 33.173252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356180, -0.187594, 0.915393,
		0.512189, 0.858555, -0.023347,
		-0.781535, 0.477170, 0.401884,
		26.406261, 43.706436, 33.293816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420513, 43.521694, 33.549801>,  <26.953337, 43.372417, 33.012497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420513, 43.521694, 33.549801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726389, 43.765316, 33.465607>,  <27.909914, 43.911488, 33.415089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726389, 43.765316, 33.465607>,  <27.420513, 43.521694, 33.549801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726389, 43.765316, 33.465607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284562, -0.026087, 0.958303,
		0.578167, -0.792699, -0.193263,
		0.764687, 0.609055, -0.210490,
		27.955795, 43.948032, 33.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963625, 43.303066, 33.995255>,  <27.420513, 43.521694, 33.549801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963625, 43.303066, 33.995255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078623, 43.660606, 33.857635>,  <28.147621, 43.875130, 33.775063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078623, 43.660606, 33.857635>,  <27.963625, 43.303066, 33.995255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078623, 43.660606, 33.857635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237746, 0.281374, 0.929680,
		0.927806, -0.349074, -0.131617,
		0.287494, 0.893855, -0.344051,
		28.164871, 43.928764, 33.754421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749512, 43.522659, 34.166809>,  <27.963625, 43.303066, 33.995255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749512, 43.522659, 34.166809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484364, 43.821930, 34.155239>,  <28.325275, 44.001492, 34.148296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484364, 43.821930, 34.155239>,  <28.749512, 43.522659, 34.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484364, 43.821930, 34.155239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271842, 0.276479, 0.921771,
		0.697643, 0.603152, -0.386655,
		-0.662870, 0.748176, -0.028922,
		28.285503, 44.046383, 34.146561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024956, 44.221985, 34.047054>,  <28.749512, 43.522659, 34.166809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024956, 44.221985, 34.047054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719763, 44.130146, 34.288761>,  <28.536648, 44.075043, 34.433784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719763, 44.130146, 34.288761>,  <29.024956, 44.221985, 34.047054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719763, 44.130146, 34.288761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546350, 0.270563, 0.792652,
		-0.345485, 0.934923, -0.080994,
		-0.762982, -0.229598, 0.604270,
		28.490868, 44.061268, 34.470043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656311, 44.908485, 34.343353>,  <29.024956, 44.221985, 34.047054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656311, 44.908485, 34.343353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687965, 44.553963, 34.525871>,  <28.706959, 44.341251, 34.635380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687965, 44.553963, 34.525871>,  <28.656311, 44.908485, 34.343353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687965, 44.553963, 34.525871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680112, 0.382655, 0.625319,
		-0.728825, 0.260844, 0.633068,
		0.079136, -0.886305, 0.456291,
		28.711706, 44.288071, 34.662758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465204, 45.042320, 35.104946>,  <28.656311, 44.908485, 34.343353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465204, 45.042320, 35.104946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730682, 44.775360, 34.969837>,  <28.889969, 44.615185, 34.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730682, 44.775360, 34.969837>,  <28.465204, 45.042320, 35.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730682, 44.775360, 34.969837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746358, 0.560944, 0.358178,
		-0.049579, -0.489817, 0.870415,
		0.663695, -0.667399, -0.337768,
		28.929790, 44.575142, 34.868507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947811, 44.762180, 35.685524>,  <28.465204, 45.042320, 35.104946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947811, 44.762180, 35.685524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123177, 44.759899, 35.326023>,  <29.228395, 44.758530, 35.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123177, 44.759899, 35.326023>,  <28.947811, 44.762180, 35.685524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123177, 44.759899, 35.326023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725638, 0.592289, 0.350205,
		0.530325, -0.805706, 0.263806,
		0.438412, -0.005705, -0.898756,
		29.254700, 44.758186, 35.056396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681320, 44.722790, 35.754311>,  <28.947811, 44.762180, 35.685524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681320, 44.722790, 35.754311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647392, 44.833878, 35.371548>,  <29.627035, 44.900528, 35.141888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647392, 44.833878, 35.371548>,  <29.681320, 44.722790, 35.754311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647392, 44.833878, 35.371548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926404, 0.375568, 0.026884,
		0.366852, -0.884206, -0.289135,
		-0.084819, 0.277718, -0.956911,
		29.621946, 44.917194, 35.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497917, 44.020504, 35.718491>,  <29.681320, 44.722790, 35.754311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497917, 44.020504, 35.718491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150373, 43.867214, 35.843853>,  <28.941847, 43.775242, 35.919071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150373, 43.867214, 35.843853>,  <29.497917, 44.020504, 35.718491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150373, 43.867214, 35.843853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401230, -0.915945, -0.007652,
		0.289995, 0.119099, 0.949588,
		-0.868860, -0.383222, 0.313406,
		28.889715, 43.752247, 35.937874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629778, 43.483047, 36.199562>,  <29.497917, 44.020504, 35.718491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629778, 43.483047, 36.199562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249882, 43.401226, 36.104778>,  <29.021944, 43.352135, 36.047909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249882, 43.401226, 36.104778>,  <29.629778, 43.483047, 36.199562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249882, 43.401226, 36.104778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236008, -0.965189, -0.112744,
		-0.205650, -0.163002, 0.964955,
		-0.949741, -0.204552, -0.236960,
		28.964960, 43.339859, 36.033691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504993, 42.764278, 36.554855>,  <29.629778, 43.483047, 36.199562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504993, 42.764278, 36.554855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215374, 42.822674, 36.285206>,  <29.041603, 42.857712, 36.123417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215374, 42.822674, 36.285206>,  <29.504993, 42.764278, 36.554855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215374, 42.822674, 36.285206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056045, -0.961661, -0.268454,
		-0.687469, -0.232155, 0.688106,
		-0.724048, 0.145989, -0.674123,
		28.998159, 42.866470, 36.082970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028727, 42.286865, 36.725498>,  <29.504993, 42.764278, 36.554855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028727, 42.286865, 36.725498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980122, 42.382046, 36.340038>,  <28.950958, 42.439156, 36.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980122, 42.382046, 36.340038>,  <29.028727, 42.286865, 36.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980122, 42.382046, 36.340038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058938, -0.967397, -0.246312,
		-0.990838, -0.086726, 0.103527,
		-0.121514, 0.237954, -0.963645,
		28.943668, 42.453430, 36.050945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517904, 41.866070, 36.475842>,  <29.028727, 42.286865, 36.725498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517904, 41.866070, 36.475842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738518, 41.991913, 36.166821>,  <28.870886, 42.067421, 35.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738518, 41.991913, 36.166821>,  <28.517904, 41.866070, 36.475842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738518, 41.991913, 36.166821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074305, -0.940995, -0.330163,
		-0.830837, 0.124692, -0.542367,
		0.551534, 0.314612, -0.772548,
		28.903978, 42.086296, 35.935055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124315, 41.690102, 35.971035>,  <28.517904, 41.866070, 36.475842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124315, 41.690102, 35.971035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483198, 41.737366, 35.800831>,  <28.698528, 41.765724, 35.698708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483198, 41.737366, 35.800831>,  <28.124315, 41.690102, 35.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483198, 41.737366, 35.800831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030763, -0.944478, -0.327132,
		-0.440540, 0.306595, -0.843756,
		0.897206, 0.118159, -0.425512,
		28.752359, 41.772812, 35.673176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119820, 41.282452, 35.381081>,  <28.124315, 41.690102, 35.971035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119820, 41.282452, 35.381081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510609, 41.326332, 35.454277>,  <28.745083, 41.352661, 35.498196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510609, 41.326332, 35.454277>,  <28.119820, 41.282452, 35.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510609, 41.326332, 35.454277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153178, -0.957681, -0.243687,
		0.148514, 0.266106, -0.952434,
		0.976975, 0.109701, 0.182991,
		28.803701, 41.359241, 35.509174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426989, 41.013859, 34.805523>,  <28.119820, 41.282452, 35.381081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426989, 41.013859, 34.805523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711002, 40.995010, 35.086559>,  <28.881411, 40.983704, 35.255180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711002, 40.995010, 35.086559>,  <28.426989, 41.013859, 34.805523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711002, 40.995010, 35.086559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193303, -0.946386, -0.258821,
		0.677116, 0.319584, -0.662857,
		0.710033, -0.047119, 0.702590,
		28.924013, 40.980873, 35.297337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871822, 40.499958, 34.533283>,  <28.426989, 41.013859, 34.805523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871822, 40.499958, 34.533283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988203, 40.510757, 34.915825>,  <29.058031, 40.517239, 35.145351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988203, 40.510757, 34.915825>,  <28.871822, 40.499958, 34.533283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988203, 40.510757, 34.915825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245547, -0.968227, -0.047367,
		0.924691, 0.248612, -0.288337,
		0.290951, 0.027001, 0.956357,
		29.075489, 40.518856, 35.202732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407009, 40.079185, 34.531883>,  <28.871822, 40.499958, 34.533283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407009, 40.079185, 34.531883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303753, 40.085476, 34.918274>,  <29.241798, 40.089252, 35.150108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303753, 40.085476, 34.918274>,  <29.407009, 40.079185, 34.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303753, 40.085476, 34.918274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224852, -0.971432, 0.075906,
		0.939577, 0.236797, 0.247229,
		-0.258141, 0.015729, 0.965979,
		29.226311, 40.090195, 35.208069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936857, 39.664429, 34.789986>,  <29.407009, 40.079185, 34.531883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936857, 39.664429, 34.789986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652258, 39.690655, 35.069836>,  <29.481499, 39.706390, 35.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652258, 39.690655, 35.069836>,  <29.936857, 39.664429, 34.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652258, 39.690655, 35.069836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219043, -0.925332, 0.309484,
		0.667676, 0.373444, 0.644009,
		-0.711498, 0.065569, 0.699622,
		29.438808, 39.710327, 35.279724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232349, 39.412670, 35.361233>,  <29.936857, 39.664429, 34.789986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232349, 39.412670, 35.361233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844875, 39.392654, 35.458515>,  <29.612391, 39.380646, 35.516884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844875, 39.392654, 35.458515>,  <30.232349, 39.412670, 35.361233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844875, 39.392654, 35.458515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130151, -0.936468, 0.325712,
		0.211456, 0.347165, 0.913653,
		-0.968683, -0.050039, 0.243205,
		29.554270, 39.377644, 35.531475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158890, 39.091187, 36.061268>,  <30.232349, 39.412670, 35.361233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158890, 39.091187, 36.061268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837652, 39.032757, 35.830200>,  <29.644909, 38.997700, 35.691559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837652, 39.032757, 35.830200>,  <30.158890, 39.091187, 36.061268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837652, 39.032757, 35.830200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126164, -0.989190, 0.074742,
		-0.582340, -0.012856, 0.812843,
		-0.803095, -0.146077, -0.577667,
		29.596724, 38.988934, 35.656898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716377, 38.580753, 36.391800>,  <30.158890, 39.091187, 36.061268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716377, 38.580753, 36.391800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549173, 38.569435, 36.028599>,  <29.448851, 38.562645, 35.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549173, 38.569435, 36.028599>,  <29.716377, 38.580753, 36.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549173, 38.569435, 36.028599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078503, -0.994651, 0.067134,
		-0.905044, 0.099344, 0.413553,
		-0.418010, -0.028294, -0.908002,
		29.423771, 38.560947, 35.756199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026217, 38.246075, 36.344395>,  <29.716377, 38.580753, 36.391800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026217, 38.246075, 36.344395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182455, 38.202847, 35.978718>,  <29.276197, 38.176910, 35.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182455, 38.202847, 35.978718>,  <29.026217, 38.246075, 36.344395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182455, 38.202847, 35.978718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156656, -0.986403, 0.049678,
		-0.907135, 0.123811, -0.402215,
		0.390596, -0.108074, -0.914196,
		29.299633, 38.170425, 35.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714054, 37.734150, 36.080338>,  <29.026217, 38.246075, 36.344395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714054, 37.734150, 36.080338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976728, 37.754894, 35.779385>,  <29.134333, 37.767342, 35.598812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976728, 37.754894, 35.779385>,  <28.714054, 37.734150, 36.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976728, 37.754894, 35.779385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178535, -0.958586, -0.221899,
		-0.732728, 0.280043, -0.620230,
		0.656685, 0.051859, -0.752380,
		29.173735, 37.770451, 35.553669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363935, 37.382935, 35.609859>,  <28.714054, 37.734150, 36.080338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363935, 37.382935, 35.609859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745312, 37.372784, 35.489655>,  <28.974136, 37.366695, 35.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745312, 37.372784, 35.489655>,  <28.363935, 37.382935, 35.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745312, 37.372784, 35.489655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101053, -0.965731, -0.239064,
		-0.284150, 0.258301, -0.923330,
		0.953440, -0.025375, -0.300515,
		29.031343, 37.365170, 35.399502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364977, 37.083164, 34.984310>,  <28.363935, 37.382935, 35.609859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364977, 37.083164, 34.984310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736811, 37.019489, 35.117294>,  <28.959911, 36.981285, 35.197086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736811, 37.019489, 35.117294>,  <28.364977, 37.083164, 34.984310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736811, 37.019489, 35.117294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120973, -0.983734, -0.132785,
		0.348195, 0.083216, -0.933721,
		0.929584, -0.159190, 0.332465,
		29.015686, 36.971733, 35.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390184, 36.461937, 34.679287>,  <28.364977, 37.083164, 34.984310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390184, 36.461937, 34.679287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678310, 36.501442, 34.953918>,  <28.851187, 36.525146, 35.118698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678310, 36.501442, 34.953918>,  <28.390184, 36.461937, 34.679287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678310, 36.501442, 34.953918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022393, -0.992607, 0.119289,
		0.693285, -0.070551, -0.717202,
		0.720316, 0.098762, 0.686580,
		28.894405, 36.531071, 35.159893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971216, 35.905426, 34.521683>,  <28.390184, 36.461937, 34.679287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971216, 35.905426, 34.521683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034164, 35.997475, 34.905823>,  <29.071934, 36.052704, 35.136307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034164, 35.997475, 34.905823>,  <28.971216, 35.905426, 34.521683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034164, 35.997475, 34.905823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073846, -0.972489, 0.220933,
		0.984775, 0.036150, -0.170033,
		0.157369, 0.230125, 0.960353,
		29.081375, 36.066513, 35.193928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545649, 35.469109, 34.755276>,  <28.971216, 35.905426, 34.521683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545649, 35.469109, 34.755276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360767, 35.595562, 35.086681>,  <29.249838, 35.671432, 35.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360767, 35.595562, 35.086681>,  <29.545649, 35.469109, 34.755276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360767, 35.595562, 35.086681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137061, -0.897603, 0.418956,
		0.876118, 0.307199, 0.371545,
		-0.462203, 0.316131, 0.828511,
		29.222107, 35.690403, 35.335236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995062, 35.385593, 35.374958>,  <29.545649, 35.469109, 34.755276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995062, 35.385593, 35.374958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606474, 35.360828, 35.466530>,  <29.373322, 35.345970, 35.521473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606474, 35.360828, 35.466530>,  <29.995062, 35.385593, 35.374958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606474, 35.360828, 35.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145397, -0.918100, 0.368717,
		0.187357, 0.391484, 0.900910,
		-0.971472, -0.061908, 0.228933,
		29.315033, 35.342255, 35.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889711, 36.045113, 35.729324>,  <29.995062, 35.385593, 35.374958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889711, 36.045113, 35.729324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263361, 36.009991, 35.590931>,  <30.487551, 35.988918, 35.507893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263361, 36.009991, 35.590931>,  <29.889711, 36.045113, 35.729324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263361, 36.009991, 35.590931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335096, -0.118271, 0.934731,
		-0.122997, -0.989092, -0.081055,
		0.934121, -0.087808, -0.345988,
		30.543598, 35.983650, 35.487137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188951, 35.531601, 36.231377>,  <29.889711, 36.045113, 35.729324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188951, 35.531601, 36.231377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459404, 35.772770, 36.061985>,  <30.621675, 35.917473, 35.960350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459404, 35.772770, 36.061985>,  <30.188951, 35.531601, 36.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459404, 35.772770, 36.061985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430813, 0.142744, 0.891080,
		0.597700, -0.784926, -0.163233,
		0.676132, 0.602922, -0.423475,
		30.662243, 35.953648, 35.934944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866318, 35.370182, 36.446758>,  <30.188951, 35.531601, 36.231377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866318, 35.370182, 36.446758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891905, 35.751312, 36.328075>,  <30.907257, 35.979992, 36.256866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891905, 35.751312, 36.328075>,  <30.866318, 35.370182, 36.446758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891905, 35.751312, 36.328075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424799, 0.243033, 0.872056,
		0.903025, -0.181823, -0.389212,
		0.063969, 0.952825, -0.296703,
		30.911095, 36.037159, 36.239063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585749, 35.685318, 36.493519>,  <30.866318, 35.370182, 36.446758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585749, 35.685318, 36.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300539, 35.963303, 36.530651>,  <31.129414, 36.130093, 36.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300539, 35.963303, 36.530651>,  <31.585749, 35.685318, 36.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300539, 35.963303, 36.530651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422426, 0.320136, 0.847979,
		0.559598, 0.643845, -0.521837,
		-0.713026, 0.694965, 0.092830,
		31.086632, 36.171791, 36.558498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915829, 36.300552, 36.541561>,  <31.585749, 35.685318, 36.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915829, 36.300552, 36.541561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574165, 36.275391, 36.748039>,  <31.369167, 36.260292, 36.871925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574165, 36.275391, 36.748039>,  <31.915829, 36.300552, 36.541561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574165, 36.275391, 36.748039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464722, 0.353077, 0.812016,
		-0.233337, 0.933477, -0.272350,
		-0.854159, -0.062907, 0.516193,
		31.317917, 36.256519, 36.902897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806454, 36.895046, 36.932392>,  <31.915829, 36.300552, 36.541561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806454, 36.895046, 36.932392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637732, 36.573067, 37.099312>,  <31.536497, 36.379879, 37.199463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637732, 36.573067, 37.099312>,  <31.806454, 36.895046, 36.932392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637732, 36.573067, 37.099312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351852, 0.278862, 0.893552,
		-0.835631, 0.523736, 0.165596,
		-0.421807, -0.804945, 0.417304,
		31.511189, 36.331585, 37.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237566, 36.979244, 37.561268>,  <31.806454, 36.895046, 36.932392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237566, 36.979244, 37.561268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453178, 36.642525, 37.572697>,  <31.582546, 36.440491, 37.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453178, 36.642525, 37.572697>,  <31.237566, 36.979244, 37.561268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453178, 36.642525, 37.572697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396882, 0.283764, 0.872905,
		-0.742919, -0.459184, 0.487053,
		0.539032, -0.841801, 0.028572,
		31.614887, 36.389984, 37.581268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277334, 36.808678, 38.292244>,  <31.237566, 36.979244, 37.561268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277334, 36.808678, 38.292244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584139, 36.612675, 38.126553>,  <31.768221, 36.495071, 38.027138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584139, 36.612675, 38.126553>,  <31.277334, 36.808678, 38.292244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584139, 36.612675, 38.126553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563549, 0.205821, 0.800032,
		-0.306766, -0.847071, 0.434011,
		0.767012, -0.490009, -0.414227,
		31.814243, 36.465672, 38.002285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430937, 36.298901, 38.696644>,  <31.277334, 36.808678, 38.292244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430937, 36.298901, 38.696644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763273, 36.359653, 38.482491>,  <31.962675, 36.396107, 38.354000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763273, 36.359653, 38.482491>,  <31.430937, 36.298901, 38.696644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763273, 36.359653, 38.482491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503659, 0.203969, 0.839478,
		0.236707, -0.967123, 0.092967,
		0.830842, 0.151887, -0.535381,
		32.012527, 36.405220, 38.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082375, 35.903587, 39.014847>,  <31.430937, 36.298901, 38.696644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082375, 35.903587, 39.014847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244942, 36.183559, 38.779926>,  <32.342484, 36.351543, 38.638973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244942, 36.183559, 38.779926>,  <32.082375, 35.903587, 39.014847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244942, 36.183559, 38.779926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667993, 0.210932, 0.713648,
		0.623385, -0.682351, -0.381823,
		0.406420, 0.699932, -0.587297,
		32.366867, 36.393539, 38.603737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883854, 35.785496, 39.078789>,  <32.082375, 35.903587, 39.014847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883854, 35.785496, 39.078789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781109, 36.154835, 38.964638>,  <32.719460, 36.376438, 38.896149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781109, 36.154835, 38.964638>,  <32.883854, 35.785496, 39.078789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781109, 36.154835, 38.964638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619934, 0.383954, 0.684297,
		0.741419, -0.001143, -0.671042,
		-0.256867, 0.923352, -0.285379,
		32.704048, 36.431839, 38.879025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495766, 35.981667, 38.945206>,  <32.883854, 35.785496, 39.078789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495766, 35.981667, 38.945206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292171, 36.325352, 38.965942>,  <33.170013, 36.531563, 38.978382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292171, 36.325352, 38.965942>,  <33.495766, 35.981667, 38.945206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292171, 36.325352, 38.965942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755774, 0.417260, 0.504679,
		0.411997, 0.296051, -0.861750,
		-0.508984, 0.859214, 0.051838,
		33.139477, 36.583115, 38.981495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961170, 36.561493, 38.902332>,  <33.495766, 35.981667, 38.945206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961170, 36.561493, 38.902332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643387, 36.744930, 39.061596>,  <33.452717, 36.854992, 39.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643387, 36.744930, 39.061596>,  <33.961170, 36.561493, 38.902332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643387, 36.744930, 39.061596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563585, 0.312428, 0.764697,
		0.226287, 0.831915, -0.506666,
		-0.794460, 0.458591, 0.398156,
		33.405048, 36.882507, 39.181042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086334, 37.230190, 39.022827>,  <33.961170, 36.561493, 38.902332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086334, 37.230190, 39.022827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822926, 37.138515, 39.309551>,  <33.664879, 37.083511, 39.481586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822926, 37.138515, 39.309551>,  <34.086334, 37.230190, 39.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822926, 37.138515, 39.309551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673855, 0.244510, 0.697234,
		-0.335066, 0.942172, -0.006575,
		-0.658521, -0.229189, 0.716814,
		33.625370, 37.069759, 39.524597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137119, 37.854282, 39.525375>,  <34.086334, 37.230190, 39.022827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137119, 37.854282, 39.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951141, 37.556240, 39.716644>,  <33.839554, 37.377415, 39.831406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951141, 37.556240, 39.716644>,  <34.137119, 37.854282, 39.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951141, 37.556240, 39.716644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495804, 0.228336, 0.837879,
		-0.733490, 0.626647, 0.263261,
		-0.464942, -0.745101, 0.478176,
		33.811657, 37.332710, 39.860096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035561, 38.094826, 40.240505>,  <34.137119, 37.854282, 39.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035561, 38.094826, 40.240505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968182, 37.705994, 40.305855>,  <33.927753, 37.472694, 40.345066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968182, 37.705994, 40.305855>,  <34.035561, 38.094826, 40.240505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968182, 37.705994, 40.305855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310078, 0.105075, 0.944887,
		-0.935669, 0.209825, 0.283720,
		-0.168449, -0.972077, 0.163377,
		33.917648, 37.414371, 40.354870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696838, 38.041183, 40.866920>,  <34.035561, 38.094826, 40.240505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696838, 38.041183, 40.866920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858978, 37.676708, 40.837463>,  <33.956261, 37.458023, 40.819790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858978, 37.676708, 40.837463>,  <33.696838, 38.041183, 40.866920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858978, 37.676708, 40.837463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120146, -0.026761, 0.992396,
		-0.906232, -0.411115, 0.098629,
		0.405349, -0.911191, -0.073645,
		33.980583, 37.403351, 40.815369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309490, 37.693718, 41.327866>,  <33.696838, 38.041183, 40.866920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309490, 37.693718, 41.327866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646564, 37.481636, 41.290405>,  <33.848808, 37.354389, 41.267929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646564, 37.481636, 41.290405>,  <33.309490, 37.693718, 41.327866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646564, 37.481636, 41.290405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095501, -0.023992, 0.995140,
		-0.529873, -0.847531, 0.030417,
		0.842682, -0.530203, -0.093653,
		33.899368, 37.322575, 41.262310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237633, 37.233295, 41.882874>,  <33.309490, 37.693718, 41.327866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237633, 37.233295, 41.882874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616924, 37.200359, 41.760185>,  <33.844501, 37.180599, 41.686573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616924, 37.200359, 41.760185>,  <33.237633, 37.233295, 41.882874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616924, 37.200359, 41.760185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291765, -0.155542, 0.943758,
		-0.125412, -0.984392, -0.123467,
		0.948232, -0.082335, -0.306718,
		33.901394, 37.175659, 41.668171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451374, 36.642651, 42.117119>,  <33.237633, 37.233295, 41.882874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451374, 36.642651, 42.117119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801144, 36.832092, 42.075020>,  <34.011005, 36.945759, 42.049759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801144, 36.832092, 42.075020>,  <33.451374, 36.642651, 42.117119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801144, 36.832092, 42.075020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266716, -0.288047, 0.919724,
		0.405268, -0.832302, -0.378194,
		0.874426, 0.473605, -0.105252,
		34.063473, 36.974174, 42.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942188, 36.060165, 42.230576>,  <33.451374, 36.642651, 42.117119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942188, 36.060165, 42.230576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118996, 36.413383, 42.293629>,  <34.225082, 36.625313, 42.331459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118996, 36.413383, 42.293629>,  <33.942188, 36.060165, 42.230576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118996, 36.413383, 42.293629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360998, -0.335993, 0.869936,
		0.821156, -0.327626, -0.467294,
		0.442021, 0.883046, 0.157631,
		34.251602, 36.678299, 42.340919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566895, 35.903812, 42.596664>,  <33.942188, 36.060165, 42.230576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566895, 35.903812, 42.596664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520817, 36.297237, 42.652298>,  <34.493172, 36.533291, 42.685677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520817, 36.297237, 42.652298>,  <34.566895, 35.903812, 42.596664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520817, 36.297237, 42.652298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376942, -0.086259, 0.922212,
		0.919046, 0.158660, -0.360807,
		-0.115195, 0.983558, 0.139082,
		34.486259, 36.592304, 42.694023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113705, 35.967171, 42.962700>,  <34.566895, 35.903812, 42.596664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113705, 35.967171, 42.962700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868507, 36.276508, 43.027424>,  <34.721390, 36.462109, 43.066257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868507, 36.276508, 43.027424>,  <35.113705, 35.967171, 42.962700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868507, 36.276508, 43.027424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266015, 0.009168, 0.963925,
		0.743959, 0.633925, -0.211340,
		-0.612994, 0.773340, 0.161813,
		34.684608, 36.508511, 43.075970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503860, 36.472855, 43.329777>,  <35.113705, 35.967171, 42.962700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503860, 36.472855, 43.329777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115406, 36.528343, 43.407391>,  <34.882332, 36.561638, 43.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115406, 36.528343, 43.407391>,  <35.503860, 36.472855, 43.329777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115406, 36.528343, 43.407391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207707, 0.091914, 0.973863,
		0.117263, 0.986057, -0.118075,
		-0.971137, 0.138723, 0.194033,
		34.824066, 36.569962, 43.465599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492783, 37.076031, 43.736298>,  <35.503860, 36.472855, 43.329777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492783, 37.076031, 43.736298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119259, 36.945560, 43.795105>,  <34.895145, 36.867279, 43.830391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119259, 36.945560, 43.795105>,  <35.492783, 37.076031, 43.736298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119259, 36.945560, 43.795105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072173, 0.230747, 0.970333,
		-0.350422, 0.916715, -0.191932,
		-0.933807, -0.326174, 0.147021,
		34.839115, 36.847710, 43.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193142, 37.487988, 44.244720>,  <35.492783, 37.076031, 43.736298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193142, 37.487988, 44.244720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969650, 37.156265, 44.248077>,  <34.835556, 36.957230, 44.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969650, 37.156265, 44.248077>,  <35.193142, 37.487988, 44.244720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969650, 37.156265, 44.248077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015658, 0.020661, 0.999664,
		-0.829203, 0.558410, -0.024530,
		-0.558729, -0.829308, 0.008388,
		34.802032, 36.907475, 44.250595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615566, 37.617859, 44.725971>,  <35.193142, 37.487988, 44.244720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615566, 37.617859, 44.725971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651970, 37.221619, 44.685143>,  <34.673813, 36.983875, 44.660645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651970, 37.221619, 44.685143>,  <34.615566, 37.617859, 44.725971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651970, 37.221619, 44.685143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170854, -0.085446, 0.981584,
		-0.981084, -0.106774, 0.161472,
		0.091010, -0.990605, -0.102072,
		34.679272, 36.924438, 44.654522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217129, 37.380589, 45.314278>,  <34.615566, 37.617859, 44.725971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217129, 37.380589, 45.314278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462257, 37.083122, 45.207382>,  <34.609333, 36.904644, 45.143246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462257, 37.083122, 45.207382>,  <34.217129, 37.380589, 45.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462257, 37.083122, 45.207382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115802, -0.250011, 0.961293,
		-0.781691, -0.620046, -0.067094,
		0.612820, -0.743665, -0.267234,
		34.646103, 36.860023, 45.127213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095638, 36.924423, 45.755116>,  <34.217129, 37.380589, 45.314278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095638, 36.924423, 45.755116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449242, 36.791176, 45.623928>,  <34.661404, 36.711227, 45.545216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449242, 36.791176, 45.623928>,  <34.095638, 36.924423, 45.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449242, 36.791176, 45.623928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244008, -0.269618, 0.931540,
		-0.398743, -0.903513, -0.157060,
		0.884004, -0.333121, -0.327973,
		34.714443, 36.691238, 45.525536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110439, 36.316898, 45.963650>,  <34.095638, 36.924423, 45.755116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110439, 36.316898, 45.963650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494194, 36.414837, 45.907612>,  <34.724445, 36.473602, 45.873989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494194, 36.414837, 45.907612>,  <34.110439, 36.316898, 45.963650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494194, 36.414837, 45.907612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176351, -0.132963, 0.975306,
		0.220177, -0.960400, -0.170743,
		0.959386, 0.244851, -0.140092,
		34.782009, 36.488293, 45.865585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519238, 35.910088, 46.423302>,  <34.110439, 36.316898, 45.963650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519238, 35.910088, 46.423302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762890, 36.215927, 46.339058>,  <34.909081, 36.399429, 46.288513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762890, 36.215927, 46.339058>,  <34.519238, 35.910088, 46.423302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762890, 36.215927, 46.339058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357757, -0.027912, 0.933397,
		0.707793, -0.643906, -0.290541,
		0.609130, 0.764595, -0.210607,
		34.945629, 36.445305, 46.275875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196659, 35.666782, 46.793030>,  <34.519238, 35.910088, 46.423302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196659, 35.666782, 46.793030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196346, 36.059368, 46.716373>,  <35.196159, 36.294918, 46.670380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196346, 36.059368, 46.716373>,  <35.196659, 35.666782, 46.793030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196346, 36.059368, 46.716373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287194, 0.183790, 0.940075,
		0.957872, -0.054301, -0.282015,
		-0.000785, 0.981465, -0.191642,
		35.196110, 36.353809, 46.658882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762733, 35.876778, 47.214718>,  <35.196659, 35.666782, 46.793030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762733, 35.876778, 47.214718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560768, 36.215145, 47.146038>,  <35.439587, 36.418167, 47.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560768, 36.215145, 47.146038>,  <35.762733, 35.876778, 47.214718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560768, 36.215145, 47.146038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071678, 0.239319, 0.968292,
		0.860186, 0.476601, -0.181470,
		-0.504918, 0.845919, -0.171697,
		35.409294, 36.468922, 47.094528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150097, 36.208733, 47.751812>,  <35.762733, 35.876778, 47.214718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150097, 36.208733, 47.751812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817711, 36.407215, 47.651188>,  <35.618279, 36.526306, 47.590813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817711, 36.407215, 47.651188>,  <36.150097, 36.208733, 47.751812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817711, 36.407215, 47.651188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104785, 0.304481, 0.946737,
		0.546370, 0.813063, -0.201017,
		-0.830963, 0.496205, -0.251556,
		35.568420, 36.556076, 47.575722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208870, 37.047142, 47.984280>,  <36.150097, 36.208733, 47.751812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208870, 37.047142, 47.984280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818630, 36.960484, 47.969982>,  <35.584488, 36.908489, 47.961403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818630, 36.960484, 47.969982>,  <36.208870, 37.047142, 47.984280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818630, 36.960484, 47.969982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098441, 0.286049, 0.953145,
		-0.196269, 0.933403, -0.300394,
		-0.975596, -0.216644, -0.035743,
		35.525951, 36.895489, 47.959259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974197, 37.539444, 48.465755>,  <36.208870, 37.047142, 47.984280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974197, 37.539444, 48.465755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678085, 37.272816, 48.430725>,  <35.500420, 37.112839, 48.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678085, 37.272816, 48.430725>,  <35.974197, 37.539444, 48.465755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678085, 37.272816, 48.430725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252222, 0.154615, 0.955237,
		-0.623195, 0.729229, -0.282582,
		-0.740278, -0.666573, -0.087572,
		35.456001, 37.072845, 48.404453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402134, 37.758793, 48.821159>,  <35.974197, 37.539444, 48.465755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402134, 37.758793, 48.821159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306271, 37.371944, 48.787132>,  <35.248753, 37.139835, 48.766716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306271, 37.371944, 48.787132>,  <35.402134, 37.758793, 48.821159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306271, 37.371944, 48.787132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223241, -0.030374, 0.974290,
		-0.944842, 0.252487, -0.208622,
		-0.239659, -0.967123, -0.085064,
		35.234371, 37.081806, 48.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833443, 37.601898, 49.348164>,  <35.402134, 37.758793, 48.821159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833443, 37.601898, 49.348164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002270, 37.244953, 49.284218>,  <35.103565, 37.030788, 49.245850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002270, 37.244953, 49.284218>,  <34.833443, 37.601898, 49.348164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002270, 37.244953, 49.284218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077256, -0.211105, 0.974405,
		-0.903267, -0.398912, -0.158040,
		0.422066, -0.892358, -0.159866,
		35.128891, 36.977245, 49.236259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538223, 37.208168, 49.751095>,  <34.833443, 37.601898, 49.348164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538223, 37.208168, 49.751095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838142, 36.955853, 49.671188>,  <35.018093, 36.804462, 49.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838142, 36.955853, 49.671188>,  <34.538223, 37.208168, 49.751095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838142, 36.955853, 49.671188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091871, -0.398242, 0.912668,
		-0.655260, -0.665962, -0.356552,
		0.749796, -0.630792, -0.199770,
		35.063080, 36.766617, 49.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373501, 36.569588, 50.150200>,  <34.538223, 37.208168, 49.751095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373501, 36.569588, 50.150200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766747, 36.581917, 50.078045>,  <35.002693, 36.589314, 50.034752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766747, 36.581917, 50.078045>,  <34.373501, 36.569588, 50.150200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766747, 36.581917, 50.078045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179958, -0.341777, 0.922390,
		-0.033225, -0.939276, -0.341551,
		0.983113, 0.030819, -0.180386,
		35.061680, 36.591164, 50.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668240, 35.884491, 50.358784>,  <34.373501, 36.569588, 50.150200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668240, 35.884491, 50.358784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969555, 36.146793, 50.338573>,  <35.150345, 36.304173, 50.326447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969555, 36.146793, 50.338573>,  <34.668240, 35.884491, 50.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969555, 36.146793, 50.338573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385854, -0.378417, 0.841378,
		0.532616, -0.653292, -0.538080,
		0.753284, 0.655752, -0.050525,
		35.195541, 36.343517, 50.323418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266109, 35.528938, 50.422474>,  <34.668240, 35.884491, 50.358784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266109, 35.528938, 50.422474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382484, 35.897305, 50.526222>,  <35.452309, 36.118324, 50.588470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382484, 35.897305, 50.526222>,  <35.266109, 35.528938, 50.422474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382484, 35.897305, 50.526222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422818, -0.366947, 0.828598,
		0.858242, -0.131405, -0.496138,
		0.290938, 0.920914, 0.259369,
		35.469765, 36.173580, 50.604034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020737, 35.463711, 50.600353>,  <35.266109, 35.528938, 50.422474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020737, 35.463711, 50.600353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882290, 35.798855, 50.769203>,  <35.799221, 35.999943, 50.870514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882290, 35.798855, 50.769203>,  <36.020737, 35.463711, 50.600353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882290, 35.798855, 50.769203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410267, -0.269468, 0.871245,
		0.843733, 0.474735, -0.250480,
		-0.346114, 0.837863, 0.422127,
		35.778454, 36.050213, 50.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582321, 35.824100, 51.072910>,  <36.020737, 35.463711, 50.600353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582321, 35.824100, 51.072910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225281, 35.942291, 51.209126>,  <36.011059, 36.013206, 51.290855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225281, 35.942291, 51.209126>,  <36.582321, 35.824100, 51.072910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225281, 35.942291, 51.209126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279401, -0.230271, 0.932154,
		0.353844, 0.927184, 0.122983,
		-0.892597, 0.295475, 0.340536,
		35.957500, 36.030933, 51.311287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670238, 36.014088, 51.761177>,  <36.582321, 35.824100, 51.072910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670238, 36.014088, 51.761177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270794, 35.993645, 51.766251>,  <36.031128, 35.981380, 51.769295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270794, 35.993645, 51.766251>,  <36.670238, 36.014088, 51.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270794, 35.993645, 51.766251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022270, -0.191560, 0.981228,
		-0.047716, 0.980150, 0.192432,
		-0.998613, -0.051105, 0.012688,
		35.971210, 35.978313, 51.770058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325695, 36.540855, 52.294548>,  <36.670238, 36.014088, 51.761177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325695, 36.540855, 52.294548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054611, 36.254017, 52.229450>,  <35.891960, 36.081913, 52.190392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054611, 36.254017, 52.229450>,  <36.325695, 36.540855, 52.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054611, 36.254017, 52.229450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069723, -0.157654, 0.985030,
		-0.732015, 0.678913, 0.056846,
		-0.677711, -0.717093, -0.162741,
		35.851299, 36.038887, 52.180630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950504, 36.611195, 52.930401>,  <36.325695, 36.540855, 52.294548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950504, 36.611195, 52.930401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819820, 36.270153, 52.767265>,  <35.741409, 36.065529, 52.669384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819820, 36.270153, 52.767265>,  <35.950504, 36.611195, 52.930401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819820, 36.270153, 52.767265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215049, -0.353136, 0.910521,
		-0.920334, 0.385182, -0.067978,
		-0.326711, -0.852602, -0.407836,
		35.721806, 36.014374, 52.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394226, 36.553753, 53.265980>,  <35.950504, 36.611195, 52.930401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394226, 36.553753, 53.265980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525963, 36.197746, 53.139858>,  <35.605003, 35.984142, 53.064186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525963, 36.197746, 53.139858>,  <35.394226, 36.553753, 53.265980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525963, 36.197746, 53.139858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067347, -0.310938, 0.948041,
		-0.941808, -0.333460, -0.042464,
		0.329337, -0.890013, -0.315301,
		35.624763, 35.930744, 53.045269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081795, 36.019352, 53.673515>,  <35.394226, 36.553753, 53.265980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081795, 36.019352, 53.673515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 35.853046, 53.545887>,  <35.626862, 35.753265, 53.469311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 35.853046, 53.545887>,  <35.081795, 36.019352, 53.673515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422462, 35.853046, 53.545887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160331, -0.372937, 0.913899,
		-0.498960, -0.829493, -0.250958,
		0.851665, -0.415763, -0.319074,
		35.677963, 35.728317, 53.450165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100784, 35.201775, 53.622704>,  <35.081795, 36.019352, 53.673515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100784, 35.201775, 53.622704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448532, 35.381100, 53.705845>,  <35.657181, 35.488697, 53.755730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448532, 35.381100, 53.705845>,  <35.100784, 35.201775, 53.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448532, 35.381100, 53.705845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067198, -0.523977, 0.849078,
		0.489567, -0.724197, -0.485657,
		0.869372, 0.448315, 0.207857,
		35.709343, 35.515594, 53.768204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725929, 34.624611, 53.768963>,  <35.100784, 35.201775, 53.622704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725929, 34.624611, 53.768963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699074, 34.978092, 53.954247>,  <35.682961, 35.190182, 54.065418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699074, 34.978092, 53.954247>,  <35.725929, 34.624611, 53.768963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699074, 34.978092, 53.954247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127037, -0.468054, 0.874521,
		0.989623, -0.000132, 0.143687,
		-0.067138, 0.883700, 0.463213,
		35.678932, 35.243202, 54.093212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243111, 34.689682, 54.295132>,  <35.725929, 34.624611, 53.768963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243111, 34.689682, 54.295132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926674, 34.921555, 54.373257>,  <35.736813, 35.060677, 54.420132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926674, 34.921555, 54.373257>,  <36.243111, 34.689682, 54.295132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926674, 34.921555, 54.373257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050501, -0.380105, 0.923564,
		0.609611, 0.720759, 0.329972,
		-0.791091, 0.579678, 0.195317,
		35.689346, 35.095459, 54.431850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455471, 35.022110, 54.837639>,  <36.243111, 34.689682, 54.295132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455471, 35.022110, 54.837639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062359, 34.954994, 54.806698>,  <35.826492, 34.914726, 54.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062359, 34.954994, 54.806698>,  <36.455471, 35.022110, 54.837639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062359, 34.954994, 54.806698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022283, -0.523275, 0.851873,
		-0.183410, 0.835483, 0.518005,
		-0.982784, -0.167785, -0.077357,
		35.767525, 34.904659, 54.783489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493374, 34.728016, 55.521965>,  <36.455471, 35.022110, 54.837639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493374, 34.728016, 55.521965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710888, 34.393234, 55.497276>,  <36.841396, 34.192368, 55.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710888, 34.393234, 55.497276>,  <36.493374, 34.728016, 55.521965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710888, 34.393234, 55.497276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524279, 0.281368, 0.803718,
		-0.655306, -0.469411, 0.591800,
		0.543788, -0.836950, -0.061720,
		36.874023, 34.142151, 55.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142155, 34.021088, 55.257526>,  <36.493374, 34.728016, 55.521965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142155, 34.021088, 55.257526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997425, 33.649387, 55.287369>,  <35.910587, 33.426365, 55.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997425, 33.649387, 55.287369>,  <36.142155, 34.021088, 55.257526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997425, 33.649387, 55.287369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128761, -0.029445, -0.991238,
		0.923310, -0.368263, -0.108998,
		-0.361827, -0.929255, 0.074605,
		35.888878, 33.370609, 55.309750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842880, 33.978447, 54.515968>,  <36.142155, 34.021088, 55.257526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842880, 33.978447, 54.515968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828815, 33.591766, 54.617355>,  <35.820377, 33.359756, 54.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828815, 33.591766, 54.617355>,  <35.842880, 33.978447, 54.515968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828815, 33.591766, 54.617355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, -0.250088, -0.964908,
		0.996170, -0.054218, -0.068597,
		-0.035160, -0.966704, 0.253471,
		35.818268, 33.301754, 54.693398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348160, 33.521557, 54.200344>,  <35.842880, 33.978447, 54.515968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348160, 33.521557, 54.200344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003643, 33.344662, 54.300430>,  <35.796932, 33.238525, 54.360481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003643, 33.344662, 54.300430>,  <36.348160, 33.521557, 54.200344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003643, 33.344662, 54.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225839, -0.107951, -0.968165,
		0.455167, -0.890379, -0.006896,
		-0.861289, -0.442234, 0.250218,
		35.745255, 33.211990, 54.375496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337894, 32.779125, 54.126934>,  <36.348160, 33.521557, 54.200344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337894, 32.779125, 54.126934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978668, 32.948101, 54.077904>,  <35.763134, 33.049484, 54.048485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978668, 32.948101, 54.077904>,  <36.337894, 32.779125, 54.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978668, 32.948101, 54.077904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124328, -0.023516, -0.991963,
		-0.421923, -0.906088, -0.031402,
		-0.898067, 0.422436, -0.122574,
		35.709248, 33.074833, 54.041130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075211, 32.371094, 53.627308>,  <36.337894, 32.779125, 54.126934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075211, 32.371094, 53.627308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903637, 32.731903, 53.646770>,  <35.800694, 32.948387, 53.658447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903637, 32.731903, 53.646770>,  <36.075211, 32.371094, 53.627308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903637, 32.731903, 53.646770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064430, 0.084279, -0.994357,
		-0.901034, -0.423380, -0.094267,
		-0.428935, 0.902024, 0.048660,
		35.774956, 33.002510, 53.661369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360210, 32.438477, 53.254181>,  <36.075211, 32.371094, 53.627308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360210, 32.438477, 53.254181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627945, 32.734486, 53.280582>,  <35.788586, 32.912090, 53.296425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627945, 32.734486, 53.280582>,  <35.360210, 32.438477, 53.254181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627945, 32.734486, 53.280582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261879, -0.151858, -0.953079,
		-0.695275, 0.655216, -0.295440,
		0.669337, 0.740021, 0.066004,
		35.828747, 32.956493, 53.300385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206562, 32.722527, 52.657551>,  <35.360210, 32.438477, 53.254181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206562, 32.722527, 52.657551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555161, 32.872784, 52.783657>,  <35.764320, 32.962936, 52.859322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555161, 32.872784, 52.783657>,  <35.206562, 32.722527, 52.657551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555161, 32.872784, 52.783657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322989, 0.044085, -0.945376,
		-0.369018, 0.925717, -0.082907,
		0.871495, 0.375639, 0.315264,
		35.816608, 32.985474, 52.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193909, 33.418327, 52.460148>,  <35.206562, 32.722527, 52.657551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193909, 33.418327, 52.460148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569019, 33.282101, 52.487221>,  <35.794086, 33.200363, 52.503464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569019, 33.282101, 52.487221>,  <35.193909, 33.418327, 52.460148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569019, 33.282101, 52.487221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158514, 0.246484, -0.956096,
		0.308933, 0.907336, 0.285133,
		0.937781, -0.340567, 0.067678,
		35.850353, 33.179932, 52.507523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583336, 33.896454, 52.191936>,  <35.193909, 33.418327, 52.460148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583336, 33.896454, 52.191936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820244, 33.575535, 52.162163>,  <35.962387, 33.382984, 52.144299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820244, 33.575535, 52.162163>,  <35.583336, 33.896454, 52.191936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820244, 33.575535, 52.162163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135459, 0.190206, -0.972354,
		0.794272, 0.565813, 0.221332,
		0.592269, -0.802295, -0.074430,
		35.997925, 33.334846, 52.139835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061539, 34.081860, 51.718163>,  <35.583336, 33.896454, 52.191936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061539, 34.081860, 51.718163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133858, 33.689560, 51.747665>,  <36.177250, 33.454182, 51.765366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133858, 33.689560, 51.747665>,  <36.061539, 34.081860, 51.718163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133858, 33.689560, 51.747665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223492, -0.032061, -0.974178,
		0.957790, 0.192617, 0.213393,
		0.180802, -0.980750, 0.073756,
		36.188099, 33.395336, 51.769791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728100, 33.981514, 51.371059>,  <36.061539, 34.081860, 51.718163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728100, 33.981514, 51.371059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539505, 33.628841, 51.378468>,  <36.426346, 33.417240, 51.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539505, 33.628841, 51.378468>,  <36.728100, 33.981514, 51.371059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539505, 33.628841, 51.378468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166862, -0.109814, -0.979846,
		0.865941, -0.458898, 0.198894,
		-0.471490, -0.881677, 0.018520,
		36.398056, 33.364338, 51.384022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224461, 33.489193, 51.025005>,  <36.728100, 33.981514, 51.371059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224461, 33.489193, 51.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882568, 33.289337, 50.968723>,  <36.677433, 33.169422, 50.934956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882568, 33.289337, 50.968723>,  <37.224461, 33.489193, 51.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882568, 33.289337, 50.968723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237928, -0.136193, -0.961687,
		0.461338, -0.855458, 0.235287,
		-0.854727, -0.499644, -0.140706,
		36.626152, 33.139442, 50.926510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343681, 32.954273, 50.473656>,  <37.224461, 33.489193, 51.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343681, 32.954273, 50.473656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955372, 33.050137, 50.468674>,  <36.722385, 33.107655, 50.465683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955372, 33.050137, 50.468674>,  <37.343681, 32.954273, 50.473656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955372, 33.050137, 50.468674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025693, 0.052189, -0.998307,
		-0.238601, -0.969454, -0.056822,
		-0.970778, 0.239656, -0.012456,
		36.664139, 33.122032, 50.464935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141754, 32.625072, 49.835468>,  <37.343681, 32.954273, 50.473656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141754, 32.625072, 49.835468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833248, 32.864990, 49.920700>,  <36.648144, 33.008942, 49.971840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833248, 32.864990, 49.920700>,  <37.141754, 32.625072, 49.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833248, 32.864990, 49.920700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206461, 0.080925, -0.975103,
		-0.602106, -0.796050, 0.061420,
		-0.771261, 0.599796, 0.213079,
		36.601871, 33.044930, 49.984623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606747, 32.496780, 49.337547>,  <37.141754, 32.625072, 49.835468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606747, 32.496780, 49.337547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523483, 32.862545, 49.476410>,  <36.473526, 33.082005, 49.559727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523483, 32.862545, 49.476410>,  <36.606747, 32.496780, 49.337547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523483, 32.862545, 49.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150554, 0.320747, -0.935123,
		-0.966438, -0.246921, 0.070902,
		-0.208160, 0.914413, 0.347157,
		36.461037, 33.136868, 49.580559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861389, 32.647861, 49.139042>,  <36.606747, 32.496780, 49.337547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861389, 32.647861, 49.139042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029190, 33.007790, 49.186954>,  <36.129871, 33.223747, 49.215702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029190, 33.007790, 49.186954>,  <35.861389, 32.647861, 49.139042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029190, 33.007790, 49.186954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245885, 0.239653, -0.939206,
		-0.873819, 0.364546, 0.321786,
		0.419500, 0.899818, 0.119777,
		36.155041, 33.277737, 49.222889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339642, 33.161743, 48.920486>,  <35.861389, 32.647861, 49.139042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339642, 33.161743, 48.920486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703999, 33.325771, 48.902058>,  <35.922611, 33.424187, 48.890999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703999, 33.325771, 48.902058>,  <35.339642, 33.161743, 48.920486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703999, 33.325771, 48.902058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179788, 0.293886, -0.938780,
		-0.371422, 0.863409, 0.341423,
		0.910890, 0.410068, -0.046075,
		35.977264, 33.448792, 48.888237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173225, 33.757706, 48.591175>,  <35.339642, 33.161743, 48.920486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173225, 33.757706, 48.591175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567791, 33.700684, 48.558502>,  <35.804531, 33.666470, 48.538898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567791, 33.700684, 48.558502>,  <35.173225, 33.757706, 48.591175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567791, 33.700684, 48.558502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048198, 0.224184, -0.973354,
		0.157067, 0.964064, 0.214267,
		0.986411, -0.142555, -0.081678,
		35.863716, 33.657917, 48.534000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366726, 34.155048, 48.213810>,  <35.173225, 33.757706, 48.591175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366726, 34.155048, 48.213810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710907, 33.955639, 48.171700>,  <35.917416, 33.835991, 48.146431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710907, 33.955639, 48.171700>,  <35.366726, 34.155048, 48.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710907, 33.955639, 48.171700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091403, 0.354299, -0.930655,
		0.501257, 0.791166, 0.350426,
		0.860457, -0.498527, -0.105280,
		35.969044, 33.806080, 48.140114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863091, 34.682987, 47.856281>,  <35.366726, 34.155048, 48.213810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863091, 34.682987, 47.856281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984200, 34.306389, 47.797062>,  <36.056866, 34.080429, 47.761532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984200, 34.306389, 47.797062>,  <35.863091, 34.682987, 47.856281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984200, 34.306389, 47.797062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103967, 0.187037, -0.976836,
		0.947374, 0.280372, 0.154514,
		0.302777, -0.941493, -0.148045,
		36.075031, 34.023941, 47.752647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255203, 34.780178, 47.276394>,  <35.863091, 34.682987, 47.856281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255203, 34.780178, 47.276394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183163, 34.386829, 47.285679>,  <36.139938, 34.150818, 47.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183163, 34.386829, 47.285679>,  <36.255203, 34.780178, 47.276394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183163, 34.386829, 47.285679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010033, -0.021763, -0.999713,
		0.983598, -0.180280, -0.005946,
		-0.180098, -0.983375, 0.023214,
		36.129131, 34.091816, 47.292645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678463, 34.472118, 46.840122>,  <36.255203, 34.780178, 47.276394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678463, 34.472118, 46.840122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412811, 34.176472, 46.885090>,  <36.253418, 33.999084, 46.912071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412811, 34.176472, 46.885090>,  <36.678463, 34.472118, 46.840122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412811, 34.176472, 46.885090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016795, -0.135586, -0.990623,
		0.747425, -0.659794, 0.077634,
		-0.664133, -0.739113, 0.112422,
		36.213570, 33.954739, 46.918816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946239, 33.858578, 46.394917>,  <36.678463, 34.472118, 46.840122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946239, 33.858578, 46.394917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552860, 33.839951, 46.464962>,  <36.316833, 33.828773, 46.506989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552860, 33.839951, 46.464962>,  <36.946239, 33.858578, 46.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552860, 33.839951, 46.464962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167002, -0.142020, -0.975675,
		0.070308, -0.988768, 0.131891,
		-0.983447, -0.046571, 0.175111,
		36.257828, 33.825977, 46.517494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692326, 33.182503, 46.095108>,  <36.946239, 33.858578, 46.394917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692326, 33.182503, 46.095108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 33.423218, 46.126987>,  <36.183739, 33.567646, 46.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 33.423218, 46.126987>,  <36.692326, 33.182503, 46.095108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374458, 33.423218, 46.126987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203169, -0.139941, -0.969092,
		-0.572035, -0.786300, 0.233472,
		-0.794669, 0.601788, 0.079701,
		36.136059, 33.603756, 46.150898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126663, 32.887024, 45.698196>,  <36.692326, 33.182503, 46.095108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126663, 32.887024, 45.698196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019943, 33.272503, 45.694237>,  <35.955914, 33.503792, 45.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019943, 33.272503, 45.694237>,  <36.126663, 32.887024, 45.698196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019943, 33.272503, 45.694237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251927, -0.079655, -0.964463,
		-0.930243, -0.254821, 0.264034,
		-0.266797, 0.963702, -0.009902,
		35.939903, 33.561615, 45.691265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540329, 32.854980, 45.205025>,  <36.126663, 32.887024, 45.698196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540329, 32.854980, 45.205025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619854, 33.245464, 45.239647>,  <35.667568, 33.479755, 45.260422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619854, 33.245464, 45.239647>,  <35.540329, 32.854980, 45.205025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619854, 33.245464, 45.239647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301128, 0.144896, -0.942511,
		-0.932629, 0.161318, 0.322770,
		0.198812, 0.976208, 0.086557,
		35.679497, 33.538326, 45.265614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954765, 33.157600, 45.005219>,  <35.540329, 32.854980, 45.205025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954765, 33.157600, 45.005219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244656, 33.429474, 44.959957>,  <35.418591, 33.592598, 44.932800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244656, 33.429474, 44.959957>,  <34.954765, 33.157600, 45.005219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244656, 33.429474, 44.959957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323555, 0.190708, -0.926792,
		-0.608348, 0.708279, 0.358126,
		0.724724, 0.679685, -0.113150,
		35.462074, 33.633381, 44.926014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579243, 33.796650, 44.794346>,  <34.954765, 33.157600, 45.005219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579243, 33.796650, 44.794346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962063, 33.856636, 44.695091>,  <35.191753, 33.892628, 44.635536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962063, 33.856636, 44.695091>,  <34.579243, 33.796650, 44.794346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962063, 33.856636, 44.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288562, 0.409439, -0.865501,
		-0.028198, 0.899928, 0.435127,
		0.957046, 0.149966, -0.248139,
		35.249176, 33.901627, 44.620651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578209, 34.468456, 44.450966>,  <34.579243, 33.796650, 44.794346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578209, 34.468456, 44.450966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900852, 34.271793, 44.319725>,  <35.094440, 34.153793, 44.240982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900852, 34.271793, 44.319725>,  <34.578209, 34.468456, 44.450966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900852, 34.271793, 44.319725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261570, 0.200873, -0.944051,
		0.530058, 0.847302, 0.033422,
		0.806610, -0.491659, -0.328103,
		35.142834, 34.124294, 44.221294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892303, 34.822132, 43.941849>,  <34.578209, 34.468456, 44.450966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892303, 34.822132, 43.941849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090961, 34.486820, 43.851845>,  <35.210155, 34.285633, 43.797844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090961, 34.486820, 43.851845>,  <34.892303, 34.822132, 43.941849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090961, 34.486820, 43.851845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225768, 0.125550, -0.966057,
		0.838079, 0.530584, -0.126904,
		0.496641, -0.838283, -0.225009,
		35.239952, 34.235336, 43.784344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403648, 34.975689, 43.333973>,  <34.892303, 34.822132, 43.941849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403648, 34.975689, 43.333973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319466, 34.584660, 43.330696>,  <35.268955, 34.350044, 43.328728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319466, 34.584660, 43.330696>,  <35.403648, 34.975689, 43.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319466, 34.584660, 43.330696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125211, 0.035267, -0.991503,
		0.969552, -0.207641, -0.129824,
		-0.210456, -0.977569, -0.008195,
		35.256329, 34.291389, 43.328239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872448, 34.729126, 42.908348>,  <35.403648, 34.975689, 43.333973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872448, 34.729126, 42.908348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541721, 34.505554, 42.933537>,  <35.343285, 34.371410, 42.948650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541721, 34.505554, 42.933537>,  <35.872448, 34.729126, 42.908348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541721, 34.505554, 42.933537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063765, -0.018087, -0.997801,
		0.558844, -0.829015, -0.020686,
		-0.826818, -0.558934, 0.062970,
		35.293674, 34.337875, 42.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960957, 34.223942, 42.499519>,  <35.872448, 34.729126, 42.908348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960957, 34.223942, 42.499519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567368, 34.165668, 42.540665>,  <35.331215, 34.130707, 42.565350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567368, 34.165668, 42.540665>,  <35.960957, 34.223942, 42.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567368, 34.165668, 42.540665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059626, -0.274834, -0.959641,
		0.168071, -0.950391, 0.261742,
		-0.983970, -0.145681, 0.102859,
		35.272175, 34.121964, 42.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680199, 33.611420, 42.025757>,  <35.960957, 34.223942, 42.499519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680199, 33.611420, 42.025757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307587, 33.732220, 42.106804>,  <35.084019, 33.804699, 42.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307587, 33.732220, 42.106804>,  <35.680199, 33.611420, 42.025757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307587, 33.732220, 42.106804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170517, 0.129403, -0.976821,
		-0.321221, -0.944484, -0.069046,
		-0.931526, 0.302002, 0.202618,
		35.028130, 33.822819, 42.167591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149132, 33.258709, 41.649910>,  <35.680199, 33.611420, 42.025757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149132, 33.258709, 41.649910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941147, 33.587006, 41.744591>,  <34.816357, 33.783985, 41.801399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941147, 33.587006, 41.744591>,  <35.149132, 33.258709, 41.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941147, 33.587006, 41.744591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262132, 0.110416, -0.958694,
		-0.812976, -0.560527, 0.157732,
		-0.519958, 0.820743, 0.236698,
		34.785160, 33.833229, 41.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440365, 33.129570, 41.314342>,  <35.149132, 33.258709, 41.649910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440365, 33.129570, 41.314342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521751, 33.517506, 41.368015>,  <34.570583, 33.750267, 41.400219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521751, 33.517506, 41.368015>,  <34.440365, 33.129570, 41.314342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521751, 33.517506, 41.368015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324627, 0.196123, -0.925285,
		-0.923699, 0.144702, 0.354741,
		0.203464, 0.969844, 0.134184,
		34.582790, 33.808460, 41.408272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834812, 33.372417, 41.092793>,  <34.440365, 33.129570, 41.314342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834812, 33.372417, 41.092793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097168, 33.672966, 41.063816>,  <34.254581, 33.853294, 41.046429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097168, 33.672966, 41.063816>,  <33.834812, 33.372417, 41.092793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097168, 33.672966, 41.063816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331821, 0.200790, -0.921726,
		-0.678015, 0.628587, 0.381018,
		0.655890, 0.751373, -0.072440,
		34.293934, 33.898376, 41.042084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477901, 33.951530, 40.736893>,  <33.834812, 33.372417, 41.092793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477901, 33.951530, 40.736893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867985, 34.036816, 40.713177>,  <34.102036, 34.087986, 40.698948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867985, 34.036816, 40.713177>,  <33.477901, 33.951530, 40.736893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867985, 34.036816, 40.713177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081698, 0.097868, -0.991840,
		-0.205673, 0.972091, 0.112860,
		0.975205, 0.213215, -0.059289,
		34.160545, 34.100780, 40.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510067, 34.572865, 40.296242>,  <33.477901, 33.951530, 40.736893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510067, 34.572865, 40.296242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878227, 34.418476, 40.271282>,  <34.099121, 34.325844, 40.256306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878227, 34.418476, 40.271282>,  <33.510067, 34.572865, 40.296242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878227, 34.418476, 40.271282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066408, 0.002953, -0.997788,
		0.385305, 0.922505, -0.022914,
		0.920397, -0.385974, -0.062399,
		34.154346, 34.302685, 40.252563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905937, 35.083363, 39.760963>,  <33.510067, 34.572865, 40.296242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905937, 35.083363, 39.760963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 34.752705, 39.775928>,  <34.265282, 34.554310, 39.784908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 34.752705, 39.775928>,  <33.905937, 35.083363, 39.760963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130527, 34.752705, 39.775928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005562, -0.048984, -0.998784,
		0.827476, 0.560583, -0.032101,
		0.561474, -0.826648, 0.037415,
		34.298969, 34.504711, 39.787151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480473, 35.213882, 39.309700>,  <33.905937, 35.083363, 39.760963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480473, 35.213882, 39.309700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411736, 34.821011, 39.340126>,  <34.370491, 34.585285, 39.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411736, 34.821011, 39.340126>,  <34.480473, 35.213882, 39.309700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411736, 34.821011, 39.340126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048503, -0.085555, -0.995152,
		0.983929, -0.167324, 0.062341,
		-0.171847, -0.982183, 0.076064,
		34.360180, 34.526356, 39.362946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962608, 34.991882, 38.839909>,  <34.480473, 35.213882, 39.309700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962608, 34.991882, 38.839909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681644, 34.712425, 38.894348>,  <34.513065, 34.544750, 38.927013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681644, 34.712425, 38.894348>,  <34.962608, 34.991882, 38.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681644, 34.712425, 38.894348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072255, -0.120238, -0.990112,
		0.708097, -0.705298, 0.033976,
		-0.702409, -0.698640, 0.136101,
		34.470921, 34.502834, 38.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219040, 34.495506, 38.351749>,  <34.962608, 34.991882, 38.839909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219040, 34.495506, 38.351749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829842, 34.431587, 38.418373>,  <34.596321, 34.393234, 38.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829842, 34.431587, 38.418373>,  <35.219040, 34.495506, 38.351749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829842, 34.431587, 38.418373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165800, -0.018155, -0.985992,
		0.160585, -0.986982, -0.008830,
		-0.972997, -0.159799, 0.166557,
		34.537941, 34.383648, 38.468342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608360, 34.158344, 38.780396>,  <35.219040, 34.495506, 38.351749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608360, 34.158344, 38.780396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770775, 33.826637, 38.626804>,  <35.868225, 33.627613, 38.534649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770775, 33.826637, 38.626804>,  <35.608360, 34.158344, 38.780396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770775, 33.826637, 38.626804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626908, -0.052961, 0.777292,
		-0.664922, -0.556330, 0.498373,
		0.406036, -0.829272, -0.383982,
		35.892586, 33.577854, 38.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578110, 33.593925, 39.268814>,  <35.608360, 34.158344, 38.780396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578110, 33.593925, 39.268814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880165, 33.583286, 39.006805>,  <36.061398, 33.576904, 38.849602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880165, 33.583286, 39.006805>,  <35.578110, 33.593925, 39.268814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880165, 33.583286, 39.006805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642804, -0.166129, 0.747799,
		-0.128701, -0.985746, -0.108360,
		0.755142, -0.026588, -0.655022,
		36.106709, 33.575306, 38.810299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000210, 32.993725, 39.440674>,  <35.578110, 33.593925, 39.268814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000210, 32.993725, 39.440674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215534, 33.253120, 39.225388>,  <36.344730, 33.408756, 39.096214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215534, 33.253120, 39.225388>,  <36.000210, 32.993725, 39.440674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215534, 33.253120, 39.225388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789415, -0.164444, 0.591424,
		0.295027, -0.743248, -0.600451,
		0.538315, 0.648491, -0.538216,
		36.377029, 33.447666, 39.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710854, 32.716366, 39.371490>,  <36.000210, 32.993725, 39.440674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710854, 32.716366, 39.371490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804176, 33.092197, 39.271278>,  <36.860168, 33.317696, 39.211151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804176, 33.092197, 39.271278>,  <36.710854, 32.716366, 39.371490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804176, 33.092197, 39.271278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758768, -0.014773, 0.651193,
		0.608145, -0.342019, -0.716368,
		0.233303, 0.939577, -0.250529,
		36.874168, 33.374069, 39.196121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483982, 32.774223, 39.293373>,  <36.710854, 32.716366, 39.371490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483982, 32.774223, 39.293373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387730, 33.159794, 39.338890>,  <37.329979, 33.391136, 39.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387730, 33.159794, 39.338890>,  <37.483982, 32.774223, 39.293373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387730, 33.159794, 39.338890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580676, 0.049027, 0.812657,
		0.777760, 0.261627, -0.571525,
		-0.240633, 0.963923, 0.113789,
		37.315540, 33.448971, 39.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153091, 33.117474, 39.458759>,  <37.483982, 32.774223, 39.293373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153091, 33.117474, 39.458759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855076, 33.343006, 39.601318>,  <37.676266, 33.478325, 39.686852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855076, 33.343006, 39.601318>,  <38.153091, 33.117474, 39.458759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855076, 33.343006, 39.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498656, 0.115939, 0.859011,
		0.443014, 0.817714, -0.367535,
		-0.745037, 0.563827, 0.356396,
		37.631565, 33.512154, 39.708237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433323, 33.757553, 39.915745>,  <38.153091, 33.117474, 39.458759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433323, 33.757553, 39.915745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053635, 33.758003, 40.041592>,  <37.825821, 33.758274, 40.117100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053635, 33.758003, 40.041592>,  <38.433323, 33.757553, 39.915745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053635, 33.758003, 40.041592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299735, 0.307196, 0.903210,
		-0.095638, 0.951645, -0.291932,
		-0.949217, 0.001121, 0.314621,
		37.768871, 33.758339, 40.135979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271431, 34.411045, 40.242249>,  <38.433323, 33.757553, 39.915745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271431, 34.411045, 40.242249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021458, 34.130920, 40.380249>,  <37.871471, 33.962845, 40.463047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021458, 34.130920, 40.380249>,  <38.271431, 34.411045, 40.242249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021458, 34.130920, 40.380249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280527, 0.210958, 0.936377,
		-0.728532, 0.681956, 0.064620,
		-0.624936, -0.700309, 0.344997,
		37.833977, 33.920826, 40.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901844, 34.727398, 40.776676>,  <38.271431, 34.411045, 40.242249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901844, 34.727398, 40.776676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887016, 34.336109, 40.858364>,  <37.878120, 34.101334, 40.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887016, 34.336109, 40.858364>,  <37.901844, 34.727398, 40.776676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887016, 34.336109, 40.858364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189226, 0.193789, 0.962621,
		-0.981234, 0.074326, 0.177922,
		-0.037068, -0.978224, 0.204216,
		37.875896, 34.042641, 40.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750267, 34.727688, 41.428787>,  <37.901844, 34.727398, 40.776676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750267, 34.727688, 41.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872482, 34.349678, 41.382179>,  <37.945812, 34.122871, 41.354214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872482, 34.349678, 41.382179>,  <37.750267, 34.727688, 41.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872482, 34.349678, 41.382179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280379, -0.027651, 0.959491,
		-0.909964, -0.325828, 0.256517,
		0.305536, -0.945025, -0.116516,
		37.964142, 34.066170, 41.347225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364380, 34.386375, 41.907772>,  <37.750267, 34.727688, 41.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364380, 34.386375, 41.907772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679821, 34.158939, 41.814125>,  <37.869087, 34.022480, 41.757935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679821, 34.158939, 41.814125>,  <37.364380, 34.386375, 41.907772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679821, 34.158939, 41.814125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196907, -0.127186, 0.972138,
		-0.582523, -0.812730, 0.011660,
		0.788603, -0.568589, -0.234121,
		37.916401, 33.988361, 41.743889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278294, 33.688122, 42.123379>,  <37.364380, 34.386375, 41.907772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278294, 33.688122, 42.123379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671970, 33.743084, 42.078671>,  <37.908176, 33.776062, 42.051846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671970, 33.743084, 42.078671>,  <37.278294, 33.688122, 42.123379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671970, 33.743084, 42.078671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132100, -0.149022, 0.979970,
		0.118002, -0.979240, -0.164818,
		0.984188, 0.137411, -0.111772,
		37.967228, 33.784306, 42.045139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585190, 33.281334, 42.625599>,  <37.278294, 33.688122, 42.123379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585190, 33.281334, 42.625599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908749, 33.492023, 42.521099>,  <38.102882, 33.618439, 42.458397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908749, 33.492023, 42.521099>,  <37.585190, 33.281334, 42.625599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908749, 33.492023, 42.521099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377961, -0.125469, 0.917280,
		0.450375, -0.840725, -0.300573,
		0.808893, 0.526725, -0.261253,
		38.151417, 33.650040, 42.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119164, 32.856140, 42.790436>,  <37.585190, 33.281334, 42.625599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119164, 32.856140, 42.790436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236763, 33.237850, 42.768784>,  <38.307323, 33.466877, 42.755791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236763, 33.237850, 42.768784>,  <38.119164, 32.856140, 42.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236763, 33.237850, 42.768784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317616, -0.044121, 0.947193,
		0.901490, -0.295669, -0.316063,
		0.294001, 0.954271, -0.054134,
		38.324963, 33.524132, 42.752544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582127, 32.809067, 43.234013>,  <38.119164, 32.856140, 42.790436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582127, 32.809067, 43.234013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518810, 33.201870, 43.192806>,  <38.480820, 33.437550, 43.168083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518810, 33.201870, 43.192806>,  <38.582127, 32.809067, 43.234013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518810, 33.201870, 43.192806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477927, 0.167492, 0.862283,
		0.864020, 0.087256, -0.495838,
		-0.158288, 0.982005, -0.103014,
		38.471325, 33.496471, 43.161903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175163, 33.153961, 43.452457>,  <38.582127, 32.809067, 43.234013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175163, 33.153961, 43.452457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886909, 33.428692, 43.490318>,  <38.713959, 33.593529, 43.513035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886909, 33.428692, 43.490318>,  <39.175163, 33.153961, 43.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886909, 33.428692, 43.490318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163415, 0.035594, 0.985915,
		0.673783, 0.725950, -0.137888,
		-0.720633, 0.686826, 0.094649,
		38.670719, 33.634739, 43.518711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453506, 33.618649, 43.858051>,  <39.175163, 33.153961, 43.452457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453506, 33.618649, 43.858051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062241, 33.698372, 43.881622>,  <38.827480, 33.746204, 43.895767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062241, 33.698372, 43.881622>,  <39.453506, 33.618649, 43.858051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062241, 33.698372, 43.881622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042962, -0.083519, 0.995580,
		0.203345, 0.976372, 0.073132,
		-0.978164, 0.199305, 0.058930,
		38.768791, 33.758163, 43.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428131, 34.146721, 44.275826>,  <39.453506, 33.618649, 43.858051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428131, 34.146721, 44.275826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067131, 33.975388, 44.293831>,  <38.850533, 33.872589, 44.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067131, 33.975388, 44.293831>,  <39.428131, 34.146721, 44.275826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067131, 33.975388, 44.293831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093033, -0.091832, 0.991419,
		-0.420525, 0.898942, 0.122727,
		-0.902499, -0.428334, 0.045013,
		38.796383, 33.846886, 44.307335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056686, 34.590973, 44.724739>,  <39.428131, 34.146721, 44.275826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056686, 34.590973, 44.724739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884205, 34.230076, 44.726692>,  <38.780716, 34.013538, 44.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884205, 34.230076, 44.726692>,  <39.056686, 34.590973, 44.724739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884205, 34.230076, 44.726692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013062, -0.000831, 0.999914,
		-0.902160, 0.431230, 0.012144,
		-0.431204, -0.902241, 0.004883,
		38.754845, 33.959404, 44.728157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771099, 34.522751, 45.279949>,  <39.056686, 34.590973, 44.724739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771099, 34.522751, 45.279949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735130, 34.131023, 45.207462>,  <38.713551, 33.895985, 45.163971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735130, 34.131023, 45.207462>,  <38.771099, 34.522751, 45.279949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735130, 34.131023, 45.207462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062363, -0.176062, 0.982402,
		-0.993994, 0.099640, -0.045242,
		-0.089922, -0.979323, -0.181218,
		38.708153, 33.837227, 45.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179333, 34.437916, 45.602352>,  <38.771099, 34.522751, 45.279949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179333, 34.437916, 45.602352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369270, 34.088737, 45.557648>,  <38.483234, 33.879230, 45.530827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369270, 34.088737, 45.557648>,  <38.179333, 34.437916, 45.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369270, 34.088737, 45.557648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073153, -0.165704, 0.983459,
		-0.877022, -0.458818, -0.142542,
		0.474849, -0.872942, -0.111762,
		38.511726, 33.826855, 45.524120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697945, 33.944916, 45.883896>,  <38.179333, 34.437916, 45.602352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697945, 33.944916, 45.883896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054554, 33.763943, 45.875000>,  <38.268520, 33.655357, 45.869663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054554, 33.763943, 45.875000>,  <37.697945, 33.944916, 45.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054554, 33.763943, 45.875000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089169, -0.223428, 0.970633,
		-0.444118, -0.863356, -0.239534,
		0.891520, -0.452435, -0.022244,
		38.322010, 33.628212, 45.868328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560825, 33.356182, 46.202908>,  <37.697945, 33.944916, 45.883896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560825, 33.356182, 46.202908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950405, 33.443710, 46.226685>,  <38.184155, 33.496227, 46.240952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950405, 33.443710, 46.226685>,  <37.560825, 33.356182, 46.202908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950405, 33.443710, 46.226685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021409, -0.172222, 0.984826,
		0.225737, -0.960446, -0.163051,
		0.973953, 0.218821, 0.059439,
		38.242592, 33.509357, 46.244514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824329, 32.778770, 46.648972>,  <37.560825, 33.356182, 46.202908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824329, 32.778770, 46.648972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072971, 33.091282, 46.671627>,  <38.222157, 33.278790, 46.685219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072971, 33.091282, 46.671627>,  <37.824329, 32.778770, 46.648972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072971, 33.091282, 46.671627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070402, -0.127728, 0.989308,
		0.780162, -0.610970, -0.134400,
		0.621603, 0.781282, 0.056634,
		38.259453, 33.325668, 46.688618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515121, 32.582283, 46.970070>,  <37.824329, 32.778770, 46.648972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515121, 32.582283, 46.970070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509548, 32.981491, 46.994610>,  <38.506207, 33.221016, 47.009335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509548, 32.981491, 46.994610>,  <38.515121, 32.582283, 46.970070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509548, 32.981491, 46.994610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395452, -0.050857, 0.917077,
		0.918381, 0.037038, -0.393961,
		-0.013931, 0.998019, 0.061353,
		38.505367, 33.280895, 47.013016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115128, 32.764717, 47.381233>,  <38.515121, 32.582283, 46.970070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115128, 32.764717, 47.381233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886383, 33.091854, 47.406902>,  <38.749138, 33.288136, 47.422302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886383, 33.091854, 47.406902>,  <39.115128, 32.764717, 47.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886383, 33.091854, 47.406902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287667, 0.126658, 0.949318,
		0.768262, 0.561335, -0.307696,
		-0.571857, 0.817839, 0.064171,
		38.714825, 33.337208, 47.426155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523849, 33.268845, 47.663830>,  <39.115128, 32.764717, 47.381233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523849, 33.268845, 47.663830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151295, 33.393559, 47.738995>,  <38.927761, 33.468388, 47.784092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151295, 33.393559, 47.738995>,  <39.523849, 33.268845, 47.663830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151295, 33.393559, 47.738995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286333, 0.308691, 0.907041,
		0.224799, 0.898609, -0.376785,
		-0.931385, 0.311788, 0.187908,
		38.871880, 33.487095, 47.795368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560932, 33.856689, 48.094498>,  <39.523849, 33.268845, 47.663830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560932, 33.856689, 48.094498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185535, 33.728992, 48.147133>,  <38.960297, 33.652374, 48.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185535, 33.728992, 48.147133>,  <39.560932, 33.856689, 48.094498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185535, 33.728992, 48.147133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067106, 0.205200, 0.976417,
		-0.338720, 0.925189, -0.171156,
		-0.938491, -0.319246, 0.131591,
		38.903988, 33.633217, 48.186611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127499, 34.453808, 48.517479>,  <39.560932, 33.856689, 48.094498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127499, 34.453808, 48.517479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952690, 34.097591, 48.567993>,  <38.847805, 33.883862, 48.598301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952690, 34.097591, 48.567993>,  <39.127499, 34.453808, 48.517479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952690, 34.097591, 48.567993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186955, 0.227270, 0.955718,
		-0.879807, 0.394059, -0.265812,
		-0.437021, -0.890542, 0.126282,
		38.821583, 33.830429, 48.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473038, 34.571182, 48.912247>,  <39.127499, 34.453808, 48.517479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473038, 34.571182, 48.912247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543514, 34.179665, 48.954056>,  <38.585800, 33.944756, 48.979141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543514, 34.179665, 48.954056>,  <38.473038, 34.571182, 48.912247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543514, 34.179665, 48.954056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059128, 0.095466, 0.993675,
		-0.982579, -0.181252, -0.041054,
		0.176187, -0.978792, 0.104520,
		38.596371, 33.886028, 48.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920414, 34.290951, 49.316616>,  <38.473038, 34.571182, 48.912247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920414, 34.290951, 49.316616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232258, 34.042683, 49.350044>,  <38.419365, 33.893723, 49.370102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232258, 34.042683, 49.350044>,  <37.920414, 34.290951, 49.316616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232258, 34.042683, 49.350044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019095, 0.109815, 0.993769,
		-0.625978, -0.776344, 0.073761,
		0.779607, -0.620669, 0.083566,
		38.466141, 33.856483, 49.375114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725761, 33.982056, 49.860443>,  <37.920414, 34.290951, 49.316616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725761, 33.982056, 49.860443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112366, 33.886303, 49.823452>,  <38.344330, 33.828850, 49.801258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112366, 33.886303, 49.823452>,  <37.725761, 33.982056, 49.860443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112366, 33.886303, 49.823452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098139, 0.011824, 0.995102,
		-0.237121, -0.970852, 0.034921,
		0.966510, -0.239387, -0.092475,
		38.402317, 33.814487, 49.795708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871449, 33.443302, 50.357594>,  <37.725761, 33.982056, 49.860443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871449, 33.443302, 50.357594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208103, 33.643551, 50.276569>,  <38.410095, 33.763702, 50.227955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208103, 33.643551, 50.276569>,  <37.871449, 33.443302, 50.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208103, 33.643551, 50.276569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127482, 0.180300, 0.975316,
		0.524789, -0.846679, 0.087926,
		0.841632, 0.500626, -0.202556,
		38.460594, 33.793739, 50.215801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409275, 33.179638, 50.849148>,  <37.871449, 33.443302, 50.357594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409275, 33.179638, 50.849148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561394, 33.523968, 50.713879>,  <38.652664, 33.730564, 50.632717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561394, 33.523968, 50.713879>,  <38.409275, 33.179638, 50.849148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561394, 33.523968, 50.713879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213225, 0.274195, 0.937738,
		0.899951, -0.428724, -0.079274,
		0.380294, 0.860821, -0.338176,
		38.675484, 33.782215, 50.612427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101711, 33.229519, 51.145508>,  <38.409275, 33.179638, 50.849148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101711, 33.229519, 51.145508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001144, 33.602772, 51.042709>,  <38.940804, 33.826725, 50.981030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001144, 33.602772, 51.042709>,  <39.101711, 33.229519, 51.145508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001144, 33.602772, 51.042709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342536, 0.334126, 0.878083,
		0.905238, 0.132739, -0.403638,
		-0.251421, 0.933135, -0.256996,
		38.925716, 33.882713, 50.965611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613384, 33.654888, 51.524055>,  <39.101711, 33.229519, 51.145508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613384, 33.654888, 51.524055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333412, 33.921139, 51.420486>,  <39.165428, 34.080887, 51.358345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333412, 33.921139, 51.420486>,  <39.613384, 33.654888, 51.524055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333412, 33.921139, 51.420486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308401, 0.608667, 0.731036,
		0.644193, 0.431823, -0.631304,
		-0.699932, 0.665622, -0.258925,
		39.123432, 34.120827, 51.342808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895943, 34.292549, 51.557762>,  <39.613384, 33.654888, 51.524055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895943, 34.292549, 51.557762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503052, 34.365086, 51.577141>,  <39.267319, 34.408607, 51.588768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503052, 34.365086, 51.577141>,  <39.895943, 34.292549, 51.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503052, 34.365086, 51.577141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156918, 0.651689, 0.742077,
		0.102994, 0.736490, -0.668561,
		-0.982227, 0.181339, 0.048449,
		39.208385, 34.419487, 51.591675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849895, 35.052124, 51.521233>,  <39.895943, 34.292549, 51.557762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849895, 35.052124, 51.521233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509403, 34.934952, 51.695404>,  <39.305107, 34.864651, 51.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509403, 34.934952, 51.695404>,  <39.849895, 35.052124, 51.521233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509403, 34.934952, 51.695404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196133, 0.592021, 0.781693,
		-0.486764, 0.750803, -0.446493,
		-0.851230, -0.292928, 0.435431,
		39.254036, 34.847073, 51.826035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538349, 35.627449, 51.804729>,  <39.849895, 35.052124, 51.521233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538349, 35.627449, 51.804729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367153, 35.322323, 51.998611>,  <39.264435, 35.139248, 52.114941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367153, 35.322323, 51.998611>,  <39.538349, 35.627449, 51.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367153, 35.322323, 51.998611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238749, 0.421834, 0.874674,
		-0.871679, 0.490076, 0.001580,
		-0.427990, -0.762812, 0.484709,
		39.238758, 35.093479, 52.144024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763744, 35.852928, 52.565105>,  <39.538349, 35.627449, 51.804729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763744, 35.852928, 52.565105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886166, 36.231998, 52.601437>,  <39.959618, 36.459438, 52.623234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886166, 36.231998, 52.601437>,  <39.763744, 35.852928, 52.565105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886166, 36.231998, 52.601437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181111, 0.151620, -0.971705,
		-0.934629, 0.280942, 0.218037,
		0.306051, 0.947672, 0.090827,
		39.977982, 36.516300, 52.628685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203522, 36.302029, 52.295250>,  <39.763744, 35.852928, 52.565105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203522, 36.302029, 52.295250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521557, 36.544579, 52.290482>,  <39.712379, 36.690109, 52.287621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521557, 36.544579, 52.290482>,  <39.203522, 36.302029, 52.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521557, 36.544579, 52.290482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323025, 0.406749, -0.854524,
		-0.513312, 0.683274, 0.519276,
		0.795088, 0.606376, -0.011925,
		39.760082, 36.726490, 52.286903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014263, 36.944065, 52.146259>,  <39.203522, 36.302029, 52.295250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014263, 36.944065, 52.146259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398796, 36.907749, 52.042267>,  <39.629517, 36.885960, 51.979870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398796, 36.907749, 52.042267>,  <39.014263, 36.944065, 52.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398796, 36.907749, 52.042267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216296, 0.335398, -0.916910,
		0.170441, 0.937692, 0.302793,
		0.961336, -0.090786, -0.259984,
		39.687199, 36.880512, 51.964272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057232, 37.395424, 51.668217>,  <39.014263, 36.944065, 52.146259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057232, 37.395424, 51.668217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408279, 37.208775, 51.624313>,  <39.618908, 37.096783, 51.597973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408279, 37.208775, 51.624313>,  <39.057232, 37.395424, 51.668217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408279, 37.208775, 51.624313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010255, 0.247191, -0.968913,
		0.479252, 0.849209, 0.221724,
		0.877617, -0.466627, -0.109758,
		39.671566, 37.068787, 51.591385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553249, 37.873791, 51.391624>,  <39.057232, 37.395424, 51.668217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553249, 37.873791, 51.391624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666035, 37.502716, 51.293724>,  <39.733704, 37.280071, 51.234985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666035, 37.502716, 51.293724>,  <39.553249, 37.873791, 51.391624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666035, 37.502716, 51.293724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146868, 0.293825, -0.944509,
		0.948118, 0.230369, 0.219094,
		0.281961, -0.927684, -0.244747,
		39.750622, 37.224411, 51.220299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116585, 37.886787, 50.884182>,  <39.553249, 37.873791, 51.391624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116585, 37.886787, 50.884182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993435, 37.511929, 50.818485>,  <39.919544, 37.287014, 50.779068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993435, 37.511929, 50.818485>,  <40.116585, 37.886787, 50.884182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993435, 37.511929, 50.818485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080601, 0.146311, -0.985950,
		0.948008, -0.316783, 0.030490,
		-0.307871, -0.937146, -0.164237,
		39.901073, 37.230785, 50.769215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535130, 37.675228, 50.312675>,  <40.116585, 37.886787, 50.884182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535130, 37.675228, 50.312675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225597, 37.422741, 50.333618>,  <40.039879, 37.271248, 50.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225597, 37.422741, 50.333618>,  <40.535130, 37.675228, 50.312675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225597, 37.422741, 50.333618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023145, -0.054419, -0.998250,
		0.632964, -0.773692, 0.027502,
		-0.773835, -0.631220, 0.052353,
		39.993446, 37.233376, 50.349323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681473, 37.196678, 49.713356>,  <40.535130, 37.675228, 50.312675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681473, 37.196678, 49.713356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293690, 37.162189, 49.805202>,  <40.061020, 37.141495, 49.860310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293690, 37.162189, 49.805202>,  <40.681473, 37.196678, 49.713356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293690, 37.162189, 49.805202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235247, 0.061945, -0.969960,
		0.069450, -0.994345, -0.080346,
		-0.969451, -0.086265, 0.229615,
		40.002853, 37.136322, 49.874088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461258, 36.731358, 49.351082>,  <40.681473, 37.196678, 49.713356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461258, 36.731358, 49.351082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118450, 36.919807, 49.434563>,  <39.912766, 37.032875, 49.484650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118450, 36.919807, 49.434563>,  <40.461258, 36.731358, 49.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118450, 36.919807, 49.434563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189830, 0.087869, -0.977877,
		-0.479038, -0.877680, 0.014127,
		-0.857022, 0.471122, 0.208702,
		39.861343, 37.061146, 49.497173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927044, 36.440083, 48.983070>,  <40.461258, 36.731358, 49.351082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927044, 36.440083, 48.983070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761669, 36.795292, 49.063560>,  <39.662445, 37.008415, 49.111855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761669, 36.795292, 49.063560>,  <39.927044, 36.440083, 48.983070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761669, 36.795292, 49.063560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259267, 0.097032, -0.960919,
		-0.872839, -0.449453, 0.190117,
		-0.413440, 0.888019, 0.201221,
		39.637638, 37.061699, 49.123928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341568, 36.442787, 48.670662>,  <39.927044, 36.440083, 48.983070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341568, 36.442787, 48.670662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390591, 36.839550, 48.683971>,  <39.420006, 37.077606, 48.691959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390591, 36.839550, 48.683971>,  <39.341568, 36.442787, 48.670662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390591, 36.839550, 48.683971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260568, 0.064513, -0.963298,
		-0.957645, 0.109388, 0.266364,
		0.122557, 0.991904, 0.033278,
		39.427357, 37.137119, 48.693954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787861, 36.746964, 48.223167>,  <39.341568, 36.442787, 48.670662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787861, 36.746964, 48.223167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132202, 36.948551, 48.251282>,  <39.338806, 37.069504, 48.268150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132202, 36.948551, 48.251282>,  <38.787861, 36.746964, 48.223167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132202, 36.948551, 48.251282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036180, 0.077158, -0.996362,
		-0.507558, 0.860269, 0.048189,
		0.860858, 0.503968, 0.070287,
		39.390461, 37.099743, 48.272369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711971, 37.412834, 47.844097>,  <38.787861, 36.746964, 48.223167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711971, 37.412834, 47.844097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066078, 37.227329, 47.858089>,  <39.278542, 37.116024, 47.866486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066078, 37.227329, 47.858089>,  <38.711971, 37.412834, 47.844097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066078, 37.227329, 47.858089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047187, -0.164381, -0.985268,
		0.462683, 0.870575, -0.167404,
		0.885267, -0.463766, 0.034976,
		39.331657, 37.088200, 47.868584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935379, 37.592953, 47.257420>,  <38.711971, 37.412834, 47.844097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935379, 37.592953, 47.257420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186222, 37.295692, 47.350765>,  <39.336727, 37.117336, 47.406773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186222, 37.295692, 47.350765>,  <38.935379, 37.592953, 47.257420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186222, 37.295692, 47.350765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362582, 0.013340, -0.931856,
		0.689398, 0.668990, 0.277819,
		0.627108, -0.743152, 0.233367,
		39.374355, 37.072746, 47.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528069, 37.833004, 46.834076>,  <38.935379, 37.592953, 47.257420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528069, 37.833004, 46.834076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572113, 37.446033, 46.925262>,  <39.598541, 37.213852, 46.979973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572113, 37.446033, 46.925262>,  <39.528069, 37.833004, 46.834076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572113, 37.446033, 46.925262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388660, -0.169185, -0.905715,
		0.914778, 0.188331, 0.357369,
		0.110112, -0.967423, 0.227964,
		39.605148, 37.155807, 46.993652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226498, 37.626205, 46.637783>,  <39.528069, 37.833004, 46.834076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226498, 37.626205, 46.637783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979439, 37.311626, 46.636620>,  <39.831203, 37.122879, 46.635921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979439, 37.311626, 46.636620>,  <40.226498, 37.626205, 46.637783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979439, 37.311626, 46.636620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271381, -0.209660, -0.939359,
		0.738147, -0.580984, 0.342924,
		-0.617650, -0.786448, -0.002908,
		39.794144, 37.075691, 46.635746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617741, 37.061462, 46.442337>,  <40.226498, 37.626205, 46.637783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617741, 37.061462, 46.442337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265976, 36.883141, 46.375519>,  <40.054916, 36.776150, 46.335430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265976, 36.883141, 46.375519>,  <40.617741, 37.061462, 46.442337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265976, 36.883141, 46.375519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331289, -0.321076, -0.887219,
		0.341889, -0.835567, 0.430046,
		-0.879408, -0.445800, -0.167041,
		40.002151, 36.749401, 46.325405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752258, 36.370213, 46.240986>,  <40.617741, 37.061462, 46.442337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752258, 36.370213, 46.240986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391060, 36.470425, 46.101364>,  <40.174343, 36.530552, 46.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391060, 36.470425, 46.101364>,  <40.752258, 36.370213, 46.240986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391060, 36.470425, 46.101364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236113, -0.389388, -0.890297,
		-0.358954, -0.886350, 0.292465,
		-0.902996, 0.250521, -0.349051,
		40.120163, 36.545582, 45.996647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564793, 35.676731, 45.854198>,  <40.752258, 36.370213, 46.240986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564793, 35.676731, 45.854198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312325, 35.961819, 45.731789>,  <40.160843, 36.132870, 45.658340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312325, 35.961819, 45.731789>,  <40.564793, 35.676731, 45.854198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312325, 35.961819, 45.731789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073950, -0.448045, -0.890947,
		-0.772110, -0.539710, 0.335499,
		-0.631172, 0.712719, -0.306028,
		40.122974, 36.175632, 45.639980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128803, 35.295574, 45.451176>,  <40.564793, 35.676731, 45.854198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128803, 35.295574, 45.451176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053024, 35.669117, 45.329838>,  <40.007557, 35.893242, 45.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053024, 35.669117, 45.329838>,  <40.128803, 35.295574, 45.451176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053024, 35.669117, 45.329838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040825, -0.301182, -0.952692,
		-0.981042, -0.192868, 0.018933,
		-0.189446, 0.933858, -0.303346,
		39.996189, 35.949276, 45.238834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443558, 35.404148, 45.061893>,  <40.128803, 35.295574, 45.451176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443558, 35.404148, 45.061893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680870, 35.708000, 44.955322>,  <39.823257, 35.890312, 44.891380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680870, 35.708000, 44.955322>,  <39.443558, 35.404148, 45.061893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680870, 35.708000, 44.955322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006364, -0.326527, -0.945166,
		-0.804972, 0.562442, -0.188887,
		0.593278, 0.759631, -0.266425,
		39.858852, 35.935890, 44.875397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213123, 35.529297, 44.291702>,  <39.443558, 35.404148, 45.061893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213123, 35.529297, 44.291702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534073, 35.767231, 44.311157>,  <39.726643, 35.909992, 44.322830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534073, 35.767231, 44.311157>,  <39.213123, 35.529297, 44.291702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534073, 35.767231, 44.311157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036836, 0.031988, -0.998809,
		-0.595684, 0.803210, 0.003755,
		0.802374, 0.594836, 0.048642,
		39.774784, 35.945683, 44.325748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150166, 36.181038, 43.908157>,  <39.213123, 35.529297, 44.291702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150166, 36.181038, 43.908157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539135, 36.088161, 43.916931>,  <39.772518, 36.032436, 43.922195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539135, 36.088161, 43.916931>,  <39.150166, 36.181038, 43.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539135, 36.088161, 43.916931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041299, 0.078882, -0.996028,
		0.229540, 0.969466, 0.086296,
		0.972423, -0.232192, 0.021931,
		39.830860, 36.018505, 43.923512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396481, 36.572472, 43.458900>,  <39.150166, 36.181038, 43.908157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396481, 36.572472, 43.458900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695881, 36.312675, 43.512440>,  <39.875519, 36.156799, 43.544563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695881, 36.312675, 43.512440>,  <39.396481, 36.572472, 43.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695881, 36.312675, 43.512440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188458, 0.014821, -0.981969,
		0.635793, 0.760228, 0.133495,
		0.748499, -0.649487, 0.133848,
		39.920429, 36.117828, 43.552593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897339, 36.797615, 43.006947>,  <39.396481, 36.572472, 43.458900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897339, 36.797615, 43.006947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985081, 36.414295, 43.080204>,  <40.037727, 36.184303, 43.124157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985081, 36.414295, 43.080204>,  <39.897339, 36.797615, 43.006947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985081, 36.414295, 43.080204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265419, -0.122017, -0.956381,
		0.938848, 0.258398, 0.227586,
		0.219358, -0.958302, 0.183139,
		40.050888, 36.126804, 43.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583916, 36.657261, 42.778214>,  <39.897339, 36.797615, 43.006947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583916, 36.657261, 42.778214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400093, 36.302246, 42.791332>,  <40.289799, 36.089237, 42.799202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400093, 36.302246, 42.791332>,  <40.583916, 36.657261, 42.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400093, 36.302246, 42.791332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177078, -0.127747, -0.975871,
		0.870314, -0.442665, 0.215871,
		-0.459561, -0.887540, 0.032794,
		40.262226, 36.035984, 42.801170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960030, 36.286156, 42.402241>,  <40.583916, 36.657261, 42.778214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960030, 36.286156, 42.402241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615326, 36.083961, 42.419460>,  <40.408504, 35.962646, 42.429794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615326, 36.083961, 42.419460>,  <40.960030, 36.286156, 42.402241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615326, 36.083961, 42.419460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004311, -0.092159, -0.995735,
		0.507294, -0.857901, 0.081599,
		-0.861762, -0.505482, 0.043053,
		40.356796, 35.932316, 42.432377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093609, 35.728447, 42.032974>,  <40.960030, 36.286156, 42.402241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093609, 35.728447, 42.032974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696266, 35.771610, 42.017021>,  <40.457859, 35.797508, 42.007450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696266, 35.771610, 42.017021>,  <41.093609, 35.728447, 42.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696266, 35.771610, 42.017021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031851, -0.075131, -0.996665,
		-0.110547, -0.991318, 0.071196,
		-0.993361, 0.107911, -0.039880,
		40.398258, 35.803982, 42.005058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016293, 35.204285, 41.505836>,  <41.093609, 35.728447, 42.032974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016293, 35.204285, 41.505836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690346, 35.431309, 41.552933>,  <40.494778, 35.567524, 41.581188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690346, 35.431309, 41.552933>,  <41.016293, 35.204285, 41.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690346, 35.431309, 41.552933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080579, 0.090229, -0.992656,
		-0.574016, -0.818372, -0.027792,
		-0.814870, 0.567561, 0.117736,
		40.445885, 35.601578, 41.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576473, 35.039963, 40.904785>,  <41.016293, 35.204285, 41.505836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576473, 35.039963, 40.904785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435055, 35.388046, 41.042038>,  <40.350204, 35.596897, 41.124390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435055, 35.388046, 41.042038>,  <40.576473, 35.039963, 40.904785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435055, 35.388046, 41.042038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043438, 0.351154, -0.935310,
		-0.934409, -0.345576, -0.086348,
		-0.353542, 0.870212, 0.343133,
		40.328991, 35.649109, 41.144978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990540, 35.144375, 40.416809>,  <40.576473, 35.039963, 40.904785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990540, 35.144375, 40.416809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071152, 35.495312, 40.591011>,  <40.119518, 35.705872, 40.695530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071152, 35.495312, 40.591011>,  <39.990540, 35.144375, 40.416809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071152, 35.495312, 40.591011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118746, 0.419460, -0.899974,
		-0.972258, 0.233084, -0.019647,
		0.201528, 0.877340, 0.435501,
		40.131611, 35.758514, 40.721661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597198, 35.609875, 40.087368>,  <39.990540, 35.144375, 40.416809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597198, 35.609875, 40.087368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889725, 35.826519, 40.253178>,  <40.065243, 35.956505, 40.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889725, 35.826519, 40.253178>,  <39.597198, 35.609875, 40.087368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889725, 35.826519, 40.253178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100239, 0.515826, -0.850809,
		-0.674630, 0.663764, 0.322943,
		0.731318, 0.541609, 0.414527,
		40.109119, 35.989002, 40.377537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484112, 36.331402, 39.899277>,  <39.597198, 35.609875, 40.087368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484112, 36.331402, 39.899277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869358, 36.313919, 40.005482>,  <40.100506, 36.303429, 40.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869358, 36.313919, 40.005482>,  <39.484112, 36.331402, 39.899277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869358, 36.313919, 40.005482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259693, 0.409382, -0.874623,
		-0.070467, 0.911316, 0.405633,
		0.963117, -0.043708, 0.265510,
		40.158295, 36.300808, 40.085136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812515, 37.033466, 39.655331>,  <39.484112, 36.331402, 39.899277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812515, 37.033466, 39.655331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121143, 36.783188, 39.701248>,  <40.306320, 36.633018, 39.728798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121143, 36.783188, 39.701248>,  <39.812515, 37.033466, 39.655331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121143, 36.783188, 39.701248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441512, 0.396804, -0.804745,
		0.457979, 0.671600, 0.582416,
		0.771572, -0.625700, 0.114792,
		40.352615, 36.595478, 39.735687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411930, 37.457676, 39.622177>,  <39.812515, 37.033466, 39.655331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411930, 37.457676, 39.622177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501045, 37.083527, 39.512310>,  <40.554512, 36.859035, 39.446388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501045, 37.083527, 39.512310>,  <40.411930, 37.457676, 39.622177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501045, 37.083527, 39.512310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339423, 0.338545, -0.877599,
		0.913870, 0.102288, 0.392910,
		0.222786, -0.935374, -0.274667,
		40.567883, 36.802914, 39.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878021, 37.606079, 39.048634>,  <40.411930, 37.457676, 39.622177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878021, 37.606079, 39.048634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825439, 37.209751, 39.036049>,  <40.793888, 36.971954, 39.028500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825439, 37.209751, 39.036049>,  <40.878021, 37.606079, 39.048634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825439, 37.209751, 39.036049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141929, 0.012597, -0.989797,
		0.981109, -0.134582, 0.138970,
		-0.131458, -0.990822, -0.031460,
		40.786003, 36.912506, 39.026611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463177, 37.405834, 38.760166>,  <40.878021, 37.606079, 39.048634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463177, 37.405834, 38.760166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182831, 37.134552, 38.671776>,  <41.014622, 36.971783, 38.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182831, 37.134552, 38.671776>,  <41.463177, 37.405834, 38.760166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182831, 37.134552, 38.671776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281205, 0.021995, -0.959396,
		0.655524, -0.734547, 0.175298,
		-0.700866, -0.678201, -0.220976,
		40.972572, 36.931091, 38.605484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857899, 36.880840, 38.348206>,  <41.463177, 37.405834, 38.760166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857899, 36.880840, 38.348206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465996, 36.867264, 38.269295>,  <41.230854, 36.859119, 38.221947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465996, 36.867264, 38.269295>,  <41.857899, 36.880840, 38.348206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465996, 36.867264, 38.269295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193562, 0.090570, -0.976899,
		0.051019, -0.995312, -0.082169,
		-0.979761, -0.033935, -0.197275,
		41.172066, 36.857082, 38.210114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886909, 36.449905, 37.823032>,  <41.857899, 36.880840, 38.348206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886909, 36.449905, 37.823032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524788, 36.615253, 37.783943>,  <41.307514, 36.714462, 37.760490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524788, 36.615253, 37.783943>,  <41.886909, 36.449905, 37.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524788, 36.615253, 37.783943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120763, 0.029906, -0.992231,
		-0.407240, -0.910070, -0.076994,
		-0.905302, 0.413374, -0.097724,
		41.253197, 36.739265, 37.754627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438618, 36.075924, 37.275154>,  <41.886909, 36.449905, 37.823032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438618, 36.075924, 37.275154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377895, 36.470490, 37.300262>,  <41.341461, 36.707230, 37.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377895, 36.470490, 37.300262>,  <41.438618, 36.075924, 37.275154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377895, 36.470490, 37.300262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294460, 0.105755, -0.949794,
		-0.943530, -0.125698, -0.306514,
		-0.151802, 0.986416, 0.062770,
		41.332355, 36.766415, 37.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061543, 36.292686, 36.773144>,  <41.438618, 36.075924, 37.275154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061543, 36.292686, 36.773144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250332, 36.633995, 36.861839>,  <41.363605, 36.838779, 36.915058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250332, 36.633995, 36.861839>,  <41.061543, 36.292686, 36.773144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250332, 36.633995, 36.861839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232619, 0.122076, -0.964876,
		-0.850369, 0.506979, -0.140870,
		0.471975, 0.853270, 0.221743,
		41.391926, 36.889977, 36.928364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787251, 36.815285, 36.282295>,  <41.061543, 36.292686, 36.773144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787251, 36.815285, 36.282295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116917, 36.984886, 36.432480>,  <41.314716, 37.086647, 36.522591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116917, 36.984886, 36.432480>,  <40.787251, 36.815285, 36.282295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116917, 36.984886, 36.432480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278997, 0.272977, -0.920676,
		-0.492861, 0.863543, 0.106683,
		0.824165, 0.424001, 0.375466,
		41.364166, 37.112087, 36.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722450, 37.518116, 36.146080>,  <40.787251, 36.815285, 36.282295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722450, 37.518116, 36.146080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096340, 37.379677, 36.178337>,  <41.320675, 37.296616, 36.197689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096340, 37.379677, 36.178337>,  <40.722450, 37.518116, 36.146080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096340, 37.379677, 36.178337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192936, 0.303679, -0.933035,
		0.298429, 0.887693, 0.350631,
		0.934728, -0.346094, 0.080641,
		41.376759, 37.275848, 36.202530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297153, 38.022774, 36.199577>,  <40.722450, 37.518116, 36.146080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297153, 38.022774, 36.199577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393219, 37.677414, 36.022102>,  <41.450859, 37.470196, 35.915619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393219, 37.677414, 36.022102>,  <41.297153, 38.022774, 36.199577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393219, 37.677414, 36.022102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028605, 0.463158, -0.885814,
		0.970311, 0.200048, 0.135931,
		0.240163, -0.863404, -0.443685,
		41.465267, 37.418392, 35.888996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920410, 38.373653, 36.204662>,  <41.297153, 38.022774, 36.199577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920410, 38.373653, 36.204662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137012, 38.681633, 36.339684>,  <42.266975, 38.866421, 36.420696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137012, 38.681633, 36.339684>,  <41.920410, 38.373653, 36.204662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137012, 38.681633, 36.339684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698544, -0.188677, -0.690244,
		-0.467766, 0.609570, -0.640015,
		0.541508, 0.769951, 0.337555,
		42.299465, 38.912617, 36.440948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257736, 37.685440, 36.381119>,  <41.920410, 38.373653, 36.204662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257736, 37.685440, 36.381119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393375, 37.780739, 36.017086>,  <42.474758, 37.837917, 35.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393375, 37.780739, 36.017086>,  <42.257736, 37.685440, 36.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393375, 37.780739, 36.017086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509719, -0.766563, -0.390599,
		-0.790696, 0.596337, -0.138498,
		0.339096, 0.238250, -0.910083,
		42.495106, 37.852215, 35.744061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377811, 37.068691, 35.893154>,  <42.257736, 37.685440, 36.381119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377811, 37.068691, 35.893154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585663, 37.032249, 36.232964>,  <42.710373, 37.010384, 36.436848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585663, 37.032249, 36.232964>,  <42.377811, 37.068691, 35.893154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585663, 37.032249, 36.232964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790850, -0.324994, -0.518590,
		0.323334, 0.941318, -0.096827,
		0.519626, -0.091102, 0.849523,
		42.741550, 37.004917, 36.487820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010380, 36.871712, 35.563576>,  <42.377811, 37.068691, 35.893154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010380, 36.871712, 35.563576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309769, 36.651165, 35.710968>,  <43.489403, 36.518837, 35.799404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309769, 36.651165, 35.710968>,  <43.010380, 36.871712, 35.563576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309769, 36.651165, 35.710968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553798, -0.825342, -0.110080,
		0.364820, -0.121674, -0.923094,
		0.748474, -0.551367, 0.368484,
		43.534309, 36.485756, 35.821514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072720, 36.200764, 35.186935>,  <43.010380, 36.871712, 35.563576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072720, 36.200764, 35.186935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259811, 36.138023, 35.534874>,  <43.372066, 36.100380, 35.743637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259811, 36.138023, 35.534874>,  <43.072720, 36.200764, 35.186935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259811, 36.138023, 35.534874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504443, -0.855483, 0.116987,
		0.725787, -0.493504, -0.479256,
		0.467729, -0.156850, 0.869843,
		43.400131, 36.090969, 35.795826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234829, 35.536533, 35.144005>,  <43.072720, 36.200764, 35.186935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234829, 35.536533, 35.144005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270393, 35.609806, 35.535625>,  <43.291733, 35.653770, 35.770599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270393, 35.609806, 35.535625>,  <43.234829, 35.536533, 35.144005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270393, 35.609806, 35.535625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382299, -0.901383, 0.203365,
		0.919751, -0.392372, -0.010118,
		0.088915, 0.183177, 0.979051,
		43.297070, 35.664761, 35.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631283, 35.049820, 35.436321>,  <43.234829, 35.536533, 35.144005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631283, 35.049820, 35.436321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449230, 35.184830, 35.765911>,  <43.340000, 35.265835, 35.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449230, 35.184830, 35.765911>,  <43.631283, 35.049820, 35.436321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449230, 35.184830, 35.765911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334147, -0.922484, 0.193309,
		0.825349, -0.187348, 0.532634,
		-0.455131, 0.337525, 0.823974,
		43.312691, 35.286087, 36.013103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721981, 34.499809, 35.882561>,  <43.631283, 35.049820, 35.436321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721981, 34.499809, 35.882561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404079, 34.709835, 36.004326>,  <43.213337, 34.835850, 36.077385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404079, 34.709835, 36.004326>,  <43.721981, 34.499809, 35.882561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404079, 34.709835, 36.004326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476386, -0.850447, 0.223150,
		0.376055, 0.032333, 0.926033,
		-0.794757, 0.525066, 0.304412,
		43.165653, 34.867355, 36.095650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410019, 34.050671, 36.347656>,  <43.721981, 34.499809, 35.882561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410019, 34.050671, 36.347656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118599, 34.316948, 36.283066>,  <42.943748, 34.476715, 36.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118599, 34.316948, 36.283066>,  <43.410019, 34.050671, 36.347656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118599, 34.316948, 36.283066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684614, -0.715494, 0.139183,
		-0.022885, 0.211952, 0.977012,
		-0.728547, 0.665691, -0.161479,
		42.900036, 34.516655, 36.234623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954437, 33.953484, 36.882133>,  <43.410019, 34.050671, 36.347656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954437, 33.953484, 36.882133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735264, 34.128212, 36.596767>,  <42.603760, 34.233047, 36.425549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735264, 34.128212, 36.596767>,  <42.954437, 33.953484, 36.882133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735264, 34.128212, 36.596767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722311, -0.677229, 0.140102,
		-0.421944, 0.592072, 0.686596,
		-0.547933, 0.436821, -0.713413,
		42.570885, 34.259258, 36.382744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350723, 34.022800, 37.171513>,  <42.954437, 33.953484, 36.882133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350723, 34.022800, 37.171513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270191, 34.030643, 36.779781>,  <42.221870, 34.035351, 36.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270191, 34.030643, 36.779781>,  <42.350723, 34.022800, 37.171513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270191, 34.030643, 36.779781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823839, -0.544221, 0.158470,
		-0.529863, 0.838712, 0.125725,
		-0.201333, 0.019609, -0.979327,
		42.209793, 34.036526, 36.485985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623020, 34.152031, 37.205418>,  <42.350723, 34.022800, 37.171513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623020, 34.152031, 37.205418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714207, 34.034859, 36.833992>,  <41.768917, 33.964558, 36.611137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714207, 34.034859, 36.833992>,  <41.623020, 34.152031, 37.205418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714207, 34.034859, 36.833992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762978, -0.646213, 0.016544,
		-0.604894, 0.704700, -0.370812,
		0.227965, -0.292928, -0.928561,
		41.782597, 33.946980, 36.555424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938778, 34.004463, 36.888065>,  <41.623020, 34.152031, 37.205418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938778, 34.004463, 36.888065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202034, 33.793877, 36.672775>,  <41.359985, 33.667522, 36.543602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202034, 33.793877, 36.672775>,  <40.938778, 34.004463, 36.888065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202034, 33.793877, 36.672775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693851, -0.701631, -0.162128,
		-0.292282, 0.480151, -0.827059,
		0.658136, -0.526468, -0.538228,
		41.399475, 33.635937, 36.511307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556812, 33.817097, 36.344234>,  <40.938778, 34.004463, 36.888065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556812, 33.817097, 36.344234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854397, 33.559544, 36.415714>,  <41.032948, 33.405010, 36.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854397, 33.559544, 36.415714>,  <40.556812, 33.817097, 36.344234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854397, 33.559544, 36.415714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649811, -0.759456, -0.031167,
		0.155781, -0.092933, -0.983410,
		0.743960, -0.643886, 0.178698,
		41.077583, 33.366379, 36.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305996, 33.168179, 35.962482>,  <40.556812, 33.817097, 36.344234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305996, 33.168179, 35.962482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604691, 33.043373, 36.197437>,  <40.783909, 32.968491, 36.338409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604691, 33.043373, 36.197437>,  <40.305996, 33.168179, 35.962482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604691, 33.043373, 36.197437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460327, -0.879897, 0.117815,
		0.480081, -0.358368, -0.800684,
		0.746741, -0.312015, 0.587388,
		40.828712, 32.949768, 36.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394276, 32.418739, 35.822582>,  <40.305996, 33.168179, 35.962482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394276, 32.418739, 35.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591335, 32.483650, 36.164566>,  <40.709572, 32.522598, 36.369759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591335, 32.483650, 36.164566>,  <40.394276, 32.418739, 35.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591335, 32.483650, 36.164566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278888, -0.901198, 0.331758,
		0.824329, -0.401879, -0.398717,
		0.492650, 0.162281, 0.854963,
		40.739132, 32.532333, 36.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709927, 31.793459, 36.013111>,  <40.394276, 32.418739, 35.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709927, 31.793459, 36.013111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703751, 31.998886, 36.356274>,  <40.700043, 32.122143, 36.562172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703751, 31.998886, 36.356274>,  <40.709927, 31.793459, 36.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703751, 31.998886, 36.356274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268494, -0.828630, 0.491205,
		0.963158, -0.222757, 0.150687,
		-0.015444, 0.513567, 0.857911,
		40.699116, 32.152958, 36.613647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938034, 31.257460, 36.471741>,  <40.709927, 31.793459, 36.013111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938034, 31.257460, 36.471741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747375, 31.524830, 36.700130>,  <40.632980, 31.685253, 36.837166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747375, 31.524830, 36.700130>,  <40.938034, 31.257460, 36.471741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747375, 31.524830, 36.700130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460077, -0.743127, 0.485892,
		0.749092, -0.031095, 0.661736,
		-0.476645, 0.668427, 0.570977,
		40.604382, 31.725359, 36.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222744, 31.113268, 37.094200>,  <40.938034, 31.257460, 36.471741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222744, 31.113268, 37.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867306, 31.293808, 37.126892>,  <40.654041, 31.402132, 37.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867306, 31.293808, 37.126892>,  <41.222744, 31.113268, 37.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867306, 31.293808, 37.126892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317837, -0.734344, 0.599765,
		0.330720, 0.506973, 0.795992,
		-0.888597, 0.451350, 0.081728,
		40.600727, 31.429213, 37.151409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060669, 31.275713, 37.836285>,  <41.222744, 31.113268, 37.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060669, 31.275713, 37.836285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712086, 31.247639, 37.642117>,  <40.502937, 31.230795, 37.525616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712086, 31.247639, 37.642117>,  <41.060669, 31.275713, 37.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712086, 31.247639, 37.642117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358930, -0.583236, 0.728701,
		-0.334261, 0.809265, 0.483073,
		-0.871458, -0.070186, -0.485423,
		40.450649, 31.226583, 37.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699566, 30.925579, 38.304047>,  <41.060669, 31.275713, 37.836285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699566, 30.925579, 38.304047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405121, 30.951126, 38.034512>,  <40.228455, 30.966455, 37.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405121, 30.951126, 38.034512>,  <40.699566, 30.925579, 38.304047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405121, 30.951126, 38.034512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496233, -0.727969, 0.473090,
		-0.460321, 0.682629, 0.567559,
		-0.736110, 0.063869, -0.673842,
		40.184288, 30.970287, 37.832359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919548, 30.993141, 38.565029>,  <40.699566, 30.925579, 38.304047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919548, 30.993141, 38.565029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939777, 30.801088, 38.214733>,  <39.951916, 30.685856, 38.004555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939777, 30.801088, 38.214733>,  <39.919548, 30.993141, 38.565029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939777, 30.801088, 38.214733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166924, -0.868588, 0.466573,
		-0.984672, 0.122583, -0.124076,
		0.050577, -0.480133, -0.875736,
		39.954952, 30.657049, 37.952011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296604, 30.618120, 38.537971>,  <39.919548, 30.993141, 38.565029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296604, 30.618120, 38.537971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577366, 30.462820, 38.299110>,  <39.745823, 30.369640, 38.155792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577366, 30.462820, 38.299110>,  <39.296604, 30.618120, 38.537971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577366, 30.462820, 38.299110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018908, -0.827928, 0.560516,
		-0.712020, -0.404720, -0.573785,
		0.701904, -0.388250, -0.597153,
		39.787937, 30.346346, 38.119965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201176, 29.848358, 38.396988>,  <39.296604, 30.618120, 38.537971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201176, 29.848358, 38.396988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591244, 29.932434, 38.369114>,  <39.825287, 29.982880, 38.352390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591244, 29.932434, 38.369114>,  <39.201176, 29.848358, 38.396988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591244, 29.932434, 38.369114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210973, -0.786261, 0.580761,
		0.067275, -0.581046, -0.811086,
		0.975174, 0.210188, -0.069689,
		39.883797, 29.995491, 38.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580925, 29.297670, 38.187603>,  <39.201176, 29.848358, 38.396988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580925, 29.297670, 38.187603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775307, 29.546280, 38.433388>,  <39.891937, 29.695446, 38.580856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775307, 29.546280, 38.433388>,  <39.580925, 29.297670, 38.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775307, 29.546280, 38.433388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225081, -0.768338, 0.599162,
		0.844503, -0.152863, -0.513271,
		0.485956, 0.621522, 0.614457,
		39.921093, 29.732737, 38.617725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396118, 29.220005, 38.142078>,  <39.580925, 29.297670, 38.187603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396118, 29.220005, 38.142078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194908, 29.310989, 38.475597>,  <40.074181, 29.365580, 38.675709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194908, 29.310989, 38.475597>,  <40.396118, 29.220005, 38.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194908, 29.310989, 38.475597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440066, -0.762912, 0.473610,
		0.743845, 0.605167, 0.283668,
		-0.503027, 0.227460, 0.833802,
		40.043999, 29.379227, 38.725739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808899, 29.227673, 38.770683>,  <40.396118, 29.220005, 38.142078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808899, 29.227673, 38.770683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439156, 29.184877, 38.917171>,  <40.217308, 29.159201, 39.005062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439156, 29.184877, 38.917171>,  <40.808899, 29.227673, 38.770683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439156, 29.184877, 38.917171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348824, -0.625806, 0.697631,
		0.154545, 0.772606, 0.615788,
		-0.924358, -0.106986, 0.366219,
		40.161850, 29.152782, 39.027039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691833, 29.450886, 39.553921>,  <40.808899, 29.227673, 38.770683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691833, 29.450886, 39.553921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471069, 29.137707, 39.439110>,  <40.338612, 28.949799, 39.370224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471069, 29.137707, 39.439110>,  <40.691833, 29.450886, 39.553921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471069, 29.137707, 39.439110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543026, -0.598655, 0.588842,
		-0.632863, 0.169126, 0.755567,
		-0.551912, -0.782949, -0.287026,
		40.305496, 28.902822, 39.353001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392162, 29.005684, 40.172329>,  <40.691833, 29.450886, 39.553921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392162, 29.005684, 40.172329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483143, 28.804728, 39.838654>,  <40.537731, 28.684155, 39.638447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483143, 28.804728, 39.838654>,  <40.392162, 29.005684, 40.172329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483143, 28.804728, 39.838654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715139, -0.495255, 0.493253,
		-0.660942, -0.708750, 0.246634,
		0.227447, -0.502389, -0.834190,
		40.551376, 28.654011, 39.588398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543449, 28.327997, 40.498104>,  <40.392162, 29.005684, 40.172329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543449, 28.327997, 40.498104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703777, 28.281750, 40.134571>,  <40.799976, 28.254002, 39.916451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703777, 28.281750, 40.134571>,  <40.543449, 28.327997, 40.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703777, 28.281750, 40.134571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752492, -0.524304, 0.398573,
		-0.522577, -0.843648, -0.123171,
		0.400834, -0.115600, -0.908828,
		40.824024, 28.247063, 39.861923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149418, 28.708277, 40.804630>,  <40.543449, 28.327997, 40.498104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149418, 28.708277, 40.804630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445290, 28.459223, 40.702496>,  <41.622814, 28.309790, 40.641216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445290, 28.459223, 40.702496>,  <41.149418, 28.708277, 40.804630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445290, 28.459223, 40.702496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548496, 0.777630, -0.307316,
		0.389902, 0.087266, 0.916712,
		0.739681, -0.622636, -0.255335,
		41.667194, 28.272432, 40.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757767, 28.993422, 41.082867>,  <41.149418, 28.708277, 40.804630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757767, 28.993422, 41.082867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898308, 28.725073, 40.821644>,  <41.982632, 28.564064, 40.664909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898308, 28.725073, 40.821644>,  <41.757767, 28.993422, 41.082867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898308, 28.725073, 40.821644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587136, 0.701207, -0.404451,
		0.729264, -0.241330, 0.640261,
		0.351350, -0.670871, -0.653058,
		42.003712, 28.523811, 40.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380409, 29.131832, 41.139610>,  <41.757767, 28.993422, 41.082867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380409, 29.131832, 41.139610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318851, 28.987717, 40.771587>,  <42.281918, 28.901247, 40.550774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318851, 28.987717, 40.771587>,  <42.380409, 29.131832, 41.139610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318851, 28.987717, 40.771587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549559, 0.742630, -0.382735,
		0.821158, -0.564528, 0.083712,
		-0.153898, -0.360290, -0.920058,
		42.272682, 28.879629, 40.495571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086037, 29.116388, 40.775040>,  <42.380409, 29.131832, 41.139610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086037, 29.116388, 40.775040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774158, 29.213816, 40.544304>,  <42.587032, 29.272272, 40.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774158, 29.213816, 40.544304>,  <43.086037, 29.116388, 40.775040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774158, 29.213816, 40.544304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507565, 0.785323, -0.354464,
		0.366667, -0.569159, -0.735944,
		-0.779700, 0.243569, -0.576837,
		42.540249, 29.286886, 40.371254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376144, 29.255894, 40.048733>,  <43.086037, 29.116388, 40.775040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376144, 29.255894, 40.048733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016285, 29.430517, 40.046158>,  <42.800369, 29.535292, 40.044613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016285, 29.430517, 40.046158>,  <43.376144, 29.255894, 40.048733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016285, 29.430517, 40.046158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381371, 0.778575, -0.498375,
		-0.212558, -0.450819, -0.866938,
		-0.899653, 0.436558, -0.006437,
		42.746387, 29.561485, 40.044228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306789, 29.513941, 39.398438>,  <43.376144, 29.255894, 40.048733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306789, 29.513941, 39.398438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045349, 29.732306, 39.608120>,  <42.888485, 29.863323, 39.733929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045349, 29.732306, 39.608120>,  <43.306789, 29.513941, 39.398438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045349, 29.732306, 39.608120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168719, 0.780289, -0.602232,
		-0.737798, -0.305173, -0.602099,
		-0.653596, 0.545911, 0.524207,
		42.849270, 29.896078, 39.765381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849365, 29.842731, 38.881714>,  <43.306789, 29.513941, 39.398438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849365, 29.842731, 38.881714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814991, 30.069944, 39.209118>,  <42.794365, 30.206272, 39.405560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814991, 30.069944, 39.209118>,  <42.849365, 29.842731, 38.881714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814991, 30.069944, 39.209118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384064, 0.776937, -0.498862,
		-0.919298, 0.271488, -0.284929,
		-0.085937, 0.568034, 0.818506,
		42.789211, 30.240355, 39.454670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714058, 30.476524, 38.575871>,  <42.849365, 29.842731, 38.881714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714058, 30.476524, 38.575871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788013, 30.571022, 38.957447>,  <42.832386, 30.627720, 39.186394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788013, 30.571022, 38.957447>,  <42.714058, 30.476524, 38.575871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788013, 30.571022, 38.957447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390082, 0.873296, -0.291874,
		-0.902027, 0.426079, 0.069306,
		0.184886, 0.236243, 0.953942,
		42.843479, 30.641895, 39.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580414, 31.162832, 38.634220>,  <42.714058, 30.476524, 38.575871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580414, 31.162832, 38.634220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796364, 31.119738, 38.968147>,  <42.925934, 31.093882, 39.168503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796364, 31.119738, 38.968147>,  <42.580414, 31.162832, 38.634220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796364, 31.119738, 38.968147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363782, 0.924235, -0.115983,
		-0.759076, 0.366310, 0.538164,
		0.539876, -0.107735, 0.834822,
		42.958328, 31.087418, 39.218594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425247, 31.743412, 39.041435>,  <42.580414, 31.162832, 38.634220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425247, 31.743412, 39.041435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787956, 31.616089, 39.152031>,  <43.005581, 31.539694, 39.218388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787956, 31.616089, 39.152031>,  <42.425247, 31.743412, 39.041435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787956, 31.616089, 39.152031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371371, 0.913468, -0.166311,
		-0.199628, 0.253487, 0.946516,
		0.906770, -0.318309, 0.276491,
		43.059986, 31.520596, 39.234978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758301, 32.261375, 39.597576>,  <42.425247, 31.743412, 39.041435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758301, 32.261375, 39.597576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062424, 32.051300, 39.444679>,  <43.244896, 31.925255, 39.352943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062424, 32.051300, 39.444679>,  <42.758301, 32.261375, 39.597576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062424, 32.051300, 39.444679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446008, 0.849904, -0.280608,
		0.472240, 0.042867, 0.880427,
		0.760307, -0.525192, -0.382239,
		43.290516, 31.893742, 39.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291981, 32.713219, 39.818443>,  <42.758301, 32.261375, 39.597576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291981, 32.713219, 39.818443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434090, 32.480373, 39.525890>,  <43.519356, 32.340664, 39.350357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434090, 32.480373, 39.525890>,  <43.291981, 32.713219, 39.818443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434090, 32.480373, 39.525890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539619, 0.766608, -0.348028,
		0.763276, -0.271021, 0.586479,
		0.355277, -0.582116, -0.731382,
		43.540672, 32.305740, 39.306477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939854, 32.830170, 39.820122>,  <43.291981, 32.713219, 39.818443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939854, 32.830170, 39.820122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862995, 32.666603, 39.463276>,  <43.816879, 32.568462, 39.249168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862995, 32.666603, 39.463276>,  <43.939854, 32.830170, 39.820122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862995, 32.666603, 39.463276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613439, 0.659520, -0.434426,
		0.766010, -0.630733, 0.124116,
		-0.192150, -0.408912, -0.892115,
		43.805351, 32.543930, 39.195641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579906, 32.714577, 39.502117>,  <43.939854, 32.830170, 39.820122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579906, 32.714577, 39.502117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343979, 32.683781, 39.180576>,  <44.202423, 32.665302, 38.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343979, 32.683781, 39.180576>,  <44.579906, 32.714577, 39.502117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343979, 32.683781, 39.180576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677159, 0.495187, -0.544284,
		0.439962, -0.865368, -0.239938,
		-0.589821, -0.076988, -0.803856,
		44.167034, 32.660683, 38.939419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932285, 32.450001, 38.847847>,  <44.579906, 32.714577, 39.502117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932285, 32.450001, 38.847847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616844, 32.639610, 38.691177>,  <44.427582, 32.753376, 38.597176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616844, 32.639610, 38.691177>,  <44.932285, 32.450001, 38.847847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616844, 32.639610, 38.691177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600716, 0.457836, -0.655382,
		-0.131343, -0.752121, -0.645804,
		-0.788599, 0.474025, -0.391678,
		44.380264, 32.781818, 38.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917091, 32.358540, 38.082577>,  <44.932285, 32.450001, 38.847847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917091, 32.358540, 38.082577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675682, 32.671265, 38.145226>,  <44.530834, 32.858898, 38.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675682, 32.671265, 38.145226>,  <44.917091, 32.358540, 38.082577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675682, 32.671265, 38.145226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419911, 0.478626, -0.771098,
		-0.677815, -0.399611, -0.617154,
		-0.603525, 0.781811, 0.156619,
		44.494625, 32.905807, 38.192211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675682, 32.574646, 37.420650>,  <44.917091, 32.358540, 38.082577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675682, 32.574646, 37.420650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636234, 32.899929, 37.650070>,  <44.612564, 33.095100, 37.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636234, 32.899929, 37.650070>,  <44.675682, 32.574646, 37.420650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636234, 32.899929, 37.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330150, 0.570456, -0.752051,
		-0.938762, 0.115191, -0.324740,
		-0.098621, 0.813211, 0.573553,
		44.606647, 33.143890, 37.822136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417496, 33.102879, 37.007015>,  <44.675682, 32.574646, 37.420650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417496, 33.102879, 37.007015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584427, 33.317448, 37.300434>,  <44.684586, 33.446190, 37.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584427, 33.317448, 37.300434>,  <44.417496, 33.102879, 37.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584427, 33.317448, 37.300434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470066, 0.563395, -0.679429,
		-0.777738, 0.628358, -0.017035,
		0.417327, 0.536425, 0.733544,
		44.709625, 33.478374, 37.520496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303791, 33.760761, 36.767300>,  <44.417496, 33.102879, 37.007015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303791, 33.760761, 36.767300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570660, 33.842899, 37.053719>,  <44.730782, 33.892181, 37.225571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570660, 33.842899, 37.053719>,  <44.303791, 33.760761, 36.767300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570660, 33.842899, 37.053719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373056, 0.739916, -0.559780,
		-0.644758, 0.640593, 0.417046,
		0.667170, 0.205341, 0.716044,
		44.770809, 33.904503, 37.268532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237011, 34.478508, 36.978142>,  <44.303791, 33.760761, 36.767300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237011, 34.478508, 36.978142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607155, 34.359200, 37.071735>,  <44.829239, 34.287613, 37.127892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607155, 34.359200, 37.071735>,  <44.237011, 34.478508, 36.978142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607155, 34.359200, 37.071735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376060, 0.800216, -0.467153,
		-0.047901, 0.520277, 0.852653,
		0.925356, -0.298272, 0.233987,
		44.884762, 34.269718, 37.141930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601971, 35.090763, 37.282681>,  <44.237011, 34.478508, 36.978142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601971, 35.090763, 37.282681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891247, 34.841808, 37.162930>,  <45.064812, 34.692436, 37.091080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891247, 34.841808, 37.162930>,  <44.601971, 35.090763, 37.282681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891247, 34.841808, 37.162930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514350, 0.774640, -0.367935,
		0.460905, 0.112106, 0.880340,
		0.723195, -0.622386, -0.299374,
		45.108204, 34.655094, 37.073116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181202, 35.499588, 37.456768>,  <44.601971, 35.090763, 37.282681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181202, 35.499588, 37.456768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315437, 35.190262, 37.241596>,  <45.395977, 35.004665, 37.112492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315437, 35.190262, 37.241596>,  <45.181202, 35.499588, 37.456768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315437, 35.190262, 37.241596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727023, 0.575738, -0.374116,
		0.599016, -0.265540, 0.755426,
		0.335585, -0.773314, -0.537930,
		45.416111, 34.958267, 37.080215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923336, 35.391068, 37.585304>,  <45.181202, 35.499588, 37.456768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923336, 35.391068, 37.585304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852917, 35.240795, 37.221355>,  <45.810665, 35.150631, 37.002987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852917, 35.240795, 37.221355>,  <45.923336, 35.391068, 37.585304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852917, 35.240795, 37.221355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709434, 0.592366, -0.381847,
		0.682431, -0.712718, 0.162238,
		-0.176045, -0.375681, -0.909875,
		45.800102, 35.128090, 36.948395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524521, 35.289246, 37.281849>,  <45.923336, 35.391068, 37.585304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524521, 35.289246, 37.281849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278072, 35.328033, 36.969185>,  <46.130203, 35.351307, 36.781586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278072, 35.328033, 36.969185>,  <46.524521, 35.289246, 37.281849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278072, 35.328033, 36.969185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612835, 0.682439, -0.398385,
		0.494806, -0.724482, -0.479888,
		-0.616117, 0.096969, -0.781663,
		46.093239, 35.357124, 36.734688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945789, 35.542515, 36.921406>,  <46.524521, 35.289246, 37.281849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945789, 35.542515, 36.921406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608589, 35.639378, 36.729275>,  <46.406269, 35.697495, 36.613995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608589, 35.639378, 36.729275>,  <46.945789, 35.542515, 36.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608589, 35.639378, 36.729275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469178, 0.767762, -0.436364,
		0.263111, -0.593214, -0.760835,
		-0.842997, 0.242155, -0.480329,
		46.355690, 35.712025, 36.585175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004784, 35.429245, 36.149979>,  <46.945789, 35.542515, 36.921406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004784, 35.429245, 36.149979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336655, 35.209515, 36.110214>,  <47.535778, 35.077679, 36.086357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336655, 35.209515, 36.110214>,  <47.004784, 35.429245, 36.149979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336655, 35.209515, 36.110214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276692, -0.249994, -0.927871,
		0.484850, 0.797337, -0.359407,
		0.829676, -0.549324, -0.099407,
		47.585556, 35.044716, 36.080391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.308521, 35.555477, 35.436890>,  <47.004784, 35.429245, 36.149979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.308521, 35.555477, 35.436890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477791, 35.202507, 35.519104>,  <47.579353, 34.990723, 35.568432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477791, 35.202507, 35.519104>,  <47.308521, 35.555477, 35.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477791, 35.202507, 35.519104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199281, -0.130648, -0.971194,
		0.883862, 0.451943, 0.120564,
		0.423173, -0.882428, 0.205539,
		47.604744, 34.937778, 35.580765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883198, 35.446888, 35.157299>,  <47.308521, 35.555477, 35.436890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883198, 35.446888, 35.157299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665833, 35.117695, 35.223499>,  <47.535412, 34.920177, 35.263222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665833, 35.117695, 35.223499>,  <47.883198, 35.446888, 35.157299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665833, 35.117695, 35.223499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207196, -0.059563, -0.976485,
		0.813492, -0.564928, -0.138152,
		-0.543415, -0.822987, 0.165504,
		47.502808, 34.870800, 35.273151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134838, 34.850624, 34.851387>,  <47.883198, 35.446888, 35.157299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134838, 34.850624, 34.851387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747169, 34.752220, 34.845848>,  <47.514568, 34.693180, 34.842525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747169, 34.752220, 34.845848>,  <48.134838, 34.850624, 34.851387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747169, 34.752220, 34.845848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001802, 0.063259, -0.997995,
		0.246391, -0.967201, -0.061752,
		-0.969169, -0.246008, -0.013844,
		47.456417, 34.678417, 34.841694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.370121, 40.136150, 45.846722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078945, 39.862156, 45.858742>,  <35.904240, 39.697762, 45.865955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078945, 39.862156, 45.858742>,  <36.370121, 40.136150, 45.846722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078945, 39.862156, 45.858742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047214, 0.006356, -0.998865,
		0.684016, -0.728530, -0.036968,
		-0.727938, -0.684985, 0.030049,
		35.860565, 39.656662, 45.867756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538757, 39.696819, 45.226353>,  <36.370121, 40.136150, 45.846722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538757, 39.696819, 45.226353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175182, 39.589718, 45.354195>,  <35.957039, 39.525455, 45.430901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175182, 39.589718, 45.354195>,  <36.538757, 39.696819, 45.226353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175182, 39.589718, 45.354195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236294, -0.300744, -0.923969,
		0.343516, -0.915347, 0.210087,
		-0.908934, -0.267756, 0.319601,
		35.902500, 39.509392, 45.450073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501072, 39.005806, 44.942780>,  <36.538757, 39.696819, 45.226353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501072, 39.005806, 44.942780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132977, 39.129009, 45.039356>,  <35.912121, 39.202930, 45.097301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132977, 39.129009, 45.039356>,  <36.501072, 39.005806, 44.942780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132977, 39.129009, 45.039356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332302, -0.289074, -0.897782,
		-0.206726, -0.906405, 0.368367,
		-0.920239, 0.308004, 0.241441,
		35.856903, 39.221413, 45.111790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088528, 38.431091, 44.837879>,  <36.501072, 39.005806, 44.942780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088528, 38.431091, 44.837879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866581, 38.763138, 44.815838>,  <35.733414, 38.962364, 44.802612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866581, 38.763138, 44.815838>,  <36.088528, 38.431091, 44.837879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866581, 38.763138, 44.815838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314021, -0.270316, -0.910121,
		-0.770398, -0.487691, 0.410662,
		-0.554867, 0.830112, -0.055105,
		35.700119, 39.012173, 44.799305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567116, 38.223080, 44.452995>,  <36.088528, 38.431091, 44.837879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567116, 38.223080, 44.452995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575066, 38.621128, 44.414356>,  <35.579838, 38.859959, 44.391171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575066, 38.621128, 44.414356>,  <35.567116, 38.223080, 44.452995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575066, 38.621128, 44.414356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325769, -0.084901, -0.941630,
		-0.945241, 0.050186, 0.322493,
		0.019876, 0.995125, -0.096601,
		35.581028, 38.919666, 44.385376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043148, 38.426365, 43.926628>,  <35.567116, 38.223080, 44.452995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043148, 38.426365, 43.926628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240822, 38.774082, 43.922436>,  <35.359425, 38.982712, 43.919922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240822, 38.774082, 43.922436>,  <35.043148, 38.426365, 43.926628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240822, 38.774082, 43.922436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019427, -0.001005, -0.999811,
		-0.869142, 0.494292, 0.016391,
		0.494182, 0.869296, -0.010476,
		35.389076, 39.034870, 43.919292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630257, 39.011017, 43.501541>,  <35.043148, 38.426365, 43.926628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630257, 39.011017, 43.501541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022854, 39.087528, 43.505077>,  <35.258411, 39.133434, 43.507198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022854, 39.087528, 43.505077>,  <34.630257, 39.011017, 43.501541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022854, 39.087528, 43.505077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023780, 0.167580, -0.985572,
		-0.190001, 0.967124, 0.169027,
		0.981496, 0.191279, 0.008842,
		35.317303, 39.144913, 43.507729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694080, 39.570236, 43.087032>,  <34.630257, 39.011017, 43.501541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694080, 39.570236, 43.087032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046238, 39.380608, 43.092064>,  <35.257534, 39.266830, 43.095081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046238, 39.380608, 43.092064>,  <34.694080, 39.570236, 43.087032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046238, 39.380608, 43.092064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035144, 0.038777, -0.998630,
		0.472931, 0.879634, 0.050800,
		0.880399, -0.474068, 0.012575,
		35.310356, 39.238388, 43.095837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033543, 39.906277, 42.487144>,  <34.694080, 39.570236, 43.087032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033543, 39.906277, 42.487144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235153, 39.576244, 42.589287>,  <35.356121, 39.378227, 42.650570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235153, 39.576244, 42.589287>,  <35.033543, 39.906277, 42.487144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235153, 39.576244, 42.589287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303750, -0.107431, -0.946676,
		0.808514, 0.554711, 0.196469,
		0.504025, -0.825078, 0.255353,
		35.386360, 39.328720, 42.665894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663788, 40.163403, 42.281658>,  <35.033543, 39.906277, 42.487144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663788, 40.163403, 42.281658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651440, 39.764477, 42.308216>,  <35.644032, 39.525120, 42.324150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651440, 39.764477, 42.308216>,  <35.663788, 40.163403, 42.281658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651440, 39.764477, 42.308216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369931, -0.073113, -0.926178,
		0.928546, -0.004030, 0.371195,
		-0.030871, -0.997316, 0.066398,
		35.642178, 39.465282, 42.328136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331657, 39.910130, 42.079296>,  <35.663788, 40.163403, 42.281658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331657, 39.910130, 42.079296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084057, 39.597980, 42.043854>,  <35.935497, 39.410690, 42.022591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084057, 39.597980, 42.043854>,  <36.331657, 39.910130, 42.079296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084057, 39.597980, 42.043854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443945, -0.254600, -0.859123,
		0.647880, -0.571134, 0.504041,
		-0.619003, -0.780375, -0.088602,
		35.898357, 39.363869, 42.017273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723289, 39.288189, 41.886906>,  <36.331657, 39.910130, 42.079296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723289, 39.288189, 41.886906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346985, 39.239235, 41.760418>,  <36.121204, 39.209862, 41.684525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346985, 39.239235, 41.760418>,  <36.723289, 39.288189, 41.886906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346985, 39.239235, 41.760418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333513, -0.165756, -0.928059,
		0.061166, -0.978543, 0.196754,
		-0.940759, -0.122386, -0.316219,
		36.064758, 39.202518, 41.665554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703587, 38.610977, 41.563580>,  <36.723289, 39.288189, 41.886906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703587, 38.610977, 41.563580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413956, 38.846127, 41.419296>,  <36.240177, 38.987217, 41.332726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413956, 38.846127, 41.419296>,  <36.703587, 38.610977, 41.563580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413956, 38.846127, 41.419296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254273, -0.258612, -0.931915,
		-0.641135, -0.766498, 0.037774,
		-0.724080, 0.587878, -0.360705,
		36.196732, 39.022491, 41.311085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515854, 38.157089, 41.142815>,  <36.703587, 38.610977, 41.563580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515854, 38.157089, 41.142815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359787, 38.504444, 41.020393>,  <36.266148, 38.712856, 40.946941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359787, 38.504444, 41.020393>,  <36.515854, 38.157089, 41.142815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359787, 38.504444, 41.020393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121864, -0.280772, -0.952006,
		-0.912646, -0.408734, 0.003721,
		-0.390162, 0.868391, -0.306055,
		36.242737, 38.764961, 40.928577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078308, 37.979515, 40.579311>,  <36.515854, 38.157089, 41.142815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078308, 37.979515, 40.579311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166363, 38.369312, 40.561901>,  <36.219196, 38.603191, 40.551456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166363, 38.369312, 40.561901>,  <36.078308, 37.979515, 40.579311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166363, 38.369312, 40.561901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152348, -0.078419, -0.985211,
		-0.963499, 0.210249, -0.165726,
		0.220135, 0.974498, -0.043526,
		36.232403, 38.661663, 40.548843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547623, 38.205074, 40.118752>,  <36.078308, 37.979515, 40.579311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547623, 38.205074, 40.118752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853828, 38.462444, 40.118351>,  <36.037552, 38.616867, 40.118111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853828, 38.462444, 40.118351>,  <35.547623, 38.205074, 40.118752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853828, 38.462444, 40.118351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206113, -0.246692, -0.946922,
		-0.609517, 0.724673, -0.321463,
		0.765511, 0.643422, -0.000998,
		36.083481, 38.655472, 40.118050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565495, 38.381088, 39.462841>,  <35.547623, 38.205074, 40.118752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565495, 38.381088, 39.462841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925674, 38.518578, 39.569458>,  <36.141781, 38.601070, 39.633427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925674, 38.518578, 39.569458>,  <35.565495, 38.381088, 39.462841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925674, 38.518578, 39.569458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334170, -0.154425, -0.929776,
		-0.278428, 0.926286, -0.253915,
		0.900449, 0.343726, 0.266541,
		36.195808, 38.621696, 39.649422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761360, 38.883698, 39.072315>,  <35.565495, 38.381088, 39.462841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761360, 38.883698, 39.072315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098186, 38.710495, 39.200954>,  <36.300282, 38.606575, 39.278137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098186, 38.710495, 39.200954>,  <35.761360, 38.883698, 39.072315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098186, 38.710495, 39.200954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286191, -0.146707, -0.946875,
		0.457181, 0.889374, 0.000384,
		0.842069, -0.433003, 0.321602,
		36.350807, 38.580593, 39.297436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336182, 39.110851, 38.558418>,  <35.761360, 38.883698, 39.072315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336182, 39.110851, 38.558418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480038, 38.803787, 38.770592>,  <36.566353, 38.619549, 38.897896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480038, 38.803787, 38.770592>,  <36.336182, 39.110851, 38.558418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480038, 38.803787, 38.770592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501340, -0.320475, -0.803713,
		0.786966, 0.554977, 0.269600,
		0.359642, -0.767656, 0.530436,
		36.587929, 38.573490, 38.929722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051682, 39.133850, 38.456131>,  <36.336182, 39.110851, 38.558418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051682, 39.133850, 38.456131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962933, 38.768131, 38.591682>,  <36.909683, 38.548702, 38.673012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962933, 38.768131, 38.591682>,  <37.051682, 39.133850, 38.456131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962933, 38.768131, 38.591682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472354, -0.404819, -0.782945,
		0.853027, -0.013642, 0.521688,
		-0.221870, -0.914295, 0.338878,
		36.896370, 38.493843, 38.693344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634403, 38.848793, 38.428833>,  <37.051682, 39.133850, 38.456131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634403, 38.848793, 38.428833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355518, 38.562138, 38.421532>,  <37.188187, 38.390144, 38.417152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355518, 38.562138, 38.421532>,  <37.634403, 38.848793, 38.428833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355518, 38.562138, 38.421532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494452, -0.462303, -0.736066,
		0.519056, -0.522214, 0.676664,
		-0.697208, -0.716637, -0.018248,
		37.146355, 38.347145, 38.416058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068211, 38.358055, 38.456314>,  <37.634403, 38.848793, 38.428833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068211, 38.358055, 38.456314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708672, 38.217327, 38.351788>,  <37.492947, 38.132889, 38.289070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708672, 38.217327, 38.351788>,  <38.068211, 38.358055, 38.456314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708672, 38.217327, 38.351788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433979, -0.631490, -0.642559,
		0.061048, -0.690971, 0.720299,
		-0.898852, -0.351822, -0.261316,
		37.439014, 38.111782, 38.273392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493710, 37.965302, 37.979111>,  <38.068211, 38.358055, 38.456314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493710, 37.965302, 37.979111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786274, 38.237549, 37.996014>,  <38.961815, 38.400898, 38.006157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786274, 38.237549, 37.996014>,  <38.493710, 37.965302, 37.979111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786274, 38.237549, 37.996014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059089, 0.001516, 0.998251,
		0.679368, -0.732633, 0.041326,
		0.731415, 0.680622, 0.042260,
		39.005699, 38.441734, 38.008690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979576, 37.686321, 38.384918>,  <38.493710, 37.965302, 37.979111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979576, 37.686321, 38.384918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017448, 38.084370, 38.396053>,  <39.040173, 38.323196, 38.402733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017448, 38.084370, 38.396053>,  <38.979576, 37.686321, 38.384918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017448, 38.084370, 38.396053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088422, -0.036256, 0.995423,
		0.991573, -0.091789, -0.091423,
		0.094683, 0.995118, 0.027834,
		39.045853, 38.382904, 38.404404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700005, 37.868668, 38.639168>,  <38.979576, 37.686321, 38.384918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700005, 37.868668, 38.639168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497715, 38.199924, 38.735855>,  <39.376339, 38.398678, 38.793865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497715, 38.199924, 38.735855>,  <39.700005, 37.868668, 38.639168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497715, 38.199924, 38.735855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158320, -0.186337, 0.969646,
		0.848042, 0.528645, -0.036875,
		-0.505727, 0.828138, 0.241716,
		39.345997, 38.448364, 38.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079258, 38.108807, 39.206863>,  <39.700005, 37.868668, 38.639168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079258, 38.108807, 39.206863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735950, 38.314087, 39.206638>,  <39.529964, 38.437256, 39.206501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735950, 38.314087, 39.206638>,  <40.079258, 38.108807, 39.206863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735950, 38.314087, 39.206638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015786, 0.027502, 0.999497,
		0.512959, 0.857827, -0.031706,
		-0.858268, 0.513201, -0.000566,
		39.478470, 38.468048, 39.206467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182537, 38.520374, 39.806557>,  <40.079258, 38.108807, 39.206863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182537, 38.520374, 39.806557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794731, 38.565968, 39.719788>,  <39.562050, 38.593323, 39.667728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794731, 38.565968, 39.719788>,  <40.182537, 38.520374, 39.806557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794731, 38.565968, 39.719788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229802, -0.115595, 0.966348,
		0.085069, 0.986735, 0.138263,
		-0.969512, 0.113980, -0.216920,
		39.503876, 38.600163, 39.654713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925510, 39.173611, 40.149998>,  <40.182537, 38.520374, 39.806557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925510, 39.173611, 40.149998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644852, 38.891518, 40.109329>,  <39.476456, 38.722260, 40.084927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644852, 38.891518, 40.109329>,  <39.925510, 39.173611, 40.149998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644852, 38.891518, 40.109329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094607, -0.049221, 0.994297,
		-0.706220, 0.707261, -0.032184,
		-0.701643, -0.705237, -0.101672,
		39.434361, 38.679947, 40.078827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434898, 39.354023, 40.638424>,  <39.925510, 39.173611, 40.149998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434898, 39.354023, 40.638424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270401, 39.008240, 40.522770>,  <39.171703, 38.800770, 40.453377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270401, 39.008240, 40.522770>,  <39.434898, 39.354023, 40.638424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270401, 39.008240, 40.522770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226483, -0.210350, 0.951030,
		-0.882941, 0.456589, -0.109279,
		-0.411243, -0.864453, -0.289136,
		39.147030, 38.748905, 40.436028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698448, 39.455818, 40.884407>,  <39.434898, 39.354023, 40.638424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698448, 39.455818, 40.884407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779331, 39.065678, 40.849060>,  <38.827862, 38.831593, 40.827854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779331, 39.065678, 40.849060>,  <38.698448, 39.455818, 40.884407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779331, 39.065678, 40.849060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209839, -0.131282, 0.968882,
		-0.956598, -0.177374, -0.231212,
		0.202208, -0.975348, -0.088364,
		38.839993, 38.773075, 40.822552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140106, 39.123875, 41.183212>,  <38.698448, 39.455818, 40.884407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140106, 39.123875, 41.183212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440292, 38.859592, 41.189747>,  <38.620403, 38.701023, 41.193668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440292, 38.859592, 41.189747>,  <38.140106, 39.123875, 41.183212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440292, 38.859592, 41.189747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223069, -0.229952, 0.947292,
		-0.622125, -0.714556, -0.319954,
		0.750467, -0.660706, 0.016336,
		38.665432, 38.661381, 41.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944633, 38.502766, 41.444462>,  <38.140106, 39.123875, 41.183212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944633, 38.502766, 41.444462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339844, 38.491215, 41.505093>,  <38.576969, 38.484283, 41.541470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339844, 38.491215, 41.505093>,  <37.944633, 38.502766, 41.444462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339844, 38.491215, 41.505093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152913, -0.314712, 0.936789,
		0.020652, -0.948748, -0.315358,
		0.988024, -0.028876, 0.151575,
		38.636250, 38.482552, 41.550564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053104, 37.903164, 41.899700>,  <37.944633, 38.502766, 41.444462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053104, 37.903164, 41.899700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381832, 38.125286, 41.950687>,  <38.579067, 38.258560, 41.981281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381832, 38.125286, 41.950687>,  <38.053104, 37.903164, 41.899700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381832, 38.125286, 41.950687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041488, -0.164805, 0.985453,
		0.568240, -0.815150, -0.112401,
		0.821817, 0.555310, 0.127467,
		38.628376, 38.291878, 41.988926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267784, 37.756378, 42.623367>,  <38.053104, 37.903164, 41.899700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267784, 37.756378, 42.623367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516026, 38.059563, 42.543030>,  <38.664970, 38.241474, 42.494827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516026, 38.059563, 42.543030>,  <38.267784, 37.756378, 42.623367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516026, 38.059563, 42.543030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195067, 0.098851, 0.975796,
		0.759470, -0.644764, -0.086507,
		0.620607, 0.757962, -0.200847,
		38.702209, 38.286953, 42.482777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808167, 37.705280, 43.120586>,  <38.267784, 37.756378, 42.623367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808167, 37.705280, 43.120586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794743, 38.082275, 42.987564>,  <38.786690, 38.308472, 42.907753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794743, 38.082275, 42.987564>,  <38.808167, 37.705280, 43.120586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794743, 38.082275, 42.987564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202238, 0.332259, 0.921251,
		0.978761, -0.036339, -0.201757,
		-0.033558, 0.942488, -0.332552,
		38.784676, 38.365021, 42.887798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327862, 37.946381, 43.465691>,  <38.808167, 37.705280, 43.120586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327862, 37.946381, 43.465691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174278, 38.299519, 43.357502>,  <39.082127, 38.511402, 43.292587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174278, 38.299519, 43.357502>,  <39.327862, 37.946381, 43.465691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174278, 38.299519, 43.357502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211790, 0.369324, 0.904845,
		0.898731, 0.290143, -0.328784,
		-0.383962, 0.882846, -0.270474,
		39.059090, 38.564373, 43.276360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845871, 38.514618, 43.581013>,  <39.327862, 37.946381, 43.465691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845871, 38.514618, 43.581013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481689, 38.679787, 43.571480>,  <39.263180, 38.778889, 43.565758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481689, 38.679787, 43.571480>,  <39.845871, 38.514618, 43.581013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481689, 38.679787, 43.571480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182332, 0.452414, 0.872970,
		0.371252, 0.790453, -0.487192,
		-0.910454, 0.412923, -0.023834,
		39.208553, 38.803665, 43.564331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081242, 39.084026, 43.842953>,  <39.845871, 38.514618, 43.581013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081242, 39.084026, 43.842953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683266, 39.055557, 43.871296>,  <39.444481, 39.038475, 43.888302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683266, 39.055557, 43.871296>,  <40.081242, 39.084026, 43.842953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683266, 39.055557, 43.871296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039895, 0.367377, 0.929216,
		-0.092166, 0.927345, -0.362680,
		-0.994944, -0.071174, 0.070856,
		39.384781, 39.034206, 43.892551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798031, 39.686745, 44.137123>,  <40.081242, 39.084026, 43.842953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798031, 39.686745, 44.137123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497181, 39.443832, 44.239510>,  <39.316669, 39.298084, 44.300941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497181, 39.443832, 44.239510>,  <39.798031, 39.686745, 44.137123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497181, 39.443832, 44.239510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108470, 0.497187, 0.860836,
		-0.650033, 0.619691, -0.439818,
		-0.752124, -0.607279, 0.255970,
		39.271545, 39.261650, 44.316299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308445, 40.115337, 44.444401>,  <39.798031, 39.686745, 44.137123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308445, 40.115337, 44.444401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193699, 39.751831, 44.565632>,  <39.124851, 39.533730, 44.638371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193699, 39.751831, 44.565632>,  <39.308445, 40.115337, 44.444401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193699, 39.751831, 44.565632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094303, 0.341625, 0.935094,
		-0.953317, 0.239669, -0.183700,
		-0.286869, -0.908764, 0.303075,
		39.107639, 39.479202, 44.656555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.747116, 40.270927, 44.897137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848125, 39.902191, 45.014740>,  <38.908733, 39.680950, 45.085304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848125, 39.902191, 45.014740>,  <38.747116, 40.270927, 44.897137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848125, 39.902191, 45.014740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349603, 0.196405, 0.916080,
		-0.902224, -0.334122, -0.272680,
		0.252527, -0.921840, 0.294011,
		38.923885, 39.625641, 45.102943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172077, 40.013786, 45.334179>,  <38.747116, 40.270927, 44.897137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172077, 40.013786, 45.334179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491432, 39.800293, 45.445686>,  <38.683044, 39.672195, 45.512589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491432, 39.800293, 45.445686>,  <38.172077, 40.013786, 45.334179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491432, 39.800293, 45.445686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160912, 0.257003, 0.952920,
		-0.580250, -0.805653, 0.119303,
		0.798384, -0.533734, 0.278765,
		38.730949, 39.640171, 45.529316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957760, 39.423992, 45.743603>,  <38.172077, 40.013786, 45.334179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957760, 39.423992, 45.743603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341400, 39.497452, 45.829758>,  <38.571587, 39.541527, 45.881451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341400, 39.497452, 45.829758>,  <37.957760, 39.423992, 45.743603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341400, 39.497452, 45.829758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249294, 0.187674, 0.950069,
		0.134045, -0.964912, 0.225779,
		0.959106, 0.183638, 0.215390,
		38.629131, 39.552544, 45.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096672, 39.012650, 46.262772>,  <37.957760, 39.423992, 45.743603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096672, 39.012650, 46.262772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377934, 39.292984, 46.310764>,  <38.546692, 39.461185, 46.339558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377934, 39.292984, 46.310764>,  <38.096672, 39.012650, 46.262772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377934, 39.292984, 46.310764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246672, 0.082181, 0.965608,
		0.666876, -0.708570, 0.230663,
		0.703157, 0.700839, 0.119980,
		38.588879, 39.503235, 46.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391762, 38.952866, 46.967354>,  <38.096672, 39.012650, 46.262772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391762, 38.952866, 46.967354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470230, 39.328098, 46.853142>,  <38.517311, 39.553238, 46.784615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470230, 39.328098, 46.853142>,  <38.391762, 38.952866, 46.967354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470230, 39.328098, 46.853142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329655, 0.337328, 0.881781,
		0.923497, -0.078851, 0.375415,
		0.196167, 0.938079, -0.285528,
		38.529079, 39.609524, 46.767483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735722, 39.262577, 47.577168>,  <38.391762, 38.952866, 46.967354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735722, 39.262577, 47.577168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623077, 39.584820, 47.368675>,  <38.555489, 39.778168, 47.243580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623077, 39.584820, 47.368675>,  <38.735722, 39.262577, 47.577168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623077, 39.584820, 47.368675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141128, 0.502536, 0.852960,
		0.949092, 0.313767, -0.027828,
		-0.281615, 0.805610, -0.521235,
		38.538593, 39.826504, 47.212303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252464, 39.762772, 47.806320>,  <38.735722, 39.262577, 47.577168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252464, 39.762772, 47.806320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921410, 39.946342, 47.677071>,  <38.722778, 40.056484, 47.599522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921410, 39.946342, 47.677071>,  <39.252464, 39.762772, 47.806320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921410, 39.946342, 47.677071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059462, 0.500769, 0.863536,
		0.558108, 0.733906, -0.387165,
		-0.827635, 0.458924, -0.323123,
		38.673119, 40.084019, 47.580135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440765, 40.463806, 48.009796>,  <39.252464, 39.762772, 47.806320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440765, 40.463806, 48.009796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050594, 40.423470, 47.931442>,  <38.816490, 40.399269, 47.884430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050594, 40.423470, 47.931442>,  <39.440765, 40.463806, 48.009796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050594, 40.423470, 47.931442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218136, 0.317307, 0.922894,
		-0.030912, 0.942946, -0.331508,
		-0.975429, -0.100843, -0.195882,
		38.757965, 40.393215, 47.872677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109833, 41.045620, 48.166897>,  <39.440765, 40.463806, 48.009796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109833, 41.045620, 48.166897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866840, 40.730579, 48.208164>,  <38.721043, 40.541553, 48.232925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866840, 40.730579, 48.208164>,  <39.109833, 41.045620, 48.166897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866840, 40.730579, 48.208164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289411, 0.340409, 0.894630,
		-0.739733, 0.513617, -0.434734,
		-0.607484, -0.787604, 0.103165,
		38.684593, 40.494297, 48.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574207, 41.258942, 48.473686>,  <39.109833, 41.045620, 48.166897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574207, 41.258942, 48.473686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.532787, 40.868031, 48.547665>,  <38.507935, 40.633484, 48.592052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.532787, 40.868031, 48.547665>,  <38.574207, 41.258942, 48.473686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532787, 40.868031, 48.547665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126146, 0.197350, 0.972183,
		-0.986592, 0.077340, -0.143715,
		-0.103550, -0.977278, 0.184948,
		38.501720, 40.574848, 48.603149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285229, 41.263672, 49.076008>,  <38.574207, 41.258942, 48.473686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285229, 41.263672, 49.076008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384716, 40.877571, 49.043930>,  <38.444408, 40.645912, 49.024685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384716, 40.877571, 49.043930>,  <38.285229, 41.263672, 49.076008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384716, 40.877571, 49.043930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115238, -0.111698, 0.987038,
		-0.961696, -0.236253, -0.139015,
		0.248718, -0.965250, -0.080194,
		38.459332, 40.587997, 49.019871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856579, 40.977489, 49.562424>,  <38.285229, 41.263672, 49.076008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856579, 40.977489, 49.562424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159782, 40.732891, 49.471649>,  <38.341705, 40.586132, 49.417187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159782, 40.732891, 49.471649>,  <37.856579, 40.977489, 49.562424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159782, 40.732891, 49.471649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060764, -0.280207, 0.958015,
		-0.649406, -0.739974, -0.175242,
		0.758010, -0.611492, -0.226932,
		38.387184, 40.549442, 49.403568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758263, 40.449917, 49.971687>,  <37.856579, 40.977489, 49.562424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758263, 40.449917, 49.971687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133446, 40.392918, 49.845245>,  <38.358555, 40.358719, 49.769379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133446, 40.392918, 49.845245>,  <37.758263, 40.449917, 49.971687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133446, 40.392918, 49.845245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235392, -0.407712, 0.882248,
		-0.254597, -0.901924, -0.348875,
		0.937961, -0.142495, -0.316108,
		38.414833, 40.350170, 49.750412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033794, 39.776272, 50.241817>,  <37.758263, 40.449917, 49.971687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033794, 39.776272, 50.241817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345699, 40.002762, 50.134968>,  <38.532845, 40.138657, 50.070858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345699, 40.002762, 50.134968>,  <38.033794, 39.776272, 50.241817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345699, 40.002762, 50.134968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463556, -0.235377, 0.854232,
		0.420810, -0.789930, -0.446015,
		0.779766, 0.566223, -0.267128,
		38.579628, 40.172630, 50.054829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591133, 39.402756, 50.337353>,  <38.033794, 39.776272, 50.241817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591133, 39.402756, 50.337353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758881, 39.765518, 50.353588>,  <38.859528, 39.983177, 50.363331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.758881, 39.765518, 50.353588>,  <38.591133, 39.402756, 50.337353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758881, 39.765518, 50.353588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527738, -0.279926, 0.801956,
		0.738665, -0.314891, -0.596002,
		0.419365, 0.906910, 0.040592,
		38.884689, 40.037590, 50.365765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365391, 39.363747, 50.342411>,  <38.591133, 39.402756, 50.337353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365391, 39.363747, 50.342411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211796, 39.671520, 50.546577>,  <39.119640, 39.856182, 50.669079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211796, 39.671520, 50.546577>,  <39.365391, 39.363747, 50.342411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211796, 39.671520, 50.546577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373818, -0.375921, 0.847905,
		0.844283, 0.516389, -0.143279,
		-0.383987, 0.769432, 0.510419,
		39.096600, 39.902351, 50.699703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757668, 39.271320, 50.827541>,  <39.365391, 39.363747, 50.342411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757668, 39.271320, 50.827541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501469, 39.545212, 50.966629>,  <39.347748, 39.709545, 51.050083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501469, 39.545212, 50.966629>,  <39.757668, 39.271320, 50.827541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501469, 39.545212, 50.966629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200727, -0.287777, 0.936426,
		0.741262, 0.669577, 0.046878,
		-0.640499, 0.684727, 0.347720,
		39.309319, 39.750629, 51.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064163, 39.479771, 51.381916>,  <39.757668, 39.271320, 50.827541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064163, 39.479771, 51.381916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685570, 39.590385, 51.448490>,  <39.458416, 39.656754, 51.488434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685570, 39.590385, 51.448490>,  <40.064163, 39.479771, 51.381916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685570, 39.590385, 51.448490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065084, -0.341556, 0.937605,
		0.316132, 0.898257, 0.305278,
		-0.946480, 0.276538, 0.166439,
		39.401627, 39.673347, 51.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062428, 39.727386, 52.083530>,  <40.064163, 39.479771, 51.381916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062428, 39.727386, 52.083530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683155, 39.633648, 51.997715>,  <39.455589, 39.577404, 51.946224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683155, 39.633648, 51.997715>,  <40.062428, 39.727386, 52.083530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683155, 39.633648, 51.997715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126003, -0.342515, 0.931025,
		-0.291666, 0.909816, 0.295239,
		-0.948185, -0.234347, -0.214540,
		39.398701, 39.563343, 51.933353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557652, 40.192310, 52.529297>,  <40.062428, 39.727386, 52.083530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557652, 40.192310, 52.529297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392006, 39.844925, 52.420284>,  <39.292618, 39.636494, 52.354877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392006, 39.844925, 52.420284>,  <39.557652, 40.192310, 52.529297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392006, 39.844925, 52.420284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106581, -0.251089, 0.962079,
		-0.903963, 0.427459, 0.011417,
		-0.414116, -0.868466, -0.272534,
		39.267773, 39.584385, 52.338524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128601, 40.002895, 53.093624>,  <39.557652, 40.192310, 52.529297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128601, 40.002895, 53.093624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143341, 39.657116, 52.893078>,  <39.152187, 39.449650, 52.772751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.143341, 39.657116, 52.893078>,  <39.128601, 40.002895, 53.093624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143341, 39.657116, 52.893078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092926, -0.502498, 0.859570,
		-0.994991, 0.014911, -0.098849,
		0.036854, -0.864450, -0.501367,
		39.154396, 39.397781, 52.742668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663467, 39.551270, 53.355919>,  <39.128601, 40.002895, 53.093624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663467, 39.551270, 53.355919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896484, 39.291164, 53.160858>,  <39.036293, 39.135101, 53.043823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896484, 39.291164, 53.160858>,  <38.663467, 39.551270, 53.355919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896484, 39.291164, 53.160858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139415, -0.671007, 0.728226,
		-0.800755, -0.356237, -0.481546,
		0.582542, -0.650265, -0.487647,
		39.071247, 39.096085, 53.014565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480141, 39.010468, 53.792107>,  <38.663467, 39.551270, 53.355919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480141, 39.010468, 53.792107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821743, 38.907604, 53.611198>,  <39.026703, 38.845886, 53.502651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821743, 38.907604, 53.611198>,  <38.480141, 39.010468, 53.792107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821743, 38.907604, 53.611198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182890, -0.665440, 0.723700,
		-0.487063, -0.700758, -0.521256,
		0.854003, -0.257155, -0.452273,
		39.077946, 38.830460, 53.475517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748077, 39.134232, 53.904747>,  <38.480141, 39.010468, 53.792107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748077, 39.134232, 53.904747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620960, 38.761005, 53.972149>,  <37.544689, 38.537067, 54.012589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620960, 38.761005, 53.972149>,  <37.748077, 39.134232, 53.904747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620960, 38.761005, 53.972149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712702, 0.117859, -0.691495,
		0.625353, -0.339841, -0.702454,
		-0.317789, -0.933069, 0.168502,
		37.525623, 38.481083, 54.022701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857834, 38.785938, 53.321842>,  <37.748077, 39.134232, 53.904747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857834, 38.785938, 53.321842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551357, 38.652817, 53.541733>,  <37.367474, 38.572945, 53.673668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551357, 38.652817, 53.541733>,  <37.857834, 38.785938, 53.321842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551357, 38.652817, 53.541733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624679, 0.185003, -0.758650,
		0.150771, -0.924675, -0.349635,
		-0.766188, -0.332792, 0.549732,
		37.321503, 38.552979, 53.706650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477531, 38.069454, 53.127995>,  <37.857834, 38.785938, 53.321842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477531, 38.069454, 53.127995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218891, 38.301022, 53.326698>,  <37.063709, 38.439960, 53.445919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218891, 38.301022, 53.326698>,  <37.477531, 38.069454, 53.127995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218891, 38.301022, 53.326698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607359, 0.003308, -0.794421,
		-0.461547, -0.815379, 0.349472,
		-0.646598, 0.578918, 0.496755,
		37.024910, 38.474697, 53.475723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885696, 37.853706, 52.901905>,  <37.477531, 38.069454, 53.127995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885696, 37.853706, 52.901905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783440, 38.217831, 53.032120>,  <36.722084, 38.436306, 53.110249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783440, 38.217831, 53.032120>,  <36.885696, 37.853706, 52.901905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783440, 38.217831, 53.032120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405274, 0.204803, -0.890960,
		-0.877725, -0.359698, 0.316571,
		-0.255642, 0.910315, 0.325537,
		36.706749, 38.490925, 53.129780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197296, 37.839901, 52.776653>,  <36.885696, 37.853706, 52.901905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197296, 37.839901, 52.776653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317955, 38.220695, 52.797539>,  <36.390350, 38.449173, 52.810070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317955, 38.220695, 52.797539>,  <36.197296, 37.839901, 52.776653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317955, 38.220695, 52.797539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191579, 0.114167, -0.974815,
		-0.933973, 0.284049, 0.216820,
		0.301649, 0.951989, 0.052211,
		36.408451, 38.506290, 52.813202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861423, 37.989532, 52.301422>,  <36.197296, 37.839901, 52.776653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861423, 37.989532, 52.301422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085636, 38.317898, 52.345078>,  <36.220161, 38.514915, 52.371269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085636, 38.317898, 52.345078>,  <35.861423, 37.989532, 52.301422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085636, 38.317898, 52.345078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171365, 0.243913, -0.954537,
		-0.810212, 0.516342, 0.277395,
		0.560528, 0.820913, 0.109138,
		36.253796, 38.564171, 52.377819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501259, 38.617882, 52.106724>,  <35.861423, 37.989532, 52.301422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501259, 38.617882, 52.106724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893242, 38.685955, 52.065304>,  <36.128433, 38.726799, 52.040451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893242, 38.685955, 52.065304>,  <35.501259, 38.617882, 52.106724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893242, 38.685955, 52.065304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138445, 0.208059, -0.968269,
		-0.143236, 0.963198, 0.227450,
		0.979957, 0.170181, -0.103548,
		36.187229, 38.737011, 52.034241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484371, 38.914509, 51.395588>,  <35.501259, 38.617882, 52.106724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484371, 38.914509, 51.395588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873119, 38.895920, 51.487946>,  <36.106369, 38.884766, 51.543358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873119, 38.895920, 51.487946>,  <35.484371, 38.914509, 51.395588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873119, 38.895920, 51.487946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235094, 0.250458, -0.939149,
		-0.014184, 0.967011, 0.254338,
		0.971869, -0.046472, 0.230891,
		36.164680, 38.881977, 51.557213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872749, 39.637329, 51.232689>,  <35.484371, 38.914509, 51.395588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872749, 39.637329, 51.232689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090073, 39.301643, 51.223442>,  <36.220467, 39.100231, 51.217892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090073, 39.301643, 51.223442>,  <35.872749, 39.637329, 51.232689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090073, 39.301643, 51.223442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198978, 0.155477, -0.967592,
		0.815609, 0.521105, 0.251458,
		0.543313, -0.839212, -0.023120,
		36.253067, 39.049881, 51.216507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295090, 39.762127, 50.686069>,  <35.872749, 39.637329, 51.232689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295090, 39.762127, 50.686069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351139, 39.366791, 50.709911>,  <36.384769, 39.129589, 50.724216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351139, 39.366791, 50.709911>,  <36.295090, 39.762127, 50.686069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351139, 39.366791, 50.709911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086453, -0.047755, -0.995111,
		0.986353, 0.144591, 0.078754,
		0.140123, -0.988339, 0.059604,
		36.393177, 39.070290, 50.727791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942039, 39.668537, 50.462662>,  <36.295090, 39.762127, 50.686069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942039, 39.668537, 50.462662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754124, 39.319427, 50.409641>,  <36.641373, 39.109962, 50.377831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754124, 39.319427, 50.409641>,  <36.942039, 39.668537, 50.462662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754124, 39.319427, 50.409641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063580, 0.183211, -0.981015,
		0.880486, -0.452444, -0.141561,
		-0.469790, -0.872770, -0.132548,
		36.613186, 39.057598, 50.369877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230675, 39.338608, 49.894794>,  <36.942039, 39.668537, 50.462662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230675, 39.338608, 49.894794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872978, 39.159668, 49.900635>,  <36.658360, 39.052303, 49.904140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872978, 39.159668, 49.900635>,  <37.230675, 39.338608, 49.894794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872978, 39.159668, 49.900635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096685, 0.161215, -0.982172,
		0.437018, -0.879710, -0.187417,
		-0.894241, -0.447347, 0.014600,
		36.604706, 39.025463, 49.905014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325222, 38.835457, 49.394680>,  <37.230675, 39.338608, 49.894794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325222, 38.835457, 49.394680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930290, 38.885788, 49.433365>,  <36.693333, 38.915985, 49.456577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930290, 38.885788, 49.433365>,  <37.325222, 38.835457, 49.394680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930290, 38.885788, 49.433365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099894, -0.019210, -0.994813,
		-0.123320, -0.991866, 0.031536,
		-0.987326, 0.125830, 0.096713,
		36.634090, 38.923534, 49.462379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061527, 38.354450, 48.994843>,  <37.325222, 38.835457, 49.394680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061527, 38.354450, 48.994843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750065, 38.600925, 49.042183>,  <36.563187, 38.748810, 49.070587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750065, 38.600925, 49.042183>,  <37.061527, 38.354450, 48.994843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750065, 38.600925, 49.042183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170600, -0.026391, -0.984987,
		-0.603817, -0.787154, 0.125672,
		-0.778653, 0.616191, 0.118353,
		36.516468, 38.785782, 49.077690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527988, 38.047028, 48.606312>,  <37.061527, 38.354450, 48.994843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527988, 38.047028, 48.606312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436501, 38.434048, 48.649261>,  <36.381607, 38.666260, 48.675034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436501, 38.434048, 48.649261>,  <36.527988, 38.047028, 48.606312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436501, 38.434048, 48.649261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279199, 0.040469, -0.959380,
		-0.932595, -0.249412, 0.260883,
		-0.228723, 0.967552, 0.107377,
		36.367882, 38.724312, 48.681473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126850, 38.236988, 48.016449>,  <36.527988, 38.047028, 48.606312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126850, 38.236988, 48.016449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171535, 38.608162, 48.158688>,  <36.198349, 38.830868, 48.244030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171535, 38.608162, 48.158688>,  <36.126850, 38.236988, 48.016449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171535, 38.608162, 48.158688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269308, 0.372715, -0.888007,
		-0.956552, 0.003440, 0.291540,
		0.111717, 0.927939, 0.355595,
		36.205051, 38.886543, 48.265366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379192, 38.643723, 47.989285>,  <36.126850, 38.236988, 48.016449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379192, 38.643723, 47.989285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687340, 38.898708, 47.984207>,  <35.872231, 39.051701, 47.981159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687340, 38.898708, 47.984207>,  <35.379192, 38.643723, 47.989285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687340, 38.898708, 47.984207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242214, 0.274177, -0.930677,
		-0.589796, 0.720043, 0.365622,
		0.770372, 0.637468, -0.012696,
		35.918453, 39.089951, 47.980400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101807, 39.198891, 47.716621>,  <35.379192, 38.643723, 47.989285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101807, 39.198891, 47.716621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485889, 39.291111, 47.653557>,  <35.716339, 39.346443, 47.615719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485889, 39.291111, 47.653557>,  <35.101807, 39.198891, 47.716621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485889, 39.291111, 47.653557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244562, 0.421373, -0.873289,
		-0.134908, 0.877092, 0.460988,
		0.960203, 0.230554, -0.157657,
		35.773949, 39.360275, 47.606258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092720, 39.861401, 47.470268>,  <35.101807, 39.198891, 47.716621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092720, 39.861401, 47.470268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443645, 39.715508, 47.345505>,  <35.654202, 39.627972, 47.270645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443645, 39.715508, 47.345505>,  <35.092720, 39.861401, 47.470268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443645, 39.715508, 47.345505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223236, 0.265193, -0.937997,
		0.424835, 0.892548, 0.151236,
		0.877315, -0.364733, -0.311913,
		35.706841, 39.606087, 47.251930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498993, 40.374630, 47.078415>,  <35.092720, 39.861401, 47.470268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498993, 40.374630, 47.078415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609524, 40.014904, 46.942841>,  <35.675842, 39.799068, 46.861496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609524, 40.014904, 46.942841>,  <35.498993, 40.374630, 47.078415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609524, 40.014904, 46.942841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374903, 0.223859, -0.899631,
		0.884924, 0.375660, -0.275297,
		0.276327, -0.899315, -0.338934,
		35.692421, 39.745110, 46.841160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948956, 40.529167, 46.452484>,  <35.498993, 40.374630, 47.078415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948956, 40.529167, 46.452484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857719, 40.140461, 46.428349>,  <35.802979, 39.907238, 46.413868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857719, 40.140461, 46.428349>,  <35.948956, 40.529167, 46.452484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857719, 40.140461, 46.428349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205078, 0.108531, -0.972710,
		0.951797, -0.209493, -0.224044,
		-0.228091, -0.971768, -0.060337,
		35.789291, 39.848930, 46.410248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.001991, 29.406900, 36.627308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007553, 29.131311, 36.337444>,  <41.010891, 28.965958, 36.163528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007553, 29.131311, 36.337444>,  <41.001991, 29.406900, 36.627308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007553, 29.131311, 36.337444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091061, -0.720841, 0.687093,
		-0.995748, -0.075542, 0.052714,
		0.013906, -0.688972, -0.724655,
		41.011726, 28.924620, 36.120049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459511, 29.714380, 37.202587>,  <41.001991, 29.406900, 36.627308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459511, 29.714380, 37.202587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243652, 29.902729, 37.481747>,  <40.114136, 30.015739, 37.649242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243652, 29.902729, 37.481747>,  <40.459511, 29.714380, 37.202587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243652, 29.902729, 37.481747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175368, 0.873650, -0.453852,
		-0.823424, -0.122531, -0.554039,
		-0.539648, 0.470873, 0.697896,
		40.081757, 30.043991, 37.691116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123852, 30.186169, 36.783894>,  <40.459511, 29.714380, 37.202587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123852, 30.186169, 36.783894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038982, 30.330343, 37.147224>,  <39.988060, 30.416849, 37.365223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038982, 30.330343, 37.147224>,  <40.123852, 30.186169, 36.783894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038982, 30.330343, 37.147224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128551, 0.931712, -0.339688,
		-0.968740, 0.044694, -0.244020,
		-0.212175, 0.360439, 0.908332,
		39.975330, 30.438475, 37.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484879, 30.723198, 36.770073>,  <40.123852, 30.186169, 36.783894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484879, 30.723198, 36.770073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703022, 30.792316, 37.098152>,  <39.833908, 30.833788, 37.295002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703022, 30.792316, 37.098152>,  <39.484879, 30.723198, 36.770073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703022, 30.792316, 37.098152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230290, 0.909976, -0.344833,
		-0.805949, 0.376941, 0.456467,
		0.545356, 0.172798, 0.820200,
		39.866631, 30.844156, 37.344212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228226, 31.359278, 37.013145>,  <39.484879, 30.723198, 36.770073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228226, 31.359278, 37.013145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595573, 31.320856, 37.166698>,  <39.815983, 31.297802, 37.258831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595573, 31.320856, 37.166698>,  <39.228226, 31.359278, 37.013145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595573, 31.320856, 37.166698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213004, 0.937558, -0.274979,
		-0.333496, 0.334302, 0.881489,
		0.918373, -0.096056, 0.383879,
		39.871086, 31.292040, 37.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414566, 32.073532, 37.299744>,  <39.228226, 31.359278, 37.013145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414566, 32.073532, 37.299744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760426, 31.876467, 37.260410>,  <39.967941, 31.758228, 37.236813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760426, 31.876467, 37.260410>,  <39.414566, 32.073532, 37.299744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760426, 31.876467, 37.260410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430303, 0.827287, -0.361160,
		0.259276, 0.269964, 0.927305,
		0.864648, -0.492662, -0.098329,
		40.019821, 31.728668, 37.230911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945164, 32.425682, 37.692181>,  <39.414566, 32.073532, 37.299744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945164, 32.425682, 37.692181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139065, 32.217239, 37.411194>,  <40.255405, 32.092175, 37.242599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139065, 32.217239, 37.411194>,  <39.945164, 32.425682, 37.692181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139065, 32.217239, 37.411194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531254, 0.813439, -0.236827,
		0.694829, -0.258388, 0.671155,
		0.484750, -0.521108, -0.702470,
		40.284489, 32.060905, 37.200455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660988, 32.750568, 37.776775>,  <39.945164, 32.425682, 37.692181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660988, 32.750568, 37.776775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685299, 32.566788, 37.422329>,  <40.699886, 32.456520, 37.209660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685299, 32.566788, 37.422329>,  <40.660988, 32.750568, 37.776775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685299, 32.566788, 37.422329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585002, 0.735704, -0.341338,
		0.808752, -0.497636, 0.313495,
		0.060777, -0.459453, -0.886120,
		40.703533, 32.428951, 37.156494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360641, 32.828335, 37.508221>,  <40.660988, 32.750568, 37.776775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360641, 32.828335, 37.508221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.173046, 32.716801, 37.173008>,  <41.060490, 32.649879, 36.971878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.173046, 32.716801, 37.173008>,  <41.360641, 32.828335, 37.508221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173046, 32.716801, 37.173008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467255, 0.726860, -0.503336,
		0.749484, -0.627633, -0.210596,
		-0.468984, -0.278841, -0.838034,
		41.032349, 32.633148, 36.921597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846249, 32.579494, 37.039875>,  <41.360641, 32.828335, 37.508221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846249, 32.579494, 37.039875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.531490, 32.687748, 36.818047>,  <41.342636, 32.752701, 36.684948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.531490, 32.687748, 36.818047>,  <41.846249, 32.579494, 37.039875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531490, 32.687748, 36.818047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579395, 0.633301, -0.513061,
		0.212357, -0.725041, -0.655149,
		-0.786897, 0.270638, -0.554571,
		41.295422, 32.768940, 36.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102001, 32.565475, 36.387260>,  <41.846249, 32.579494, 37.039875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102001, 32.565475, 36.387260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796680, 32.822132, 36.417370>,  <41.613487, 32.976124, 36.435436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796680, 32.822132, 36.417370>,  <42.102001, 32.565475, 36.387260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796680, 32.822132, 36.417370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544745, 0.701876, -0.458937,
		-0.347304, -0.309304, -0.885274,
		-0.763304, 0.641639, 0.075273,
		41.567688, 33.014626, 36.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131607, 32.863964, 35.787464>,  <42.102001, 32.565475, 36.387260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131607, 32.863964, 35.787464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915653, 33.112270, 36.014858>,  <41.786079, 33.261253, 36.151295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915653, 33.112270, 36.014858>,  <42.131607, 32.863964, 35.787464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915653, 33.112270, 36.014858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477747, 0.782032, -0.400231,
		-0.693024, 0.055515, -0.718773,
		-0.539885, 0.620761, 0.568489,
		41.753689, 33.298500, 36.185406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876129, 33.439964, 35.371483>,  <42.131607, 32.863964, 35.787464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876129, 33.439964, 35.371483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865120, 33.598755, 35.738449>,  <41.858517, 33.694031, 35.958630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865120, 33.598755, 35.738449>,  <41.876129, 33.439964, 35.371483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865120, 33.598755, 35.738449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547074, 0.774102, -0.318553,
		-0.836632, 0.493128, -0.238478,
		-0.027519, 0.396977, 0.917416,
		41.856865, 33.717850, 36.013676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698551, 34.119049, 35.335075>,  <41.876129, 33.439964, 35.371483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698551, 34.119049, 35.335075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.879826, 34.106800, 35.691429>,  <41.988590, 34.099449, 35.905243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.879826, 34.106800, 35.691429>,  <41.698551, 34.119049, 35.335075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879826, 34.106800, 35.691429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618681, 0.730312, -0.289618,
		-0.641757, 0.682427, 0.349916,
		0.453191, -0.030622, 0.890887,
		42.015781, 34.097614, 35.958694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738922, 34.798805, 35.509781>,  <41.698551, 34.119049, 35.335075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738922, 34.798805, 35.509781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991436, 34.628803, 35.769272>,  <42.142944, 34.526802, 35.924969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991436, 34.628803, 35.769272>,  <41.738922, 34.798805, 35.509781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991436, 34.628803, 35.769272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631532, 0.767231, -0.111911,
		-0.450163, 0.480341, 0.752746,
		0.631285, -0.425005, 0.648729,
		42.180820, 34.501301, 35.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908749, 35.321678, 35.959023>,  <41.738922, 34.798805, 35.509781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908749, 35.321678, 35.959023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205151, 35.072777, 36.059990>,  <42.382992, 34.923435, 36.120571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205151, 35.072777, 36.059990>,  <41.908749, 35.321678, 35.959023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205151, 35.072777, 36.059990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624096, 0.776912, 0.083133,
		-0.247836, 0.095931, 0.964041,
		0.741000, -0.622257, 0.252417,
		42.427452, 34.886101, 36.135715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199921, 35.590004, 36.553627>,  <41.908749, 35.321678, 35.959023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199921, 35.590004, 36.553627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487103, 35.353409, 36.406830>,  <42.659412, 35.211452, 36.318752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487103, 35.353409, 36.406830>,  <42.199921, 35.590004, 36.553627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487103, 35.353409, 36.406830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645191, 0.763355, 0.031905,
		0.261272, -0.259685, 0.929678,
		0.717959, -0.591484, -0.366990,
		42.702492, 35.175964, 36.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681393, 35.768181, 36.995033>,  <42.199921, 35.590004, 36.553627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681393, 35.768181, 36.995033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.858437, 35.623985, 36.666607>,  <42.964664, 35.537468, 36.469551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.858437, 35.623985, 36.666607>,  <42.681393, 35.768181, 36.995033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858437, 35.623985, 36.666607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630045, 0.776558, -0.001304,
		0.638072, -0.516729, 0.570837,
		0.442614, -0.360485, -0.821062,
		42.991222, 35.515839, 36.420288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303204, 35.981663, 37.084476>,  <42.681393, 35.768181, 36.995033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303204, 35.981663, 37.084476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307873, 35.882877, 36.696896>,  <43.310673, 35.823605, 36.464348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307873, 35.882877, 36.696896>,  <43.303204, 35.981663, 37.084476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307873, 35.882877, 36.696896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687675, 0.705467, -0.171522,
		0.725925, -0.664324, 0.178065,
		0.011673, -0.246962, -0.968955,
		43.311375, 35.808788, 36.406208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043877, 35.910824, 36.911312>,  <43.303204, 35.981663, 37.084476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043877, 35.910824, 36.911312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.839981, 35.967598, 36.571896>,  <43.717644, 36.001663, 36.368248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.839981, 35.967598, 36.571896>,  <44.043877, 35.910824, 36.911312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839981, 35.967598, 36.571896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701633, 0.639351, -0.314548,
		0.497869, -0.755701, -0.425491,
		-0.509742, 0.141935, -0.848538,
		43.687057, 36.010178, 36.317333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488697, 35.749901, 36.377617>,  <44.043877, 35.910824, 36.911312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488697, 35.749901, 36.377617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215027, 36.005993, 36.237900>,  <44.050823, 36.159649, 36.154072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215027, 36.005993, 36.237900>,  <44.488697, 35.749901, 36.377617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215027, 36.005993, 36.237900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723870, 0.537710, -0.432296,
		-0.088953, -0.548608, -0.831334,
		-0.684178, 0.640232, -0.349290,
		44.009773, 36.198063, 36.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796535, 35.892975, 35.802631>,  <44.488697, 35.749901, 36.377617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796535, 35.892975, 35.802631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543430, 36.196033, 35.866611>,  <44.391567, 36.377869, 35.904999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543430, 36.196033, 35.866611>,  <44.796535, 35.892975, 35.802631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543430, 36.196033, 35.866611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717279, 0.651317, -0.247583,
		-0.291756, -0.041936, -0.955573,
		-0.632764, 0.757646, 0.159946,
		44.353600, 36.423328, 35.914597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275219, 35.419415, 35.758919>,  <44.796535, 35.892975, 35.802631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275219, 35.419415, 35.758919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543732, 35.393490, 36.054264>,  <45.704842, 35.377937, 36.231472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543732, 35.393490, 36.054264>,  <45.275219, 35.419415, 35.758919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543732, 35.393490, 36.054264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348270, -0.906933, 0.237025,
		0.654282, -0.416260, -0.631381,
		0.671284, -0.064810, 0.738361,
		45.745117, 35.374046, 36.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520687, 34.763493, 35.758266>,  <45.275219, 35.419415, 35.758919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520687, 34.763493, 35.758266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593693, 34.890594, 36.130444>,  <45.637497, 34.966854, 36.353748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593693, 34.890594, 36.130444>,  <45.520687, 34.763493, 35.758266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593693, 34.890594, 36.130444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363183, -0.857619, 0.364127,
		0.913667, -0.404377, -0.041121,
		0.182510, 0.317756, 0.930441,
		45.648445, 34.985920, 36.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607914, 34.190365, 36.062721>,  <45.520687, 34.763493, 35.758266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607914, 34.190365, 36.062721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548153, 34.441059, 36.368633>,  <45.512299, 34.591476, 36.552181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548153, 34.441059, 36.368633>,  <45.607914, 34.190365, 36.062721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548153, 34.441059, 36.368633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241142, -0.773197, 0.586530,
		0.958921, -0.096792, 0.266647,
		-0.149400, 0.626736, 0.764776,
		45.503334, 34.629082, 36.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912487, 33.767559, 36.606339>,  <45.607914, 34.190365, 36.062721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912487, 33.767559, 36.606339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676144, 34.058678, 36.745598>,  <45.534340, 34.233349, 36.829155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676144, 34.058678, 36.745598>,  <45.912487, 33.767559, 36.606339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676144, 34.058678, 36.745598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238491, -0.569808, 0.786410,
		0.770723, 0.381623, 0.510245,
		-0.590854, 0.727793, 0.348150,
		45.498886, 34.277016, 36.850044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097733, 33.912128, 37.344067>,  <45.912487, 33.767559, 36.606339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097733, 33.912128, 37.344067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715744, 34.021111, 37.297089>,  <45.486549, 34.086498, 37.268902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.715744, 34.021111, 37.297089>,  <46.097733, 33.912128, 37.344067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715744, 34.021111, 37.297089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278581, -0.687259, 0.670871,
		0.102065, 0.673382, 0.732215,
		-0.954974, 0.272454, -0.117447,
		45.429253, 34.102848, 37.261856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807743, 33.935623, 38.094288>,  <46.097733, 33.912128, 37.344067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807743, 33.935623, 38.094288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491665, 33.928402, 37.849255>,  <45.302017, 33.924068, 37.702236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491665, 33.928402, 37.849255>,  <45.807743, 33.935623, 38.094288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491665, 33.928402, 37.849255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522997, -0.501188, 0.689409,
		-0.319467, 0.865150, 0.386595,
		-0.790199, -0.018056, -0.612584,
		45.254604, 33.922985, 37.665478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253910, 34.152596, 38.505535>,  <45.807743, 33.935623, 38.094288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253910, 34.152596, 38.505535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092941, 33.950405, 38.200233>,  <44.996361, 33.829090, 38.017052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092941, 33.950405, 38.200233>,  <45.253910, 34.152596, 38.505535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092941, 33.950405, 38.200233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622097, -0.460662, 0.633076,
		-0.671605, 0.729579, -0.129075,
		-0.402419, -0.505474, -0.763252,
		44.972214, 33.798763, 37.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498730, 34.007317, 38.758167>,  <45.253910, 34.152596, 38.505535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498730, 34.007317, 38.758167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548595, 33.752197, 38.454151>,  <44.578514, 33.599125, 38.271740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548595, 33.752197, 38.454151>,  <44.498730, 34.007317, 38.758167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548595, 33.752197, 38.454151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658038, -0.626462, 0.417770,
		-0.742593, 0.448057, -0.497795,
		0.124665, -0.637802, -0.760044,
		44.585995, 33.560856, 38.226139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809982, 33.970516, 38.447929>,  <44.498730, 34.007317, 38.758167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809982, 33.970516, 38.447929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000801, 33.635029, 38.342880>,  <44.115292, 33.433735, 38.279850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000801, 33.635029, 38.342880>,  <43.809982, 33.970516, 38.447929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000801, 33.635029, 38.342880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768276, -0.543081, 0.338843,
		-0.426819, 0.040119, -0.903447,
		0.477051, -0.838721, -0.262620,
		44.143917, 33.383411, 38.264095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281200, 33.545509, 38.184544>,  <43.809982, 33.970516, 38.447929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281200, 33.545509, 38.184544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586567, 33.305523, 38.280247>,  <43.769787, 33.161530, 38.337669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586567, 33.305523, 38.280247>,  <43.281200, 33.545509, 38.184544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586567, 33.305523, 38.280247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645742, -0.700494, 0.303849,
		-0.014703, -0.386459, -0.922189,
		0.763414, -0.599964, 0.239254,
		43.815590, 33.125534, 38.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174603, 32.799507, 37.989578>,  <43.281200, 33.545509, 38.184544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174603, 32.799507, 37.989578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470692, 32.772228, 38.257133>,  <43.648346, 32.755859, 38.417667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470692, 32.772228, 38.257133>,  <43.174603, 32.799507, 37.989578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470692, 32.772228, 38.257133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486086, -0.741610, 0.462315,
		0.464526, -0.667356, -0.582110,
		0.740227, -0.068199, 0.668889,
		43.692760, 32.751770, 38.457802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384308, 32.068855, 38.078110>,  <43.174603, 32.799507, 37.989578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384308, 32.068855, 38.078110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561676, 32.218212, 38.404045>,  <43.668095, 32.307827, 38.599606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.561676, 32.218212, 38.404045>,  <43.384308, 32.068855, 38.078110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561676, 32.218212, 38.404045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131531, -0.872145, 0.471235,
		0.886612, -0.316130, -0.337611,
		0.443417, 0.373396, 0.814836,
		43.694702, 32.330231, 38.648495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986206, 31.629107, 38.239807>,  <43.384308, 32.068855, 38.078110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986206, 31.629107, 38.239807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862263, 31.833849, 38.560303>,  <43.787895, 31.956696, 38.752602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862263, 31.833849, 38.560303>,  <43.986206, 31.629107, 38.239807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862263, 31.833849, 38.560303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039998, -0.848990, 0.526892,
		0.949941, 0.131213, 0.283540,
		-0.309857, 0.511858, 0.801243,
		43.769306, 31.987406, 38.800674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322517, 31.303097, 38.888058>,  <43.986206, 31.629107, 38.239807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322517, 31.303097, 38.888058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999634, 31.490721, 39.031387>,  <43.805904, 31.603294, 39.117386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999634, 31.490721, 39.031387>,  <44.322517, 31.303097, 38.888058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999634, 31.490721, 39.031387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315848, -0.856077, 0.409111,
		0.498648, 0.217063, 0.839186,
		-0.807211, 0.469058, 0.358322,
		43.757469, 31.631437, 39.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286514, 31.095961, 39.525673>,  <44.322517, 31.303097, 38.888058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286514, 31.095961, 39.525673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911320, 31.201075, 39.435223>,  <43.686203, 31.264143, 39.380955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911320, 31.201075, 39.435223>,  <44.286514, 31.095961, 39.525673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911320, 31.201075, 39.435223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322661, -0.900289, 0.292180,
		-0.126796, 0.347021, 0.929246,
		-0.937983, 0.262784, -0.226123,
		43.629925, 31.279909, 39.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860893, 30.776756, 40.052555>,  <44.286514, 31.095961, 39.525673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860893, 30.776756, 40.052555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.567146, 30.884005, 39.803135>,  <43.390896, 30.948355, 39.653484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.567146, 30.884005, 39.803135>,  <43.860893, 30.776756, 40.052555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567146, 30.884005, 39.803135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544308, -0.781467, 0.305021,
		-0.405498, 0.563400, 0.719828,
		-0.734371, 0.268123, -0.623546,
		43.346836, 30.964441, 39.616070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300877, 30.870785, 40.470257>,  <43.860893, 30.776756, 40.052555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300877, 30.870785, 40.470257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161144, 30.808830, 40.100613>,  <43.077305, 30.771658, 39.878826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161144, 30.808830, 40.100613>,  <43.300877, 30.870785, 40.470257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161144, 30.808830, 40.100613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612176, -0.708925, 0.350236,
		-0.709371, 0.688066, 0.152831,
		-0.349332, -0.154888, -0.924109,
		43.056343, 30.762363, 39.823380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521942, 30.928329, 40.458271>,  <43.300877, 30.870785, 40.470257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521942, 30.928329, 40.458271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616234, 30.723993, 40.127579>,  <42.672810, 30.601393, 39.929165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616234, 30.723993, 40.127579>,  <42.521942, 30.928329, 40.458271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616234, 30.723993, 40.127579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641159, -0.721037, 0.262719,
		-0.730308, 0.468135, -0.497494,
		0.235723, -0.510838, -0.826728,
		42.686951, 30.570742, 39.879562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960640, 30.691252, 40.232464>,  <42.521942, 30.928329, 40.458271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960640, 30.691252, 40.232464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238720, 30.432161, 40.107788>,  <42.405567, 30.276707, 40.032982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238720, 30.432161, 40.107788>,  <41.960640, 30.691252, 40.232464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238720, 30.432161, 40.107788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497806, -0.746636, 0.441276,
		-0.518542, -0.151616, -0.841503,
		0.695201, -0.647725, -0.311687,
		42.447281, 30.237844, 40.014282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658169, 30.105556, 39.877625>,  <41.960640, 30.691252, 40.232464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658169, 30.105556, 39.877625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004906, 29.954487, 40.007824>,  <42.212948, 29.863844, 40.085945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004906, 29.954487, 40.007824>,  <41.658169, 30.105556, 39.877625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004906, 29.954487, 40.007824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481547, -0.803403, 0.350223,
		0.129238, -0.460330, -0.878290,
		0.866839, -0.377676, 0.325500,
		42.264957, 29.841185, 40.105473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.459011, 39.359093, 42.152355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231907, 39.045822, 42.253769>,  <39.095642, 38.857861, 42.314617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231907, 39.045822, 42.253769>,  <39.459011, 39.359093, 42.152355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231907, 39.045822, 42.253769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069398, -0.352432, -0.933260,
		0.820260, -0.512278, 0.254450,
		-0.567765, -0.783175, 0.253535,
		39.061577, 38.810871, 42.329830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807407, 38.857613, 41.950966>,  <39.459011, 39.359093, 42.152355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807407, 38.857613, 41.950966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435577, 38.710159, 41.950371>,  <39.212479, 38.621689, 41.950012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435577, 38.710159, 41.950371>,  <39.807407, 38.857613, 41.950966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435577, 38.710159, 41.950371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043853, -0.106570, -0.993338,
		0.366017, -0.923447, 0.115231,
		-0.929575, -0.368632, -0.001489,
		39.156704, 38.599571, 41.949924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910759, 38.201286, 41.671955>,  <39.807407, 38.857613, 41.950966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910759, 38.201286, 41.671955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543232, 38.354851, 41.635338>,  <39.322716, 38.446991, 41.613369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543232, 38.354851, 41.635338>,  <39.910759, 38.201286, 41.671955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543232, 38.354851, 41.635338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000390, -0.232817, -0.972521,
		-0.394678, -0.893535, 0.214067,
		-0.918820, 0.383915, -0.091539,
		39.267586, 38.470024, 41.607876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699512, 37.902016, 41.061455>,  <39.910759, 38.201286, 41.671955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699512, 37.902016, 41.061455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363022, 38.109188, 41.123524>,  <39.161125, 38.233490, 41.160767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363022, 38.109188, 41.123524>,  <39.699512, 37.902016, 41.061455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363022, 38.109188, 41.123524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201454, -0.033916, -0.978911,
		-0.501745, -0.854750, 0.132870,
		-0.841231, 0.517931, 0.155176,
		39.110653, 38.264568, 41.170078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145805, 37.492676, 40.843014>,  <39.699512, 37.902016, 41.061455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145805, 37.492676, 40.843014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055710, 37.882187, 40.830158>,  <39.001652, 38.115894, 40.822445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055710, 37.882187, 40.830158>,  <39.145805, 37.492676, 40.843014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055710, 37.882187, 40.830158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050042, -0.021385, -0.998518,
		-0.973019, -0.226509, -0.043913,
		-0.225234, 0.973774, -0.032143,
		38.988140, 38.174320, 40.820515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769691, 37.545845, 40.245594>,  <39.145805, 37.492676, 40.843014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769691, 37.545845, 40.245594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872112, 37.927872, 40.305302>,  <38.933563, 38.157089, 40.341125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872112, 37.927872, 40.305302>,  <38.769691, 37.545845, 40.245594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872112, 37.927872, 40.305302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017406, 0.149833, -0.988558,
		-0.966507, 0.255717, 0.021740,
		0.256048, 0.955070, 0.149266,
		38.948925, 38.214394, 40.350082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338661, 38.008572, 39.770317>,  <38.769691, 37.545845, 40.245594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338661, 38.008572, 39.770317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668316, 38.205807, 39.881790>,  <38.866108, 38.324146, 39.948673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668316, 38.205807, 39.881790>,  <38.338661, 38.008572, 39.770317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668316, 38.205807, 39.881790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062309, 0.410114, -0.909904,
		-0.562951, 0.767251, 0.307267,
		0.824138, 0.493085, 0.278680,
		38.915558, 38.353733, 39.965393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223267, 38.529732, 39.313656>,  <38.338661, 38.008572, 39.770317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223267, 38.529732, 39.313656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603821, 38.560215, 39.433022>,  <38.832153, 38.578503, 39.504642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603821, 38.560215, 39.433022>,  <38.223267, 38.529732, 39.313656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603821, 38.560215, 39.433022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238168, 0.432314, -0.869702,
		-0.195287, 0.898497, 0.393148,
		0.951388, 0.076206, 0.298419,
		38.889236, 38.583076, 39.522549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459469, 39.276642, 39.221561>,  <38.223267, 38.529732, 39.313656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459469, 39.276642, 39.221561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765881, 39.021027, 39.193787>,  <38.949730, 38.867657, 39.177120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765881, 39.021027, 39.193787>,  <38.459469, 39.276642, 39.221561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765881, 39.021027, 39.193787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261918, 0.408958, -0.874158,
		0.587020, 0.651446, 0.480652,
		0.766033, -0.639039, -0.069441,
		38.995689, 38.829315, 39.172955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008682, 39.683201, 38.991146>,  <38.459469, 39.276642, 39.221561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008682, 39.683201, 38.991146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064846, 39.299187, 38.894302>,  <39.098545, 39.068779, 38.836197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064846, 39.299187, 38.894302>,  <39.008682, 39.683201, 38.991146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064846, 39.299187, 38.894302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063767, 0.252791, -0.965417,
		0.988038, 0.120116, 0.096713,
		0.140410, -0.960036, -0.242108,
		39.106968, 39.011177, 38.821671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292519, 39.716805, 38.291103>,  <39.008682, 39.683201, 38.991146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292519, 39.716805, 38.291103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255623, 39.323322, 38.352821>,  <39.233486, 39.087231, 38.389854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255623, 39.323322, 38.352821>,  <39.292519, 39.716805, 38.291103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255623, 39.323322, 38.352821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162710, -0.167766, -0.972307,
		0.982353, -0.064575, 0.175533,
		-0.092236, -0.983710, 0.154298,
		39.227951, 39.028210, 38.399109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938370, 39.385815, 38.159782>,  <39.292519, 39.716805, 38.291103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938370, 39.385815, 38.159782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654465, 39.112373, 38.091755>,  <39.484123, 38.948307, 38.050938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654465, 39.112373, 38.091755>,  <39.938370, 39.385815, 38.159782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654465, 39.112373, 38.091755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197268, 0.038883, -0.979578,
		0.676260, -0.728813, 0.107256,
		-0.709759, -0.683608, -0.170066,
		39.441536, 38.907291, 38.040733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255013, 38.780006, 37.825706>,  <39.938370, 39.385815, 38.159782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255013, 38.780006, 37.825706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865974, 38.814602, 37.739384>,  <39.632549, 38.835358, 37.687592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865974, 38.814602, 37.739384>,  <40.255013, 38.780006, 37.825706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865974, 38.814602, 37.739384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221651, 0.064837, -0.972968,
		-0.070160, -0.994141, -0.082231,
		-0.972599, 0.086490, -0.215803,
		39.574196, 38.840549, 37.674644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159653, 38.345322, 37.271973>,  <40.255013, 38.780006, 37.825706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159653, 38.345322, 37.271973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929985, 38.672287, 37.253353>,  <39.792183, 38.868465, 37.242180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929985, 38.672287, 37.253353>,  <40.159653, 38.345322, 37.271973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929985, 38.672287, 37.253353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318593, 0.170687, -0.932397,
		-0.754207, -0.550184, -0.358425,
		-0.574168, 0.817412, -0.046551,
		39.757736, 38.917511, 37.239388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563198, 37.705891, 37.539215>,  <40.159653, 38.345322, 37.271973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563198, 37.705891, 37.539215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676014, 37.335686, 37.438122>,  <40.743702, 37.113564, 37.377464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676014, 37.335686, 37.438122>,  <40.563198, 37.705891, 37.539215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676014, 37.335686, 37.438122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000820, -0.263197, 0.964742,
		-0.959403, -0.272302, -0.073472,
		0.282039, -0.925516, -0.252736,
		40.760624, 37.058029, 37.362301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042286, 37.168884, 37.614281>,  <40.563198, 37.705891, 37.539215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042286, 37.168884, 37.614281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408546, 37.012829, 37.653015>,  <40.628304, 36.919197, 37.676258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408546, 37.012829, 37.653015>,  <40.042286, 37.168884, 37.614281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408546, 37.012829, 37.653015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183976, -0.192536, 0.963889,
		-0.357407, -0.900400, -0.248072,
		0.915649, -0.390141, 0.096838,
		40.683243, 36.895786, 37.682068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941086, 36.538280, 38.028439>,  <40.042286, 37.168884, 37.614281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941086, 36.538280, 38.028439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323513, 36.644226, 38.078693>,  <40.552967, 36.707794, 38.108849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323513, 36.644226, 38.078693>,  <39.941086, 36.538280, 38.028439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323513, 36.644226, 38.078693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040064, -0.306504, 0.951026,
		0.290404, -0.914276, -0.282426,
		0.956065, 0.264866, 0.125640,
		40.610332, 36.723686, 38.116386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139854, 35.980316, 38.444576>,  <39.941086, 36.538280, 38.028439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139854, 35.980316, 38.444576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392258, 36.287235, 38.490334>,  <40.543697, 36.471386, 38.517788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392258, 36.287235, 38.490334>,  <40.139854, 35.980316, 38.444576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392258, 36.287235, 38.490334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151869, -0.266786, 0.951715,
		0.760769, -0.583163, -0.284872,
		0.631005, 0.767298, 0.114398,
		40.581558, 36.517426, 38.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569118, 35.636951, 38.867062>,  <40.139854, 35.980316, 38.444576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569118, 35.636951, 38.867062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633991, 36.029480, 38.908436>,  <40.672913, 36.264999, 38.933262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633991, 36.029480, 38.908436>,  <40.569118, 35.636951, 38.867062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633991, 36.029480, 38.908436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079369, -0.117460, 0.989901,
		0.983564, -0.152330, -0.096936,
		0.162178, 0.981325, 0.103439,
		40.682644, 36.323879, 38.939468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191151, 35.726814, 39.158340>,  <40.569118, 35.636951, 38.867062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191151, 35.726814, 39.158340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967354, 36.044090, 39.254520>,  <40.833076, 36.234455, 39.312229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967354, 36.044090, 39.254520>,  <41.191151, 35.726814, 39.158340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967354, 36.044090, 39.254520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301107, -0.075773, 0.950575,
		0.772206, 0.604243, -0.196440,
		-0.559493, 0.793189, 0.240454,
		40.799507, 36.282047, 39.326656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393635, 35.811562, 39.794048>,  <41.191151, 35.726814, 39.158340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393635, 35.811562, 39.794048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071850, 36.049110, 39.799084>,  <40.878780, 36.191639, 39.802105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071850, 36.049110, 39.799084>,  <41.393635, 35.811562, 39.794048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071850, 36.049110, 39.799084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021888, -0.050821, 0.998468,
		0.593606, 0.802950, 0.053882,
		-0.804458, 0.593876, 0.012593,
		40.830513, 36.227272, 39.802860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442055, 36.191448, 40.386013>,  <41.393635, 35.811562, 39.794048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442055, 36.191448, 40.386013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053822, 36.233753, 40.299492>,  <40.820881, 36.259136, 40.247578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053822, 36.233753, 40.299492>,  <41.442055, 36.191448, 40.386013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053822, 36.233753, 40.299492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222641, -0.052181, 0.973503,
		0.091669, 0.993022, 0.074192,
		-0.970581, 0.105759, -0.216304,
		40.762646, 36.265480, 40.234600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140038, 36.603577, 40.905918>,  <41.442055, 36.191448, 40.386013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140038, 36.603577, 40.905918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828854, 36.407185, 40.749088>,  <40.642143, 36.289349, 40.654991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828854, 36.407185, 40.749088>,  <41.140038, 36.603577, 40.905918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828854, 36.407185, 40.749088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313369, -0.237667, 0.919410,
		-0.544596, 0.838124, 0.031036,
		-0.777956, -0.490981, -0.392075,
		40.595467, 36.259892, 40.631466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584919, 36.918861, 41.241249>,  <41.140038, 36.603577, 40.905918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584919, 36.918861, 41.241249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470631, 36.564178, 41.095856>,  <40.402058, 36.351368, 41.008621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470631, 36.564178, 41.095856>,  <40.584919, 36.918861, 41.241249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470631, 36.564178, 41.095856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446679, -0.212347, 0.869130,
		-0.847845, 0.410690, -0.335400,
		-0.285722, -0.886703, -0.363484,
		40.384914, 36.298168, 40.986809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913574, 36.825283, 41.495888>,  <40.584919, 36.918861, 41.241249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913574, 36.825283, 41.495888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021935, 36.457058, 41.383331>,  <40.086948, 36.236122, 41.315800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021935, 36.457058, 41.383331>,  <39.913574, 36.825283, 41.495888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021935, 36.457058, 41.383331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415050, -0.375452, 0.828715,
		-0.868532, -0.107707, -0.483789,
		0.270898, -0.920563, -0.281388,
		40.103203, 36.180889, 41.298916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376984, 36.423603, 41.697105>,  <39.913574, 36.825283, 41.495888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376984, 36.423603, 41.697105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695591, 36.185234, 41.656227>,  <39.886753, 36.042213, 41.631702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695591, 36.185234, 41.656227>,  <39.376984, 36.423603, 41.697105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695591, 36.185234, 41.656227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264481, -0.495398, 0.827424,
		-0.543707, -0.632026, -0.552201,
		0.796512, -0.595923, -0.102193,
		39.934544, 36.006458, 41.625568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160892, 35.704739, 41.982124>,  <39.376984, 36.423603, 41.697105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160892, 35.704739, 41.982124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556877, 35.757668, 42.002026>,  <39.794468, 35.789425, 42.013966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556877, 35.757668, 42.002026>,  <39.160892, 35.704739, 41.982124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556877, 35.757668, 42.002026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007604, -0.301601, 0.953404,
		0.141162, -0.944207, -0.297566,
		0.989957, 0.132322, 0.049754,
		39.853863, 35.797363, 42.016953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301113, 35.194393, 42.319416>,  <39.160892, 35.704739, 41.982124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301113, 35.194393, 42.319416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629627, 35.415871, 42.374428>,  <39.826736, 35.548759, 42.407436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629627, 35.415871, 42.374428>,  <39.301113, 35.194393, 42.319416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629627, 35.415871, 42.374428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048858, -0.171916, 0.983899,
		0.568424, -0.814780, -0.114139,
		0.821284, 0.553696, 0.137530,
		39.876011, 35.581978, 42.415688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088852, 34.460148, 42.132538>,  <39.301113, 35.194393, 42.319416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088852, 34.460148, 42.132538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806438, 34.189117, 42.214901>,  <38.636990, 34.026497, 42.264320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806438, 34.189117, 42.214901>,  <39.088852, 34.460148, 42.132538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806438, 34.189117, 42.214901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049239, -0.243086, -0.968754,
		0.706462, -0.694114, 0.138265,
		-0.706036, -0.677580, 0.205908,
		38.594627, 33.985844, 42.276672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274570, 33.748661, 41.942142>,  <39.088852, 34.460148, 42.132538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274570, 33.748661, 41.942142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875347, 33.757877, 41.965298>,  <38.635815, 33.763409, 41.979191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875347, 33.757877, 41.965298>,  <39.274570, 33.748661, 41.942142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875347, 33.757877, 41.965298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060694, -0.149837, -0.986846,
		-0.014065, -0.988442, 0.150945,
		-0.998057, 0.023041, 0.057885,
		38.575932, 33.764790, 41.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914188, 33.168919, 41.468826>,  <39.274570, 33.748661, 41.942142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914188, 33.168919, 41.468826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598183, 33.394619, 41.564747>,  <38.408581, 33.530037, 41.622299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598183, 33.394619, 41.564747>,  <38.914188, 33.168919, 41.468826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598183, 33.394619, 41.564747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299599, -0.014053, -0.953962,
		-0.534903, -0.825485, 0.180151,
		-0.790012, 0.564250, 0.239798,
		38.361179, 33.563892, 41.636684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267250, 32.829002, 41.259228>,  <38.914188, 33.168919, 41.468826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267250, 32.829002, 41.259228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182640, 33.219212, 41.283237>,  <38.131874, 33.453339, 41.297642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182640, 33.219212, 41.283237>,  <38.267250, 32.829002, 41.259228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182640, 33.219212, 41.283237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471510, -0.048061, -0.880550,
		-0.856115, -0.214562, 0.470138,
		-0.211528, 0.975527, 0.060022,
		38.119183, 33.511871, 41.301243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613911, 32.798485, 41.168526>,  <38.267250, 32.829002, 41.259228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613911, 32.798485, 41.168526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706005, 33.179375, 41.088264>,  <37.761261, 33.407909, 41.040108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706005, 33.179375, 41.088264>,  <37.613911, 32.798485, 41.168526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706005, 33.179375, 41.088264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475311, -0.069890, -0.877038,
		-0.849159, 0.297300, 0.436511,
		0.230236, 0.952223, -0.200658,
		37.775074, 33.465042, 41.028069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979919, 33.063812, 40.757004>,  <37.613911, 32.798485, 41.168526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979919, 33.063812, 40.757004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259769, 33.345497, 40.708672>,  <37.427681, 33.514507, 40.679672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259769, 33.345497, 40.708672>,  <36.979919, 33.063812, 40.757004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259769, 33.345497, 40.708672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405869, 0.252519, -0.878353,
		-0.588039, 0.663562, 0.462489,
		0.699629, 0.704216, -0.120829,
		37.469658, 33.556763, 40.672424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563679, 33.660221, 40.490475>,  <36.979919, 33.063812, 40.757004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563679, 33.660221, 40.490475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948757, 33.671764, 40.382858>,  <37.179806, 33.678688, 40.318287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948757, 33.671764, 40.382858>,  <36.563679, 33.660221, 40.490475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948757, 33.671764, 40.382858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270516, 0.125157, -0.954545,
		0.006128, 0.991717, 0.128294,
		0.962696, 0.028856, -0.269042,
		37.237568, 33.680420, 40.302147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731232, 34.278423, 40.242004>,  <36.563679, 33.660221, 40.490475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731232, 34.278423, 40.242004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980347, 34.023315, 40.060722>,  <37.129814, 33.870251, 39.951954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980347, 34.023315, 40.060722>,  <36.731232, 34.278423, 40.242004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980347, 34.023315, 40.060722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395968, 0.242665, -0.885620,
		0.674796, 0.731004, -0.101408,
		0.622784, -0.637767, -0.453203,
		37.167183, 33.831985, 39.924763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781212, 34.595299, 39.638641>,  <36.731232, 34.278423, 40.242004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781212, 34.595299, 39.638641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953503, 34.240227, 39.573524>,  <37.056877, 34.027184, 39.534454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953503, 34.240227, 39.573524>,  <36.781212, 34.595299, 39.638641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953503, 34.240227, 39.573524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408568, -0.030955, -0.912203,
		0.804703, 0.459422, -0.376010,
		0.430726, -0.887679, -0.162795,
		37.082722, 33.973923, 39.524685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963604, 34.592766, 38.860336>,  <36.781212, 34.595299, 39.638641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963604, 34.592766, 38.860336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922684, 34.213005, 38.979111>,  <36.898132, 33.985149, 39.050377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922684, 34.213005, 38.979111>,  <36.963604, 34.592766, 38.860336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922684, 34.213005, 38.979111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490389, -0.211579, -0.845430,
		0.865478, -0.232106, -0.443931,
		-0.102303, -0.949400, 0.296939,
		36.891994, 33.928185, 39.068192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133278, 34.159660, 38.323898>,  <36.963604, 34.592766, 38.860336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133278, 34.159660, 38.323898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901871, 33.929714, 38.555363>,  <36.763027, 33.791748, 38.694241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901871, 33.929714, 38.555363>,  <37.133278, 34.159660, 38.323898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901871, 33.929714, 38.555363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664402, -0.079435, -0.743142,
		0.473172, -0.814384, -0.335987,
		-0.578514, -0.574864, 0.578665,
		36.728317, 33.757256, 38.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028538, 33.540421, 37.911171>,  <37.133278, 34.159660, 38.323898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028538, 33.540421, 37.911171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740414, 33.607960, 38.180286>,  <36.567539, 33.648483, 38.341755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740414, 33.607960, 38.180286>,  <37.028538, 33.540421, 37.911171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740414, 33.607960, 38.180286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688048, -0.050884, -0.723879,
		-0.087996, -0.984327, 0.152832,
		-0.720310, 0.168855, 0.672787,
		36.524323, 33.658615, 38.382122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.470577, 33.024174, 45.927898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119125, 33.214363, 45.910343>,  <38.908253, 33.328476, 45.899811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119125, 33.214363, 45.910343>,  <39.470577, 33.024174, 45.927898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119125, 33.214363, 45.910343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058805, -0.198970, -0.978240,
		-0.473864, -0.856932, 0.202782,
		-0.878632, 0.475478, -0.043893,
		38.855537, 33.357006, 45.897175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066875, 32.618195, 45.391731>,  <39.470577, 33.024174, 45.927898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066875, 32.618195, 45.391731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864357, 32.961964, 45.420166>,  <38.742847, 33.168224, 45.437225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864357, 32.961964, 45.420166>,  <39.066875, 32.618195, 45.391731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864357, 32.961964, 45.420166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001798, 0.083485, -0.996507,
		-0.862358, -0.504400, -0.043813,
		-0.506296, 0.859425, 0.071087,
		38.712467, 33.219791, 45.441494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632542, 32.545517, 44.962036>,  <39.066875, 32.618195, 45.391731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632542, 32.545517, 44.962036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662048, 32.942154, 45.004551>,  <38.679752, 33.180138, 45.030060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662048, 32.942154, 45.004551>,  <38.632542, 32.545517, 44.962036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662048, 32.942154, 45.004551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119020, 0.114571, -0.986260,
		-0.990148, 0.060104, 0.126471,
		0.073768, 0.991595, 0.106289,
		38.684177, 33.239632, 45.036438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080406, 32.816841, 44.618626>,  <38.632542, 32.545517, 44.962036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080406, 32.816841, 44.618626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312466, 33.142292, 44.633736>,  <38.451702, 33.337563, 44.642803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312466, 33.142292, 44.633736>,  <38.080406, 32.816841, 44.618626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312466, 33.142292, 44.633736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184267, 0.176281, -0.966939,
		-0.793391, 0.554011, 0.252195,
		0.580152, 0.813632, 0.037774,
		38.486511, 33.386383, 44.645069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634235, 33.291988, 44.342171>,  <38.080406, 32.816841, 44.618626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634235, 33.291988, 44.342171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999870, 33.450470, 44.307610>,  <38.219250, 33.545559, 44.286873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999870, 33.450470, 44.307610>,  <37.634235, 33.291988, 44.342171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999870, 33.450470, 44.307610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204049, 0.265270, -0.942335,
		-0.350438, 0.879007, 0.323325,
		0.914088, 0.396204, -0.086399,
		38.274097, 33.569332, 44.281689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471607, 33.861130, 43.968243>,  <37.634235, 33.291988, 44.342171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471607, 33.861130, 43.968243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865704, 33.800274, 43.936863>,  <38.102161, 33.763760, 43.918034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865704, 33.800274, 43.936863>,  <37.471607, 33.861130, 43.968243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865704, 33.800274, 43.936863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031077, 0.291705, -0.956003,
		0.168329, 0.944331, 0.282672,
		0.985241, -0.152139, -0.078449,
		38.161274, 33.754631, 43.913326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656036, 34.369343, 43.383080>,  <37.471607, 33.861130, 43.968243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656036, 34.369343, 43.383080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968292, 34.121033, 43.412033>,  <38.155647, 33.972046, 43.429405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968292, 34.121033, 43.412033>,  <37.656036, 34.369343, 43.383080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968292, 34.121033, 43.412033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252296, 0.207053, -0.945238,
		0.571789, 0.756156, 0.318253,
		0.780643, -0.620771, 0.072385,
		38.202484, 33.934803, 43.433750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316692, 34.708008, 43.305115>,  <37.656036, 34.369343, 43.383080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316692, 34.708008, 43.305115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343346, 34.322422, 43.202099>,  <38.359337, 34.091068, 43.140289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343346, 34.322422, 43.202099>,  <38.316692, 34.708008, 43.305115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343346, 34.322422, 43.202099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268292, 0.265921, -0.925908,
		0.961030, -0.007401, 0.276343,
		0.066633, -0.963966, -0.257544,
		38.363335, 34.033234, 43.124836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913265, 34.690254, 42.796928>,  <38.316692, 34.708008, 43.305115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913265, 34.690254, 42.796928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679424, 34.367279, 42.765205>,  <38.539120, 34.173496, 42.746170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679424, 34.367279, 42.765205>,  <38.913265, 34.690254, 42.796928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679424, 34.367279, 42.765205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138081, -0.002692, -0.990417,
		0.799482, -0.589953, 0.113065,
		-0.584604, -0.807433, -0.079309,
		38.504044, 34.125050, 42.741413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648045, 34.918709, 42.902046>,  <38.913265, 34.690254, 42.796928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648045, 34.918709, 42.902046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864868, 35.253712, 42.874462>,  <39.994961, 35.454712, 42.857910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864868, 35.253712, 42.874462>,  <39.648045, 34.918709, 42.902046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864868, 35.253712, 42.874462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067086, 0.038671, 0.996998,
		0.837658, -0.545058, -0.035223,
		0.542060, 0.837506, -0.068959,
		40.027485, 35.504963, 42.853775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132862, 34.840042, 43.378590>,  <39.648045, 34.918709, 42.902046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132862, 34.840042, 43.378590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142651, 35.233170, 43.305420>,  <40.148521, 35.469048, 43.261520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142651, 35.233170, 43.305420>,  <40.132862, 34.840042, 43.378590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142651, 35.233170, 43.305420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036083, 0.183726, 0.982315,
		0.999049, -0.017435, 0.039959,
		0.024468, 0.982823, -0.182922,
		40.149990, 35.528015, 43.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745239, 35.114792, 43.674480>,  <40.132862, 34.840042, 43.378590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745239, 35.114792, 43.674480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.491074, 35.420944, 43.633591>,  <40.338573, 35.604633, 43.609058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.491074, 35.420944, 43.633591>,  <40.745239, 35.114792, 43.674480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491074, 35.420944, 43.633591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057755, 0.179119, 0.982131,
		0.770011, 0.618154, -0.158019,
		-0.635412, 0.765377, -0.102222,
		40.300449, 35.650558, 43.602924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046059, 35.689835, 44.061142>,  <40.745239, 35.114792, 43.674480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046059, 35.689835, 44.061142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663364, 35.801754, 44.029224>,  <40.433746, 35.868904, 44.010075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663364, 35.801754, 44.029224>,  <41.046059, 35.689835, 44.061142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663364, 35.801754, 44.029224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022775, 0.345439, 0.938165,
		0.290061, 0.895760, -0.336867,
		-0.956737, 0.279797, -0.079798,
		40.376343, 35.885693, 44.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039627, 36.358917, 44.317707>,  <41.046059, 35.689835, 44.061142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039627, 36.358917, 44.317707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658012, 36.239628, 44.329517>,  <40.429043, 36.168053, 44.336605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658012, 36.239628, 44.329517>,  <41.039627, 36.358917, 44.317707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658012, 36.239628, 44.329517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073060, 0.326999, 0.942196,
		-0.290644, 0.896734, -0.333758,
		-0.954038, -0.298228, 0.029525,
		40.371799, 36.150158, 44.338375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628738, 36.890167, 44.564091>,  <41.039627, 36.358917, 44.317707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628738, 36.890167, 44.564091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406948, 36.570774, 44.657875>,  <40.273872, 36.379139, 44.714146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406948, 36.570774, 44.657875>,  <40.628738, 36.890167, 44.564091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406948, 36.570774, 44.657875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202901, 0.402953, 0.892446,
		-0.807083, 0.447270, -0.385443,
		-0.554480, -0.798485, 0.234465,
		40.240604, 36.331230, 44.728214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928959, 37.171288, 44.820068>,  <40.628738, 36.890167, 44.564091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928959, 37.171288, 44.820068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986839, 36.804848, 44.969639>,  <40.021568, 36.584984, 45.059383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986839, 36.804848, 44.969639>,  <39.928959, 37.171288, 44.820068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986839, 36.804848, 44.969639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231028, 0.336181, 0.913022,
		-0.962127, -0.218501, -0.163000,
		0.144699, -0.916100, 0.373929,
		40.030251, 36.530018, 45.081818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281723, 37.007912, 45.138893>,  <39.928959, 37.171288, 44.820068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281723, 37.007912, 45.138893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570248, 36.774540, 45.288193>,  <39.743362, 36.634518, 45.377773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570248, 36.774540, 45.288193>,  <39.281723, 37.007912, 45.138893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570248, 36.774540, 45.288193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241040, 0.293756, 0.924990,
		-0.649309, -0.757178, 0.071261,
		0.721316, -0.583428, 0.373249,
		39.786644, 36.599510, 45.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901970, 36.676510, 45.571613>,  <39.281723, 37.007912, 45.138893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901970, 36.676510, 45.571613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278000, 36.622482, 45.696842>,  <39.503616, 36.590065, 45.771980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.278000, 36.622482, 45.696842>,  <38.901970, 36.676510, 45.571613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278000, 36.622482, 45.696842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266024, 0.283789, 0.921246,
		-0.213282, -0.949325, 0.230850,
		0.940075, -0.135074, 0.313071,
		39.560024, 36.581959, 45.790764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876896, 36.227280, 46.151989>,  <38.901970, 36.676510, 45.571613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876896, 36.227280, 46.151989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231091, 36.407776, 46.196342>,  <39.443607, 36.516071, 46.222954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231091, 36.407776, 46.196342>,  <38.876896, 36.227280, 46.151989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231091, 36.407776, 46.196342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216634, 0.189788, 0.957627,
		0.411075, -0.871988, 0.265809,
		0.885487, 0.451240, 0.110885,
		39.496738, 36.543148, 46.229607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127171, 35.935894, 46.717606>,  <38.876896, 36.227280, 46.151989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127171, 35.935894, 46.717606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330875, 36.278973, 46.689285>,  <39.453098, 36.484818, 46.672291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330875, 36.278973, 46.689285>,  <39.127171, 35.935894, 46.717606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330875, 36.278973, 46.689285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092354, 0.136261, 0.986359,
		0.855640, -0.495778, 0.148605,
		0.509265, 0.857693, -0.070803,
		39.483654, 36.536282, 46.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643875, 35.856884, 47.207642>,  <39.127171, 35.935894, 46.717606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643875, 35.856884, 47.207642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632801, 36.250275, 47.136082>,  <39.626156, 36.486309, 47.093147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632801, 36.250275, 47.136082>,  <39.643875, 35.856884, 47.207642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632801, 36.250275, 47.136082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169478, 0.180993, 0.968772,
		0.985145, -0.003503, -0.171688,
		-0.027681, 0.983478, -0.178898,
		39.624496, 36.545319, 47.082413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186226, 36.109871, 47.579422>,  <39.643875, 35.856884, 47.207642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186226, 36.109871, 47.579422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.931992, 36.416897, 47.546246>,  <39.779449, 36.601112, 47.526340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.931992, 36.416897, 47.546246>,  <40.186226, 36.109871, 47.579422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931992, 36.416897, 47.546246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022102, 0.089300, 0.995759,
		0.771715, 0.634723, -0.039793,
		-0.635585, 0.767563, -0.082942,
		39.741318, 36.647167, 47.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445168, 36.497139, 48.067902>,  <40.186226, 36.109871, 47.579422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445168, 36.497139, 48.067902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095566, 36.676559, 47.993145>,  <39.885807, 36.784210, 47.948292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095566, 36.676559, 47.993145>,  <40.445168, 36.497139, 48.067902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095566, 36.676559, 47.993145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041784, 0.313811, 0.948566,
		0.484124, 0.836856, -0.255529,
		-0.874001, 0.448547, -0.186890,
		39.833366, 36.811123, 47.937077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.472702, 37.232670, 47.406235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818237, 37.035217, 47.446461>,  <35.025558, 36.916744, 47.470596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818237, 37.035217, 47.446461>,  <34.472702, 37.232670, 47.406235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818237, 37.035217, 47.446461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138195, 0.040229, -0.989588,
		0.484446, 0.868740, 0.102968,
		0.863837, -0.493631, 0.100567,
		35.077389, 36.887127, 47.476631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848900, 37.614937, 46.935131>,  <34.472702, 37.232670, 47.406235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848900, 37.614937, 46.935131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038097, 37.265038, 46.977249>,  <35.151615, 37.055096, 47.002522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038097, 37.265038, 46.977249>,  <34.848900, 37.614937, 46.935131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038097, 37.265038, 46.977249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, -0.078147, -0.993983,
		0.877716, 0.478230, 0.030181,
		0.472993, -0.874751, 0.105298,
		35.179996, 37.002613, 47.008839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418293, 37.664177, 46.552662>,  <34.848900, 37.614937, 46.935131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418293, 37.664177, 46.552662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363411, 37.268665, 46.576305>,  <35.330482, 37.031361, 46.590492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363411, 37.268665, 46.576305>,  <35.418293, 37.664177, 46.552662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363411, 37.268665, 46.576305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076107, -0.070024, -0.994638,
		0.987615, -0.131970, 0.084861,
		-0.137205, -0.988777, 0.059113,
		35.322250, 36.972031, 46.594040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816589, 37.357220, 46.040394>,  <35.418293, 37.664177, 46.552662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816589, 37.357220, 46.040394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539814, 37.077526, 46.112263>,  <35.373749, 36.909710, 46.155384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539814, 37.077526, 46.112263>,  <35.816589, 37.357220, 46.040394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539814, 37.077526, 46.112263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188510, -0.065250, -0.979901,
		0.696908, -0.711905, -0.086664,
		-0.691941, -0.699238, 0.179674,
		35.332233, 36.867756, 46.166164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025780, 36.750965, 45.528191>,  <35.816589, 37.357220, 46.040394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025780, 36.750965, 45.528191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655388, 36.663101, 45.651031>,  <35.433155, 36.610382, 45.724735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655388, 36.663101, 45.651031>,  <36.025780, 36.750965, 45.528191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655388, 36.663101, 45.651031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299980, -0.065950, -0.951663,
		0.229299, -0.973344, -0.004826,
		-0.925977, -0.219663, 0.307106,
		35.377594, 36.597202, 45.743164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873650, 36.099907, 45.217781>,  <36.025780, 36.750965, 45.528191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873650, 36.099907, 45.217781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526863, 36.283905, 45.294491>,  <35.318790, 36.394306, 45.340515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526863, 36.283905, 45.294491>,  <35.873650, 36.099907, 45.217781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526863, 36.283905, 45.294491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298286, -0.170674, -0.939093,
		-0.399251, -0.871362, 0.285179,
		-0.866962, 0.459999, 0.191773,
		35.266773, 36.421906, 45.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302971, 35.762169, 45.013721>,  <35.873650, 36.099907, 45.217781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302971, 35.762169, 45.013721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080418, 36.094280, 45.026836>,  <34.946888, 36.293549, 45.034706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080418, 36.094280, 45.026836>,  <35.302971, 35.762169, 45.013721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080418, 36.094280, 45.026836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125660, -0.045067, -0.991049,
		-0.821372, -0.555520, 0.129408,
		-0.556380, 0.830281, 0.032791,
		34.913506, 36.343365, 45.036674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736149, 35.615936, 44.552383>,  <35.302971, 35.762169, 45.013721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736149, 35.615936, 44.552383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728230, 36.014584, 44.584286>,  <34.723476, 36.253773, 44.603428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728230, 36.014584, 44.584286>,  <34.736149, 35.615936, 44.552383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728230, 36.014584, 44.584286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428351, 0.063626, -0.901369,
		-0.903395, -0.052013, 0.425643,
		-0.019801, 0.996617, 0.079759,
		34.722290, 36.313568, 44.608215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099377, 35.838902, 44.339561>,  <34.736149, 35.615936, 44.552383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099377, 35.838902, 44.339561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356697, 36.141914, 44.295174>,  <34.511089, 36.323723, 44.268539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356697, 36.141914, 44.295174>,  <34.099377, 35.838902, 44.339561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356697, 36.141914, 44.295174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331602, 0.145037, -0.932204,
		-0.690077, 0.636486, 0.344501,
		0.643300, 0.757529, -0.110973,
		34.549686, 36.369175, 44.261883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686970, 36.368637, 44.127930>,  <34.099377, 35.838902, 44.339561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686970, 36.368637, 44.127930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056458, 36.493443, 44.039028>,  <34.278149, 36.568325, 43.985687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056458, 36.493443, 44.039028>,  <33.686970, 36.368637, 44.127930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056458, 36.493443, 44.039028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291547, 0.196234, -0.936212,
		-0.248494, 0.929592, 0.272231,
		0.923716, 0.312011, -0.222257,
		34.333572, 36.587048, 43.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578266, 36.882526, 43.686428>,  <33.686970, 36.368637, 44.127930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578266, 36.882526, 43.686428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961044, 36.795631, 43.609413>,  <34.190712, 36.743496, 43.563202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.961044, 36.795631, 43.609413>,  <33.578266, 36.882526, 43.686428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961044, 36.795631, 43.609413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121121, 0.303981, -0.944947,
		0.263807, 0.927579, 0.264580,
		0.956941, -0.217237, -0.192541,
		34.248127, 36.730461, 43.551651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821377, 37.473083, 43.366066>,  <33.578266, 36.882526, 43.686428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821377, 37.473083, 43.366066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075397, 37.178043, 43.274273>,  <34.227810, 37.001019, 43.219196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075397, 37.178043, 43.274273>,  <33.821377, 37.473083, 43.366066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075397, 37.178043, 43.274273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010225, 0.305074, -0.952274,
		0.772402, 0.602396, 0.201279,
		0.635052, -0.737596, -0.229480,
		34.265911, 36.956764, 43.205429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440865, 37.694828, 43.073524>,  <33.821377, 37.473083, 43.366066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440865, 37.694828, 43.073524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342354, 37.333130, 42.933994>,  <34.283249, 37.116112, 42.850277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342354, 37.333130, 42.933994>,  <34.440865, 37.694828, 43.073524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342354, 37.333130, 42.933994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116907, 0.329572, -0.936864,
		0.962123, -0.271508, 0.024548,
		-0.246276, -0.904249, -0.348830,
		34.268471, 37.061855, 42.829346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774456, 37.866692, 42.463387>,  <34.440865, 37.694828, 43.073524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774456, 37.866692, 42.463387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597507, 37.508984, 42.436272>,  <34.491341, 37.294361, 42.420002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597507, 37.508984, 42.436272>,  <34.774456, 37.866692, 42.463387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597507, 37.508984, 42.436272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082827, 0.116003, -0.989789,
		0.893001, -0.432236, -0.125385,
		-0.442368, -0.894268, -0.067790,
		34.464798, 37.240704, 42.415936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579689, 38.131775, 42.305077>,  <34.774456, 37.866692, 42.463387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579689, 38.131775, 42.305077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603642, 38.530972, 42.296791>,  <35.618015, 38.770489, 42.291821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603642, 38.530972, 42.296791>,  <35.579689, 38.131775, 42.305077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603642, 38.530972, 42.296791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200358, 0.008316, 0.979688,
		0.977891, -0.062819, -0.199457,
		0.059884, 0.997990, -0.020718,
		35.621605, 38.830368, 42.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994053, 38.166306, 42.857941>,  <35.579689, 38.131775, 42.305077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994053, 38.166306, 42.857941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862766, 38.541496, 42.813259>,  <35.783993, 38.766609, 42.786449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862766, 38.541496, 42.813259>,  <35.994053, 38.166306, 42.857941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862766, 38.541496, 42.813259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031929, 0.107172, 0.993728,
		0.944062, 0.329727, -0.005228,
		-0.328219, 0.937974, -0.111705,
		35.764301, 38.822887, 42.779747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474972, 38.712696, 43.142265>,  <35.994053, 38.166306, 42.857941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474972, 38.712696, 43.142265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120571, 38.896954, 43.121078>,  <35.907932, 39.007507, 43.108364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120571, 38.896954, 43.121078>,  <36.474972, 38.712696, 43.142265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120571, 38.896954, 43.121078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006214, 0.102433, 0.994720,
		0.463642, 0.881652, -0.087893,
		-0.886001, 0.460648, -0.052971,
		35.854771, 39.035149, 43.105186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548988, 39.425461, 43.458466>,  <36.474972, 38.712696, 43.142265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548988, 39.425461, 43.458466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158596, 39.338940, 43.468914>,  <35.924362, 39.287025, 43.475182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158596, 39.338940, 43.468914>,  <36.548988, 39.425461, 43.458466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158596, 39.338940, 43.468914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051826, 0.346920, 0.936462,
		-0.211620, 0.912611, -0.349796,
		-0.975977, -0.216302, 0.026118,
		35.865803, 39.274048, 43.476749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169025, 40.006565, 43.842621>,  <36.548988, 39.425461, 43.458466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169025, 40.006565, 43.842621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922783, 39.693840, 43.882221>,  <35.775040, 39.506207, 43.905983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922783, 39.693840, 43.882221>,  <36.169025, 40.006565, 43.842621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922783, 39.693840, 43.882221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048936, 0.163310, 0.985360,
		-0.786536, 0.601746, -0.138793,
		-0.615603, -0.781813, 0.099002,
		35.738102, 39.459297, 43.911922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532124, 40.165905, 44.094627>,  <36.169025, 40.006565, 43.842621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532124, 40.165905, 44.094627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552307, 39.781738, 44.204208>,  <35.564419, 39.551239, 44.269955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552307, 39.781738, 44.204208>,  <35.532124, 40.165905, 44.094627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552307, 39.781738, 44.204208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116948, 0.266729, 0.956650,
		-0.991855, -0.080313, -0.098859,
		0.050463, -0.960420, 0.273949,
		35.567448, 39.493614, 44.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199398, 40.212105, 44.650097>,  <35.532124, 40.165905, 44.094627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199398, 40.212105, 44.650097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.351868, 39.844761, 44.692650>,  <35.443348, 39.624355, 44.718182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.351868, 39.844761, 44.692650>,  <35.199398, 40.212105, 44.650097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351868, 39.844761, 44.692650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108754, 0.069727, 0.991620,
		-0.918085, -0.389547, -0.073298,
		0.381172, -0.918363, 0.106380,
		35.466221, 39.569252, 44.724564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746719, 39.834194, 45.206593>,  <35.199398, 40.212105, 44.650097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746719, 39.834194, 45.206593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094070, 39.636921, 45.185860>,  <35.302483, 39.518559, 45.173420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094070, 39.636921, 45.185860>,  <34.746719, 39.834194, 45.206593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094070, 39.636921, 45.185860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066896, 0.012942, 0.997676,
		-0.491363, -0.869831, 0.044231,
		0.868382, -0.493180, -0.051829,
		35.354584, 39.488968, 45.170311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622292, 39.292252, 45.639553>,  <34.746719, 39.834194, 45.206593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622292, 39.292252, 45.639553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016918, 39.347469, 45.604595>,  <35.253693, 39.380600, 45.583622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016918, 39.347469, 45.604595>,  <34.622292, 39.292252, 45.639553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016918, 39.347469, 45.604595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116471, -0.219093, 0.968727,
		0.114580, -0.965889, -0.232227,
		0.986563, 0.138044, -0.087394,
		35.312885, 39.388882, 45.578377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918919, 38.773663, 46.074257>,  <34.622292, 39.292252, 45.639553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918919, 38.773663, 46.074257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198624, 39.049889, 46.000336>,  <35.366447, 39.215626, 45.955982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198624, 39.049889, 46.000336>,  <34.918919, 38.773663, 46.074257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198624, 39.049889, 46.000336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389276, -0.151012, 0.908658,
		0.599580, -0.707329, -0.374417,
		0.699262, 0.690565, -0.184803,
		35.408401, 39.257057, 45.944897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623455, 38.541023, 46.211525>,  <34.918919, 38.773663, 46.074257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623455, 38.541023, 46.211525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648426, 38.933537, 46.284386>,  <35.663406, 39.169044, 46.328102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648426, 38.933537, 46.284386>,  <35.623455, 38.541023, 46.211525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648426, 38.933537, 46.284386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545939, -0.186357, 0.816836,
		0.835496, 0.048453, -0.547356,
		0.062426, 0.981287, 0.182153,
		35.667152, 39.227924, 46.339031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270046, 38.657978, 46.556942>,  <35.623455, 38.541023, 46.211525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270046, 38.657978, 46.556942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095783, 39.011147, 46.626976>,  <35.991226, 39.223045, 46.668999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095783, 39.011147, 46.626976>,  <36.270046, 38.657978, 46.556942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095783, 39.011147, 46.626976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511201, 0.082593, 0.855484,
		0.740861, 0.462205, -0.487331,
		-0.435659, 0.882918, 0.175090,
		35.965084, 39.276024, 46.679504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828609, 39.081047, 46.788399>,  <36.270046, 38.657978, 46.556942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828609, 39.081047, 46.788399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494007, 39.243004, 46.936089>,  <36.293247, 39.340176, 47.024704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494007, 39.243004, 46.936089>,  <36.828609, 39.081047, 46.788399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494007, 39.243004, 46.936089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361364, -0.098918, 0.927163,
		0.411920, 0.909000, -0.063567,
		-0.836503, 0.404888, 0.369226,
		36.243057, 39.364471, 47.046856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004387, 39.665291, 47.374287>,  <36.828609, 39.081047, 46.788399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004387, 39.665291, 47.374287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624817, 39.577137, 47.464596>,  <36.397076, 39.524246, 47.518780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624817, 39.577137, 47.464596>,  <37.004387, 39.665291, 47.374287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624817, 39.577137, 47.464596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266934, -0.179326, 0.946883,
		-0.168193, 0.958787, 0.228995,
		-0.948924, -0.220385, 0.225772,
		36.340141, 39.511021, 47.532326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500519, 40.266544, 47.605034>,  <37.004387, 39.665291, 47.374287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500519, 40.266544, 47.605034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890972, 40.295544, 47.686916>,  <38.125244, 40.312943, 47.736046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890972, 40.295544, 47.686916>,  <37.500519, 40.266544, 47.605034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890972, 40.295544, 47.686916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214312, -0.169187, -0.962001,
		-0.035112, 0.982914, -0.180687,
		0.976134, 0.072501, 0.204710,
		38.183811, 40.317295, 47.748329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677921, 40.783150, 47.106297>,  <37.500519, 40.266544, 47.605034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677921, 40.783150, 47.106297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.996143, 40.581841, 47.241241>,  <38.187077, 40.461056, 47.322208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.996143, 40.581841, 47.241241>,  <37.677921, 40.783150, 47.106297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996143, 40.581841, 47.241241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272319, -0.200381, -0.941111,
		0.541231, 0.840576, -0.022365,
		0.795557, -0.503268, 0.337358,
		38.234810, 40.430859, 47.342449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264774, 40.922070, 46.612381>,  <37.677921, 40.783150, 47.106297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264774, 40.922070, 46.612381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344181, 40.578362, 46.800957>,  <38.391827, 40.372139, 46.914101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344181, 40.578362, 46.800957>,  <38.264774, 40.922070, 46.612381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344181, 40.578362, 46.800957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359816, -0.383525, -0.850553,
		0.911660, 0.338480, 0.233041,
		0.198518, -0.859267, 0.471435,
		38.403736, 40.320580, 46.942387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907982, 40.815552, 46.441845>,  <38.264774, 40.922070, 46.612381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907982, 40.815552, 46.441845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.790569, 40.445267, 46.537258>,  <38.720123, 40.223095, 46.594505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.790569, 40.445267, 46.537258>,  <38.907982, 40.815552, 46.441845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790569, 40.445267, 46.537258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408370, -0.347040, -0.844273,
		0.864334, -0.150410, 0.479900,
		-0.293532, -0.925711, 0.238535,
		38.702511, 40.167553, 46.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500038, 40.350918, 46.312939>,  <38.907982, 40.815552, 46.441845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500038, 40.350918, 46.312939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188526, 40.100136, 46.321175>,  <39.001617, 39.949665, 46.326118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188526, 40.100136, 46.321175>,  <39.500038, 40.350918, 46.312939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188526, 40.100136, 46.321175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329224, -0.436449, -0.837331,
		0.533960, -0.645317, 0.546307,
		-0.778779, -0.626960, 0.020592,
		38.954891, 39.912048, 46.327351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856609, 39.852882, 45.999104>,  <39.500038, 40.350918, 46.312939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856609, 39.852882, 45.999104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.466293, 39.769230, 45.973488>,  <39.232105, 39.719040, 45.958118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.466293, 39.769230, 45.973488>,  <39.856609, 39.852882, 45.999104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466293, 39.769230, 45.973488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165782, -0.516225, -0.840254,
		0.142663, -0.830528, 0.538397,
		-0.975789, -0.209130, -0.064040,
		39.173557, 39.706490, 45.954277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851654, 39.042099, 45.732403>,  <39.856609, 39.852882, 45.999104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851654, 39.042099, 45.732403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508572, 39.240108, 45.676857>,  <39.302723, 39.358913, 45.643528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508572, 39.240108, 45.676857>,  <39.851654, 39.042099, 45.732403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508572, 39.240108, 45.676857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059690, -0.364150, -0.929425,
		-0.510662, -0.788886, 0.341883,
		-0.857707, 0.495029, -0.138869,
		39.251259, 39.388618, 45.635197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442558, 38.501762, 45.435581>,  <39.851654, 39.042099, 45.732403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442558, 38.501762, 45.435581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249435, 38.839584, 45.342960>,  <39.133560, 39.042278, 45.287388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249435, 38.839584, 45.342960>,  <39.442558, 38.501762, 45.435581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249435, 38.839584, 45.342960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051203, -0.291184, -0.955296,
		-0.874227, -0.449370, 0.183830,
		-0.482810, 0.844558, -0.231552,
		39.104591, 39.092953, 45.273495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735867, 38.283127, 45.121822>,  <39.442558, 38.501762, 45.435581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735867, 38.283127, 45.121822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.864861, 38.630009, 44.970058>,  <38.942257, 38.838139, 44.878998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.864861, 38.630009, 44.970058>,  <38.735867, 38.283127, 45.121822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864861, 38.630009, 44.970058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233117, -0.315723, -0.919769,
		-0.917422, 0.385055, 0.100347,
		0.322480, 0.867209, -0.379414,
		38.961605, 38.890171, 44.856236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289646, 38.461342, 44.574345>,  <38.735867, 38.283127, 45.121822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289646, 38.461342, 44.574345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597279, 38.697735, 44.476982>,  <38.781860, 38.839569, 44.418564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597279, 38.697735, 44.476982>,  <38.289646, 38.461342, 44.574345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597279, 38.697735, 44.476982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279866, -0.030997, -0.959538,
		-0.574616, 0.806088, 0.141557,
		0.769085, 0.590983, -0.243408,
		38.828003, 38.875031, 44.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019432, 38.972279, 44.082710>,  <38.289646, 38.461342, 44.574345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019432, 38.972279, 44.082710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416595, 38.986328, 44.037285>,  <38.654892, 38.994759, 44.010029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416595, 38.986328, 44.037285>,  <38.019432, 38.972279, 44.082710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416595, 38.986328, 44.037285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109115, -0.109744, -0.987952,
		-0.047161, 0.993339, -0.105134,
		0.992910, 0.035121, -0.113564,
		38.714470, 38.996864, 44.003216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036488, 39.286842, 43.514927>,  <38.019432, 38.972279, 44.082710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036488, 39.286842, 43.514927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.410622, 39.147724, 43.540821>,  <38.635101, 39.064251, 43.556358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.410622, 39.147724, 43.540821>,  <38.036488, 39.286842, 43.514927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410622, 39.147724, 43.540821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033538, -0.269344, -0.962460,
		0.352181, 0.898047, -0.263590,
		0.935331, -0.347800, 0.064740,
		38.691219, 39.043385, 43.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384106, 39.591171, 42.944592>,  <38.036488, 39.286842, 43.514927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384106, 39.591171, 42.944592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571587, 39.251564, 43.042156>,  <38.684074, 39.047802, 43.100697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571587, 39.251564, 43.042156>,  <38.384106, 39.591171, 42.944592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571587, 39.251564, 43.042156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010694, -0.270645, -0.962620,
		0.883293, 0.453787, -0.117771,
		0.468699, -0.849016, 0.243912,
		38.712196, 38.996861, 43.115330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795082, 39.578175, 42.419968>,  <38.384106, 39.591171, 42.944592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795082, 39.578175, 42.419968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852085, 39.210892, 42.567795>,  <38.886288, 38.990520, 42.656490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.852085, 39.210892, 42.567795>,  <38.795082, 39.578175, 42.419968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852085, 39.210892, 42.567795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096712, -0.358678, -0.928438,
		0.985057, 0.168054, 0.037686,
		0.142511, -0.918209, 0.369571,
		38.894836, 38.935429, 42.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.245359, 42.684132, 34.470921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943571, 42.721176, 34.211014>,  <26.762499, 42.743404, 34.055069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943571, 42.721176, 34.211014>,  <27.245359, 42.684132, 34.470921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943571, 42.721176, 34.211014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421869, -0.826828, 0.371999,
		-0.502795, 0.554778, 0.662886,
		-0.754469, 0.092612, -0.649768,
		26.717230, 42.748959, 34.016083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596390, 42.742489, 34.851551>,  <27.245359, 42.684132, 34.470921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596390, 42.742489, 34.851551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494473, 42.605671, 34.489758>,  <26.433321, 42.523582, 34.272682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494473, 42.605671, 34.489758>,  <26.596390, 42.742489, 34.851551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494473, 42.605671, 34.489758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543778, -0.722769, 0.426509,
		-0.799616, 0.600510, -0.001837,
		-0.254795, -0.342042, -0.904481,
		26.418034, 42.503059, 34.218414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921867, 42.446735, 34.923874>,  <26.596390, 42.742489, 34.851551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921867, 42.446735, 34.923874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.039963, 42.270321, 34.584858>,  <26.110821, 42.164471, 34.381451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.039963, 42.270321, 34.584858>,  <25.921867, 42.446735, 34.923874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039963, 42.270321, 34.584858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510130, -0.822819, 0.250472,
		-0.807838, 0.358406, -0.467913,
		0.295237, -0.441037, -0.847538,
		26.128534, 42.138008, 34.330597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352785, 41.926975, 34.688011>,  <25.921867, 42.446735, 34.923874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352785, 41.926975, 34.688011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.682100, 41.813633, 34.491272>,  <25.879688, 41.745628, 34.373230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.682100, 41.813633, 34.491272>,  <25.352785, 41.926975, 34.688011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682100, 41.813633, 34.491272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131893, -0.938272, 0.319767,
		-0.552091, -0.198389, -0.809838,
		0.823286, -0.283352, -0.491846,
		25.929087, 41.728626, 34.343719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209871, 41.338734, 34.488422>,  <25.352785, 41.926975, 34.688011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209871, 41.338734, 34.488422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.608297, 41.322643, 34.456829>,  <25.847353, 41.312988, 34.437874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.608297, 41.322643, 34.456829>,  <25.209871, 41.338734, 34.488422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608297, 41.322643, 34.456829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007620, -0.926671, 0.375797,
		-0.088308, -0.373716, -0.923330,
		0.996064, -0.040222, -0.078985,
		25.907116, 41.310577, 34.433132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381561, 40.795410, 34.003399>,  <25.209871, 41.338734, 34.488422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381561, 40.795410, 34.003399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.721254, 40.855774, 34.205795>,  <25.925070, 40.891991, 34.327232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.721254, 40.855774, 34.205795>,  <25.381561, 40.795410, 34.003399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721254, 40.855774, 34.205795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007015, -0.961429, 0.274965,
		0.527971, -0.229960, -0.817536,
		0.849234, 0.150909, 0.505993,
		25.976025, 40.901047, 34.357594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952417, 40.313747, 33.765057>,  <25.381561, 40.795410, 34.003399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952417, 40.313747, 33.765057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057150, 40.417210, 34.136978>,  <26.119989, 40.479286, 34.360130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057150, 40.417210, 34.136978>,  <25.952417, 40.313747, 33.765057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057150, 40.417210, 34.136978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037903, -0.965431, 0.257889,
		0.964369, -0.032281, -0.262583,
		0.261831, 0.258653, 0.929808,
		26.135698, 40.494804, 34.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459501, 39.827675, 33.975529>,  <25.952417, 40.313747, 33.765057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459501, 39.827675, 33.975529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342234, 39.977821, 34.327244>,  <26.271873, 40.067909, 34.538273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.342234, 39.977821, 34.327244>,  <26.459501, 39.827675, 33.975529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342234, 39.977821, 34.327244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244736, -0.859594, 0.448555,
		0.924205, 0.346697, 0.160143,
		-0.293171, 0.375365, 0.879291,
		26.254282, 40.090431, 34.591030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063978, 39.707092, 34.398369>,  <26.459501, 39.827675, 33.975529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063978, 39.707092, 34.398369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730787, 39.765099, 34.611954>,  <26.530872, 39.799904, 34.740105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730787, 39.765099, 34.611954>,  <27.063978, 39.707092, 34.398369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730787, 39.765099, 34.611954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222221, -0.796112, 0.562871,
		0.506720, 0.587517, 0.630919,
		-0.832978, 0.145015, 0.533964,
		26.480894, 39.808601, 34.772144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272738, 39.738560, 35.007008>,  <27.063978, 39.707092, 34.398369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272738, 39.738560, 35.007008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889229, 39.632717, 35.048470>,  <26.659124, 39.569214, 35.073345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889229, 39.632717, 35.048470>,  <27.272738, 39.738560, 35.007008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889229, 39.632717, 35.048470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278781, -0.804979, 0.523728,
		-0.055138, 0.531032, 0.845556,
		-0.958771, -0.264602, 0.103656,
		26.601597, 39.553337, 35.079567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188698, 39.466663, 35.705116>,  <27.272738, 39.738560, 35.007008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188698, 39.466663, 35.705116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850235, 39.337837, 35.535275>,  <26.647158, 39.260540, 35.433369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850235, 39.337837, 35.535275>,  <27.188698, 39.466663, 35.705116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850235, 39.337837, 35.535275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032713, -0.763844, 0.644571,
		-0.531926, 0.559299, 0.635798,
		-0.846159, -0.322065, -0.424605,
		26.596388, 39.241219, 35.407894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783209, 39.214012, 36.247993>,  <27.188698, 39.466663, 35.705116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783209, 39.214012, 36.247993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630941, 39.018414, 35.934059>,  <26.539581, 38.901054, 35.745697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630941, 39.018414, 35.934059>,  <26.783209, 39.214012, 36.247993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630941, 39.018414, 35.934059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000766, -0.848574, 0.529077,
		-0.924711, 0.202005, 0.322652,
		-0.380670, -0.488996, -0.784840,
		26.516741, 38.871716, 35.698608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115593, 38.888088, 36.383160>,  <26.783209, 39.214012, 36.247993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115593, 38.888088, 36.383160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308903, 38.666588, 36.111923>,  <26.424889, 38.533688, 35.949181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308903, 38.666588, 36.111923>,  <26.115593, 38.888088, 36.383160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308903, 38.666588, 36.111923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186723, -0.821918, 0.538132,
		-0.855325, -0.133450, -0.500609,
		0.483274, -0.553753, -0.678089,
		26.453884, 38.500462, 35.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691093, 38.283245, 36.359482>,  <26.115593, 38.888088, 36.383160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691093, 38.283245, 36.359482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032818, 38.181282, 36.178299>,  <26.237852, 38.120102, 36.069588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032818, 38.181282, 36.178299>,  <25.691093, 38.283245, 36.359482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032818, 38.181282, 36.178299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076279, -0.923528, 0.375869,
		-0.514131, -0.286559, -0.808427,
		0.854313, -0.254912, -0.452956,
		26.289112, 38.104809, 36.042412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795652, 37.630844, 36.682098>,  <25.691093, 38.283245, 36.359482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795652, 37.630844, 36.682098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075815, 37.637516, 36.396679>,  <26.243914, 37.641518, 36.225426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075815, 37.637516, 36.396679>,  <25.795652, 37.630844, 36.682098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075815, 37.637516, 36.396679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143706, -0.982548, 0.118097,
		-0.699125, -0.185257, -0.690582,
		0.700409, 0.016677, -0.713547,
		26.285938, 37.642517, 36.182613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642694, 37.198658, 36.167568>,  <25.795652, 37.630844, 36.682098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642694, 37.198658, 36.167568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.041607, 37.225861, 36.178928>,  <26.280954, 37.242184, 36.185745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.041607, 37.225861, 36.178928>,  <25.642694, 37.198658, 36.167568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041607, 37.225861, 36.178928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061991, -0.982482, 0.175747,
		0.039857, -0.173508, -0.984025,
		0.997281, 0.068006, 0.028402,
		26.340792, 37.246262, 36.187450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906252, 36.627098, 35.783901>,  <25.642694, 37.198658, 36.167568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906252, 36.627098, 35.783901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217073, 36.739212, 36.009335>,  <26.403566, 36.806480, 36.144596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217073, 36.739212, 36.009335>,  <25.906252, 36.627098, 35.783901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217073, 36.739212, 36.009335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097940, -0.938318, 0.331613,
		0.621771, -0.202483, -0.756573,
		0.777052, 0.280285, 0.563588,
		26.450190, 36.823299, 36.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402142, 36.057312, 35.683258>,  <25.906252, 36.627098, 35.783901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402142, 36.057312, 35.683258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505306, 36.250690, 36.017864>,  <26.567205, 36.366718, 36.218628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505306, 36.250690, 36.017864>,  <26.402142, 36.057312, 35.683258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505306, 36.250690, 36.017864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392142, -0.843668, 0.366672,
		0.883010, 0.233465, -0.407171,
		0.257912, 0.483444, 0.836519,
		26.582680, 36.395725, 36.268822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081369, 35.740425, 35.790798>,  <26.402142, 36.057312, 35.683258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081369, 35.740425, 35.790798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943710, 35.902672, 36.129509>,  <26.861115, 36.000019, 36.332737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943710, 35.902672, 36.129509>,  <27.081369, 35.740425, 35.790798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943710, 35.902672, 36.129509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193061, -0.852029, 0.486594,
		0.918852, 0.330941, 0.214917,
		-0.344149, 0.405616, 0.846781,
		26.840466, 36.024357, 36.383545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586685, 35.745010, 36.264156>,  <27.081369, 35.740425, 35.790798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586685, 35.745010, 36.264156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.252481, 35.754940, 36.483723>,  <27.051958, 35.760899, 36.615463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.252481, 35.754940, 36.483723>,  <27.586685, 35.745010, 36.264156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252481, 35.754940, 36.483723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251823, -0.870590, 0.422680,
		0.488370, 0.491383, 0.721136,
		-0.835511, 0.024825, 0.548912,
		27.001827, 35.762386, 36.648396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202301, 35.419411, 36.087273>,  <27.586685, 35.745010, 36.264156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202301, 35.419411, 36.087273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556778, 35.416462, 35.901970>,  <28.769464, 35.414692, 35.790787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556778, 35.416462, 35.901970>,  <28.202301, 35.419411, 36.087273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556778, 35.416462, 35.901970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088977, 0.983970, 0.154548,
		0.454695, -0.178179, 0.872643,
		0.886192, -0.007373, -0.463260,
		28.822636, 35.414249, 35.762993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657640, 35.933319, 36.443142>,  <28.202301, 35.419411, 36.087273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657640, 35.933319, 36.443142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872686, 35.877579, 36.110504>,  <29.001715, 35.844135, 35.910923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872686, 35.877579, 36.110504>,  <28.657640, 35.933319, 36.443142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872686, 35.877579, 36.110504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056092, 0.989974, -0.129633,
		0.841323, 0.023047, 0.540042,
		0.537615, -0.139355, -0.831595,
		29.033972, 35.835773, 35.861027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183159, 36.398468, 36.414032>,  <28.657640, 35.933319, 36.443142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183159, 36.398468, 36.414032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179785, 36.288052, 36.029587>,  <29.177761, 36.221802, 35.798920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179785, 36.288052, 36.029587>,  <29.183159, 36.398468, 36.414032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179785, 36.288052, 36.029587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133489, 0.952230, -0.274661,
		0.991014, -0.130614, 0.028817,
		-0.008434, -0.276040, -0.961109,
		29.177254, 36.205238, 35.741253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714560, 36.718483, 36.132950>,  <29.183159, 36.398468, 36.414032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714560, 36.718483, 36.132950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504232, 36.628948, 35.804703>,  <29.378036, 36.575230, 35.607754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504232, 36.628948, 35.804703>,  <29.714560, 36.718483, 36.132950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504232, 36.628948, 35.804703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160542, 0.921299, -0.354166,
		0.835309, -0.317970, -0.448501,
		-0.525818, -0.223834, -0.820617,
		29.346487, 36.561798, 35.558517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181087, 36.924683, 35.653255>,  <29.714560, 36.718483, 36.132950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181087, 36.924683, 35.653255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808107, 36.943966, 35.510029>,  <29.584318, 36.955536, 35.424095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808107, 36.943966, 35.510029>,  <30.181087, 36.924683, 35.653255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808107, 36.943966, 35.510029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169657, 0.933417, -0.316149,
		0.318982, -0.355541, -0.878545,
		-0.932452, 0.048206, -0.358063,
		29.528372, 36.958427, 35.402611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259727, 37.124752, 35.050049>,  <30.181087, 36.924683, 35.653255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259727, 37.124752, 35.050049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883001, 37.224186, 35.140549>,  <29.656965, 37.283848, 35.194847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883001, 37.224186, 35.140549>,  <30.259727, 37.124752, 35.050049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883001, 37.224186, 35.140549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215926, 0.963288, -0.159536,
		-0.257600, -0.101401, -0.960916,
		-0.941816, 0.248584, 0.226248,
		29.600456, 37.298759, 35.208424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093351, 37.775394, 34.696915>,  <30.259727, 37.124752, 35.050049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093351, 37.775394, 34.696915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775436, 37.781597, 34.939590>,  <29.584686, 37.785320, 35.085197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775436, 37.781597, 34.939590>,  <30.093351, 37.775394, 34.696915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775436, 37.781597, 34.939590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043604, 0.998549, 0.031595,
		-0.605318, 0.051565, -0.794311,
		-0.794788, 0.015510, 0.606689,
		29.537001, 37.786251, 35.121597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626202, 38.266666, 34.481850>,  <30.093351, 37.775394, 34.696915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626202, 38.266666, 34.481850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487465, 38.208954, 34.852554>,  <29.404222, 38.174328, 35.074978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487465, 38.208954, 34.852554>,  <29.626202, 38.266666, 34.481850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487465, 38.208954, 34.852554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306541, 0.951272, 0.033373,
		-0.886417, -0.272515, -0.374168,
		-0.346841, -0.144280, 0.926760,
		29.383413, 38.165668, 35.130581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954050, 38.573925, 34.570927>,  <29.626202, 38.266666, 34.481850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954050, 38.573925, 34.570927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090105, 38.555725, 34.946636>,  <29.171738, 38.544804, 35.172062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090105, 38.555725, 34.946636>,  <28.954050, 38.573925, 34.570927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090105, 38.555725, 34.946636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245791, 0.959805, 0.135502,
		-0.907687, -0.276955, 0.315279,
		0.340135, -0.045501, 0.939275,
		29.192146, 38.542076, 35.228420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486502, 38.791100, 35.045464>,  <28.954050, 38.573925, 34.570927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486502, 38.791100, 35.045464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846455, 38.853096, 35.208527>,  <29.062428, 38.890293, 35.306366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846455, 38.853096, 35.208527>,  <28.486502, 38.791100, 35.045464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846455, 38.853096, 35.208527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237670, 0.958009, 0.160411,
		-0.365681, -0.241240, 0.898933,
		0.899883, 0.154991, 0.407661,
		29.116419, 38.899593, 35.330826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284210, 39.119869, 35.728920>,  <28.486502, 38.791100, 35.045464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284210, 39.119869, 35.728920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662607, 39.198189, 35.625565>,  <28.889645, 39.245178, 35.563549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662607, 39.198189, 35.625565>,  <28.284210, 39.119869, 35.728920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662607, 39.198189, 35.625565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181944, 0.980312, 0.076715,
		0.268324, -0.025559, 0.962990,
		0.945991, 0.195795, -0.258391,
		28.946404, 39.256927, 35.548046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493029, 39.560421, 36.202190>,  <28.284210, 39.119869, 35.728920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493029, 39.560421, 36.202190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772884, 39.618881, 35.922436>,  <28.940798, 39.653957, 35.754581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772884, 39.618881, 35.922436>,  <28.493029, 39.560421, 36.202190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772884, 39.618881, 35.922436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026337, 0.972915, 0.229658,
		0.714011, -0.179097, 0.676841,
		0.699639, 0.146152, -0.699388,
		28.982777, 39.662727, 35.712620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926821, 40.053833, 36.487854>,  <28.493029, 39.560421, 36.202190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926821, 40.053833, 36.487854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029539, 40.065552, 36.101444>,  <29.091171, 40.072582, 35.869598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029539, 40.065552, 36.101444>,  <28.926821, 40.053833, 36.487854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029539, 40.065552, 36.101444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008537, 0.999570, 0.028046,
		0.966428, 0.001045, 0.256937,
		0.256797, 0.029298, -0.966021,
		29.106579, 40.074341, 35.811638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480141, 40.571228, 36.423939>,  <28.926821, 40.053833, 36.487854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480141, 40.571228, 36.423939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337479, 40.546951, 36.051033>,  <29.251881, 40.532387, 35.827290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337479, 40.546951, 36.051033>,  <29.480141, 40.571228, 36.423939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337479, 40.546951, 36.051033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129809, 0.984989, -0.113786,
		0.925174, -0.161598, -0.343423,
		-0.356655, -0.060692, -0.932263,
		29.230482, 40.528744, 35.771355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991928, 40.909325, 35.972740>,  <29.480141, 40.571228, 36.423939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991928, 40.909325, 35.972740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633625, 40.934128, 35.796661>,  <29.418644, 40.949009, 35.691013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633625, 40.934128, 35.796661>,  <29.991928, 40.909325, 35.972740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633625, 40.934128, 35.796661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077092, 0.996888, -0.016457,
		0.437811, -0.048677, -0.897748,
		-0.895756, 0.062005, -0.440202,
		29.364899, 40.952728, 35.664600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071352, 41.582237, 35.681805>,  <29.991928, 40.909325, 35.972740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071352, 41.582237, 35.681805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679840, 41.512295, 35.639065>,  <29.444933, 41.470329, 35.613422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679840, 41.512295, 35.639065>,  <30.071352, 41.582237, 35.681805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679840, 41.512295, 35.639065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168102, 0.983329, -0.069316,
		0.117185, -0.049884, -0.991856,
		-0.978779, -0.174856, -0.106846,
		29.386206, 41.459839, 35.607010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848772, 42.042259, 35.100346>,  <30.071352, 41.582237, 35.681805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848772, 42.042259, 35.100346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536879, 41.948475, 35.332565>,  <29.349743, 41.892204, 35.471897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536879, 41.948475, 35.332565>,  <29.848772, 42.042259, 35.100346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536879, 41.948475, 35.332565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250288, 0.966651, 0.054230,
		-0.573907, -0.103020, -0.812415,
		-0.779735, -0.234461, 0.580552,
		29.302958, 41.878136, 35.506729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418783, 42.497566, 34.849171>,  <29.848772, 42.042259, 35.100346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418783, 42.497566, 34.849171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260281, 42.363609, 35.191124>,  <29.165178, 42.283234, 35.396297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260281, 42.363609, 35.191124>,  <29.418783, 42.497566, 34.849171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260281, 42.363609, 35.191124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382986, 0.906520, 0.177603,
		-0.834447, -0.257031, -0.487476,
		-0.396258, -0.334896, 0.854883,
		29.141403, 42.263142, 35.447590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844931, 42.840801, 34.791943>,  <29.418783, 42.497566, 34.849171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844931, 42.840801, 34.791943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872410, 42.707951, 35.168236>,  <28.888897, 42.628242, 35.394012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872410, 42.707951, 35.168236>,  <28.844931, 42.840801, 34.791943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872410, 42.707951, 35.168236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398721, 0.855233, 0.331057,
		-0.914496, -0.397832, -0.073671,
		0.068700, -0.332124, 0.940731,
		28.893021, 42.608315, 35.450455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144943, 42.941643, 35.158840>,  <28.844931, 42.840801, 34.791943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144943, 42.941643, 35.158840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384729, 42.921482, 35.478367>,  <28.528601, 42.909386, 35.670082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384729, 42.921482, 35.478367>,  <28.144943, 42.941643, 35.158840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384729, 42.921482, 35.478367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448161, 0.805767, 0.387158,
		-0.663168, -0.590085, 0.460443,
		0.599466, -0.050398, 0.798812,
		28.564569, 42.906364, 35.718010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696913, 43.099201, 35.837360>,  <28.144943, 42.941643, 35.158840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696913, 43.099201, 35.837360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082884, 43.180904, 35.903324>,  <28.314466, 43.229927, 35.942902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082884, 43.180904, 35.903324>,  <27.696913, 43.099201, 35.837360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082884, 43.180904, 35.903324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257805, 0.855773, 0.448542,
		-0.049508, -0.475324, 0.878417,
		0.964928, 0.204253, 0.164908,
		28.372362, 43.242180, 35.952797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743725, 43.404964, 36.486679>,  <27.696913, 43.099201, 35.837360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743725, 43.404964, 36.486679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079779, 43.506470, 36.294937>,  <28.281410, 43.567371, 36.179893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079779, 43.506470, 36.294937>,  <27.743725, 43.404964, 36.486679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079779, 43.506470, 36.294937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181730, 0.964415, 0.192037,
		0.511027, -0.074223, 0.856354,
		0.840134, 0.253761, -0.479354,
		28.331820, 43.582600, 36.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.809078, 38.150906, 48.241165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.516842, 37.887718, 48.314182>,  <39.341499, 37.729805, 48.357990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.516842, 37.887718, 48.314182>,  <39.809078, 38.150906, 48.241165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516842, 37.887718, 48.314182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139207, 0.118192, 0.983185,
		-0.668478, 0.743713, 0.005244,
		-0.730588, -0.657968, 0.182539,
		39.297665, 37.690327, 48.368942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501423, 38.404274, 48.785553>,  <39.809078, 38.150906, 48.241165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501423, 38.404274, 48.785553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415386, 38.014511, 48.759453>,  <39.363766, 37.780651, 48.743793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415386, 38.014511, 48.759453>,  <39.501423, 38.404274, 48.785553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415386, 38.014511, 48.759453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192179, -0.107744, 0.975427,
		-0.957498, 0.197267, 0.210437,
		-0.215093, -0.974411, -0.065254,
		39.350857, 37.722187, 48.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213318, 38.252270, 49.437531>,  <39.501423, 38.404274, 48.785553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213318, 38.252270, 49.437531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298615, 37.876198, 49.331261>,  <39.349792, 37.650555, 49.267498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298615, 37.876198, 49.331261>,  <39.213318, 38.252270, 49.437531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298615, 37.876198, 49.331261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114678, -0.245962, 0.962472,
		-0.970245, -0.235708, 0.055368,
		0.213244, -0.940183, -0.265674,
		39.362587, 37.594143, 49.251560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781109, 37.727222, 49.777252>,  <39.213318, 38.252270, 49.437531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781109, 37.727222, 49.777252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121891, 37.535706, 49.692463>,  <39.326359, 37.420795, 49.641590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121891, 37.535706, 49.692463>,  <38.781109, 37.727222, 49.777252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121891, 37.535706, 49.692463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065720, -0.303850, 0.950450,
		-0.519481, -0.823668, -0.227398,
		0.851951, -0.478796, -0.211976,
		39.377476, 37.392067, 49.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715313, 37.146851, 50.221195>,  <38.781109, 37.727222, 49.777252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715313, 37.146851, 50.221195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.097473, 37.170567, 50.105473>,  <39.326767, 37.184795, 50.036037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.097473, 37.170567, 50.105473>,  <38.715313, 37.146851, 50.221195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097473, 37.170567, 50.105473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282122, -0.472829, 0.834770,
		-0.087296, -0.879157, -0.468468,
		0.955399, 0.059293, -0.289306,
		39.384094, 37.188354, 50.018681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960602, 36.500587, 50.382431>,  <38.715313, 37.146851, 50.221195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960602, 36.500587, 50.382431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.281654, 36.738880, 50.370522>,  <39.474285, 36.881855, 50.363377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.281654, 36.738880, 50.370522>,  <38.960602, 36.500587, 50.382431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281654, 36.738880, 50.370522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334868, -0.408735, 0.848999,
		0.493602, -0.691407, -0.527555,
		0.802634, 0.595729, -0.029778,
		39.522446, 36.917599, 50.361588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539543, 36.080658, 50.436893>,  <38.960602, 36.500587, 50.382431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539543, 36.080658, 50.436893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618179, 36.446259, 50.578850>,  <39.665363, 36.665619, 50.664024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618179, 36.446259, 50.578850>,  <39.539543, 36.080658, 50.436893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618179, 36.446259, 50.578850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253423, -0.397025, 0.882127,
		0.947168, -0.083484, -0.309683,
		0.196595, 0.914003, 0.354893,
		39.677158, 36.720459, 50.685318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264446, 36.165379, 50.729923>,  <39.539543, 36.080658, 50.436893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264446, 36.165379, 50.729923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.083023, 36.489326, 50.878731>,  <39.974171, 36.683697, 50.968014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.083023, 36.489326, 50.878731>,  <40.264446, 36.165379, 50.729923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083023, 36.489326, 50.878731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349084, -0.222629, 0.910262,
		0.820016, 0.542720, -0.181738,
		-0.453557, 0.809871, 0.372015,
		39.946957, 36.732288, 50.990334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686184, 36.253391, 51.286755>,  <40.264446, 36.165379, 50.729923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686184, 36.253391, 51.286755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.378937, 36.491524, 51.381054>,  <40.194588, 36.634403, 51.437634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.378937, 36.491524, 51.381054>,  <40.686184, 36.253391, 51.286755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378937, 36.491524, 51.381054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262992, -0.042360, 0.963868,
		0.583804, 0.802365, -0.124029,
		-0.768120, 0.595328, 0.235746,
		40.148502, 36.670124, 51.451778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954254, 36.843285, 51.715355>,  <40.686184, 36.253391, 51.286755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954254, 36.843285, 51.715355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559910, 36.873753, 51.775051>,  <40.323303, 36.892033, 51.810871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559910, 36.873753, 51.775051>,  <40.954254, 36.843285, 51.715355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559910, 36.873753, 51.775051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160342, 0.170306, 0.972258,
		0.048641, 0.982443, -0.180111,
		-0.985862, 0.076171, 0.149243,
		40.264153, 36.896603, 51.819824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889454, 37.403240, 52.228161>,  <40.954254, 36.843285, 51.715355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889454, 37.403240, 52.228161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555813, 37.185696, 52.265011>,  <40.355629, 37.055168, 52.287121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555813, 37.185696, 52.265011>,  <40.889454, 37.403240, 52.228161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555813, 37.185696, 52.265011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135397, -0.039967, 0.989985,
		-0.534733, 0.838223, 0.106974,
		-0.834103, -0.543862, 0.092121,
		40.305580, 37.022537, 52.292648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519291, 37.671841, 52.859707>,  <40.889454, 37.403240, 52.228161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519291, 37.671841, 52.859707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362408, 37.318172, 52.758190>,  <40.268276, 37.105972, 52.697281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362408, 37.318172, 52.758190>,  <40.519291, 37.671841, 52.859707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362408, 37.318172, 52.758190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048979, -0.295580, 0.954061,
		-0.918572, 0.361759, 0.159235,
		-0.392207, -0.884173, -0.253793,
		40.244747, 37.052921, 52.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700386, 38.372650, 53.027039>,  <40.519291, 37.671841, 52.859707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700386, 38.372650, 53.027039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976929, 38.423717, 52.742580>,  <41.142857, 38.454357, 52.571907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976929, 38.423717, 52.742580>,  <40.700386, 38.372650, 53.027039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976929, 38.423717, 52.742580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701025, -0.356780, 0.617473,
		-0.174891, -0.925424, -0.336161,
		0.691359, 0.127667, -0.711143,
		41.184338, 38.462017, 52.529236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062862, 38.795563, 52.936691>,  <40.700386, 38.372650, 53.027039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062862, 38.795563, 52.936691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.707829, 38.640476, 53.036182>,  <39.494808, 38.547424, 53.095879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.707829, 38.640476, 53.036182>,  <40.062862, 38.795563, 52.936691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707829, 38.640476, 53.036182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458745, 0.695076, -0.553554,
		0.041733, -0.605432, -0.794802,
		-0.887587, -0.387713, 0.248731,
		39.441551, 38.524162, 53.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729218, 38.477905, 52.296860>,  <40.062862, 38.795563, 52.936691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729218, 38.477905, 52.296860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449356, 38.609150, 52.550732>,  <39.281441, 38.687897, 52.703056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449356, 38.609150, 52.550732>,  <39.729218, 38.477905, 52.296860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449356, 38.609150, 52.550732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402538, 0.552889, -0.729573,
		-0.590294, -0.765934, -0.254753,
		-0.699654, 0.328115, 0.634684,
		39.239460, 38.707584, 52.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059067, 38.278210, 52.042530>,  <39.729218, 38.477905, 52.296860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059067, 38.278210, 52.042530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088207, 38.617455, 52.252445>,  <39.105694, 38.821003, 52.378395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088207, 38.617455, 52.252445>,  <39.059067, 38.278210, 52.042530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088207, 38.617455, 52.252445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411231, 0.504917, -0.758912,
		-0.908615, -0.160518, 0.385554,
		0.072854, 0.848111, 0.524786,
		39.110062, 38.871887, 52.409882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469780, 38.666725, 51.923733>,  <39.059067, 38.278210, 52.042530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469780, 38.666725, 51.923733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712517, 38.953369, 52.061256>,  <38.858158, 39.125355, 52.143772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712517, 38.953369, 52.061256>,  <38.469780, 38.666725, 51.923733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712517, 38.953369, 52.061256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315456, 0.614188, -0.723368,
		-0.729540, 0.330513, 0.598776,
		0.606843, 0.716613, 0.343813,
		38.894569, 39.168354, 52.164402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105946, 39.361961, 51.803818>,  <38.469780, 38.666725, 51.923733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105946, 39.361961, 51.803818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500381, 39.421013, 51.834389>,  <38.737041, 39.456444, 51.852730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500381, 39.421013, 51.834389>,  <38.105946, 39.361961, 51.803818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500381, 39.421013, 51.834389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041820, 0.665242, -0.745456,
		-0.160894, 0.731887, 0.662160,
		0.986085, 0.147631, 0.076426,
		38.796207, 39.465302, 51.857315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129570, 40.071301, 51.801243>,  <38.105946, 39.361961, 51.803818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129570, 40.071301, 51.801243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.489990, 39.943913, 51.683475>,  <38.706242, 39.867481, 51.612816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.489990, 39.943913, 51.683475>,  <38.129570, 40.071301, 51.801243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489990, 39.943913, 51.683475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053622, 0.591822, -0.804283,
		0.430378, 0.740490, 0.516187,
		0.901055, -0.318467, -0.294414,
		38.760307, 39.848373, 51.595150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469608, 40.706203, 51.565708>,  <38.129570, 40.071301, 51.801243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469608, 40.706203, 51.565708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701847, 40.414997, 51.419891>,  <38.841190, 40.240273, 51.332401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701847, 40.414997, 51.419891>,  <38.469608, 40.706203, 51.565708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701847, 40.414997, 51.419891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043322, 0.474725, -0.879067,
		0.813036, 0.494593, 0.307164,
		0.580599, -0.728020, -0.364542,
		38.876026, 40.196590, 51.310528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920097, 41.112370, 51.113689>,  <38.469608, 40.706203, 51.565708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920097, 41.112370, 51.113689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965340, 40.734676, 50.989986>,  <38.992485, 40.508060, 50.915764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965340, 40.734676, 50.989986>,  <38.920097, 41.112370, 51.113689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965340, 40.734676, 50.989986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033406, 0.307463, -0.950973,
		0.993021, 0.117890, 0.003232,
		0.113104, -0.944229, -0.309256,
		38.999271, 40.451408, 50.897209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368118, 41.259766, 50.492241>,  <38.920097, 41.112370, 51.113689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368118, 41.259766, 50.492241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222313, 40.890808, 50.441154>,  <39.134830, 40.669434, 50.410503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222313, 40.890808, 50.441154>,  <39.368118, 41.259766, 50.492241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222313, 40.890808, 50.441154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054707, 0.158132, -0.985901,
		0.929589, -0.352389, -0.108103,
		-0.364515, -0.922397, -0.127719,
		39.112957, 40.614090, 50.402840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601189, 41.013622, 49.814407>,  <39.368118, 41.259766, 50.492241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601189, 41.013622, 49.814407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280754, 40.785984, 49.888592>,  <39.088493, 40.649403, 49.933102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280754, 40.785984, 49.888592>,  <39.601189, 41.013622, 49.814407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280754, 40.785984, 49.888592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189063, -0.053408, -0.980511,
		0.567911, -0.820534, -0.064811,
		-0.801082, -0.569097, 0.185464,
		39.040428, 40.615253, 49.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589912, 40.448902, 49.394840>,  <39.601189, 41.013622, 49.814407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589912, 40.448902, 49.394840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218491, 40.386826, 49.529720>,  <38.995640, 40.349579, 49.610649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218491, 40.386826, 49.529720>,  <39.589912, 40.448902, 49.394840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218491, 40.386826, 49.529720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327516, -0.085037, -0.941011,
		0.174716, -0.984217, 0.028132,
		-0.928551, -0.155196, 0.337204,
		38.939926, 40.340267, 49.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342323, 39.688717, 49.245384>,  <39.589912, 40.448902, 49.394840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342323, 39.688717, 49.245384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047676, 39.957661, 49.274586>,  <38.870888, 40.119026, 49.292107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047676, 39.957661, 49.274586>,  <39.342323, 39.688717, 49.245384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047676, 39.957661, 49.274586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412814, -0.361496, -0.836005,
		-0.535710, -0.645948, 0.543844,
		-0.736613, 0.672363, 0.072999,
		38.826691, 40.159370, 49.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834435, 39.383312, 48.887280>,  <39.342323, 39.688717, 49.245384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834435, 39.383312, 48.887280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708164, 39.759411, 48.938324>,  <38.632401, 39.985069, 48.968952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708164, 39.759411, 48.938324>,  <38.834435, 39.383312, 48.887280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708164, 39.759411, 48.938324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451457, -0.030541, -0.891770,
		-0.834585, -0.339125, 0.434121,
		-0.315680, 0.940245, 0.127612,
		38.613461, 40.041485, 48.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195999, 39.346962, 48.647865>,  <38.834435, 39.383312, 48.887280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195999, 39.346962, 48.647865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282383, 39.736858, 48.625107>,  <38.334213, 39.970798, 48.611454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282383, 39.736858, 48.625107>,  <38.195999, 39.346962, 48.647865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282383, 39.736858, 48.625107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220847, -0.007995, -0.975276,
		-0.951098, 0.223186, 0.213543,
		0.215960, 0.974743, -0.056894,
		38.347172, 40.029282, 48.608040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679478, 39.635891, 48.229836>,  <38.195999, 39.346962, 48.647865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679478, 39.635891, 48.229836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998600, 39.877052, 48.230476>,  <38.190075, 40.021751, 48.230862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998600, 39.877052, 48.230476>,  <37.679478, 39.635891, 48.229836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998600, 39.877052, 48.230476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086683, -0.112071, -0.989912,
		-0.596645, 0.789901, -0.141673,
		0.797810, 0.602907, 0.001604,
		38.237942, 40.057926, 48.230957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012417, 39.839485, 48.095604>,  <37.679478, 39.635891, 48.229836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012417, 39.839485, 48.095604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664448, 39.648800, 48.045040>,  <36.455666, 39.534389, 48.014702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664448, 39.648800, 48.045040>,  <37.012417, 39.839485, 48.095604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664448, 39.648800, 48.045040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083772, -0.109761, 0.990422,
		-0.486024, 0.872178, 0.055548,
		-0.869921, -0.476715, -0.126410,
		36.403473, 39.505787, 48.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492882, 40.072151, 48.602558>,  <37.012417, 39.839485, 48.095604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492882, 40.072151, 48.602558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400116, 39.695263, 48.505859>,  <36.344456, 39.469131, 48.447842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400116, 39.695263, 48.505859>,  <36.492882, 40.072151, 48.602558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400116, 39.695263, 48.505859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032916, -0.240777, 0.970022,
		-0.972178, 0.232923, 0.024826,
		-0.231918, -0.942217, -0.241745,
		36.330540, 39.412598, 48.433334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028381, 39.969334, 49.016251>,  <36.492882, 40.072151, 48.602558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028381, 39.969334, 49.016251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135349, 39.595112, 48.923977>,  <36.199532, 39.370579, 48.868610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135349, 39.595112, 48.923977>,  <36.028381, 39.969334, 49.016251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135349, 39.595112, 48.923977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147190, -0.276259, 0.949745,
		-0.952271, -0.220030, -0.211583,
		0.267424, -0.935557, -0.230688,
		36.215576, 39.314445, 48.854771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397652, 39.485950, 49.208847>,  <36.028381, 39.969334, 49.016251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397652, 39.485950, 49.208847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751949, 39.304134, 49.171219>,  <35.964527, 39.195045, 49.148640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751949, 39.304134, 49.171219>,  <35.397652, 39.485950, 49.208847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751949, 39.304134, 49.171219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040606, -0.277773, 0.959788,
		-0.462394, -0.846307, -0.264493,
		0.885744, -0.454540, -0.094075,
		36.017673, 39.167774, 49.142998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318611, 39.083500, 49.668266>,  <35.397652, 39.485950, 49.208847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318611, 39.083500, 49.668266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702801, 38.997490, 49.597542>,  <35.933315, 38.945885, 49.555107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702801, 38.997490, 49.597542>,  <35.318611, 39.083500, 49.668266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702801, 38.997490, 49.597542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085901, -0.375222, 0.922946,
		-0.264793, -0.901652, -0.341920,
		0.960472, -0.215018, -0.176809,
		35.990944, 38.932983, 49.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510441, 38.376179, 49.983391>,  <35.318611, 39.083500, 49.668266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510441, 38.376179, 49.983391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855572, 38.576923, 49.959183>,  <36.062649, 38.697369, 49.944660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855572, 38.576923, 49.959183>,  <35.510441, 38.376179, 49.983391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855572, 38.576923, 49.959183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281683, -0.377939, 0.881939,
		0.419741, -0.778008, -0.467462,
		0.862828, 0.501862, -0.060515,
		36.114422, 38.727482, 49.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006481, 37.884224, 50.225094>,  <35.510441, 38.376179, 49.983391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006481, 37.884224, 50.225094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190006, 38.236942, 50.268784>,  <36.300121, 38.448574, 50.294998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190006, 38.236942, 50.268784>,  <36.006481, 37.884224, 50.225094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190006, 38.236942, 50.268784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227113, -0.235232, 0.945032,
		0.859015, -0.408790, -0.308194,
		0.458816, 0.881792, 0.109227,
		36.327652, 38.501480, 50.301552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042240, 37.267349, 50.309986>,  <36.006481, 37.884224, 50.225094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042240, 37.267349, 50.309986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803596, 36.946533, 50.321213>,  <35.660408, 36.754044, 50.327950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803596, 36.946533, 50.321213>,  <36.042240, 37.267349, 50.309986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803596, 36.946533, 50.321213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067132, 0.015032, -0.997631,
		0.799718, -0.597081, -0.062811,
		-0.596611, -0.802040, 0.028062,
		35.624615, 36.705921, 50.329632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381401, 36.664833, 49.874565>,  <36.042240, 37.267349, 50.309986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381401, 36.664833, 49.874565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983448, 36.672146, 49.914326>,  <35.744678, 36.676533, 49.938183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983448, 36.672146, 49.914326>,  <36.381401, 36.664833, 49.874565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983448, 36.672146, 49.914326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100758, -0.102339, -0.989634,
		-0.007914, -0.994582, 0.103656,
		-0.994880, 0.018276, 0.099402,
		35.684982, 36.677631, 49.944145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102249, 36.106316, 49.471329>,  <36.381401, 36.664833, 49.874565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102249, 36.106316, 49.471329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780045, 36.339867, 49.511806>,  <35.586723, 36.480000, 49.536091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780045, 36.339867, 49.511806>,  <36.102249, 36.106316, 49.471329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780045, 36.339867, 49.511806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218522, -0.133945, -0.966596,
		-0.550824, -0.800712, 0.235485,
		-0.805507, 0.583883, 0.101192,
		35.538391, 36.515030, 49.542164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634724, 35.793339, 49.013298>,  <36.102249, 36.106316, 49.471329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634724, 35.793339, 49.013298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466202, 36.148136, 49.088928>,  <35.365089, 36.361015, 49.134308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466202, 36.148136, 49.088928>,  <35.634724, 35.793339, 49.013298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466202, 36.148136, 49.088928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382042, 0.015504, -0.924015,
		-0.822524, -0.461528, 0.332336,
		-0.421306, 0.886990, 0.189075,
		35.339809, 36.414234, 49.145653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932014, 35.840233, 48.785458>,  <35.634724, 35.793339, 49.013298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932014, 35.840233, 48.785458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050262, 36.222309, 48.779545>,  <35.121212, 36.451557, 48.775997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050262, 36.222309, 48.779545>,  <34.932014, 35.840233, 48.785458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050262, 36.222309, 48.779545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165897, 0.036094, -0.985482,
		-0.940792, 0.293776, 0.169134,
		0.295616, 0.955192, -0.014780,
		35.138947, 36.508865, 48.775112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508213, 36.204666, 48.305031>,  <34.932014, 35.840233, 48.785458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508213, 36.204666, 48.305031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812061, 36.463730, 48.328754>,  <34.994370, 36.619167, 48.342991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812061, 36.463730, 48.328754>,  <34.508213, 36.204666, 48.305031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812061, 36.463730, 48.328754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053729, 0.153383, -0.986705,
		-0.648142, 0.746336, 0.151311,
		0.759622, 0.647655, 0.059314,
		35.039948, 36.658028, 48.346550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279301, 36.662937, 47.843662>,  <34.508213, 36.204666, 48.305031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279301, 36.662937, 47.843662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673008, 36.724201, 47.878876>,  <34.909233, 36.760960, 47.900005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673008, 36.724201, 47.878876>,  <34.279301, 36.662937, 47.843662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673008, 36.724201, 47.878876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070789, 0.114617, -0.990884,
		-0.161854, 0.981532, 0.101972,
		0.984273, 0.153160, 0.088033,
		34.968288, 36.770149, 47.905285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.648083, 34.177460, 52.796837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.804234, 34.486614, 52.596733>,  <38.897923, 34.672108, 52.476673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.804234, 34.486614, 52.596733>,  <38.648083, 34.177460, 52.796837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804234, 34.486614, 52.596733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319092, -0.396107, -0.860976,
		-0.863591, 0.495730, 0.091992,
		0.390373, 0.772885, -0.500258,
		38.921345, 34.718479, 52.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137291, 34.392941, 52.383545>,  <38.648083, 34.177460, 52.796837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137291, 34.392941, 52.383545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.471317, 34.516380, 52.201363>,  <38.671734, 34.590443, 52.092052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.471317, 34.516380, 52.201363>,  <38.137291, 34.392941, 52.383545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471317, 34.516380, 52.201363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353055, -0.334309, -0.873836,
		-0.421925, 0.890508, -0.170218,
		0.835064, 0.308597, -0.455452,
		38.721836, 34.608959, 52.064728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996140, 34.716095, 51.741573>,  <38.137291, 34.392941, 52.383545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996140, 34.716095, 51.741573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.375854, 34.601761, 51.689201>,  <38.603683, 34.533161, 51.657776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.375854, 34.601761, 51.689201>,  <37.996140, 34.716095, 51.741573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375854, 34.601761, 51.689201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218755, -0.301385, -0.928070,
		0.225818, 0.909650, -0.348631,
		0.949291, -0.285839, -0.130932,
		38.660641, 34.516010, 51.649921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153336, 34.949039, 51.061947>,  <37.996140, 34.716095, 51.741573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153336, 34.949039, 51.061947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.434109, 34.681118, 51.158825>,  <38.602573, 34.520367, 51.216953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.434109, 34.681118, 51.158825>,  <38.153336, 34.949039, 51.061947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434109, 34.681118, 51.158825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075167, -0.268484, -0.960347,
		0.708267, 0.692303, -0.138111,
		0.701932, -0.669801, 0.242197,
		38.644688, 34.480179, 51.231483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732864, 35.129105, 50.662319>,  <38.153336, 34.949039, 51.061947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732864, 35.129105, 50.662319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.768501, 34.741390, 50.754009>,  <38.789883, 34.508762, 50.809025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.768501, 34.741390, 50.754009>,  <38.732864, 35.129105, 50.662319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768501, 34.741390, 50.754009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068514, -0.223636, -0.972262,
		0.993665, 0.102322, 0.046486,
		0.089088, -0.969287, 0.229230,
		38.795227, 34.450603, 50.822777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234715, 34.909225, 50.175571>,  <38.732864, 35.129105, 50.662319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234715, 34.909225, 50.175571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049728, 34.577305, 50.300510>,  <38.938736, 34.378155, 50.375473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.049728, 34.577305, 50.300510>,  <39.234715, 34.909225, 50.175571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049728, 34.577305, 50.300510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096542, -0.397313, -0.912591,
		0.881364, -0.391890, 0.263855,
		-0.462468, -0.829798, 0.312343,
		38.910988, 34.328365, 50.394215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558247, 34.314182, 49.857712>,  <39.234715, 34.909225, 50.175571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558247, 34.314182, 49.857712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210583, 34.152500, 49.971687>,  <39.001984, 34.055492, 50.040073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210583, 34.152500, 49.971687>,  <39.558247, 34.314182, 49.857712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210583, 34.152500, 49.971687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007734, -0.564984, -0.825065,
		0.494479, -0.719314, 0.487933,
		-0.869155, -0.404204, 0.284936,
		38.949837, 34.031239, 50.057167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665195, 33.581974, 49.713268>,  <39.558247, 34.314182, 49.857712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665195, 33.581974, 49.713268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.271534, 33.647366, 49.740723>,  <39.035336, 33.686600, 49.757195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.271534, 33.647366, 49.740723>,  <39.665195, 33.581974, 49.713268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271534, 33.647366, 49.740723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129571, -0.398884, -0.907801,
		-0.121023, -0.902312, 0.413746,
		-0.984157, 0.163474, 0.068639,
		38.976288, 33.696407, 49.761314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416813, 32.962757, 49.586411>,  <39.665195, 33.581974, 49.713268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416813, 32.962757, 49.586411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.140549, 33.242897, 49.514301>,  <38.974792, 33.410980, 49.471035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.140549, 33.242897, 49.514301>,  <39.416813, 32.962757, 49.586411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140549, 33.242897, 49.514301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089264, -0.329932, -0.939775,
		-0.717654, -0.632969, 0.290385,
		-0.690656, 0.700354, -0.180276,
		38.933353, 33.453003, 49.460220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859016, 32.624825, 49.282516>,  <39.416813, 32.962757, 49.586411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859016, 32.624825, 49.282516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.801388, 33.006683, 49.178299>,  <38.766811, 33.235798, 49.115768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.801388, 33.006683, 49.178299>,  <38.859016, 32.624825, 49.282516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801388, 33.006683, 49.178299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187423, -0.284851, -0.940071,
		-0.971657, -0.086604, 0.219962,
		-0.144070, 0.954652, -0.260545,
		38.758167, 33.293079, 49.100136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377831, 32.644608, 48.795006>,  <38.859016, 32.624825, 49.282516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377831, 32.644608, 48.795006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.515167, 33.016785, 48.743805>,  <38.597569, 33.240093, 48.713085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.515167, 33.016785, 48.743805>,  <38.377831, 32.644608, 48.795006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515167, 33.016785, 48.743805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297567, -0.021500, -0.954459,
		-0.890825, 0.365795, 0.269489,
		0.343343, 0.930447, -0.128001,
		38.618172, 33.295918, 48.705406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804798, 32.961231, 48.402847>,  <38.377831, 32.644608, 48.795006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804798, 32.961231, 48.402847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.124912, 33.194988, 48.349144>,  <38.316982, 33.335243, 48.316921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.124912, 33.194988, 48.349144>,  <37.804798, 32.961231, 48.402847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124912, 33.194988, 48.349144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234427, 0.098850, -0.967095,
		-0.551893, 0.805427, 0.216106,
		0.800286, 0.584394, -0.134259,
		38.364998, 33.370308, 48.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194096, 33.418579, 48.573807>,  <37.804798, 32.961231, 48.402847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194096, 33.418579, 48.573807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799526, 33.478050, 48.545906>,  <36.562786, 33.513733, 48.529163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.799526, 33.478050, 48.545906>,  <37.194096, 33.418579, 48.573807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799526, 33.478050, 48.545906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050296, 0.130841, 0.990127,
		0.156336, 0.980192, -0.121587,
		-0.986423, 0.148677, -0.069754,
		36.503601, 33.522652, 48.524979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135635, 33.975269, 48.955418>,  <37.194096, 33.418579, 48.573807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135635, 33.975269, 48.955418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771744, 33.811924, 48.925419>,  <36.553410, 33.713917, 48.907417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.771744, 33.811924, 48.925419>,  <37.135635, 33.975269, 48.955418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771744, 33.811924, 48.925419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095757, 0.030591, 0.994935,
		-0.404004, 0.912305, -0.066934,
		-0.909732, -0.408367, -0.075001,
		36.498825, 33.689415, 48.902920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642845, 34.455833, 49.355324>,  <37.135635, 33.975269, 48.955418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642845, 34.455833, 49.355324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508869, 34.080681, 49.319099>,  <36.428486, 33.855591, 49.297367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508869, 34.080681, 49.319099>,  <36.642845, 34.455833, 49.355324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508869, 34.080681, 49.319099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068118, -0.071755, 0.995094,
		-0.939776, 0.339461, -0.039853,
		-0.334936, -0.937879, -0.090557,
		36.408390, 33.799316, 49.291931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154091, 34.299797, 49.954323>,  <36.642845, 34.455833, 49.355324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154091, 34.299797, 49.954323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235500, 33.924992, 49.840767>,  <36.284348, 33.700108, 49.772633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235500, 33.924992, 49.840767>,  <36.154091, 34.299797, 49.954323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235500, 33.924992, 49.840767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025341, -0.284817, 0.958247,
		-0.978742, -0.202220, -0.034222,
		0.203524, -0.937009, -0.283887,
		36.296558, 33.643890, 49.755600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656624, 33.891376, 50.289726>,  <36.154091, 34.299797, 49.954323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656624, 33.891376, 50.289726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.956783, 33.638546, 50.212387>,  <36.136879, 33.486847, 50.165985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.956783, 33.638546, 50.212387>,  <35.656624, 33.891376, 50.289726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956783, 33.638546, 50.212387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071315, -0.368224, 0.926998,
		-0.657132, -0.681825, -0.321390,
		0.750394, -0.632080, -0.193347,
		36.181900, 33.448921, 50.154385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389248, 33.261902, 50.455910>,  <35.656624, 33.891376, 50.289726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389248, 33.261902, 50.455910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785458, 33.207066, 50.459221>,  <36.023182, 33.174164, 50.461208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785458, 33.207066, 50.459221>,  <35.389248, 33.261902, 50.455910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785458, 33.207066, 50.459221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041745, -0.243107, 0.969101,
		-0.130842, -0.960263, -0.246526,
		0.990524, -0.137090, 0.008278,
		36.082615, 33.165939, 50.461704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433651, 32.819244, 50.983566>,  <35.389248, 33.261902, 50.455910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433651, 32.819244, 50.983566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824352, 32.897388, 50.948265>,  <36.058773, 32.944275, 50.927086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824352, 32.897388, 50.948265>,  <35.433651, 32.819244, 50.983566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824352, 32.897388, 50.948265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093661, -0.018608, 0.995430,
		0.192824, -0.980555, -0.036473,
		0.976753, 0.195359, -0.088252,
		36.117378, 32.955997, 50.921791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839817, 32.210712, 51.249424>,  <35.433651, 32.819244, 50.983566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839817, 32.210712, 51.249424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019268, 32.563736, 51.305740>,  <36.126938, 32.775551, 51.339531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019268, 32.563736, 51.305740>,  <35.839817, 32.210712, 51.249424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019268, 32.563736, 51.305740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091454, -0.202038, 0.975098,
		0.889029, -0.424577, -0.171353,
		0.448624, 0.882562, 0.140789,
		36.153854, 32.828503, 51.347977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401516, 32.119537, 51.750549>,  <35.839817, 32.210712, 51.249424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401516, 32.119537, 51.750549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.342396, 32.514797, 51.767155>,  <36.306923, 32.751953, 51.777119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.342396, 32.514797, 51.767155>,  <36.401516, 32.119537, 51.750549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342396, 32.514797, 51.767155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136699, -0.021160, 0.990386,
		0.979525, 0.152051, -0.131951,
		-0.147797, 0.988146, 0.041512,
		36.298058, 32.811241, 51.779610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980774, 32.477100, 52.196053>,  <36.401516, 32.119537, 51.750549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980774, 32.477100, 52.196053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649620, 32.701000, 52.181717>,  <36.450928, 32.835342, 52.173115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649620, 32.701000, 52.181717>,  <36.980774, 32.477100, 52.196053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649620, 32.701000, 52.181717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081099, 0.182689, 0.979820,
		0.555004, 0.808272, -0.196641,
		-0.827885, 0.559752, -0.035843,
		36.401253, 32.868927, 52.170963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053982, 32.695217, 52.804546>,  <36.980774, 32.477100, 52.196053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053982, 32.695217, 52.804546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693375, 32.835201, 52.702724>,  <36.477013, 32.919189, 52.641632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693375, 32.835201, 52.702724>,  <37.053982, 32.695217, 52.804546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693375, 32.835201, 52.702724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227445, 0.117263, 0.966705,
		0.368156, 0.929397, -0.026118,
		-0.901516, 0.349957, -0.254558,
		36.422920, 32.940189, 52.626358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042210, 33.178635, 53.259178>,  <37.053982, 32.695217, 52.804546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042210, 33.178635, 53.259178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662853, 33.126099, 53.143723>,  <36.435242, 33.094578, 53.074448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662853, 33.126099, 53.143723>,  <37.042210, 33.178635, 53.259178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662853, 33.126099, 53.143723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309626, 0.186853, 0.932318,
		-0.068519, 0.973568, -0.217876,
		-0.948386, -0.131341, -0.288639,
		36.378338, 33.086697, 53.057129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711018, 33.858906, 53.353394>,  <37.042210, 33.178635, 53.259178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711018, 33.858906, 53.353394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441292, 33.563564, 53.348682>,  <36.279457, 33.386360, 53.345856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441292, 33.563564, 53.348682>,  <36.711018, 33.858906, 53.353394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441292, 33.563564, 53.348682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360746, 0.315463, 0.877693,
		-0.644333, 0.596087, -0.479078,
		-0.674313, -0.738352, -0.011773,
		36.238998, 33.342060, 53.345150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463417, 34.334015, 52.811348>,  <36.711018, 33.858906, 53.353394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463417, 34.334015, 52.811348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.827858, 34.314857, 52.647591>,  <37.046520, 34.303364, 52.549335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.827858, 34.314857, 52.647591>,  <36.463417, 34.334015, 52.811348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827858, 34.314857, 52.647591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017162, -0.987958, 0.153769,
		-0.411831, -0.147125, -0.899305,
		0.911098, -0.047893, -0.409397,
		37.101189, 34.300491, 52.524773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957935, 34.766174, 52.692150>,  <36.463417, 34.334015, 52.811348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957935, 34.766174, 52.692150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810890, 35.126694, 52.783817>,  <35.722664, 35.343006, 52.838818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810890, 35.126694, 52.783817>,  <35.957935, 34.766174, 52.692150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810890, 35.126694, 52.783817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020213, 0.238617, -0.970903,
		-0.929760, -0.361547, -0.069500,
		-0.367612, 0.901302, 0.229165,
		35.700607, 35.397083, 52.852566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338486, 34.869408, 52.262695>,  <35.957935, 34.766174, 52.692150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338486, 34.869408, 52.262695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.427883, 35.241745, 52.378330>,  <35.481522, 35.465149, 52.447712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.427883, 35.241745, 52.378330>,  <35.338486, 34.869408, 52.262695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427883, 35.241745, 52.378330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108055, 0.318424, -0.941770,
		-0.968697, 0.179245, 0.171749,
		0.223497, 0.930848, 0.289088,
		35.494934, 35.521000, 52.465057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818089, 35.280586, 52.066875>,  <35.338486, 34.869408, 52.262695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818089, 35.280586, 52.066875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.150700, 35.502392, 52.079945>,  <35.350266, 35.635475, 52.087788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.150700, 35.502392, 52.079945>,  <34.818089, 35.280586, 52.066875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150700, 35.502392, 52.079945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198966, 0.352252, -0.914511,
		-0.518620, 0.753944, 0.403239,
		0.831532, 0.554515, 0.032675,
		35.400158, 35.668747, 52.089748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705761, 35.871437, 51.687748>,  <34.818089, 35.280586, 52.066875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705761, 35.871437, 51.687748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100262, 35.925434, 51.725880>,  <35.336960, 35.957832, 51.748760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100262, 35.925434, 51.725880>,  <34.705761, 35.871437, 51.687748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100262, 35.925434, 51.725880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009617, 0.528990, -0.848574,
		-0.164979, 0.837823, 0.520418,
		0.986250, 0.134992, 0.095330,
		35.396137, 35.965931, 51.754478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861565, 36.543716, 51.767967>,  <34.705761, 35.871437, 51.687748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861565, 36.543716, 51.767967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192490, 36.384609, 51.609306>,  <35.391045, 36.289143, 51.514111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192490, 36.384609, 51.609306>,  <34.861565, 36.543716, 51.767967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192490, 36.384609, 51.609306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010746, 0.694772, -0.719150,
		0.561637, 0.599225, 0.570520,
		0.827314, -0.397771, -0.396649,
		35.440685, 36.265278, 51.490311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303864, 37.114491, 51.450520>,  <34.861565, 36.543716, 51.767967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303864, 37.114491, 51.450520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.443672, 36.783775, 51.274223>,  <35.527557, 36.585346, 51.168446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.443672, 36.783775, 51.274223>,  <35.303864, 37.114491, 51.450520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443672, 36.783775, 51.274223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104395, 0.433116, -0.895272,
		0.931096, 0.358924, 0.065069,
		0.349517, -0.826791, -0.440743,
		35.548527, 36.535736, 51.142002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899010, 37.325417, 51.079445>,  <35.303864, 37.114491, 51.450520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899010, 37.325417, 51.079445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765511, 36.974728, 50.940903>,  <35.685410, 36.764313, 50.857777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.765511, 36.974728, 50.940903>,  <35.899010, 37.325417, 51.079445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765511, 36.974728, 50.940903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093302, 0.396341, -0.913350,
		0.938033, -0.272516, -0.214080,
		-0.333751, -0.876726, -0.346355,
		35.665386, 36.711708, 50.836998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417744, 37.784508, 50.835327>,  <35.899010, 37.325417, 51.079445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417744, 37.784508, 50.835327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441959, 38.181820, 50.795879>,  <36.456490, 38.420208, 50.772213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441959, 38.181820, 50.795879>,  <36.417744, 37.784508, 50.835327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441959, 38.181820, 50.795879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194813, 0.085138, 0.977138,
		0.978970, -0.078370, -0.188350,
		0.060542, 0.993282, -0.098615,
		36.460121, 38.479805, 50.766296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930408, 37.968971, 51.235058>,  <36.417744, 37.784508, 50.835327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930408, 37.968971, 51.235058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.725658, 38.311852, 51.212486>,  <36.602806, 38.517582, 51.198944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.725658, 38.311852, 51.212486>,  <36.930408, 37.968971, 51.235058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725658, 38.311852, 51.212486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133884, 0.144492, 0.980406,
		0.848561, 0.494294, -0.188728,
		-0.511878, 0.857202, -0.056433,
		36.572094, 38.569012, 51.195557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382744, 38.491905, 51.570259>,  <36.930408, 37.968971, 51.235058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382744, 38.491905, 51.570259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999149, 38.604500, 51.583626>,  <36.768993, 38.672054, 51.591644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.999149, 38.604500, 51.583626>,  <37.382744, 38.491905, 51.570259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999149, 38.604500, 51.583626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067315, 0.111639, 0.991466,
		0.275351, 0.953050, -0.126008,
		-0.958984, 0.281484, 0.033414,
		36.711452, 38.688946, 51.593651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421940, 39.016438, 51.996639>,  <37.382744, 38.491905, 51.570259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421940, 39.016438, 51.996639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033337, 38.922195, 51.986271>,  <36.800175, 38.865650, 51.980049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033337, 38.922195, 51.986271>,  <37.421940, 39.016438, 51.996639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033337, 38.922195, 51.986271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035247, 0.035464, 0.998749,
		-0.234390, 0.971202, -0.042758,
		-0.971503, -0.235604, -0.025919,
		36.741886, 38.851513, 51.978497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183754, 39.472988, 52.489647>,  <37.421940, 39.016438, 51.996639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183754, 39.472988, 52.489647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.877480, 39.216957, 52.464291>,  <36.693714, 39.063339, 52.449078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.877480, 39.216957, 52.464291>,  <37.183754, 39.472988, 52.489647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877480, 39.216957, 52.464291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069543, -0.015593, 0.997457,
		-0.639439, 0.768151, -0.032573,
		-0.765690, -0.640078, -0.063391,
		36.647774, 39.024933, 52.445274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733616, 39.781738, 52.933102>,  <37.183754, 39.472988, 52.489647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733616, 39.781738, 52.933102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643059, 39.393826, 52.896721>,  <36.588726, 39.161079, 52.874893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643059, 39.393826, 52.896721>,  <36.733616, 39.781738, 52.933102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643059, 39.393826, 52.896721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039952, -0.102542, 0.993926,
		-0.973217, 0.221383, 0.061959,
		-0.226392, -0.969781, -0.090950,
		36.575142, 39.102890, 52.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270977, 39.612465, 53.517067>,  <36.733616, 39.781738, 52.933102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270977, 39.612465, 53.517067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.422520, 39.261265, 53.400051>,  <36.513443, 39.050545, 53.329842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.422520, 39.261265, 53.400051>,  <36.270977, 39.612465, 53.517067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422520, 39.261265, 53.400051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217273, -0.222886, 0.950324,
		-0.899590, -0.423594, 0.106325,
		0.378853, -0.878003, -0.292541,
		36.536175, 38.997864, 53.312290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125229, 39.212219, 54.127930>,  <36.270977, 39.612465, 53.517067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125229, 39.212219, 54.127930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371403, 38.966087, 53.930908>,  <36.519108, 38.818409, 53.812695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.371403, 38.966087, 53.930908>,  <36.125229, 39.212219, 54.127930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371403, 38.966087, 53.930908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394048, -0.301009, 0.868401,
		-0.682615, -0.728535, 0.057217,
		0.615437, -0.615330, -0.492552,
		36.556034, 38.781487, 53.783142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214130, 38.617493, 54.518269>,  <36.125229, 39.212219, 54.127930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214130, 38.617493, 54.518269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536953, 38.590939, 54.283577>,  <36.730648, 38.575008, 54.142761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536953, 38.590939, 54.283577>,  <36.214130, 38.617493, 54.518269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536953, 38.590939, 54.283577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555469, -0.251682, 0.792534,
		-0.200276, -0.965531, -0.166251,
		0.807058, -0.066378, -0.586728,
		36.779072, 38.571026, 54.107559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.406475, 37.770615, 37.885593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744427, 37.682419, 38.080559>,  <36.947197, 37.629501, 38.197536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744427, 37.682419, 38.080559>,  <36.406475, 37.770615, 37.885593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744427, 37.682419, 38.080559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348575, 0.464250, 0.814229,
		-0.405806, -0.857822, 0.315378,
		0.844877, -0.220486, 0.487410,
		36.997890, 37.616272, 38.226780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327591, 37.353809, 38.565254>,  <36.406475, 37.770615, 37.885593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327591, 37.353809, 38.565254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602150, 37.643124, 38.534992>,  <36.766884, 37.816711, 38.516834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602150, 37.643124, 38.534992>,  <36.327591, 37.353809, 38.565254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602150, 37.643124, 38.534992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346350, 0.416603, 0.840526,
		0.639457, -0.550729, 0.536463,
		0.686394, 0.723284, -0.075654,
		36.808067, 37.860107, 38.512295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809971, 37.273849, 39.074738>,  <36.327591, 37.353809, 38.565254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809971, 37.273849, 39.074738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795670, 37.659103, 38.968082>,  <36.787090, 37.890255, 38.904087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795670, 37.659103, 38.968082>,  <36.809971, 37.273849, 39.074738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795670, 37.659103, 38.968082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192235, 0.255203, 0.947585,
		0.980698, 0.085133, 0.176025,
		-0.035749, 0.963132, -0.266642,
		36.784946, 37.948044, 38.888088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039188, 37.573574, 39.624283>,  <36.809971, 37.273849, 39.074738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039188, 37.573574, 39.624283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916153, 37.884010, 39.404072>,  <36.842331, 38.070271, 39.271946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916153, 37.884010, 39.404072>,  <37.039188, 37.573574, 39.624283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916153, 37.884010, 39.404072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093597, 0.551091, 0.829180,
		0.946904, 0.306575, -0.096871,
		-0.307590, 0.776087, -0.550525,
		36.823875, 38.116837, 39.238914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437344, 38.204609, 39.842430>,  <37.039188, 37.573574, 39.624283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437344, 38.204609, 39.842430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096664, 38.319809, 39.667309>,  <36.892258, 38.388931, 39.562237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096664, 38.319809, 39.667309>,  <37.437344, 38.204609, 39.842430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096664, 38.319809, 39.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208226, 0.580664, 0.787065,
		0.480891, 0.761501, -0.434579,
		-0.851696, 0.288002, -0.437801,
		36.841156, 38.406208, 39.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377483, 38.988708, 39.980587>,  <37.437344, 38.204609, 39.842430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377483, 38.988708, 39.980587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004730, 38.872833, 39.893253>,  <36.781078, 38.803307, 39.840855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004730, 38.872833, 39.893253>,  <37.377483, 38.988708, 39.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004730, 38.872833, 39.893253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340078, 0.488222, 0.803733,
		-0.126241, 0.823236, -0.553485,
		-0.931885, -0.289692, -0.218331,
		36.725166, 38.785927, 39.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899662, 39.615742, 40.025951>,  <37.377483, 38.988708, 39.980587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899662, 39.615742, 40.025951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676735, 39.285786, 40.063801>,  <36.542980, 39.087811, 40.086510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676735, 39.285786, 40.063801>,  <36.899662, 39.615742, 40.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676735, 39.285786, 40.063801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387520, 0.359209, 0.848998,
		-0.734320, 0.436493, -0.519855,
		-0.557317, -0.824890, 0.094624,
		36.509541, 39.038319, 40.092190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294441, 39.890163, 40.269756>,  <36.899662, 39.615742, 40.025951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294441, 39.890163, 40.269756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279808, 39.503216, 40.370041>,  <36.271027, 39.271046, 40.430214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279808, 39.503216, 40.370041>,  <36.294441, 39.890163, 40.269756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279808, 39.503216, 40.370041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298094, 0.250024, 0.921210,
		-0.953835, -0.041034, -0.297514,
		-0.036584, -0.967370, 0.250714,
		36.268833, 39.213005, 40.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677197, 39.829369, 40.518436>,  <36.294441, 39.890163, 40.269756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677197, 39.829369, 40.518436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854942, 39.494606, 40.646263>,  <35.961590, 39.293747, 40.722958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854942, 39.494606, 40.646263>,  <35.677197, 39.829369, 40.518436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854942, 39.494606, 40.646263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475623, 0.081888, 0.875830,
		-0.759159, -0.541180, -0.361665,
		0.444365, -0.836910, 0.319563,
		35.988251, 39.243534, 40.742130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147549, 39.622906, 40.965603>,  <35.677197, 39.829369, 40.518436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147549, 39.622906, 40.965603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453468, 39.387928, 41.071434>,  <35.637020, 39.246941, 41.134933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453468, 39.387928, 41.071434>,  <35.147549, 39.622906, 40.965603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453468, 39.387928, 41.071434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326113, 0.001202, 0.945330,
		-0.555644, -0.809266, -0.190652,
		0.764794, -0.587441, 0.264580,
		35.682907, 39.211697, 41.150806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841324, 39.014793, 41.274345>,  <35.147549, 39.622906, 40.965603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841324, 39.014793, 41.274345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 39.090065, 41.410439>,  <35.430965, 39.135227, 41.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 39.090065, 41.410439>,  <34.841324, 39.014793, 41.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209850, 39.090065, 41.410439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349206, 0.015735, 0.936914,
		0.170961, -0.982007, 0.080213,
		0.921319, 0.188187, 0.340233,
		35.486244, 39.146519, 41.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976768, 38.465847, 41.759834>,  <34.841324, 39.014793, 41.274345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976768, 38.465847, 41.759834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224346, 38.769196, 41.841595>,  <35.372894, 38.951206, 41.890652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224346, 38.769196, 41.841595>,  <34.976768, 38.465847, 41.759834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224346, 38.769196, 41.841595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196951, -0.102065, 0.975086,
		0.760341, -0.643781, 0.086190,
		0.618945, 0.758373, 0.204397,
		35.410030, 38.996708, 41.902912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150047, 37.658176, 41.876114>,  <34.976768, 38.465847, 41.759834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150047, 37.658176, 41.876114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834568, 37.416473, 41.921410>,  <34.645279, 37.271450, 41.948589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834568, 37.416473, 41.921410>,  <35.150047, 37.658176, 41.876114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834568, 37.416473, 41.921410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070524, -0.094058, -0.993066,
		0.610720, -0.791217, 0.031568,
		-0.788700, -0.604259, 0.113243,
		34.597958, 37.235195, 41.955383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176788, 37.046577, 41.475540>,  <35.150047, 37.658176, 41.876114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176788, 37.046577, 41.475540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786091, 37.116093, 41.525776>,  <34.551674, 37.157803, 41.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786091, 37.116093, 41.525776>,  <35.176788, 37.046577, 41.475540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786091, 37.116093, 41.525776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151384, -0.144116, -0.977913,
		-0.151888, -0.974174, 0.167078,
		-0.976736, 0.173826, 0.125585,
		34.493069, 37.168228, 41.563454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892487, 36.521267, 41.090202>,  <35.176788, 37.046577, 41.475540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892487, 36.521267, 41.090202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592751, 36.780609, 41.144051>,  <34.412910, 36.936214, 41.176357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592751, 36.780609, 41.144051>,  <34.892487, 36.521267, 41.090202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592751, 36.780609, 41.144051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300886, -0.152282, -0.941423,
		-0.589882, -0.745948, 0.309193,
		-0.749338, 0.648360, 0.134617,
		34.367950, 36.975117, 41.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357937, 36.166096, 40.856243>,  <34.892487, 36.521267, 41.090202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357937, 36.166096, 40.856243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238472, 36.547077, 40.832150>,  <34.166794, 36.775665, 40.817692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238472, 36.547077, 40.832150>,  <34.357937, 36.166096, 40.856243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238472, 36.547077, 40.832150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492793, -0.207963, -0.844930,
		-0.817286, -0.222661, 0.531474,
		-0.298660, 0.952456, -0.060239,
		34.148872, 36.832813, 40.814079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669128, 36.164845, 40.561558>,  <34.357937, 36.166096, 40.856243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669128, 36.164845, 40.561558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737602, 36.554245, 40.500900>,  <33.778687, 36.787884, 40.464504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737602, 36.554245, 40.500900>,  <33.669128, 36.164845, 40.561558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737602, 36.554245, 40.500900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623235, -0.012214, -0.781940,
		-0.763070, 0.228362, 0.604628,
		0.171180, 0.973500, -0.151643,
		33.788956, 36.846294, 40.455406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020561, 36.524185, 40.549900>,  <33.669128, 36.164845, 40.561558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020561, 36.524185, 40.549900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280083, 36.758156, 40.355206>,  <33.435795, 36.898540, 40.238388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280083, 36.758156, 40.355206>,  <33.020561, 36.524185, 40.549900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280083, 36.758156, 40.355206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621136, 0.037576, -0.782801,
		-0.439595, 0.810212, 0.387701,
		0.648803, 0.584931, -0.486734,
		33.474724, 36.933636, 40.209187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606449, 36.945202, 40.313366>,  <33.020561, 36.524185, 40.549900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606449, 36.945202, 40.313366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930866, 36.993706, 40.084454>,  <33.125519, 37.022808, 39.947105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930866, 36.993706, 40.084454>,  <32.606449, 36.945202, 40.313366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930866, 36.993706, 40.084454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573617, -0.027070, -0.818676,
		-0.114763, 0.992252, 0.047601,
		0.811044, 0.121258, -0.572279,
		33.174179, 37.030083, 39.912769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400829, 37.384003, 39.784348>,  <32.606449, 36.945202, 40.313366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400829, 37.384003, 39.784348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718483, 37.227757, 39.598114>,  <32.909077, 37.134010, 39.486374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718483, 37.227757, 39.598114>,  <32.400829, 37.384003, 39.784348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718483, 37.227757, 39.598114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565084, -0.192626, -0.802232,
		0.223681, 0.900174, -0.373702,
		0.794133, -0.390616, -0.465587,
		32.956722, 37.110573, 39.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360123, 37.615639, 39.150570>,  <32.400829, 37.384003, 39.784348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360123, 37.615639, 39.150570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626839, 37.323662, 39.090466>,  <32.786869, 37.148476, 39.054405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626839, 37.323662, 39.090466>,  <32.360123, 37.615639, 39.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626839, 37.323662, 39.090466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509552, -0.299414, -0.806665,
		0.543832, 0.614437, -0.571590,
		0.666787, -0.729945, -0.150256,
		32.826874, 37.104679, 39.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536438, 37.653343, 38.381851>,  <32.360123, 37.615639, 39.150570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536438, 37.653343, 38.381851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649113, 37.291283, 38.509193>,  <32.716717, 37.074047, 38.585598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649113, 37.291283, 38.509193>,  <32.536438, 37.653343, 38.381851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649113, 37.291283, 38.509193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423663, -0.415027, -0.805148,
		0.860909, 0.091922, -0.500387,
		0.281685, -0.905153, 0.318356,
		32.733620, 37.019737, 38.604702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876537, 37.285721, 37.818710>,  <32.536438, 37.653343, 38.381851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876537, 37.285721, 37.818710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710201, 37.027542, 38.074986>,  <32.610401, 36.872635, 38.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710201, 37.027542, 38.074986>,  <32.876537, 37.285721, 37.818710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710201, 37.027542, 38.074986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528548, -0.401771, -0.747808,
		0.740077, -0.649603, -0.174075,
		-0.415840, -0.645443, 0.640687,
		32.585449, 36.833908, 38.267193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993610, 36.681660, 37.562519>,  <32.876537, 37.285721, 37.818710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993610, 36.681660, 37.562519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697308, 36.606171, 37.820408>,  <32.519527, 36.560875, 37.975140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697308, 36.606171, 37.820408>,  <32.993610, 36.681660, 37.562519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697308, 36.606171, 37.820408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475925, -0.529899, -0.701928,
		0.474109, -0.826795, 0.302706,
		-0.740754, -0.188725, 0.644722,
		32.475082, 36.549553, 38.013824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906372, 35.967525, 37.418205>,  <32.993610, 36.681660, 37.562519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906372, 35.967525, 37.418205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573017, 36.084641, 37.605713>,  <32.373005, 36.154911, 37.718216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573017, 36.084641, 37.605713>,  <32.906372, 35.967525, 37.418205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573017, 36.084641, 37.605713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552614, -0.455929, -0.697672,
		0.009453, -0.840477, 0.541765,
		-0.833383, 0.292792, 0.468769,
		32.323002, 36.172478, 37.746342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530548, 35.427353, 37.711357>,  <32.906372, 35.967525, 37.418205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530548, 35.427353, 37.711357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248127, 35.707157, 37.667229>,  <32.078674, 35.875038, 37.640751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248127, 35.707157, 37.667229>,  <32.530548, 35.427353, 37.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248127, 35.707157, 37.667229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657562, -0.705436, -0.264525,
		-0.262861, -0.114228, 0.958048,
		-0.706057, 0.699509, -0.110319,
		32.036308, 35.917011, 37.634132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739758, 34.880489, 37.268223>,  <32.530548, 35.427353, 37.711357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739758, 34.880489, 37.268223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015388, 35.009048, 37.008415>,  <33.180767, 35.086185, 36.852531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015388, 35.009048, 37.008415>,  <32.739758, 34.880489, 37.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015388, 35.009048, 37.008415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411152, 0.564669, 0.715613,
		0.596762, -0.760164, 0.256956,
		0.689079, 0.321403, -0.649516,
		33.222111, 35.105469, 36.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287086, 34.565319, 37.527653>,  <32.739758, 34.880489, 37.268223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287086, 34.565319, 37.527653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297710, 34.922123, 37.347160>,  <33.304085, 35.136208, 37.238865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297710, 34.922123, 37.347160>,  <33.287086, 34.565319, 37.527653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297710, 34.922123, 37.347160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586050, 0.351783, 0.729927,
		0.809840, -0.283831, -0.513420,
		0.026564, 0.892014, -0.451227,
		33.305679, 35.189728, 37.211792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395462, 34.624226, 38.243763>,  <33.287086, 34.565319, 37.527653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395462, 34.624226, 38.243763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685875, 34.349194, 38.239563>,  <33.860123, 34.184174, 38.237041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685875, 34.349194, 38.239563>,  <33.395462, 34.624226, 38.243763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685875, 34.349194, 38.239563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095616, 0.085816, 0.991712,
		-0.680985, -0.721015, 0.128049,
		0.726029, -0.687585, -0.010501,
		33.903683, 34.142918, 38.236412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336983, 34.074783, 38.808434>,  <33.395462, 34.624226, 38.243763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336983, 34.074783, 38.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719727, 34.124641, 38.703457>,  <33.949375, 34.154556, 38.640469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719727, 34.124641, 38.703457>,  <33.336983, 34.074783, 38.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719727, 34.124641, 38.703457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269556, -0.043807, 0.961988,
		0.108414, -0.991233, -0.075517,
		0.956863, 0.124649, -0.262443,
		34.006786, 34.162037, 38.624725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675903, 33.502731, 39.109028>,  <33.336983, 34.074783, 38.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675903, 33.502731, 39.109028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927200, 33.805294, 39.036198>,  <34.077980, 33.986832, 38.992500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927200, 33.805294, 39.036198>,  <33.675903, 33.502731, 39.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927200, 33.805294, 39.036198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196231, 0.072410, 0.977880,
		0.752864, -0.650076, -0.102941,
		0.628242, 0.756412, -0.182080,
		34.115673, 34.032219, 38.981575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352016, 33.274166, 39.434017>,  <33.675903, 33.502731, 39.109028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352016, 33.274166, 39.434017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359528, 33.672668, 39.400276>,  <34.364037, 33.911770, 39.380032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359528, 33.672668, 39.400276>,  <34.352016, 33.274166, 39.434017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359528, 33.672668, 39.400276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136398, 0.081029, 0.987335,
		0.990476, -0.030048, -0.134366,
		0.018780, 0.996259, -0.084356,
		34.365162, 33.971546, 39.374969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879002, 33.392540, 39.845806>,  <34.352016, 33.274166, 39.434017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879002, 33.392540, 39.845806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687321, 33.743401, 39.833420>,  <34.572311, 33.953918, 39.825989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687321, 33.743401, 39.833420>,  <34.879002, 33.392540, 39.845806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687321, 33.743401, 39.833420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366707, 0.232146, 0.900907,
		0.797425, 0.420365, -0.432905,
		-0.479207, 0.877155, -0.030968,
		34.543560, 34.006546, 39.824131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367241, 33.839916, 40.138805>,  <34.879002, 33.392540, 39.845806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367241, 33.839916, 40.138805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993687, 33.978142, 40.175587>,  <34.769554, 34.061077, 40.197655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993687, 33.978142, 40.175587>,  <35.367241, 33.839916, 40.138805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993687, 33.978142, 40.175587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193730, 0.272801, 0.942363,
		0.300558, 0.897869, -0.321709,
		-0.933881, 0.345559, 0.091952,
		34.713524, 34.081810, 40.203171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423256, 34.346790, 40.560055>,  <35.367241, 33.839916, 40.138805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423256, 34.346790, 40.560055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031071, 34.275570, 40.593517>,  <34.795761, 34.232838, 40.613594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031071, 34.275570, 40.593517>,  <35.423256, 34.346790, 40.560055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031071, 34.275570, 40.593517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069127, 0.086293, 0.993869,
		-0.184176, 0.980231, -0.072299,
		-0.980459, -0.178049, 0.083654,
		34.736935, 34.222157, 40.618614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163059, 34.836422, 41.016705>,  <35.423256, 34.346790, 40.560055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163059, 34.836422, 41.016705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921051, 34.518600, 41.037243>,  <34.775845, 34.327908, 41.049564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921051, 34.518600, 41.037243>,  <35.163059, 34.836422, 41.016705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921051, 34.518600, 41.037243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014418, 0.075405, 0.997049,
		-0.796077, 0.602497, -0.057077,
		-0.605023, -0.794551, 0.051342,
		34.739544, 34.280235, 41.052647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771992, 35.081123, 41.593552>,  <35.163059, 34.836422, 41.016705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771992, 35.081123, 41.593552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712620, 34.689499, 41.537823>,  <34.676998, 34.454525, 41.504387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712620, 34.689499, 41.537823>,  <34.771992, 35.081123, 41.593552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712620, 34.689499, 41.537823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054350, -0.132590, 0.989680,
		-0.987429, 0.154467, -0.033532,
		-0.148426, -0.979061, -0.139318,
		34.668091, 34.395782, 41.496029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158051, 34.937263, 41.993065>,  <34.771992, 35.081123, 41.593552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158051, 34.937263, 41.993065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358856, 34.593739, 41.952221>,  <34.479340, 34.387623, 41.927715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358856, 34.593739, 41.952221>,  <34.158051, 34.937263, 41.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358856, 34.593739, 41.952221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116108, -0.050072, 0.991974,
		-0.857030, -0.509840, 0.074578,
		0.502014, -0.858810, -0.102110,
		34.509460, 34.336094, 41.921589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945179, 34.446106, 42.472832>,  <34.158051, 34.937263, 41.993065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945179, 34.446106, 42.472832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300972, 34.288910, 42.379547>,  <34.514446, 34.194592, 42.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300972, 34.288910, 42.379547>,  <33.945179, 34.446106, 42.472832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300972, 34.288910, 42.379547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174856, -0.178812, 0.968221,
		-0.422199, -0.901991, -0.090334,
		0.889480, -0.392987, -0.233213,
		34.567818, 34.171013, 42.309582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052284, 33.865616, 42.861732>,  <33.945179, 34.446106, 42.472832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052284, 33.865616, 42.861732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423958, 33.974873, 42.762131>,  <34.646961, 34.040424, 42.702370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423958, 33.974873, 42.762131>,  <34.052284, 33.865616, 42.861732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423958, 33.974873, 42.762131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319912, -0.256925, 0.911946,
		0.185113, -0.927030, -0.326113,
		0.929188, 0.273140, -0.249008,
		34.702713, 34.056816, 42.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406799, 33.355637, 43.324730>,  <34.052284, 33.865616, 42.861732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406799, 33.355637, 43.324730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661606, 33.628826, 43.181759>,  <34.814491, 33.792740, 43.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661606, 33.628826, 43.181759>,  <34.406799, 33.355637, 43.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661606, 33.628826, 43.181759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638595, -0.207861, 0.740939,
		0.431749, -0.700241, -0.568556,
		0.637017, 0.682976, -0.357427,
		34.852711, 33.833717, 43.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996876, 33.029675, 43.377209>,  <34.406799, 33.355637, 43.324730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996876, 33.029675, 43.377209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079460, 33.420963, 43.368633>,  <35.129009, 33.655735, 43.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079460, 33.420963, 43.368633>,  <34.996876, 33.029675, 43.377209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079460, 33.420963, 43.368633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461728, -0.078088, 0.883577,
		0.862659, -0.192323, -0.467794,
		0.206462, 0.978220, -0.021438,
		35.141399, 33.714428, 43.362202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652252, 33.123009, 43.420261>,  <34.996876, 33.029675, 43.377209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652252, 33.123009, 43.420261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500240, 33.464195, 43.563385>,  <35.409035, 33.668907, 43.649261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500240, 33.464195, 43.563385>,  <35.652252, 33.123009, 43.420261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500240, 33.464195, 43.563385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542593, -0.107714, 0.833061,
		0.749113, 0.510734, -0.421878,
		-0.380030, 0.852965, 0.357811,
		35.386230, 33.720085, 43.670727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210617, 33.471481, 43.853710>,  <35.652252, 33.123009, 43.420261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210617, 33.471481, 43.853710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877384, 33.664444, 43.961971>,  <35.677444, 33.780220, 44.026928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877384, 33.664444, 43.961971>,  <36.210617, 33.471481, 43.853710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877384, 33.664444, 43.961971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344545, 0.069760, 0.936174,
		0.432736, 0.873165, -0.224327,
		-0.833084, 0.482407, 0.270657,
		35.627460, 33.809166, 44.043167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421482, 34.145470, 44.213684>,  <36.210617, 33.471481, 43.853710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421482, 34.145470, 44.213684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055386, 34.040977, 44.336380>,  <35.835728, 33.978283, 44.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055386, 34.040977, 44.336380>,  <36.421482, 34.145470, 44.213684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055386, 34.040977, 44.336380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268502, 0.172150, 0.947772,
		-0.300389, 0.949802, -0.087419,
		-0.915245, -0.261228, 0.306736,
		35.780811, 33.962608, 44.428402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337219, 34.605309, 44.786068>,  <36.421482, 34.145470, 44.213684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337219, 34.605309, 44.786068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093979, 34.288673, 44.810055>,  <35.948036, 34.098690, 44.824448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093979, 34.288673, 44.810055>,  <36.337219, 34.605309, 44.786068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093979, 34.288673, 44.810055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197615, -0.077779, 0.977189,
		-0.768869, 0.606082, 0.203728,
		-0.608102, -0.791590, 0.059969,
		35.911549, 34.051197, 44.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047512, 34.822849, 45.405743>,  <36.337219, 34.605309, 44.786068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047512, 34.822849, 45.405743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948170, 34.439571, 45.348923>,  <35.888565, 34.209602, 45.314831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948170, 34.439571, 45.348923>,  <36.047512, 34.822849, 45.405743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948170, 34.439571, 45.348923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021927, -0.141048, 0.989760,
		-0.968422, 0.248923, 0.014019,
		-0.248351, -0.958198, -0.142052,
		35.873665, 34.152111, 45.306309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369690, 34.729275, 45.749432>,  <36.047512, 34.822849, 45.405743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369690, 34.729275, 45.749432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560268, 34.377792, 45.737534>,  <35.674614, 34.166904, 45.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560268, 34.377792, 45.737534>,  <35.369690, 34.729275, 45.749432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560268, 34.377792, 45.737534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015896, -0.042438, 0.998973,
		-0.879061, -0.475482, -0.034187,
		0.476444, -0.878701, -0.029747,
		35.703201, 34.114182, 45.728611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024609, 34.270126, 46.203197>,  <35.369690, 34.729275, 45.749432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024609, 34.270126, 46.203197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375900, 34.079231, 46.190807>,  <35.586674, 33.964695, 46.183372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375900, 34.079231, 46.190807>,  <35.024609, 34.270126, 46.203197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375900, 34.079231, 46.190807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077617, -0.206149, 0.975437,
		-0.471899, -0.854253, -0.218088,
		0.878229, -0.477236, -0.030977,
		35.639370, 33.936062, 46.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969471, 33.633442, 46.697994>,  <35.024609, 34.270126, 46.203197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969471, 33.633442, 46.697994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362366, 33.692757, 46.651993>,  <35.598103, 33.728348, 46.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362366, 33.692757, 46.651993>,  <34.969471, 33.633442, 46.697994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362366, 33.692757, 46.651993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145348, -0.213555, 0.966058,
		0.118698, -0.965611, -0.231314,
		0.982235, 0.148290, -0.115001,
		35.657036, 33.737244, 46.617493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299282, 33.065369, 46.970047>,  <34.969471, 33.633442, 46.697994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299282, 33.065369, 46.970047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592354, 33.337524, 46.976360>,  <35.768196, 33.500816, 46.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592354, 33.337524, 46.976360>,  <35.299282, 33.065369, 46.970047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592354, 33.337524, 46.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216557, -0.255059, 0.942363,
		0.645200, -0.687033, -0.334220,
		0.732680, 0.680391, 0.015782,
		35.812157, 33.541641, 46.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907703, 32.815113, 47.311813>,  <35.299282, 33.065369, 46.970047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907703, 32.815113, 47.311813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980568, 33.208221, 47.324341>,  <36.024288, 33.444084, 47.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980568, 33.208221, 47.324341>,  <35.907703, 32.815113, 47.311813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980568, 33.208221, 47.324341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301201, -0.086098, 0.949666,
		0.935999, -0.163562, -0.311695,
		0.182166, 0.982769, 0.031323,
		36.035217, 33.503052, 47.333736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589592, 32.808197, 47.563732>,  <35.907703, 32.815113, 47.311813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589592, 32.808197, 47.563732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427166, 33.169449, 47.619530>,  <36.329708, 33.386200, 47.653008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427166, 33.169449, 47.619530>,  <36.589592, 32.808197, 47.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427166, 33.169449, 47.619530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264818, -0.029801, 0.963838,
		0.874632, 0.428324, -0.227064,
		-0.406068, 0.903134, 0.139493,
		36.305347, 33.440388, 47.661377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055485, 33.284187, 47.888355>,  <36.589592, 32.808197, 47.563732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055485, 33.284187, 47.888355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688625, 33.416195, 47.977726>,  <36.468510, 33.495399, 48.031349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688625, 33.416195, 47.977726>,  <37.055485, 33.284187, 47.888355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688625, 33.416195, 47.977726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285331, 0.152322, 0.946248,
		0.278250, 0.931602, -0.233868,
		-0.917150, 0.330023, 0.223431,
		36.413479, 33.515202, 48.044754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589302, 33.809151, 47.867786>,  <37.055485, 33.284187, 47.888355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589302, 33.809151, 47.867786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971836, 33.692627, 47.877270>,  <38.201355, 33.622715, 47.882961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971836, 33.692627, 47.877270>,  <37.589302, 33.809151, 47.867786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971836, 33.692627, 47.877270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023577, -0.003970, -0.999714,
		0.291318, 0.956621, 0.003072,
		0.956336, -0.291307, 0.023710,
		38.258736, 33.605236, 47.884384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956448, 34.325455, 47.476875>,  <37.589302, 33.809151, 47.867786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956448, 34.325455, 47.476875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193371, 34.003387, 47.464970>,  <38.335526, 33.810146, 47.457825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193371, 34.003387, 47.464970>,  <37.956448, 34.325455, 47.476875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193371, 34.003387, 47.464970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005760, 0.032713, -0.999448,
		0.805694, 0.592148, 0.014738,
		0.592304, -0.805165, -0.029767,
		38.371063, 33.761837, 47.456039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589592, 34.543736, 47.055275>,  <37.956448, 34.325455, 47.476875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589592, 34.543736, 47.055275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552280, 34.145519, 47.049519>,  <38.529896, 33.906590, 47.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552280, 34.145519, 47.049519>,  <38.589592, 34.543736, 47.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552280, 34.145519, 47.049519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206404, -0.005192, -0.978453,
		0.974011, -0.094237, 0.205967,
		-0.093275, -0.995537, -0.014394,
		38.524300, 33.846859, 47.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126709, 34.320847, 46.686115>,  <38.589592, 34.543736, 47.055275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126709, 34.320847, 46.686115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845787, 34.036098, 46.687683>,  <38.677235, 33.865250, 46.688625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845787, 34.036098, 46.687683>,  <39.126709, 34.320847, 46.686115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845787, 34.036098, 46.687683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098354, -0.102488, -0.989860,
		0.705052, -0.694795, 0.141993,
		-0.702302, -0.711869, 0.003923,
		38.635098, 33.822536, 46.688862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490238, 33.733303, 46.355152>,  <39.126709, 34.320847, 46.686115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490238, 33.733303, 46.355152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095383, 33.683750, 46.314732>,  <38.858471, 33.654018, 46.290482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095383, 33.683750, 46.314732>,  <39.490238, 33.733303, 46.355152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095383, 33.683750, 46.314732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112895, -0.092645, -0.989278,
		0.113196, -0.987962, 0.105440,
		-0.987138, -0.123886, -0.101049,
		38.799240, 33.646584, 46.284416>
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
