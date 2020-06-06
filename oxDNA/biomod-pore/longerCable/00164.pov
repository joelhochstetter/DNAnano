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
	<24.143627, 35.019669, 35.421215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416796, 35.048321, 35.130424>,  <24.580696, 35.065514, 34.955952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416796, 35.048321, 35.130424>,  <24.143627, 35.019669, 35.421215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416796, 35.048321, 35.130424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430829, 0.764177, 0.480021,
		0.589922, -0.641017, 0.491009,
		0.682919, 0.071633, -0.726973,
		24.621672, 35.069809, 34.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963360, 34.980186, 35.587223>,  <24.143627, 35.019669, 35.421215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963360, 34.980186, 35.587223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871553, 35.212212, 35.274593>,  <24.816469, 35.351425, 35.087017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871553, 35.212212, 35.274593>,  <24.963360, 34.980186, 35.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871553, 35.212212, 35.274593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496447, 0.760464, 0.418610,
		0.837175, -0.291930, -0.462509,
		-0.229517, 0.580061, -0.781570,
		24.802698, 35.386230, 35.040123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429924, 35.489784, 35.585766>,  <24.963360, 34.980186, 35.587223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429924, 35.489784, 35.585766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155653, 35.669899, 35.356998>,  <24.991091, 35.777969, 35.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155653, 35.669899, 35.356998>,  <25.429924, 35.489784, 35.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155653, 35.669899, 35.356998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234467, 0.880453, 0.412101,
		0.689108, 0.148475, -0.709285,
		-0.685679, 0.450286, -0.571915,
		24.949949, 35.804985, 35.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810272, 35.919701, 35.160145>,  <25.429924, 35.489784, 35.585766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810272, 35.919701, 35.160145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435137, 35.995991, 35.276134>,  <25.210056, 36.041763, 35.345726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435137, 35.995991, 35.276134>,  <25.810272, 35.919701, 35.160145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435137, 35.995991, 35.276134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328650, 0.756580, 0.565311,
		-0.111568, 0.625469, -0.772231,
		-0.937839, 0.190723, 0.289970,
		25.153786, 36.053207, 35.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642830, 36.647194, 35.093433>,  <25.810272, 35.919701, 35.160145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642830, 36.647194, 35.093433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409357, 36.495247, 35.380489>,  <25.269274, 36.404079, 35.552723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409357, 36.495247, 35.380489>,  <25.642830, 36.647194, 35.093433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409357, 36.495247, 35.380489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372537, 0.660027, 0.652365,
		-0.721477, 0.648124, -0.243733,
		-0.583684, -0.379867, 0.717645,
		25.234251, 36.381287, 35.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230364, 37.096992, 35.527241>,  <25.642830, 36.647194, 35.093433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230364, 37.096992, 35.527241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382637, 36.796101, 35.742363>,  <25.474001, 36.615566, 35.871437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382637, 36.796101, 35.742363>,  <25.230364, 37.096992, 35.527241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382637, 36.796101, 35.742363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672250, 0.624485, 0.397616,
		-0.634948, 0.210172, 0.743417,
		0.380685, -0.752227, 0.537804,
		25.496843, 36.570431, 35.903706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527086, 37.260040, 36.286968>,  <25.230364, 37.096992, 35.527241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527086, 37.260040, 36.286968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729401, 37.016209, 36.042809>,  <25.850790, 36.869907, 35.896313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729401, 37.016209, 36.042809>,  <25.527086, 37.260040, 36.286968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729401, 37.016209, 36.042809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821375, 0.556573, 0.124777,
		0.263669, -0.564477, 0.782205,
		0.505787, -0.609584, -0.610399,
		25.881136, 36.833332, 35.859688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108103, 37.121513, 36.617428>,  <25.527086, 37.260040, 36.286968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108103, 37.121513, 36.617428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210220, 37.050087, 36.237335>,  <26.271490, 37.007233, 36.009281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210220, 37.050087, 36.237335>,  <26.108103, 37.121513, 36.617428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210220, 37.050087, 36.237335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896338, 0.412179, 0.163357,
		0.362496, -0.893433, 0.265283,
		0.255293, -0.178567, -0.950231,
		26.286808, 36.996517, 35.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801685, 36.966118, 36.648739>,  <26.108103, 37.121513, 36.617428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801685, 36.966118, 36.648739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730909, 37.025608, 36.259571>,  <26.688444, 37.061302, 36.026070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730909, 37.025608, 36.259571>,  <26.801685, 36.966118, 36.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730909, 37.025608, 36.259571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917778, 0.381978, -0.108521,
		0.355493, -0.912126, -0.204087,
		-0.176942, 0.148728, -0.972919,
		26.677828, 37.070225, 35.967697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296776, 36.647381, 36.413921>,  <26.801685, 36.966118, 36.648739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296776, 36.647381, 36.413921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198811, 36.909203, 36.127823>,  <27.140032, 37.066296, 35.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198811, 36.909203, 36.127823>,  <27.296776, 36.647381, 36.413921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198811, 36.909203, 36.127823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920575, 0.388481, 0.040296,
		0.304234, -0.648566, -0.697713,
		-0.244914, 0.654557, -0.715243,
		27.125336, 37.105568, 35.913250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756861, 36.525291, 35.930965>,  <27.296776, 36.647381, 36.413921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756861, 36.525291, 35.930965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615871, 36.895210, 35.873676>,  <27.531279, 37.117161, 35.839302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615871, 36.895210, 35.873676>,  <27.756861, 36.525291, 35.930965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615871, 36.895210, 35.873676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935796, 0.349464, -0.046480,
		0.007066, -0.150408, -0.988599,
		-0.352471, 0.924798, -0.143220,
		27.510130, 37.172649, 35.830711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846542, 36.790413, 35.232441>,  <27.756861, 36.525291, 35.930965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846542, 36.790413, 35.232441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822552, 37.087002, 35.499760>,  <27.808157, 37.264954, 35.660152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822552, 37.087002, 35.499760>,  <27.846542, 36.790413, 35.232441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822552, 37.087002, 35.499760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952885, 0.241958, -0.182937,
		-0.297343, 0.625839, -0.721050,
		-0.059975, 0.741473, 0.668297,
		27.804560, 37.309444, 35.700249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523703, 37.158558, 35.302593>,  <27.846542, 36.790413, 35.232441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523703, 37.158558, 35.302593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696102, 37.475586, 35.475140>,  <28.799541, 37.665802, 35.578667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696102, 37.475586, 35.475140>,  <28.523703, 37.158558, 35.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696102, 37.475586, 35.475140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892058, 0.446244, 0.071401,
		-0.135906, -0.415579, 0.899346,
		0.431000, 0.792566, 0.431369,
		28.825403, 37.713356, 35.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306602, 37.210857, 35.996338>,  <28.523703, 37.158558, 35.302593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306602, 37.210857, 35.996338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375687, 37.564915, 35.823509>,  <28.417137, 37.777351, 35.719810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375687, 37.564915, 35.823509>,  <28.306602, 37.210857, 35.996338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375687, 37.564915, 35.823509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943059, 0.275205, 0.186820,
		0.284273, 0.375209, 0.882274,
		0.172710, 0.885144, -0.432078,
		28.427500, 37.830460, 35.693886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067591, 37.778240, 36.387108>,  <28.306602, 37.210857, 35.996338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067591, 37.778240, 36.387108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044199, 37.890797, 36.003983>,  <28.030165, 37.958332, 35.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044199, 37.890797, 36.003983>,  <28.067591, 37.778240, 36.387108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044199, 37.890797, 36.003983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995433, 0.056089, 0.077254,
		0.075461, 0.957952, 0.276826,
		-0.058478, 0.281392, -0.957810,
		28.026655, 37.975216, 35.716640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557350, 38.315262, 36.368130>,  <28.067591, 37.778240, 36.387108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557350, 38.315262, 36.368130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616961, 38.091137, 36.042225>,  <27.652727, 37.956661, 35.846680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616961, 38.091137, 36.042225>,  <27.557350, 38.315262, 36.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616961, 38.091137, 36.042225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971484, -0.236635, -0.014960,
		-0.184420, 0.793762, -0.579596,
		0.149027, -0.560309, -0.814767,
		27.661669, 37.923042, 35.797794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953506, 38.389965, 35.791180>,  <27.557350, 38.315262, 36.368130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953506, 38.389965, 35.791180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133326, 38.032700, 35.796425>,  <27.241217, 37.818340, 35.799572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133326, 38.032700, 35.796425>,  <26.953506, 38.389965, 35.791180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133326, 38.032700, 35.796425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891532, -0.449542, -0.055516,
		0.055482, 0.013263, -0.998372,
		0.449547, -0.893161, 0.013117,
		27.268190, 37.764751, 35.800362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758686, 38.060665, 35.142445>,  <26.953506, 38.389965, 35.791180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758686, 38.060665, 35.142445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866705, 37.777435, 35.403427>,  <26.931517, 37.607498, 35.560017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866705, 37.777435, 35.403427>,  <26.758686, 38.060665, 35.142445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866705, 37.777435, 35.403427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931426, -0.363812, -0.009317,
		0.243969, -0.605200, -0.757768,
		0.270047, -0.708078, 0.652458,
		26.947720, 37.565010, 35.599163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610781, 37.478489, 34.770752>,  <26.758686, 38.060665, 35.142445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610781, 37.478489, 34.770752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610653, 37.360840, 35.153061>,  <26.610577, 37.290249, 35.382446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610653, 37.360840, 35.153061>,  <26.610781, 37.478489, 34.770752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610653, 37.360840, 35.153061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734520, -0.648502, -0.199813,
		0.678586, -0.702095, -0.215830,
		-0.000322, -0.294122, 0.955768,
		26.610556, 37.272602, 35.439793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735954, 36.669537, 34.699669>,  <26.610781, 37.478489, 34.770752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735954, 36.669537, 34.699669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597818, 36.773273, 35.060444>,  <26.514936, 36.835514, 35.276909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597818, 36.773273, 35.060444>,  <26.735954, 36.669537, 34.699669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597818, 36.773273, 35.060444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648103, -0.760987, -0.029339,
		0.678751, -0.594678, 0.430876,
		-0.345338, 0.259338, 0.901934,
		26.494217, 36.851074, 35.331024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872524, 35.934376, 34.909985>,  <26.735954, 36.669537, 34.699669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872524, 35.934376, 34.909985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984034, 35.648525, 35.166607>,  <27.050940, 35.477013, 35.320580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984034, 35.648525, 35.166607>,  <26.872524, 35.934376, 34.909985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984034, 35.648525, 35.166607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497929, -0.463674, -0.732853,
		0.821189, 0.523748, 0.226575,
		0.278773, -0.714629, 0.641554,
		27.067665, 35.434135, 35.359074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704573, 36.011543, 34.719448>,  <26.872524, 35.934376, 34.909985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704573, 36.011543, 34.719448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964439, 36.128231, 35.000256>,  <28.120359, 36.198242, 35.168739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964439, 36.128231, 35.000256>,  <27.704573, 36.011543, 34.719448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964439, 36.128231, 35.000256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710516, -0.561421, -0.424233,
		0.270372, 0.774407, -0.572007,
		0.649666, 0.291719, 0.702021,
		28.159340, 36.215748, 35.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326086, 36.097187, 34.328922>,  <27.704573, 36.011543, 34.719448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326086, 36.097187, 34.328922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382441, 36.035633, 34.720119>,  <28.416252, 35.998703, 34.954838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382441, 36.035633, 34.720119>,  <28.326086, 36.097187, 34.328922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382441, 36.035633, 34.720119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746545, -0.632303, -0.207034,
		0.650248, 0.759284, 0.025798,
		0.140886, -0.153883, 0.977993,
		28.424706, 35.989468, 35.013519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985447, 36.362663, 34.633732>,  <28.326086, 36.097187, 34.328922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985447, 36.362663, 34.633732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806927, 36.030380, 34.766838>,  <28.699816, 35.831009, 34.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806927, 36.030380, 34.766838>,  <28.985447, 36.362663, 34.633732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806927, 36.030380, 34.766838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725202, -0.553608, -0.409390,
		0.524308, 0.058614, 0.849509,
		-0.446299, -0.830712, 0.332769,
		28.673037, 35.781166, 34.866669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441988, 35.792263, 35.091820>,  <28.985447, 36.362663, 34.633732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441988, 35.792263, 35.091820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150274, 35.608223, 34.889256>,  <28.975246, 35.497799, 34.767715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150274, 35.608223, 34.889256>,  <29.441988, 35.792263, 35.091820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150274, 35.608223, 34.889256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664183, -0.653819, -0.362465,
		-0.164329, -0.600689, 0.782412,
		-0.729285, -0.460101, -0.506409,
		28.931488, 35.470192, 34.737331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445120, 35.040306, 35.070175>,  <29.441988, 35.792263, 35.091820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445120, 35.040306, 35.070175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225910, 35.082249, 34.738228>,  <29.094385, 35.107414, 34.539059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225910, 35.082249, 34.738228>,  <29.445120, 35.040306, 35.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225910, 35.082249, 34.738228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627927, -0.603869, -0.490968,
		-0.552609, -0.790157, 0.265095,
		-0.548025, 0.104853, -0.829864,
		29.061502, 35.113705, 34.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393764, 34.276402, 34.752682>,  <29.445120, 35.040306, 35.070175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393764, 34.276402, 34.752682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352058, 34.558216, 34.471897>,  <29.327034, 34.727306, 34.303425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352058, 34.558216, 34.471897>,  <29.393764, 34.276402, 34.752682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352058, 34.558216, 34.471897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721699, -0.432040, -0.540825,
		-0.684309, -0.562996, -0.463419,
		-0.104267, 0.704540, -0.701963,
		29.320778, 34.769577, 34.261307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287321, 33.996765, 34.017040>,  <29.393764, 34.276402, 34.752682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287321, 33.996765, 34.017040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493000, 34.339783, 34.011082>,  <29.616407, 34.545593, 34.007507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493000, 34.339783, 34.011082>,  <29.287321, 33.996765, 34.017040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493000, 34.339783, 34.011082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715821, -0.438657, -0.543306,
		-0.472443, 0.268703, -0.839403,
		0.514198, 0.857542, -0.014897,
		29.647259, 34.597046, 34.006611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563526, 34.140404, 33.369316>,  <29.287321, 33.996765, 34.017040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563526, 34.140404, 33.369316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837950, 34.233292, 33.645111>,  <30.002604, 34.289024, 33.810589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837950, 34.233292, 33.645111>,  <29.563526, 34.140404, 33.369316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837950, 34.233292, 33.645111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721457, -0.339484, -0.603531,
		0.093921, 0.911496, -0.400442,
		0.686060, 0.232217, 0.689490,
		30.043768, 34.302956, 33.851959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161755, 34.651482, 33.144291>,  <29.563526, 34.140404, 33.369316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161755, 34.651482, 33.144291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261297, 34.371544, 33.412109>,  <30.321024, 34.203583, 33.572800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261297, 34.371544, 33.412109>,  <30.161755, 34.651482, 33.144291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261297, 34.371544, 33.412109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651913, -0.390220, -0.650183,
		0.716296, 0.598288, 0.359128,
		0.248858, -0.699843, 0.669544,
		30.335955, 34.161591, 33.612972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975813, 34.672520, 33.291172>,  <30.161755, 34.651482, 33.144291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975813, 34.672520, 33.291172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798443, 34.318832, 33.349861>,  <30.692020, 34.106621, 33.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798443, 34.318832, 33.349861>,  <30.975813, 34.672520, 33.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798443, 34.318832, 33.349861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520923, -0.387445, -0.760609,
		0.729392, -0.260844, 0.632415,
		-0.443426, -0.884221, 0.146720,
		30.665415, 34.053566, 33.393875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238220, 34.275967, 33.799385>,  <30.975813, 34.672520, 33.291172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238220, 34.275967, 33.799385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096594, 33.973495, 34.019505>,  <31.011618, 33.792011, 34.151577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096594, 33.973495, 34.019505>,  <31.238220, 34.275967, 33.799385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096594, 33.973495, 34.019505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617619, 0.252792, 0.744743,
		-0.702271, 0.603563, 0.377526,
		-0.354064, -0.756179, 0.550301,
		30.990376, 33.746643, 34.184593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278328, 34.196369, 34.524593>,  <31.238220, 34.275967, 33.799385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278328, 34.196369, 34.524593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523533, 33.935276, 34.702652>,  <31.670656, 33.778622, 34.809486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523533, 33.935276, 34.702652>,  <31.278328, 34.196369, 34.524593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523533, 33.935276, 34.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517589, 0.093904, 0.850461,
		-0.596926, -0.751745, -0.280284,
		0.613010, -0.652734, 0.445148,
		31.707436, 33.739456, 34.836197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937498, 34.250874, 34.310852>,  <31.278328, 34.196369, 34.524593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937498, 34.250874, 34.310852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281078, 34.448677, 34.257683>,  <32.487225, 34.567360, 34.225780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281078, 34.448677, 34.257683>,  <31.937498, 34.250874, 34.310852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281078, 34.448677, 34.257683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492304, 0.726098, -0.480019,
		-0.140859, 0.477750, 0.867130,
		0.858950, 0.494507, -0.132920,
		32.538765, 34.597031, 34.217808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972847, 34.958302, 34.496338>,  <31.937498, 34.250874, 34.310852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972847, 34.958302, 34.496338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300705, 34.997711, 34.270603>,  <32.497421, 35.021355, 34.135162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300705, 34.997711, 34.270603>,  <31.972847, 34.958302, 34.496338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300705, 34.997711, 34.270603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344305, 0.872050, -0.347826,
		0.457863, 0.479398, 0.748692,
		0.819644, 0.098521, -0.564338,
		32.546597, 35.027267, 34.101303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199684, 35.613178, 34.636692>,  <31.972847, 34.958302, 34.496338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199684, 35.613178, 34.636692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280666, 35.508457, 34.259232>,  <32.329254, 35.445625, 34.032757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280666, 35.508457, 34.259232>,  <32.199684, 35.613178, 34.636692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280666, 35.508457, 34.259232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471260, 0.818645, -0.328229,
		0.858445, 0.511154, 0.042358,
		0.202452, -0.261804, -0.943648,
		32.341400, 35.429916, 33.976135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757149, 36.029804, 34.070847>,  <32.199684, 35.613178, 34.636692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757149, 36.029804, 34.070847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404591, 35.890480, 33.943203>,  <32.193058, 35.806885, 33.866619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404591, 35.890480, 33.943203>,  <32.757149, 36.029804, 34.070847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404591, 35.890480, 33.943203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389965, 0.917738, 0.075389,
		0.266598, 0.190888, -0.944716,
		-0.881392, -0.348308, -0.319107,
		32.140171, 35.785988, 33.847469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527214, 35.782810, 34.179939>,  <32.757149, 36.029804, 34.070847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527214, 35.782810, 34.179939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158844, 35.668198, 34.285622>,  <32.937824, 35.599430, 34.349033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158844, 35.668198, 34.285622>,  <33.527214, 35.782810, 34.179939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158844, 35.668198, 34.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373839, -0.841102, 0.390885,
		0.110226, 0.458745, 0.881705,
		-0.920921, -0.286530, 0.264208,
		32.882568, 35.582237, 34.364883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571045, 35.446121, 34.859100>,  <33.527214, 35.782810, 34.179939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571045, 35.446121, 34.859100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278435, 35.287674, 34.637123>,  <33.102867, 35.192604, 34.503937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278435, 35.287674, 34.637123>,  <33.571045, 35.446121, 34.859100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278435, 35.287674, 34.637123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414618, -0.904578, 0.099145,
		-0.541261, -0.157562, 0.825961,
		-0.731525, -0.396122, -0.554941,
		33.058979, 35.168839, 34.470642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237610, 34.903877, 35.215405>,  <33.571045, 35.446121, 34.859100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237610, 34.903877, 35.215405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289516, 34.873348, 34.819962>,  <33.320660, 34.855030, 34.582695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289516, 34.873348, 34.819962>,  <33.237610, 34.903877, 35.215405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289516, 34.873348, 34.819962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520083, -0.843634, 0.133400,
		-0.844202, -0.531465, -0.069767,
		0.129755, -0.076332, -0.988603,
		33.328445, 34.850449, 34.523380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927845, 34.281357, 34.963734>,  <33.237610, 34.903877, 35.215405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927845, 34.281357, 34.963734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230408, 34.383820, 34.722988>,  <33.411945, 34.445297, 34.578541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230408, 34.383820, 34.722988>,  <32.927845, 34.281357, 34.963734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230408, 34.383820, 34.722988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460551, -0.861955, 0.211958,
		-0.464481, -0.437513, -0.769961,
		0.756406, 0.256156, -0.601859,
		33.457329, 34.460667, 34.542431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123001, 33.701160, 34.554565>,  <32.927845, 34.281357, 34.963734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123001, 33.701160, 34.554565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442062, 33.942295, 34.561974>,  <33.633499, 34.086975, 34.566418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442062, 33.942295, 34.561974>,  <33.123001, 33.701160, 34.554565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442062, 33.942295, 34.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576531, -0.771148, 0.270080,
		0.177092, -0.204754, -0.962660,
		0.797653, 0.602832, 0.018517,
		33.681358, 34.123146, 34.567528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645260, 33.411610, 34.136612>,  <33.123001, 33.701160, 34.554565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645260, 33.411610, 34.136612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800568, 33.634930, 34.429882>,  <33.893753, 33.768921, 34.605843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800568, 33.634930, 34.429882>,  <33.645260, 33.411610, 34.136612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800568, 33.634930, 34.429882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478743, -0.802010, 0.357191,
		0.787435, 0.212316, -0.578678,
		0.388268, 0.558303, 0.733175,
		33.917049, 33.802422, 34.649834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256298, 33.006058, 34.366356>,  <33.645260, 33.411610, 34.136612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256298, 33.006058, 34.366356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219086, 33.285210, 34.650417>,  <34.196758, 33.452702, 34.820854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219086, 33.285210, 34.650417>,  <34.256298, 33.006058, 34.366356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219086, 33.285210, 34.650417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664927, -0.487333, 0.566020,
		0.741092, 0.524856, -0.418699,
		-0.093033, 0.697877, 0.710149,
		34.191177, 33.494572, 34.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834518, 32.949966, 34.731270>,  <34.256298, 33.006058, 34.366356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834518, 32.949966, 34.731270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581497, 33.150005, 34.967838>,  <34.429684, 33.270027, 35.109779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581497, 33.150005, 34.967838>,  <34.834518, 32.949966, 34.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581497, 33.150005, 34.967838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402492, -0.440144, 0.802667,
		0.661721, 0.745772, 0.077131,
		-0.632555, 0.500097, 0.591419,
		34.391731, 33.300034, 35.145264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189289, 33.209869, 35.211796>,  <34.834518, 32.949966, 34.731270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189289, 33.209869, 35.211796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825649, 33.143871, 35.364803>,  <34.607464, 33.104275, 35.456608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825649, 33.143871, 35.364803>,  <35.189289, 33.209869, 35.211796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825649, 33.143871, 35.364803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410203, -0.514608, 0.752936,
		0.072618, 0.841402, 0.535509,
		-0.909099, -0.164991, 0.382515,
		34.552921, 33.094376, 35.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177235, 33.556629, 35.787479>,  <35.189289, 33.209869, 35.211796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177235, 33.556629, 35.787479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964695, 33.221054, 35.740387>,  <34.837170, 33.019711, 35.712132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964695, 33.221054, 35.740387>,  <35.177235, 33.556629, 35.787479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964695, 33.221054, 35.740387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514437, -0.429943, 0.741959,
		-0.673071, 0.333675, 0.660028,
		-0.531348, -0.838934, -0.117727,
		34.805290, 32.969376, 35.705070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884186, 33.305016, 36.398449>,  <35.177235, 33.556629, 35.787479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884186, 33.305016, 36.398449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983177, 32.992386, 36.169403>,  <35.042572, 32.804806, 36.031975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983177, 32.992386, 36.169403>,  <34.884186, 33.305016, 36.398449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983177, 32.992386, 36.169403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713059, -0.253207, 0.653783,
		-0.655972, -0.570109, 0.494647,
		0.247480, -0.781576, -0.572619,
		35.057423, 32.757912, 35.997616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026962, 32.622784, 36.829643>,  <34.884186, 33.305016, 36.398449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026962, 32.622784, 36.829643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218712, 32.598114, 36.479465>,  <35.333759, 32.583313, 36.269360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218712, 32.598114, 36.479465>,  <35.026962, 32.622784, 36.829643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218712, 32.598114, 36.479465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841209, -0.252028, 0.478382,
		-0.250139, -0.965753, -0.068935,
		0.479372, -0.061673, -0.875442,
		35.362522, 32.579609, 36.216831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332638, 31.919626, 36.732704>,  <35.026962, 32.622784, 36.829643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332638, 31.919626, 36.732704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545086, 32.172905, 36.507504>,  <35.672554, 32.324871, 36.372383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545086, 32.172905, 36.507504>,  <35.332638, 31.919626, 36.732704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545086, 32.172905, 36.507504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837414, -0.291104, 0.462597,
		0.129023, -0.717160, -0.684861,
		0.531122, 0.633197, -0.563001,
		35.704422, 32.362865, 36.338604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774376, 31.485188, 36.335712>,  <35.332638, 31.919626, 36.732704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774376, 31.485188, 36.335712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923943, 31.846172, 36.421265>,  <36.013683, 32.062763, 36.472595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923943, 31.846172, 36.421265>,  <35.774376, 31.485188, 36.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923943, 31.846172, 36.421265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729602, -0.428596, 0.532904,
		0.572595, -0.043213, -0.818698,
		0.373919, 0.902462, 0.213883,
		36.036118, 32.116913, 36.485428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486088, 31.409304, 36.246807>,  <35.774376, 31.485188, 36.335712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486088, 31.409304, 36.246807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416622, 31.706856, 36.504951>,  <36.374943, 31.885387, 36.659836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416622, 31.706856, 36.504951>,  <36.486088, 31.409304, 36.246807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416622, 31.706856, 36.504951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684912, -0.379642, 0.621907,
		0.707628, 0.550014, -0.443562,
		-0.173662, 0.743879, 0.645356,
		36.364525, 31.930019, 36.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217278, 31.802975, 36.500523>,  <36.486088, 31.409304, 36.246807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217278, 31.802975, 36.500523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920174, 31.841789, 36.765518>,  <36.741913, 31.865078, 36.924515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920174, 31.841789, 36.765518>,  <37.217278, 31.802975, 36.500523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920174, 31.841789, 36.765518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640395, -0.185878, 0.745214,
		0.195453, 0.977770, 0.075922,
		-0.742760, 0.097034, 0.662490,
		36.697346, 31.870899, 36.964264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370155, 32.390442, 37.081856>,  <37.217278, 31.802975, 36.500523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370155, 32.390442, 37.081856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142616, 32.078911, 37.187565>,  <37.006092, 31.891993, 37.250992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142616, 32.078911, 37.187565>,  <37.370155, 32.390442, 37.081856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142616, 32.078911, 37.187565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577553, -0.149517, 0.802544,
		-0.585527, 0.609162, 0.534865,
		-0.568851, -0.778824, 0.264277,
		36.971962, 31.845264, 37.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995426, 32.514961, 37.763863>,  <37.370155, 32.390442, 37.081856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995426, 32.514961, 37.763863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123661, 32.150810, 37.659225>,  <37.200603, 31.932320, 37.596443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123661, 32.150810, 37.659225>,  <36.995426, 32.514961, 37.763863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123661, 32.150810, 37.659225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827386, 0.134691, 0.545244,
		-0.461144, -0.391240, 0.796416,
		0.320591, -0.910379, -0.261594,
		37.219837, 31.877697, 37.580746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155071, 32.181511, 38.390739>,  <36.995426, 32.514961, 37.763863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155071, 32.181511, 38.390739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424950, 32.006725, 38.152802>,  <37.586876, 31.901854, 38.010036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424950, 32.006725, 38.152802>,  <37.155071, 32.181511, 38.390739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424950, 32.006725, 38.152802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574037, -0.195953, 0.795037,
		-0.463966, -0.877875, 0.118626,
		0.674698, -0.436966, -0.594848,
		37.627357, 31.875635, 37.974346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288040, 31.434950, 38.563103>,  <37.155071, 32.181511, 38.390739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288040, 31.434950, 38.563103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599907, 31.609858, 38.383808>,  <37.787025, 31.714802, 38.276230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599907, 31.609858, 38.383808>,  <37.288040, 31.434950, 38.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599907, 31.609858, 38.383808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586457, -0.258940, 0.767475,
		0.219525, -0.861247, -0.458325,
		0.779665, 0.437268, -0.448241,
		37.833805, 31.741037, 38.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866722, 30.946255, 38.306236>,  <37.288040, 31.434950, 38.563103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866722, 30.946255, 38.306236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981201, 31.306919, 38.435913>,  <38.049889, 31.523317, 38.513721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981201, 31.306919, 38.435913>,  <37.866722, 30.946255, 38.306236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981201, 31.306919, 38.435913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598335, -0.432446, 0.674527,
		0.748390, 0.000929, -0.663259,
		0.286197, 0.901660, 0.324194,
		38.067059, 31.577417, 38.533173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548382, 31.165562, 38.165791>,  <37.866722, 30.946255, 38.306236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548382, 31.165562, 38.165791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433514, 31.307575, 38.521652>,  <38.364594, 31.392784, 38.735168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433514, 31.307575, 38.521652>,  <38.548382, 31.165562, 38.165791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433514, 31.307575, 38.521652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791348, -0.435389, 0.429191,
		0.539723, 0.827276, -0.155926,
		-0.287171, 0.355035, 0.889653,
		38.347363, 31.414085, 38.788548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169746, 31.379795, 38.424667>,  <38.548382, 31.165562, 38.165791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169746, 31.379795, 38.424667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911980, 31.292469, 38.717808>,  <38.757320, 31.240074, 38.893692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911980, 31.292469, 38.717808>,  <39.169746, 31.379795, 38.424667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911980, 31.292469, 38.717808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661215, -0.640473, 0.390626,
		0.384094, 0.736297, 0.557081,
		-0.644413, -0.218313, 0.732852,
		38.718655, 31.226974, 38.937664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152485, 30.652462, 38.511158>,  <39.169746, 31.379795, 38.424667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152485, 30.652462, 38.511158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843792, 30.621210, 38.258705>,  <38.658577, 30.602459, 38.107235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843792, 30.621210, 38.258705>,  <39.152485, 30.652462, 38.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843792, 30.621210, 38.258705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635853, -0.077471, -0.767913,
		0.011105, -0.993928, 0.109469,
		-0.771731, -0.078134, -0.631132,
		38.612274, 30.597771, 38.069366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294849, 30.107122, 38.074245>,  <39.152485, 30.652462, 38.511158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294849, 30.107122, 38.074245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021358, 30.315695, 37.870037>,  <38.857265, 30.440838, 37.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021358, 30.315695, 37.870037>,  <39.294849, 30.107122, 38.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021358, 30.315695, 37.870037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617756, 0.041164, -0.785291,
		-0.388459, -0.852301, -0.350261,
		-0.683723, 0.521429, -0.510524,
		38.816242, 30.472124, 37.716881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257439, 29.839724, 37.396549>,  <39.294849, 30.107122, 38.074245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257439, 29.839724, 37.396549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172260, 30.230549, 37.395744>,  <39.121151, 30.465044, 37.395260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172260, 30.230549, 37.395744>,  <39.257439, 29.839724, 37.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172260, 30.230549, 37.395744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594677, 0.127975, -0.793714,
		-0.775250, -0.170215, -0.608288,
		-0.212948, 0.977062, -0.002011,
		39.108376, 30.523666, 37.395142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038685, 29.977352, 36.713585>,  <39.257439, 29.839724, 37.396549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038685, 29.977352, 36.713585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228664, 30.262903, 36.919418>,  <39.342651, 30.434235, 37.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228664, 30.262903, 36.919418>,  <39.038685, 29.977352, 36.713585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228664, 30.262903, 36.919418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595119, 0.170205, -0.785406,
		-0.648271, 0.679269, -0.344004,
		0.474951, 0.713879, 0.514585,
		39.371151, 30.477068, 37.073795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967117, 30.691238, 36.416779>,  <39.038685, 29.977352, 36.713585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967117, 30.691238, 36.416779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318714, 30.602842, 36.585789>,  <39.529675, 30.549805, 36.687195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318714, 30.602842, 36.585789>,  <38.967117, 30.691238, 36.416779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318714, 30.602842, 36.585789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466747, 0.217491, -0.857231,
		0.097544, 0.950716, 0.294321,
		0.878995, -0.220991, 0.422529,
		39.582413, 30.536545, 36.712547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538956, 31.244564, 36.194832>,  <38.967117, 30.691238, 36.416779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538956, 31.244564, 36.194832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688290, 30.886919, 36.293774>,  <39.777889, 30.672331, 36.353138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688290, 30.886919, 36.293774>,  <39.538956, 31.244564, 36.194832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688290, 30.886919, 36.293774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493356, -0.034448, -0.869145,
		0.785636, 0.446513, 0.428256,
		0.373332, -0.894114, 0.247353,
		39.800289, 30.618685, 36.367981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368225, 31.138929, 36.315441>,  <39.538956, 31.244564, 36.194832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368225, 31.138929, 36.315441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163704, 30.839478, 36.146622>,  <40.040993, 30.659805, 36.045330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163704, 30.839478, 36.146622>,  <40.368225, 31.138929, 36.315441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163704, 30.839478, 36.146622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498556, 0.141630, -0.855210,
		0.700011, -0.647682, 0.300819,
		-0.511299, -0.748631, -0.422048,
		40.010315, 30.614887, 36.020008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734055, 30.521179, 36.024521>,  <40.368225, 31.138929, 36.315441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734055, 30.521179, 36.024521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380398, 30.532845, 35.838001>,  <40.168201, 30.539843, 35.726089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380398, 30.532845, 35.838001>,  <40.734055, 30.521179, 36.024521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380398, 30.532845, 35.838001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464705, -0.048311, -0.884147,
		-0.048311, -0.998406, 0.029162,
		0.884147, -0.029162, 0.466298,
		40.115154, 30.541594, 35.698112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732304, 30.003876, 35.524834>,  <40.734055, 30.521179, 36.024521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732304, 30.003876, 35.524834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429218, 30.230473, 35.395245>,  <40.247368, 30.366430, 35.317490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429218, 30.230473, 35.395245>,  <40.732304, 30.003876, 35.524834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429218, 30.230473, 35.395245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379156, -0.021909, -0.925073,
		-0.531146, -0.823775, -0.198188,
		-0.757710, 0.566494, -0.323976,
		40.201904, 30.400421, 35.298050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460415, 29.626720, 34.842464>,  <40.732304, 30.003876, 35.524834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460415, 29.626720, 34.842464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357662, 30.013130, 34.853851>,  <40.296009, 30.244976, 34.860683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357662, 30.013130, 34.853851>,  <40.460415, 29.626720, 34.842464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357662, 30.013130, 34.853851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357598, 0.122370, -0.925824,
		-0.897851, -0.227649, -0.376882,
		-0.256882, 0.966024, 0.028464,
		40.280598, 30.302937, 34.862389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062206, 29.739958, 34.197197>,  <40.460415, 29.626720, 34.842464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062206, 29.739958, 34.197197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214363, 30.089621, 34.317959>,  <40.305656, 30.299419, 34.390415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214363, 30.089621, 34.317959>,  <40.062206, 29.739958, 34.197197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214363, 30.089621, 34.317959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293357, 0.195537, -0.935792,
		-0.877064, 0.444537, -0.182059,
		0.380395, 0.874158, 0.301907,
		40.328480, 30.351868, 34.408531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918407, 30.049929, 33.620098>,  <40.062206, 29.739958, 34.197197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918407, 30.049929, 33.620098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165874, 30.292009, 33.820492>,  <40.314354, 30.437258, 33.940727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165874, 30.292009, 33.820492>,  <39.918407, 30.049929, 33.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165874, 30.292009, 33.820492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321477, 0.386838, -0.864297,
		-0.716874, 0.695765, 0.044765,
		0.618663, 0.605201, 0.500987,
		40.351475, 30.473570, 33.970787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724747, 30.698702, 33.365398>,  <39.918407, 30.049929, 33.620098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724747, 30.698702, 33.365398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095367, 30.737822, 33.510696>,  <40.317738, 30.761293, 33.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095367, 30.737822, 33.510696>,  <39.724747, 30.698702, 33.365398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095367, 30.737822, 33.510696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262688, 0.522980, -0.810856,
		-0.269269, 0.846716, 0.458876,
		0.926547, 0.097797, 0.363244,
		40.373333, 30.767160, 33.619671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890457, 31.383713, 33.286617>,  <39.724747, 30.698702, 33.365398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890457, 31.383713, 33.286617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248100, 31.205965, 33.308903>,  <40.462685, 31.099316, 33.322273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248100, 31.205965, 33.308903>,  <39.890457, 31.383713, 33.286617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248100, 31.205965, 33.308903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250870, 0.393905, -0.884253,
		0.370989, 0.804596, 0.463673,
		0.894109, -0.444369, 0.055715,
		40.516335, 31.072655, 33.325619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318966, 31.872082, 33.133045>,  <39.890457, 31.383713, 33.286617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318966, 31.872082, 33.133045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519768, 31.534309, 33.058292>,  <40.640251, 31.331646, 33.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519768, 31.534309, 33.058292>,  <40.318966, 31.872082, 33.133045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519768, 31.534309, 33.058292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272861, 0.359689, -0.892284,
		0.820692, 0.396939, 0.410979,
		0.502007, -0.844430, -0.186885,
		40.670368, 31.280981, 33.002228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846008, 32.111595, 32.795998>,  <40.318966, 31.872082, 33.133045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846008, 32.111595, 32.795998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852245, 31.717983, 32.725060>,  <40.855988, 31.481817, 32.682499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852245, 31.717983, 32.725060>,  <40.846008, 32.111595, 32.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852245, 31.717983, 32.725060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431096, 0.166646, -0.886783,
		0.902171, -0.062625, 0.426808,
		0.015592, -0.984026, -0.177341,
		40.856922, 31.422775, 32.671856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459839, 32.041607, 32.406216>,  <40.846008, 32.111595, 32.795998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459839, 32.041607, 32.406216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242603, 31.711977, 32.341778>,  <41.112263, 31.514198, 32.303116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242603, 31.711977, 32.341778>,  <41.459839, 32.041607, 32.406216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242603, 31.711977, 32.341778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257573, 0.019105, -0.966070,
		0.799192, -0.566157, 0.201884,
		-0.543091, -0.824076, -0.161095,
		41.079678, 31.464754, 32.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827160, 31.624746, 31.930023>,  <41.459839, 32.041607, 32.406216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827160, 31.624746, 31.930023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448132, 31.502249, 31.893511>,  <41.220715, 31.428751, 31.871603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448132, 31.502249, 31.893511>,  <41.827160, 31.624746, 31.930023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448132, 31.502249, 31.893511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093261, 0.008199, -0.995608,
		0.305646, -0.951918, 0.020791,
		-0.947567, -0.306242, -0.091283,
		41.163860, 31.410376, 31.866125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822327, 31.045412, 31.387604>,  <41.827160, 31.624746, 31.930023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822327, 31.045412, 31.387604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448471, 31.184536, 31.417206>,  <41.224159, 31.268011, 31.434967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448471, 31.184536, 31.417206>,  <41.822327, 31.045412, 31.387604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448471, 31.184536, 31.417206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112309, -0.091269, -0.989473,
		-0.337396, -0.933112, 0.124366,
		-0.934640, 0.347811, 0.074003,
		41.168079, 31.288879, 31.439407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416683, 30.615406, 30.867722>,  <41.822327, 31.045412, 31.387604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416683, 30.615406, 30.867722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228008, 30.958672, 30.948780>,  <41.114803, 31.164631, 30.997416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228008, 30.958672, 30.948780>,  <41.416683, 30.615406, 30.867722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228008, 30.958672, 30.948780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199627, 0.119924, -0.972506,
		-0.858870, -0.499175, 0.114745,
		-0.471690, 0.858162, 0.202648,
		41.086502, 31.216120, 31.009575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930183, 30.644596, 30.379847>,  <41.416683, 30.615406, 30.867722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930183, 30.644596, 30.379847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877014, 31.013458, 30.525150>,  <40.845112, 31.234776, 30.612333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877014, 31.013458, 30.525150>,  <40.930183, 30.644596, 30.379847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877014, 31.013458, 30.525150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624824, 0.206541, -0.752951,
		-0.769367, -0.327061, 0.548730,
		-0.132926, 0.922156, 0.363261,
		40.837135, 31.290106, 30.634129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165997, 30.772676, 30.432417>,  <40.930183, 30.644596, 30.379847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165997, 30.772676, 30.432417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340305, 31.132597, 30.440979>,  <40.444889, 31.348549, 30.446115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340305, 31.132597, 30.440979>,  <40.165997, 30.772676, 30.432417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340305, 31.132597, 30.440979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512994, 0.267839, -0.815536,
		-0.739555, 0.344407, 0.578310,
		0.435770, 0.899804, 0.021403,
		40.471035, 31.402538, 30.447399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664150, 31.359425, 30.566761>,  <40.165997, 30.772676, 30.432417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664150, 31.359425, 30.566761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962830, 31.521780, 30.355970>,  <40.142036, 31.619192, 30.229496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962830, 31.521780, 30.355970>,  <39.664150, 31.359425, 30.566761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962830, 31.521780, 30.355970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607108, 0.092156, -0.789257,
		-0.271785, 0.909265, 0.315229,
		0.746694, 0.405887, -0.526976,
		40.186836, 31.643545, 30.197878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360287, 31.918184, 30.203901>,  <39.664150, 31.359425, 30.566761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360287, 31.918184, 30.203901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705673, 31.845938, 30.015514>,  <39.912903, 31.802589, 29.902483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705673, 31.845938, 30.015514>,  <39.360287, 31.918184, 30.203901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705673, 31.845938, 30.015514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413062, 0.282698, -0.865714,
		0.289503, 0.942051, 0.169494,
		0.863463, -0.180615, -0.470968,
		39.964710, 31.791754, 29.874224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324383, 32.431252, 29.688358>,  <39.360287, 31.918184, 30.203901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324383, 32.431252, 29.688358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626015, 32.190582, 29.583025>,  <39.806995, 32.046181, 29.519825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626015, 32.190582, 29.583025>,  <39.324383, 32.431252, 29.688358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626015, 32.190582, 29.583025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098828, 0.292429, -0.951167,
		0.649302, 0.743283, 0.161053,
		0.754083, -0.601678, -0.263332,
		39.852238, 32.010078, 29.504026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881199, 32.815323, 29.330940>,  <39.324383, 32.431252, 29.688358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881199, 32.815323, 29.330940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874550, 32.438881, 29.195860>,  <39.870560, 32.213017, 29.114813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874550, 32.438881, 29.195860>,  <39.881199, 32.815323, 29.330940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874550, 32.438881, 29.195860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097282, 0.337666, -0.936225,
		0.995118, 0.017288, -0.097167,
		-0.016625, -0.941107, -0.337700,
		39.869564, 32.156548, 29.094549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065365, 32.900600, 28.602165>,  <39.881199, 32.815323, 29.330940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065365, 32.900600, 28.602165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948433, 32.518223, 28.591496>,  <39.878273, 32.288795, 28.585093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948433, 32.518223, 28.591496>,  <40.065365, 32.900600, 28.602165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948433, 32.518223, 28.591496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198107, 0.087823, -0.976238,
		0.935573, -0.280098, -0.215053,
		-0.292329, -0.955946, -0.026675,
		39.860733, 32.231438, 28.583492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584343, 32.560734, 28.140400>,  <40.065365, 32.900600, 28.602165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584343, 32.560734, 28.140400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240047, 32.357845, 28.157604>,  <40.033470, 32.236111, 28.167927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240047, 32.357845, 28.157604>,  <40.584343, 32.560734, 28.140400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240047, 32.357845, 28.157604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001831, -0.087580, -0.996156,
		0.509038, -0.857354, 0.076312,
		-0.860742, -0.507221, 0.043012,
		39.981823, 32.205681, 28.170507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795364, 32.096195, 27.708086>,  <40.584343, 32.560734, 28.140400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795364, 32.096195, 27.708086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397396, 32.061283, 27.728172>,  <40.158615, 32.040337, 27.740225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397396, 32.061283, 27.728172>,  <40.795364, 32.096195, 27.708086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397396, 32.061283, 27.728172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038924, -0.126580, -0.991192,
		0.092870, -0.988109, 0.122540,
		-0.994917, -0.087282, 0.050217,
		40.098923, 32.035099, 27.743237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573452, 31.703537, 27.150007>,  <40.795364, 32.096195, 27.708086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573452, 31.703537, 27.150007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221313, 31.877195, 27.226440>,  <40.010033, 31.981390, 27.272301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221313, 31.877195, 27.226440>,  <40.573452, 31.703537, 27.150007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221313, 31.877195, 27.226440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192167, 0.041874, -0.980469,
		-0.433670, -0.899868, 0.046565,
		-0.880342, 0.434148, 0.191084,
		39.957211, 32.007439, 27.283766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119152, 31.402111, 26.648994>,  <40.573452, 31.703537, 27.150007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119152, 31.402111, 26.648994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923702, 31.734844, 26.754297>,  <39.806435, 31.934484, 26.817478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923702, 31.734844, 26.754297>,  <40.119152, 31.402111, 26.648994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923702, 31.734844, 26.754297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267250, 0.144531, -0.952727,
		-0.830558, -0.535878, 0.151686,
		-0.488622, 0.831833, 0.263255,
		39.777115, 31.984394, 26.833273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587349, 31.348267, 26.236732>,  <40.119152, 31.402111, 26.648994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587349, 31.348267, 26.236732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629204, 31.727299, 26.357491>,  <39.654316, 31.954718, 26.429945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629204, 31.727299, 26.357491>,  <39.587349, 31.348267, 26.236732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629204, 31.727299, 26.357491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181315, 0.316649, -0.931052,
		-0.977843, 0.042685, 0.204944,
		0.104638, 0.947582, 0.301894,
		39.660595, 32.011574, 26.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950752, 31.721588, 25.955423>,  <39.587349, 31.348267, 26.236732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950752, 31.721588, 25.955423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230621, 31.996346, 26.034044>,  <39.398544, 32.161201, 26.081217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230621, 31.996346, 26.034044>,  <38.950752, 31.721588, 25.955423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230621, 31.996346, 26.034044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121776, 0.385732, -0.914539,
		-0.704008, 0.615943, 0.353534,
		0.699674, 0.686895, 0.196551,
		39.440525, 32.202415, 26.093010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685051, 32.343193, 25.699883>,  <38.950752, 31.721588, 25.955423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685051, 32.343193, 25.699883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077362, 32.406002, 25.746233>,  <39.312748, 32.443687, 25.774044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077362, 32.406002, 25.746233>,  <38.685051, 32.343193, 25.699883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077362, 32.406002, 25.746233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020143, 0.509169, -0.860431,
		-0.194106, 0.846222, 0.496217,
		0.980774, 0.157020, 0.115878,
		39.371593, 32.453110, 25.780996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821877, 33.071178, 25.628033>,  <38.685051, 32.343193, 25.699883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821877, 33.071178, 25.628033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147095, 32.860672, 25.528429>,  <39.342224, 32.734367, 25.468666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147095, 32.860672, 25.528429>,  <38.821877, 33.071178, 25.628033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147095, 32.860672, 25.528429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093795, 0.540515, -0.836090,
		0.574597, 0.656422, 0.488824,
		0.813044, -0.526264, -0.249009,
		39.391006, 32.702793, 25.453726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327564, 33.598843, 25.470543>,  <38.821877, 33.071178, 25.628033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327564, 33.598843, 25.470543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431637, 33.261463, 25.282541>,  <39.494080, 33.059036, 25.169741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431637, 33.261463, 25.282541>,  <39.327564, 33.598843, 25.470543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431637, 33.261463, 25.282541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224344, 0.526254, -0.820199,
		0.939136, 0.107956, 0.326143,
		0.260179, -0.843447, -0.470005,
		39.509689, 33.008430, 25.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804420, 33.865894, 24.943909>,  <39.327564, 33.598843, 25.470543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804420, 33.865894, 24.943909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730824, 33.482727, 24.855785>,  <39.686665, 33.252827, 24.802912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730824, 33.482727, 24.855785>,  <39.804420, 33.865894, 24.943909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730824, 33.482727, 24.855785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173308, 0.189009, -0.966561,
		0.967529, -0.216017, 0.131240,
		-0.183988, -0.957921, -0.220309,
		39.675629, 33.195351, 24.789692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302013, 33.714325, 24.402252>,  <39.804420, 33.865894, 24.943909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302013, 33.714325, 24.402252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999981, 33.458607, 24.344076>,  <39.818760, 33.305176, 24.309172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999981, 33.458607, 24.344076>,  <40.302013, 33.714325, 24.402252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999981, 33.458607, 24.344076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083513, 0.126238, -0.988478,
		0.650288, -0.758530, -0.041931,
		-0.755084, -0.639294, -0.145438,
		39.773457, 33.266819, 24.300446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442802, 33.285534, 23.841402>,  <40.302013, 33.714325, 24.402252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442802, 33.285534, 23.841402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044456, 33.260521, 23.867762>,  <39.805450, 33.245514, 23.883577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044456, 33.260521, 23.867762>,  <40.442802, 33.285534, 23.841402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044456, 33.260521, 23.867762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075090, 0.158324, -0.984528,
		0.051127, -0.985405, -0.162364,
		-0.995865, -0.062528, 0.065899,
		39.745697, 33.241760, 23.887531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247963, 33.000618, 23.233427>,  <40.442802, 33.285534, 23.841402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247963, 33.000618, 23.233427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888504, 33.126915, 23.355242>,  <39.672829, 33.202694, 23.428329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888504, 33.126915, 23.355242>,  <40.247963, 33.000618, 23.233427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888504, 33.126915, 23.355242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228464, 0.255773, -0.939353,
		-0.374482, -0.913723, -0.157714,
		-0.898647, 0.315739, 0.304535,
		39.618908, 33.221638, 23.446602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774464, 32.736862, 22.688755>,  <40.247963, 33.000618, 23.233427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774464, 32.736862, 22.688755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599010, 33.034851, 22.889797>,  <39.493740, 33.213646, 23.010422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599010, 33.034851, 22.889797>,  <39.774464, 32.736862, 22.688755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599010, 33.034851, 22.889797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511925, 0.252531, -0.821073,
		-0.738604, -0.617444, 0.270604,
		-0.438631, 0.744977, 0.502605,
		39.467422, 33.258343, 23.040579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083595, 32.674713, 22.482738>,  <39.774464, 32.736862, 22.688755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083595, 32.674713, 22.482738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137070, 33.047943, 22.616301>,  <39.169155, 33.271881, 22.696438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137070, 33.047943, 22.616301>,  <39.083595, 32.674713, 22.482738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137070, 33.047943, 22.616301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479038, 0.355795, -0.802454,
		-0.867554, -0.052677, 0.494545,
		0.133686, 0.933078, 0.333906,
		39.177174, 33.327866, 22.716473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440449, 32.961681, 22.448582>,  <39.083595, 32.674713, 22.482738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440449, 32.961681, 22.448582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668713, 33.290020, 22.458084>,  <38.805672, 33.487022, 22.463785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668713, 33.290020, 22.458084>,  <38.440449, 32.961681, 22.448582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668713, 33.290020, 22.458084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674852, 0.485257, -0.555968,
		-0.467891, 0.301237, 0.830864,
		0.570661, 0.820842, 0.023757,
		38.839912, 33.536274, 22.465212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956154, 33.403843, 22.293968>,  <38.440449, 32.961681, 22.448582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956154, 33.403843, 22.293968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294739, 33.612644, 22.251978>,  <38.497890, 33.737923, 22.226784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294739, 33.612644, 22.251978>,  <37.956154, 33.403843, 22.293968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294739, 33.612644, 22.251978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419455, 0.532302, -0.735331,
		-0.327965, 0.666461, 0.669528,
		0.846461, 0.522000, -0.104974,
		38.548676, 33.769245, 22.220486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743130, 34.116264, 22.244133>,  <37.956154, 33.403843, 22.293968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743130, 34.116264, 22.244133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100945, 34.134365, 22.066250>,  <38.315632, 34.145226, 21.959520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100945, 34.134365, 22.066250>,  <37.743130, 34.116264, 22.244133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100945, 34.134365, 22.066250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370630, 0.631251, -0.681290,
		0.249889, 0.774257, 0.581447,
		0.894533, 0.045256, -0.444706,
		38.369305, 34.147942, 21.932838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829662, 34.784439, 22.107685>,  <37.743130, 34.116264, 22.244133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829662, 34.784439, 22.107685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043476, 34.567169, 21.848692>,  <38.171764, 34.436810, 21.693296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043476, 34.567169, 21.848692>,  <37.829662, 34.784439, 22.107685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043476, 34.567169, 21.848692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238294, 0.638173, -0.732087,
		0.810856, 0.545618, 0.211691,
		0.534535, -0.543173, -0.647484,
		38.203838, 34.404217, 21.654448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347771, 35.250977, 21.617064>,  <37.829662, 34.784439, 22.107685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347771, 35.250977, 21.617064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249985, 34.915165, 21.422977>,  <38.191315, 34.713676, 21.306526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249985, 34.915165, 21.422977>,  <38.347771, 35.250977, 21.617064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249985, 34.915165, 21.422977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202528, 0.533566, -0.821151,
		0.948273, -0.102470, -0.300464,
		-0.244461, -0.839528, -0.485213,
		38.176647, 34.663307, 21.277414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696716, 35.289951, 21.014261>,  <38.347771, 35.250977, 21.617064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696716, 35.289951, 21.014261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411415, 35.024605, 20.923738>,  <38.240234, 34.865398, 20.869425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411415, 35.024605, 20.923738>,  <38.696716, 35.289951, 21.014261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411415, 35.024605, 20.923738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274347, 0.561344, -0.780786,
		0.644982, -0.494813, -0.582373,
		-0.713254, -0.663365, -0.226306,
		38.197437, 34.825596, 20.855846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694542, 35.143951, 20.315441>,  <38.696716, 35.289951, 21.014261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694542, 35.143951, 20.315441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329391, 35.010876, 20.410086>,  <38.110302, 34.931030, 20.466873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329391, 35.010876, 20.410086>,  <38.694542, 35.143951, 20.315441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329391, 35.010876, 20.410086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358966, 0.378062, -0.853354,
		0.194444, -0.863939, -0.464545,
		-0.912872, -0.332685, 0.236613,
		38.055531, 34.911072, 20.481070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578106, 35.031616, 19.625216>,  <38.694542, 35.143951, 20.315441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578106, 35.031616, 19.625216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259598, 35.045891, 19.866768>,  <38.068493, 35.054455, 20.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259598, 35.045891, 19.866768>,  <38.578106, 35.031616, 19.625216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259598, 35.045891, 19.866768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538613, 0.412627, -0.734598,
		-0.275397, -0.910201, -0.309340,
		-0.796274, 0.035691, 0.603883,
		38.020714, 35.056599, 20.047932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938725, 34.732071, 19.289164>,  <38.578106, 35.031616, 19.625216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938725, 34.732071, 19.289164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858261, 35.014069, 19.561199>,  <37.809982, 35.183266, 19.724421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858261, 35.014069, 19.561199>,  <37.938725, 34.732071, 19.289164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858261, 35.014069, 19.561199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537966, 0.500701, -0.678153,
		-0.818613, -0.502282, 0.278542,
		-0.201158, 0.704991, 0.680091,
		37.797913, 35.225567, 19.765226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374454, 35.130833, 19.047644>,  <37.938725, 34.732071, 19.289164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374454, 35.130833, 19.047644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439491, 35.329071, 19.388924>,  <37.478512, 35.448013, 19.593691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439491, 35.329071, 19.388924>,  <37.374454, 35.130833, 19.047644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439491, 35.329071, 19.388924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451919, 0.806080, -0.382106,
		-0.877116, -0.323449, 0.355032,
		0.162592, 0.495597, 0.853198,
		37.488270, 35.477749, 19.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740517, 35.336746, 19.402864>,  <37.374454, 35.130833, 19.047644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740517, 35.336746, 19.402864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040901, 35.590488, 19.476242>,  <37.221130, 35.742733, 19.520269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040901, 35.590488, 19.476242>,  <36.740517, 35.336746, 19.402864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040901, 35.590488, 19.476242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526657, 0.742939, -0.413128,
		-0.398357, 0.213631, 0.892005,
		0.750963, 0.634353, 0.183445,
		37.266190, 35.780796, 19.531275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363411, 35.276985, 18.686886>,  <36.740517, 35.336746, 19.402864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363411, 35.276985, 18.686886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102955, 35.383312, 18.971237>,  <35.946682, 35.447109, 19.141848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102955, 35.383312, 18.971237>,  <36.363411, 35.276985, 18.686886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102955, 35.383312, 18.971237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758896, -0.239612, -0.605527,
		0.009376, -0.933770, 0.357751,
		-0.651144, 0.265819, 0.710881,
		35.907612, 35.463058, 19.184502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831570, 34.840752, 18.624041>,  <36.363411, 35.276985, 18.686886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831570, 34.840752, 18.624041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675919, 35.176598, 18.775635>,  <35.582527, 35.378105, 18.866590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675919, 35.176598, 18.775635>,  <35.831570, 34.840752, 18.624041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675919, 35.176598, 18.775635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904266, -0.269671, -0.331029,
		-0.175736, -0.471515, 0.864171,
		-0.389127, 0.839614, 0.378984,
		35.559181, 35.428482, 18.889330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168949, 35.076210, 18.940710>,  <35.831570, 34.840752, 18.624041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168949, 35.076210, 18.940710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919014, 35.377628, 19.022444>,  <34.769054, 35.558479, 19.071484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919014, 35.377628, 19.022444>,  <35.168949, 35.076210, 18.940710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919014, 35.377628, 19.022444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101159, -0.337644, 0.935822,
		0.774176, 0.564063, 0.287199,
		-0.624834, 0.753544, 0.204336,
		34.731564, 35.603691, 19.083744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346802, 35.546070, 19.441349>,  <35.168949, 35.076210, 18.940710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346802, 35.546070, 19.441349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953232, 35.474716, 19.437868>,  <34.717091, 35.431904, 19.435780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953232, 35.474716, 19.437868>,  <35.346802, 35.546070, 19.441349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953232, 35.474716, 19.437868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048647, -0.314572, 0.947986,
		-0.171841, 0.932322, 0.318192,
		-0.983923, -0.178382, -0.008701,
		34.658054, 35.421200, 19.435257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938911, 35.964333, 19.929882>,  <35.346802, 35.546070, 19.441349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938911, 35.964333, 19.929882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779282, 35.606163, 19.850931>,  <34.683506, 35.391262, 19.803560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779282, 35.606163, 19.850931>,  <34.938911, 35.964333, 19.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779282, 35.606163, 19.850931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180176, -0.287644, 0.940636,
		-0.899042, 0.339820, 0.276125,
		-0.399073, -0.895423, -0.197377,
		34.659561, 35.337536, 19.791718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497032, 35.756180, 20.567497>,  <34.938911, 35.964333, 19.929882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497032, 35.756180, 20.567497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582745, 35.401699, 20.403194>,  <34.634174, 35.189011, 20.304613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582745, 35.401699, 20.403194>,  <34.497032, 35.756180, 20.567497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582745, 35.401699, 20.403194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258059, -0.354220, 0.898851,
		-0.942065, -0.298610, 0.152790,
		0.214285, -0.886206, -0.410758,
		34.647030, 35.135838, 20.279966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110039, 35.310638, 20.912436>,  <34.497032, 35.756180, 20.567497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110039, 35.310638, 20.912436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436245, 35.139149, 20.756933>,  <34.631969, 35.036255, 20.663631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436245, 35.139149, 20.756933>,  <34.110039, 35.310638, 20.912436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436245, 35.139149, 20.756933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320828, -0.224168, 0.920227,
		-0.481669, -0.875183, -0.045267,
		0.815515, -0.428722, -0.388758,
		34.680901, 35.010532, 20.640306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249607, 34.622070, 21.035667>,  <34.110039, 35.310638, 20.912436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249607, 34.622070, 21.035667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622437, 34.756023, 20.980400>,  <34.846134, 34.836395, 20.947241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622437, 34.756023, 20.980400>,  <34.249607, 34.622070, 21.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622437, 34.756023, 20.980400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208728, -0.184717, 0.960371,
		0.296092, -0.923976, -0.242069,
		0.932074, 0.334885, -0.138167,
		34.902058, 34.856487, 20.938950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790321, 34.132130, 21.378046>,  <34.249607, 34.622070, 21.035667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790321, 34.132130, 21.378046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016865, 34.451553, 21.296515>,  <35.152790, 34.643208, 21.247597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016865, 34.451553, 21.296515>,  <34.790321, 34.132130, 21.378046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016865, 34.451553, 21.296515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402418, -0.052121, 0.913971,
		0.719233, -0.599661, -0.350872,
		0.566360, 0.798555, -0.203827,
		35.186771, 34.691120, 21.235367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466812, 33.957630, 21.551785>,  <34.790321, 34.132130, 21.378046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466812, 33.957630, 21.551785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472782, 34.357563, 21.547665>,  <35.476364, 34.597523, 21.545193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472782, 34.357563, 21.547665>,  <35.466812, 33.957630, 21.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472782, 34.357563, 21.547665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474699, 0.001977, 0.880146,
		0.880021, -0.018029, -0.474592,
		0.014930, 0.999835, -0.010298,
		35.477261, 34.657513, 21.544575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178490, 34.123760, 21.736914>,  <35.466812, 33.957630, 21.551785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178490, 34.123760, 21.736914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948494, 34.443153, 21.808264>,  <35.810497, 34.634789, 21.851074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948494, 34.443153, 21.808264>,  <36.178490, 34.123760, 21.736914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948494, 34.443153, 21.808264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405903, 0.089099, 0.909562,
		0.710375, 0.595390, -0.375337,
		-0.574986, 0.798481, 0.178377,
		35.775997, 34.682697, 21.861776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655182, 34.675797, 21.933451>,  <36.178490, 34.123760, 21.736914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655182, 34.675797, 21.933451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296616, 34.761440, 22.088682>,  <36.081478, 34.812828, 22.181822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296616, 34.761440, 22.088682>,  <36.655182, 34.675797, 21.933451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296616, 34.761440, 22.088682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396025, -0.006254, 0.918218,
		0.199026, 0.976790, -0.079186,
		-0.896411, 0.214109, 0.388078,
		36.027691, 34.825672, 22.205105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807865, 35.196945, 22.316021>,  <36.655182, 34.675797, 21.933451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807865, 35.196945, 22.316021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468395, 35.056496, 22.474243>,  <36.264713, 34.972225, 22.569176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468395, 35.056496, 22.474243>,  <36.807865, 35.196945, 22.316021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468395, 35.056496, 22.474243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354590, 0.177196, 0.918078,
		-0.392450, 0.919409, -0.025877,
		-0.848675, -0.351124, 0.395553,
		36.213791, 34.951157, 22.592909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646507, 35.590084, 22.982561>,  <36.807865, 35.196945, 22.316021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646507, 35.590084, 22.982561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406055, 35.270439, 22.979256>,  <36.261784, 35.078651, 22.977272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406055, 35.270439, 22.979256>,  <36.646507, 35.590084, 22.982561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406055, 35.270439, 22.979256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103569, -0.088154, 0.990708,
		-0.792415, 0.594684, 0.135755,
		-0.601126, -0.799112, -0.008264,
		36.225719, 35.030704, 22.976776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243412, 35.760071, 23.562849>,  <36.646507, 35.590084, 22.982561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243412, 35.760071, 23.562849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198624, 35.368519, 23.494436>,  <36.171749, 35.133587, 23.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198624, 35.368519, 23.494436>,  <36.243412, 35.760071, 23.562849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198624, 35.368519, 23.494436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103078, -0.182630, 0.977763,
		-0.988350, 0.091855, 0.121351,
		-0.111975, -0.978882, -0.171034,
		36.165031, 35.074856, 23.443127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648472, 35.552147, 23.986238>,  <36.243412, 35.760071, 23.562849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648472, 35.552147, 23.986238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883327, 35.241001, 23.896618>,  <36.024239, 35.054314, 23.842846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883327, 35.241001, 23.896618>,  <35.648472, 35.552147, 23.986238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883327, 35.241001, 23.896618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090133, -0.212242, 0.973051,
		-0.804455, -0.591508, -0.054504,
		0.587136, -0.777863, -0.224054,
		36.059467, 35.007641, 23.829401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504948, 35.061394, 24.506287>,  <35.648472, 35.552147, 23.986238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504948, 35.061394, 24.506287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850986, 34.930992, 24.353796>,  <36.058609, 34.852753, 24.262302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850986, 34.930992, 24.353796>,  <35.504948, 35.061394, 24.506287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850986, 34.930992, 24.353796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204981, -0.463892, 0.861851,
		-0.457791, -0.823735, -0.334496,
		0.865107, -0.325982, -0.381216,
		36.110516, 34.833191, 24.239429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521610, 34.304665, 24.605885>,  <35.504948, 35.061394, 24.506287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521610, 34.304665, 24.605885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892609, 34.449940, 24.570456>,  <36.115208, 34.537106, 24.549198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892609, 34.449940, 24.570456>,  <35.521610, 34.304665, 24.605885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892609, 34.449940, 24.570456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264354, -0.469678, 0.842330,
		0.264321, -0.804674, -0.531634,
		0.927497, 0.363185, -0.088573,
		36.170856, 34.558895, 24.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802853, 33.666649, 24.833723>,  <35.521610, 34.304665, 24.605885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802853, 33.666649, 24.833723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055634, 33.976597, 24.839588>,  <36.207302, 34.162567, 24.843107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055634, 33.976597, 24.839588>,  <35.802853, 33.666649, 24.833723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055634, 33.976597, 24.839588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516755, -0.435392, 0.737155,
		0.577584, -0.458268, -0.675564,
		0.631950, 0.774870, 0.014663,
		36.245220, 34.209057, 24.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338463, 33.374916, 25.150518>,  <35.802853, 33.666649, 24.833723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338463, 33.374916, 25.150518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480850, 33.748638, 25.158060>,  <36.566280, 33.972874, 25.162586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480850, 33.748638, 25.158060>,  <36.338463, 33.374916, 25.150518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480850, 33.748638, 25.158060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558273, -0.228793, 0.797487,
		0.749413, -0.273352, -0.603042,
		0.355967, 0.934308, 0.018856,
		36.587639, 34.028931, 25.163717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123306, 33.388981, 25.183302>,  <36.338463, 33.374916, 25.150518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123306, 33.388981, 25.183302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004078, 33.732372, 25.350239>,  <36.932541, 33.938408, 25.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004078, 33.732372, 25.350239>,  <37.123306, 33.388981, 25.183302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004078, 33.732372, 25.350239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527569, -0.216206, 0.821539,
		0.795503, 0.465053, -0.388461,
		-0.298071, 0.858476, 0.417340,
		36.914658, 33.989914, 25.475441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740437, 33.610920, 25.559025>,  <37.123306, 33.388981, 25.183302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740437, 33.610920, 25.559025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446384, 33.837082, 25.708643>,  <37.269955, 33.972778, 25.798414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446384, 33.837082, 25.708643>,  <37.740437, 33.610920, 25.559025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446384, 33.837082, 25.708643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393282, -0.093737, 0.914627,
		0.552193, 0.819472, -0.153454,
		-0.735127, 0.565401, 0.374045,
		37.225845, 34.006702, 25.820856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067913, 34.060242, 26.062780>,  <37.740437, 33.610920, 25.559025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067913, 34.060242, 26.062780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681763, 34.056240, 26.167042>,  <37.450073, 34.053837, 26.229599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681763, 34.056240, 26.167042>,  <38.067913, 34.060242, 26.062780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681763, 34.056240, 26.167042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260428, -0.093638, 0.960942,
		0.014792, 0.995556, 0.093003,
		-0.965380, -0.010007, 0.260655,
		37.392147, 34.053238, 26.245239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901268, 34.565578, 26.732861>,  <38.067913, 34.060242, 26.062780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901268, 34.565578, 26.732861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622704, 34.279556, 26.708498>,  <37.455566, 34.107944, 26.693880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622704, 34.279556, 26.708498>,  <37.901268, 34.565578, 26.732861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622704, 34.279556, 26.708498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256241, -0.327037, 0.909608,
		-0.670338, 0.617854, 0.410978,
		-0.696411, -0.715054, -0.060906,
		37.413780, 34.065041, 26.690226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474968, 34.660515, 27.333315>,  <37.901268, 34.565578, 26.732861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474968, 34.660515, 27.333315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397392, 34.279381, 27.239946>,  <37.350849, 34.050701, 27.183926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397392, 34.279381, 27.239946>,  <37.474968, 34.660515, 27.333315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397392, 34.279381, 27.239946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093839, -0.254866, 0.962412,
		-0.976516, 0.164743, 0.138842,
		-0.193937, -0.952839, -0.233422,
		37.339211, 33.993530, 27.169920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182251, 34.418377, 27.863104>,  <37.474968, 34.660515, 27.333315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182251, 34.418377, 27.863104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249153, 34.056919, 27.705395>,  <37.289295, 33.840046, 27.610769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249153, 34.056919, 27.705395>,  <37.182251, 34.418377, 27.863104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249153, 34.056919, 27.705395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009661, -0.401388, 0.915857,
		-0.985866, -0.149375, -0.075865,
		0.167258, -0.903645, -0.394271,
		37.299332, 33.785824, 27.587112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818054, 34.019997, 28.219072>,  <37.182251, 34.418377, 27.863104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818054, 34.019997, 28.219072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083366, 33.761414, 28.068258>,  <37.242554, 33.606262, 27.977770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083366, 33.761414, 28.068258>,  <36.818054, 34.019997, 28.219072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083366, 33.761414, 28.068258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088677, -0.432363, 0.897329,
		-0.743102, -0.628611, -0.229449,
		0.663276, -0.646460, -0.377034,
		37.282349, 33.567474, 27.955149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474865, 33.364647, 28.212416>,  <36.818054, 34.019997, 28.219072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474865, 33.364647, 28.212416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870014, 33.306553, 28.234356>,  <37.107105, 33.271694, 28.247520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870014, 33.306553, 28.234356>,  <36.474865, 33.364647, 28.212416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870014, 33.306553, 28.234356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118302, -0.475451, 0.871752,
		-0.100531, -0.867671, -0.486868,
		0.987875, -0.145236, 0.054850,
		37.166378, 33.262981, 28.250811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533512, 32.771118, 28.704256>,  <36.474865, 33.364647, 28.212416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533512, 32.771118, 28.704256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907150, 32.913727, 28.696619>,  <37.131332, 32.999290, 28.692038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907150, 32.913727, 28.696619>,  <36.533512, 32.771118, 28.704256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907150, 32.913727, 28.696619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153303, -0.352211, 0.923280,
		0.322446, -0.865354, -0.383654,
		0.934091, 0.356523, -0.019092,
		37.187378, 33.020683, 28.690891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985382, 32.180294, 28.757507>,  <36.533512, 32.771118, 28.704256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985382, 32.180294, 28.757507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163368, 32.507442, 28.903439>,  <37.270161, 32.703732, 28.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163368, 32.507442, 28.903439>,  <36.985382, 32.180294, 28.757507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163368, 32.507442, 28.903439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237626, -0.500599, 0.832427,
		0.863449, -0.283706, -0.417094,
		0.444961, 0.817870, 0.364826,
		37.296856, 32.752804, 29.012886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603153, 31.953638, 29.110109>,  <36.985382, 32.180294, 28.757507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603153, 31.953638, 29.110109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569763, 32.329659, 29.242376>,  <37.549728, 32.555271, 29.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569763, 32.329659, 29.242376>,  <37.603153, 31.953638, 29.110109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569763, 32.329659, 29.242376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101109, -0.322122, 0.941284,
		0.991367, 0.112006, -0.068159,
		-0.083474, 0.940049, 0.330666,
		37.544720, 32.611671, 29.341576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188103, 32.089882, 29.525202>,  <37.603153, 31.953638, 29.110109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188103, 32.089882, 29.525202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920811, 32.362518, 29.644463>,  <37.760437, 32.526100, 29.716019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920811, 32.362518, 29.644463>,  <38.188103, 32.089882, 29.525202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920811, 32.362518, 29.644463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201316, -0.220145, 0.954467,
		0.716197, 0.697828, 0.009891,
		-0.668232, 0.681596, 0.298151,
		37.720341, 32.566998, 29.733908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511768, 32.269745, 30.134851>,  <38.188103, 32.089882, 29.525202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511768, 32.269745, 30.134851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142662, 32.423244, 30.148947>,  <37.921200, 32.515343, 30.157404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142662, 32.423244, 30.148947>,  <38.511768, 32.269745, 30.134851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142662, 32.423244, 30.148947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003999, -0.100977, 0.994881,
		0.385343, 0.917900, 0.094713,
		-0.922765, 0.383749, 0.035240,
		37.865833, 32.538368, 30.159519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469250, 32.634933, 30.720964>,  <38.511768, 32.269745, 30.134851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469250, 32.634933, 30.720964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079048, 32.575306, 30.656256>,  <37.844929, 32.539532, 30.617432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079048, 32.575306, 30.656256>,  <38.469250, 32.634933, 30.720964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079048, 32.575306, 30.656256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149831, -0.088191, 0.984771,
		-0.161061, 0.984887, 0.063697,
		-0.975505, -0.149064, -0.161770,
		37.786396, 32.530586, 30.607725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031837, 33.067657, 31.129778>,  <38.469250, 32.634933, 30.720964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031837, 33.067657, 31.129778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718777, 32.826050, 31.069622>,  <37.530941, 32.681084, 31.033529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718777, 32.826050, 31.069622>,  <38.031837, 33.067657, 31.129778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718777, 32.826050, 31.069622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108137, -0.105991, 0.988470,
		-0.612995, 0.789889, 0.017638,
		-0.782651, -0.604020, -0.150388,
		37.483982, 32.644844, 31.024506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413757, 33.335201, 31.589981>,  <38.031837, 33.067657, 31.129778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413757, 33.335201, 31.589981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334717, 32.948914, 31.522642>,  <37.287292, 32.717140, 31.482239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334717, 32.948914, 31.522642>,  <37.413757, 33.335201, 31.589981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334717, 32.948914, 31.522642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083975, -0.154424, 0.984430,
		-0.976679, 0.208664, -0.050581,
		-0.197604, -0.965719, -0.168345,
		37.275436, 32.659199, 31.472139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758461, 33.172855, 32.017914>,  <37.413757, 33.335201, 31.589981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758461, 33.172855, 32.017914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936535, 32.830002, 31.914282>,  <37.043381, 32.624290, 31.852102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936535, 32.830002, 31.914282>,  <36.758461, 33.172855, 32.017914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936535, 32.830002, 31.914282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164420, -0.362664, 0.917301,
		-0.880213, -0.365771, -0.302383,
		0.445185, -0.857138, -0.259082,
		37.070091, 32.572861, 31.836557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335228, 32.534233, 32.237411>,  <36.758461, 33.172855, 32.017914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335228, 32.534233, 32.237411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716583, 32.419830, 32.198933>,  <36.945396, 32.351189, 32.175846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716583, 32.419830, 32.198933>,  <36.335228, 32.534233, 32.237411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716583, 32.419830, 32.198933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015885, -0.365924, 0.930509,
		-0.301325, -0.885609, -0.353411,
		0.953389, -0.286000, -0.096194,
		37.002598, 32.334030, 32.170074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326946, 31.797138, 32.288628>,  <36.335228, 32.534233, 32.237411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326946, 31.797138, 32.288628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690399, 31.934486, 32.383690>,  <36.908470, 32.016895, 32.440727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690399, 31.934486, 32.383690>,  <36.326946, 31.797138, 32.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690399, 31.934486, 32.383690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021472, -0.529936, 0.847766,
		0.417040, -0.775412, -0.474145,
		0.908635, 0.343371, 0.237654,
		36.962990, 32.037498, 32.454987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505547, 31.234015, 32.609692>,  <36.326946, 31.797138, 32.288628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505547, 31.234015, 32.609692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765545, 31.521687, 32.707909>,  <36.921543, 31.694290, 32.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765545, 31.521687, 32.707909>,  <36.505547, 31.234015, 32.609692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765545, 31.521687, 32.707909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202315, -0.475208, 0.856298,
		0.732516, -0.506909, -0.454382,
		0.649991, 0.719181, 0.245542,
		36.960541, 31.737440, 32.781570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193821, 30.847322, 32.672810>,  <36.505547, 31.234015, 32.609692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193821, 30.847322, 32.672810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223190, 31.182848, 32.888588>,  <37.240810, 31.384163, 33.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223190, 31.182848, 32.888588>,  <37.193821, 30.847322, 32.672810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223190, 31.182848, 32.888588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260837, -0.538229, 0.801420,
		0.962587, 0.081868, -0.258310,
		0.073420, 0.838813, 0.539447,
		37.245216, 31.434492, 33.050423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734192, 30.708916, 33.187843>,  <37.193821, 30.847322, 32.672810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734192, 30.708916, 33.187843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534790, 31.029745, 33.319405>,  <37.415150, 31.222242, 33.398342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534790, 31.029745, 33.319405>,  <37.734192, 30.708916, 33.187843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534790, 31.029745, 33.319405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224616, -0.246944, 0.942638,
		0.837283, 0.543784, -0.057057,
		-0.498502, 0.802071, 0.328904,
		37.385239, 31.270367, 33.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213989, 31.164024, 33.551804>,  <37.734192, 30.708916, 33.187843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213989, 31.164024, 33.551804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850262, 31.254837, 33.691288>,  <37.632027, 31.309324, 33.774979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850262, 31.254837, 33.691288>,  <38.213989, 31.164024, 33.551804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850262, 31.254837, 33.691288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361977, 0.018303, 0.932007,
		0.205214, 0.973715, -0.098824,
		-0.909318, 0.227033, 0.348707,
		37.577465, 31.322947, 33.795898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332260, 31.569220, 34.090981>,  <38.213989, 31.164024, 33.551804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332260, 31.569220, 34.090981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964016, 31.439039, 34.177296>,  <37.743069, 31.360931, 34.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964016, 31.439039, 34.177296>,  <38.332260, 31.569220, 34.090981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964016, 31.439039, 34.177296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191634, 0.104937, 0.975841,
		-0.340233, 0.939718, -0.034238,
		-0.920607, -0.325452, 0.215785,
		37.687832, 31.341404, 34.242031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076103, 31.948917, 34.681332>,  <38.332260, 31.569220, 34.090981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076103, 31.948917, 34.681332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831402, 31.632509, 34.684158>,  <37.684582, 31.442665, 34.685856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831402, 31.632509, 34.684158>,  <38.076103, 31.948917, 34.681332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831402, 31.632509, 34.684158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137385, -0.097442, 0.985713,
		-0.779031, 0.603980, 0.168284,
		-0.611749, -0.791020, 0.007068,
		37.647877, 31.395203, 34.686279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581261, 32.061848, 35.179558>,  <38.076103, 31.948917, 34.681332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581261, 32.061848, 35.179558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607368, 31.667912, 35.115265>,  <37.623032, 31.431551, 35.076691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607368, 31.667912, 35.115265>,  <37.581261, 32.061848, 35.179558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607368, 31.667912, 35.115265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197163, -0.145172, 0.969563,
		-0.978196, -0.094969, 0.184699,
		0.065265, -0.984838, -0.160731,
		37.626949, 31.372459, 35.067047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374458, 32.636059, 35.064377>,  <37.581261, 32.061848, 35.179558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374458, 32.636059, 35.064377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184391, 32.929527, 35.258675>,  <37.070351, 33.105606, 35.375252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184391, 32.929527, 35.258675>,  <37.374458, 32.636059, 35.064377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184391, 32.929527, 35.258675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450472, 0.677053, -0.581957,
		-0.755838, -0.057712, -0.652210,
		-0.475168, 0.733667, 0.485745,
		37.041840, 33.149628, 35.404396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814312, 33.042976, 34.722580>,  <37.374458, 32.636059, 35.064377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814312, 33.042976, 34.722580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058025, 33.229927, 34.978806>,  <37.204254, 33.342098, 35.132542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058025, 33.229927, 34.978806>,  <36.814312, 33.042976, 34.722580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058025, 33.229927, 34.978806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329689, 0.585378, -0.740701,
		-0.721163, 0.662486, 0.202572,
		0.609286, 0.467381, 0.640567,
		37.240810, 33.370140, 35.170975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591423, 33.627907, 34.779625>,  <36.814312, 33.042976, 34.722580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591423, 33.627907, 34.779625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980148, 33.660423, 34.868137>,  <37.213383, 33.679932, 34.921246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980148, 33.660423, 34.868137>,  <36.591423, 33.627907, 34.779625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980148, 33.660423, 34.868137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120785, 0.634392, -0.763517,
		-0.202444, 0.768725, 0.606694,
		0.971816, 0.081290, 0.221279,
		37.271694, 33.684811, 34.934521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820568, 34.377712, 34.858803>,  <36.591423, 33.627907, 34.779625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820568, 34.377712, 34.858803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145554, 34.162117, 34.769901>,  <37.340546, 34.032761, 34.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145554, 34.162117, 34.769901>,  <36.820568, 34.377712, 34.858803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145554, 34.162117, 34.769901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233764, 0.650398, -0.722729,
		0.534094, 0.535236, 0.654420,
		0.812464, -0.538985, -0.222254,
		37.389294, 34.000420, 34.703224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137695, 34.905525, 34.502529>,  <36.820568, 34.377712, 34.858803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137695, 34.905525, 34.502529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369316, 34.584381, 34.445801>,  <37.508289, 34.391693, 34.411762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369316, 34.584381, 34.445801>,  <37.137695, 34.905525, 34.502529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369316, 34.584381, 34.445801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288535, 0.364499, -0.885374,
		0.762526, 0.471758, 0.442718,
		0.579053, -0.802860, -0.141821,
		37.543034, 34.343521, 34.403255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777554, 35.204044, 34.206665>,  <37.137695, 34.905525, 34.502529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777554, 35.204044, 34.206665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740501, 34.817249, 34.111713>,  <37.718269, 34.585171, 34.054741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740501, 34.817249, 34.111713>,  <37.777554, 35.204044, 34.206665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740501, 34.817249, 34.111713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237555, 0.210056, -0.948390,
		0.966947, -0.144243, 0.210255,
		-0.092634, -0.966990, -0.237379,
		37.712711, 34.527153, 34.040501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370934, 35.026535, 33.859474>,  <37.777554, 35.204044, 34.206665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370934, 35.026535, 33.859474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085175, 34.762085, 33.767773>,  <37.913719, 34.603416, 33.712753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085175, 34.762085, 33.767773>,  <38.370934, 35.026535, 33.859474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085175, 34.762085, 33.767773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061697, 0.266832, -0.961766,
		0.697020, -0.701223, -0.149833,
		-0.714393, -0.661126, -0.229250,
		37.870857, 34.563747, 33.698997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575089, 34.690430, 33.248478>,  <38.370934, 35.026535, 33.859474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575089, 34.690430, 33.248478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 34.632473, 33.261398>,  <37.942181, 34.597698, 33.269150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 34.632473, 33.261398>,  <38.575089, 34.690430, 33.248478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179520, 34.632473, 33.261398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078053, 0.322394, -0.943382,
		0.126273, -0.935451, -0.330131,
		-0.988920, -0.144891, 0.032305,
		37.882843, 34.589005, 33.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423737, 34.464382, 32.624714>,  <38.575089, 34.690430, 33.248478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423737, 34.464382, 32.624714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057972, 34.580730, 32.737316>,  <37.838512, 34.650539, 32.804878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057972, 34.580730, 32.737316>,  <38.423737, 34.464382, 32.624714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057972, 34.580730, 32.737316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166635, 0.363290, -0.916653,
		-0.368895, -0.885108, -0.283727,
		-0.914412, 0.290870, 0.281506,
		37.783649, 34.667992, 32.821770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957081, 34.101959, 32.124107>,  <38.423737, 34.464382, 32.624714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957081, 34.101959, 32.124107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729115, 34.391541, 32.279583>,  <37.592335, 34.565289, 32.372868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729115, 34.391541, 32.279583>,  <37.957081, 34.101959, 32.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729115, 34.391541, 32.279583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248714, 0.298860, -0.921317,
		-0.783157, -0.621748, 0.009732,
		-0.569919, 0.723956, 0.388691,
		37.558140, 34.608727, 32.396191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249935, 34.066662, 31.866144>,  <37.957081, 34.101959, 32.124107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249935, 34.066662, 31.866144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310619, 34.444759, 31.981731>,  <37.347031, 34.671616, 32.051083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310619, 34.444759, 31.981731>,  <37.249935, 34.066662, 31.866144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310619, 34.444759, 31.981731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393625, 0.325950, -0.859544,
		-0.906665, 0.016659, 0.421522,
		0.151714, 0.945240, 0.288970,
		37.356133, 34.728333, 32.068424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812023, 34.418842, 31.458834>,  <37.249935, 34.066662, 31.866144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812023, 34.418842, 31.458834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032982, 34.718731, 31.604588>,  <37.165558, 34.898666, 31.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032982, 34.718731, 31.604588>,  <36.812023, 34.418842, 31.458834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032982, 34.718731, 31.604588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204168, 0.545500, -0.812862,
		-0.808193, 0.374625, 0.454401,
		0.552394, 0.749724, 0.364383,
		37.198700, 34.943649, 31.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389980, 34.962986, 31.526615>,  <36.812023, 34.418842, 31.458834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389980, 34.962986, 31.526615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762634, 35.097000, 31.470316>,  <36.986225, 35.177410, 31.436537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762634, 35.097000, 31.470316>,  <36.389980, 34.962986, 31.526615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762634, 35.097000, 31.470316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223836, 0.223943, -0.948550,
		-0.286277, 0.915206, 0.283625,
		0.931635, 0.335034, -0.140746,
		37.042126, 35.197510, 31.428093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311779, 35.713791, 31.337877>,  <36.389980, 34.962986, 31.526615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311779, 35.713791, 31.337877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663506, 35.562855, 31.221663>,  <36.874542, 35.472294, 31.151934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663506, 35.562855, 31.221663>,  <36.311779, 35.713791, 31.337877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663506, 35.562855, 31.221663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241558, 0.172373, -0.954954,
		0.410423, 0.909891, 0.060422,
		0.879319, -0.377340, -0.290537,
		36.927299, 35.449654, 31.134501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439762, 36.236374, 31.030613>,  <36.311779, 35.713791, 31.337877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439762, 36.236374, 31.030613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669868, 35.949451, 30.873369>,  <36.807934, 35.777298, 30.779022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669868, 35.949451, 30.873369>,  <36.439762, 36.236374, 31.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669868, 35.949451, 30.873369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340501, 0.226974, -0.912437,
		0.743726, 0.658749, -0.113673,
		0.575266, -0.717309, -0.393111,
		36.842449, 35.734261, 30.755436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658012, 36.465965, 30.416681>,  <36.439762, 36.236374, 31.030613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658012, 36.465965, 30.416681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757637, 36.080456, 30.378508>,  <36.817413, 35.849152, 30.355604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757637, 36.080456, 30.378508>,  <36.658012, 36.465965, 30.416681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757637, 36.080456, 30.378508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049373, 0.085776, -0.995090,
		0.967228, 0.252551, -0.026221,
		0.249061, -0.963774, -0.095434,
		36.832355, 35.791325, 30.349878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082260, 36.447456, 29.829634>,  <36.658012, 36.465965, 30.416681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082260, 36.447456, 29.829634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948566, 36.074600, 29.885357>,  <36.868351, 35.850887, 29.918791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948566, 36.074600, 29.885357>,  <37.082260, 36.447456, 29.829634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948566, 36.074600, 29.885357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174857, -0.083914, -0.981012,
		0.926129, -0.352242, -0.134944,
		-0.334230, -0.932139, 0.139307,
		36.848297, 35.794960, 29.927149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510288, 36.092102, 29.492228>,  <37.082260, 36.447456, 29.829634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510288, 36.092102, 29.492228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166740, 35.890636, 29.529459>,  <36.960609, 35.769756, 29.551798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166740, 35.890636, 29.529459>,  <37.510288, 36.092102, 29.492228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166740, 35.890636, 29.529459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151287, 0.075848, -0.985576,
		0.489336, -0.860566, -0.141341,
		-0.858873, -0.503661, 0.093077,
		36.909077, 35.739540, 29.557383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407513, 35.693367, 28.868385>,  <37.510288, 36.092102, 29.492228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407513, 35.693367, 28.868385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037663, 35.699081, 29.020628>,  <36.815754, 35.702511, 29.111975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037663, 35.699081, 29.020628>,  <37.407513, 35.693367, 28.868385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037663, 35.699081, 29.020628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378960, 0.065626, -0.923083,
		-0.038160, -0.997742, -0.055268,
		-0.924626, 0.014281, 0.380608,
		36.760273, 35.703365, 29.134811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079105, 35.362820, 28.352921>,  <37.407513, 35.693367, 28.868385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079105, 35.362820, 28.352921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764469, 35.516045, 28.546635>,  <36.575687, 35.607979, 28.662863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764469, 35.516045, 28.546635>,  <37.079105, 35.362820, 28.352921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764469, 35.516045, 28.546635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478271, 0.118092, -0.870236,
		-0.390546, -0.916142, 0.090317,
		-0.786595, 0.383063, 0.484285,
		36.528492, 35.630962, 28.691919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569916, 34.942734, 28.159760>,  <37.079105, 35.362820, 28.352921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569916, 34.942734, 28.159760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428658, 35.300323, 28.270105>,  <36.343903, 35.514877, 28.336313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428658, 35.300323, 28.270105>,  <36.569916, 34.942734, 28.159760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428658, 35.300323, 28.270105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321371, 0.161005, -0.933166,
		-0.878640, -0.418198, 0.230438,
		-0.353147, 0.893973, 0.275863,
		36.322712, 35.568516, 28.352863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975498, 35.044666, 27.800852>,  <36.569916, 34.942734, 28.159760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975498, 35.044666, 27.800852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106277, 35.407444, 27.907097>,  <36.184746, 35.625111, 27.970844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106277, 35.407444, 27.907097>,  <35.975498, 35.044666, 27.800852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106277, 35.407444, 27.907097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255117, 0.355327, -0.899254,
		-0.909956, 0.226248, 0.347551,
		0.326948, 0.906948, 0.265612,
		36.204361, 35.679527, 27.986780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598240, 35.533524, 27.334171>,  <35.975498, 35.044666, 27.800852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598240, 35.533524, 27.334171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892094, 35.769962, 27.467392>,  <36.068405, 35.911827, 27.547323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892094, 35.769962, 27.467392>,  <35.598240, 35.533524, 27.334171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892094, 35.769962, 27.467392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071319, 0.555446, -0.828489,
		-0.674707, 0.584881, 0.450204,
		0.734632, 0.591095, 0.333051,
		36.112484, 35.947292, 27.567307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489948, 36.188793, 27.084906>,  <35.598240, 35.533524, 27.334171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489948, 36.188793, 27.084906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880276, 36.214485, 27.168480>,  <36.114471, 36.229900, 27.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880276, 36.214485, 27.168480>,  <35.489948, 36.188793, 27.084906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880276, 36.214485, 27.168480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150405, 0.496281, -0.855035,
		-0.158611, 0.865783, 0.474619,
		0.975818, 0.064233, 0.208934,
		36.173019, 36.233753, 27.231159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716919, 36.893925, 27.066465>,  <35.489948, 36.188793, 27.084906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716919, 36.893925, 27.066465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018711, 36.653214, 26.961681>,  <36.199787, 36.508789, 26.898811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018711, 36.653214, 26.961681>,  <35.716919, 36.893925, 27.066465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018711, 36.653214, 26.961681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184655, 0.577644, -0.795129,
		0.629808, 0.551539, 0.546943,
		0.754483, -0.601774, -0.261961,
		36.245056, 36.472683, 26.883093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223003, 37.373360, 26.831179>,  <35.716919, 36.893925, 27.066465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223003, 37.373360, 26.831179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352833, 37.012676, 26.716938>,  <36.430729, 36.796265, 26.648394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352833, 37.012676, 26.716938>,  <36.223003, 37.373360, 26.831179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352833, 37.012676, 26.716938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283445, 0.380795, -0.880145,
		0.902392, 0.204720, 0.379181,
		0.324574, -0.901712, -0.285599,
		36.450203, 36.742161, 26.631258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822834, 37.514751, 26.543139>,  <36.223003, 37.373360, 26.831179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822834, 37.514751, 26.543139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722954, 37.163929, 26.378979>,  <36.663025, 36.953438, 26.280483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722954, 37.163929, 26.378979>,  <36.822834, 37.514751, 26.543139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722954, 37.163929, 26.378979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298383, 0.333510, -0.894281,
		0.921205, -0.345755, 0.178422,
		-0.249696, -0.877054, -0.410399,
		36.648045, 36.900814, 26.255859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222321, 37.434292, 25.991325>,  <36.822834, 37.514751, 26.543139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222321, 37.434292, 25.991325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965485, 37.137409, 25.914551>,  <36.811382, 36.959278, 25.868486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965485, 37.137409, 25.914551>,  <37.222321, 37.434292, 25.991325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965485, 37.137409, 25.914551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276661, 0.009153, -0.960924,
		0.714965, -0.670104, 0.199464,
		-0.642093, -0.742211, -0.191936,
		36.772858, 36.914745, 25.856970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571438, 37.119457, 25.491430>,  <37.222321, 37.434292, 25.991325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571438, 37.119457, 25.491430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192116, 37.003475, 25.439829>,  <36.964523, 36.933887, 25.408867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192116, 37.003475, 25.439829>,  <37.571438, 37.119457, 25.491430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192116, 37.003475, 25.439829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078587, 0.179289, -0.980653,
		0.307474, -0.940097, -0.147235,
		-0.948306, -0.289954, -0.129006,
		36.907623, 36.916489, 25.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607536, 36.792625, 24.797338>,  <37.571438, 37.119457, 25.491430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607536, 36.792625, 24.797338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222462, 36.871830, 24.871130>,  <36.991417, 36.919353, 24.915405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222462, 36.871830, 24.871130>,  <37.607536, 36.792625, 24.797338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222462, 36.871830, 24.871130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105858, 0.351840, -0.930055,
		-0.249067, -0.914877, -0.317750,
		-0.962684, 0.198009, 0.184478,
		36.933655, 36.931232, 24.926474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135845, 36.517616, 24.165724>,  <37.607536, 36.792625, 24.797338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135845, 36.517616, 24.165724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933670, 36.802513, 24.360556>,  <36.812366, 36.973450, 24.477455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933670, 36.802513, 24.360556>,  <37.135845, 36.517616, 24.165724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933670, 36.802513, 24.360556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237380, 0.427934, -0.872079,
		-0.829569, -0.556404, -0.047221,
		-0.505436, 0.712241, 0.487081,
		36.782040, 37.016186, 24.506680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656513, 36.715343, 23.674955>,  <37.135845, 36.517616, 24.165724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656513, 36.715343, 23.674955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643532, 37.020321, 23.933453>,  <36.635742, 37.203308, 24.088551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643532, 37.020321, 23.933453>,  <36.656513, 36.715343, 23.674955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643532, 37.020321, 23.933453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219677, 0.625329, -0.748802,
		-0.975033, -0.166266, 0.147196,
		-0.032454, 0.762442, 0.646242,
		36.633797, 37.249054, 24.127325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038246, 37.132809, 23.452059>,  <36.656513, 36.715343, 23.674955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038246, 37.132809, 23.452059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260410, 37.371788, 23.683428>,  <36.393707, 37.515175, 23.822250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260410, 37.371788, 23.683428>,  <36.038246, 37.132809, 23.452059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260410, 37.371788, 23.683428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074347, 0.657115, -0.750115,
		-0.828246, 0.459626, 0.320550,
		0.555411, 0.597448, 0.578425,
		36.427032, 37.551022, 23.856955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778629, 37.767700, 23.378345>,  <36.038246, 37.132809, 23.452059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778629, 37.767700, 23.378345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139179, 37.865128, 23.521561>,  <36.355511, 37.923584, 23.607491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139179, 37.865128, 23.521561>,  <35.778629, 37.767700, 23.378345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139179, 37.865128, 23.521561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091188, 0.701513, -0.706799,
		-0.423324, 0.669741, 0.610117,
		0.901377, 0.243569, 0.358040,
		36.409592, 37.938198, 23.628973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693928, 38.425716, 23.575071>,  <35.778629, 37.767700, 23.378345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693928, 38.425716, 23.575071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082909, 38.381065, 23.493221>,  <36.316299, 38.354275, 23.444111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082909, 38.381065, 23.493221>,  <35.693928, 38.425716, 23.575071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082909, 38.381065, 23.493221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101617, 0.587036, -0.803158,
		0.209775, 0.801829, 0.559522,
		0.972455, -0.111625, -0.204625,
		36.374645, 38.347576, 23.431833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989719, 39.187199, 23.547823>,  <35.693928, 38.425716, 23.575071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989719, 39.187199, 23.547823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259354, 38.951519, 23.369633>,  <36.421135, 38.810112, 23.262718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259354, 38.951519, 23.369633>,  <35.989719, 39.187199, 23.547823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259354, 38.951519, 23.369633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111369, 0.677268, -0.727258,
		0.730210, 0.440621, 0.522155,
		0.674085, -0.589203, -0.445477,
		36.461578, 38.774757, 23.235991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588520, 39.584614, 23.330011>,  <35.989719, 39.187199, 23.547823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588520, 39.584614, 23.330011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629841, 39.261486, 23.097885>,  <36.654633, 39.067612, 22.958611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629841, 39.261486, 23.097885>,  <36.588520, 39.584614, 23.330011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629841, 39.261486, 23.097885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196431, 0.588513, -0.784262,
		0.975061, -0.032975, 0.219475,
		0.103303, -0.807815, -0.580313,
		36.660831, 39.019142, 22.923792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194214, 39.755699, 22.981894>,  <36.588520, 39.584614, 23.330011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194214, 39.755699, 22.981894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977016, 39.494381, 22.770853>,  <36.846699, 39.337589, 22.644228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977016, 39.494381, 22.770853>,  <37.194214, 39.755699, 22.981894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977016, 39.494381, 22.770853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137710, 0.550513, -0.823390,
		0.828367, -0.519752, -0.208961,
		-0.542995, -0.653293, -0.527602,
		36.814117, 39.298393, 22.612572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462315, 39.918240, 22.430311>,  <37.194214, 39.755699, 22.981894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462315, 39.918240, 22.430311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594917, 40.266121, 22.576580>,  <37.674477, 40.474850, 22.664341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594917, 40.266121, 22.576580>,  <37.462315, 39.918240, 22.430311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594917, 40.266121, 22.576580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093438, -0.415948, 0.904576,
		0.938816, -0.265702, -0.219151,
		0.331503, 0.869707, 0.365672,
		37.694366, 40.527035, 22.686281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909500, 39.667549, 22.861431>,  <37.462315, 39.918240, 22.430311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909500, 39.667549, 22.861431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854172, 40.050224, 22.963888>,  <37.820972, 40.279831, 23.025362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854172, 40.050224, 22.963888>,  <37.909500, 39.667549, 22.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854172, 40.050224, 22.963888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156104, -0.234335, 0.959541,
		0.978007, 0.172714, -0.116928,
		-0.138326, 0.956691, 0.256142,
		37.812675, 40.337231, 23.040731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457760, 39.882240, 23.286074>,  <37.909500, 39.667549, 22.861431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457760, 39.882240, 23.286074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 40.144764, 23.367060>,  <37.992599, 40.302280, 23.415651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 40.144764, 23.367060>,  <38.457760, 39.882240, 23.286074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167034, 40.144764, 23.367060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194155, -0.086428, 0.977156,
		0.658818, 0.749523, -0.064609,
		-0.726817, 0.656313, 0.202463,
		37.948990, 40.341660, 23.427799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727627, 40.351189, 23.703562>,  <38.457760, 39.882240, 23.286074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727627, 40.351189, 23.703562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332291, 40.362274, 23.763458>,  <38.095089, 40.368923, 23.799397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332291, 40.362274, 23.763458>,  <38.727627, 40.351189, 23.703562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332291, 40.362274, 23.763458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140622, -0.211299, 0.967253,
		0.058443, 0.977029, 0.204938,
		-0.988337, 0.027711, 0.149741,
		38.035789, 40.370586, 23.808380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547424, 40.722805, 24.402782>,  <38.727627, 40.351189, 23.703562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547424, 40.722805, 24.402782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183998, 40.567009, 24.342375>,  <37.965942, 40.473530, 24.306129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183998, 40.567009, 24.342375>,  <38.547424, 40.722805, 24.402782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183998, 40.567009, 24.342375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122088, -0.098159, 0.987654,
		-0.399508, 0.915784, 0.041631,
		-0.908563, -0.389493, -0.151021,
		37.911430, 40.450161, 24.297068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202229, 40.971523, 24.906099>,  <38.547424, 40.722805, 24.402782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202229, 40.971523, 24.906099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974445, 40.675388, 24.763208>,  <37.837776, 40.497707, 24.677473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974445, 40.675388, 24.763208>,  <38.202229, 40.971523, 24.906099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974445, 40.675388, 24.763208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236887, -0.268340, 0.933744,
		-0.787147, 0.616352, -0.022568,
		-0.569459, -0.740340, -0.357229,
		37.803608, 40.453285, 24.656040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699741, 40.958061, 25.378550>,  <38.202229, 40.971523, 24.906099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699741, 40.958061, 25.378550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713379, 40.609959, 25.181982>,  <37.721561, 40.401096, 25.064041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713379, 40.609959, 25.181982>,  <37.699741, 40.958061, 25.378550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713379, 40.609959, 25.181982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173134, -0.489414, 0.854692,
		-0.984308, 0.055942, -0.167356,
		0.034093, -0.870255, -0.491420,
		37.723606, 40.348881, 25.034555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086525, 40.506542, 25.592379>,  <37.699741, 40.958061, 25.378550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086525, 40.506542, 25.592379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378929, 40.258850, 25.477715>,  <37.554371, 40.110233, 25.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378929, 40.258850, 25.477715>,  <37.086525, 40.506542, 25.592379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378929, 40.258850, 25.477715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073998, -0.489560, 0.868824,
		-0.678339, -0.613910, -0.403696,
		0.731013, -0.619230, -0.286660,
		37.598232, 40.073082, 25.391716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974785, 39.949524, 25.913637>,  <37.086525, 40.506542, 25.592379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974785, 39.949524, 25.913637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353077, 39.865913, 25.814121>,  <37.580051, 39.815746, 25.754412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353077, 39.865913, 25.814121>,  <36.974785, 39.949524, 25.913637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353077, 39.865913, 25.814121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113654, -0.504504, 0.855897,
		-0.304418, -0.837726, -0.453370,
		0.945734, -0.209023, -0.248791,
		37.636799, 39.803207, 25.739485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059586, 39.212135, 25.906103>,  <36.974785, 39.949524, 25.913637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059586, 39.212135, 25.906103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435608, 39.340588, 25.952003>,  <37.661221, 39.417660, 25.979544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435608, 39.340588, 25.952003>,  <37.059586, 39.212135, 25.906103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435608, 39.340588, 25.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111451, -0.607330, 0.786593,
		0.322289, -0.726654, -0.606715,
		0.940058, 0.321130, 0.114750,
		37.717625, 39.436928, 25.986429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324505, 38.622578, 26.170116>,  <37.059586, 39.212135, 25.906103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324505, 38.622578, 26.170116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599098, 38.905025, 26.239552>,  <37.763855, 39.074493, 26.281212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599098, 38.905025, 26.239552>,  <37.324505, 38.622578, 26.170116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599098, 38.905025, 26.239552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291144, -0.485670, 0.824233,
		0.666315, -0.515284, -0.538987,
		0.686484, 0.706121, 0.173587,
		37.805042, 39.116863, 26.291628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002686, 38.369190, 26.201654>,  <37.324505, 38.622578, 26.170116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002686, 38.369190, 26.201654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028793, 38.707821, 26.412956>,  <38.044456, 38.910999, 26.539738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028793, 38.707821, 26.412956>,  <38.002686, 38.369190, 26.201654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028793, 38.707821, 26.412956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390279, -0.508873, 0.767287,
		0.918380, 0.156087, -0.363614,
		0.065270, 0.846572, 0.528257,
		38.048374, 38.961792, 26.571434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729881, 38.430080, 26.377779>,  <38.002686, 38.369190, 26.201654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729881, 38.430080, 26.377779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487968, 38.608952, 26.641373>,  <38.342819, 38.716274, 26.799530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487968, 38.608952, 26.641373>,  <38.729881, 38.430080, 26.377779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487968, 38.608952, 26.641373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316508, -0.624347, 0.714152,
		0.730792, 0.640484, 0.236060,
		-0.604786, 0.447182, 0.658986,
		38.306534, 38.743107, 26.839067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190338, 38.596748, 26.896809>,  <38.729881, 38.430080, 26.377779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190338, 38.596748, 26.896809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816441, 38.611946, 27.038120>,  <38.592102, 38.621063, 27.122908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816441, 38.611946, 27.038120>,  <39.190338, 38.596748, 26.896809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816441, 38.611946, 27.038120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291372, -0.487070, 0.823326,
		0.203351, 0.872536, 0.444217,
		-0.934746, 0.037992, 0.353279,
		38.536018, 38.623344, 27.144104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302330, 38.714844, 27.556984>,  <39.190338, 38.596748, 26.896809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302330, 38.714844, 27.556984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918541, 38.604221, 27.535347>,  <38.688267, 38.537849, 27.522364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918541, 38.604221, 27.535347>,  <39.302330, 38.714844, 27.556984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918541, 38.604221, 27.535347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050696, -0.358233, 0.932255,
		-0.277199, 0.891732, 0.357736,
		-0.959474, -0.276556, -0.054094,
		38.630699, 38.521255, 27.519119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066738, 38.921837, 28.178909>,  <39.302330, 38.714844, 27.556984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066738, 38.921837, 28.178909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807228, 38.644836, 28.052715>,  <38.651520, 38.478638, 27.976999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807228, 38.644836, 28.052715>,  <39.066738, 38.921837, 28.178909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807228, 38.644836, 28.052715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018517, -0.428823, 0.903199,
		-0.760753, 0.580133, 0.291034,
		-0.648777, -0.692500, -0.315486,
		38.612595, 38.437088, 27.958069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628525, 38.904537, 28.668520>,  <39.066738, 38.921837, 28.178909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628525, 38.904537, 28.668520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564991, 38.558334, 28.478500>,  <38.526871, 38.350613, 28.364489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564991, 38.558334, 28.478500>,  <38.628525, 38.904537, 28.668520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564991, 38.558334, 28.478500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185293, -0.446476, 0.875400,
		-0.969762, 0.227065, -0.089458,
		-0.158832, -0.865506, -0.475049,
		38.517342, 38.298683, 28.335985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014351, 38.640488, 28.851307>,  <38.628525, 38.904537, 28.668520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014351, 38.640488, 28.851307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210133, 38.318485, 28.717205>,  <38.327602, 38.125282, 28.636744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210133, 38.318485, 28.717205>,  <38.014351, 38.640488, 28.851307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210133, 38.318485, 28.717205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047464, -0.408480, 0.911532,
		-0.870734, -0.430244, -0.238143,
		0.489458, -0.805006, -0.335256,
		38.356972, 38.076984, 28.616629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669815, 38.086395, 29.167788>,  <38.014351, 38.640488, 28.851307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669815, 38.086395, 29.167788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016922, 37.914066, 29.068697>,  <38.225185, 37.810669, 29.009243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016922, 37.914066, 29.068697>,  <37.669815, 38.086395, 29.167788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016922, 37.914066, 29.068697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010179, -0.513776, 0.857864,
		-0.496856, -0.741910, -0.450227,
		0.867773, -0.430818, -0.247720,
		38.277252, 37.784821, 28.994379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576054, 37.414280, 29.462418>,  <37.669815, 38.086395, 29.167788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576054, 37.414280, 29.462418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968922, 37.446270, 29.394358>,  <38.204643, 37.465466, 29.353521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968922, 37.446270, 29.394358>,  <37.576054, 37.414280, 29.462418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968922, 37.446270, 29.394358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185212, -0.567063, 0.802581,
		-0.032298, -0.819782, -0.571764,
		0.982168, 0.079976, -0.170148,
		38.263573, 37.470264, 29.343313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857010, 36.829990, 29.566271>,  <37.576054, 37.414280, 29.462418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857010, 36.829990, 29.566271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160362, 37.085514, 29.618086>,  <38.342373, 37.238831, 29.649176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160362, 37.085514, 29.618086>,  <37.857010, 36.829990, 29.566271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160362, 37.085514, 29.618086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221659, -0.439646, 0.870390,
		0.612966, -0.631372, -0.475017,
		0.758380, 0.638812, 0.129539,
		38.387875, 37.277157, 29.656948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438366, 36.418522, 29.754049>,  <37.857010, 36.829990, 29.566271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438366, 36.418522, 29.754049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515106, 36.793282, 29.870949>,  <38.561150, 37.018139, 29.941090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515106, 36.793282, 29.870949>,  <38.438366, 36.418522, 29.754049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515106, 36.793282, 29.870949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372376, -0.345005, 0.861573,
		0.908036, -0.056467, -0.415069,
		0.191852, 0.936901, 0.292250,
		38.572662, 37.074352, 29.958624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959805, 36.325928, 30.238192>,  <38.438366, 36.418522, 29.754049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959805, 36.325928, 30.238192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835857, 36.690666, 30.345913>,  <38.761490, 36.909508, 30.410545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835857, 36.690666, 30.345913>,  <38.959805, 36.325928, 30.238192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835857, 36.690666, 30.345913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418074, -0.123719, 0.899949,
		0.853929, 0.391456, -0.342881,
		-0.309870, 0.911842, 0.269305,
		38.742897, 36.964218, 30.426704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558178, 36.647614, 30.471889>,  <38.959805, 36.325928, 30.238192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558178, 36.647614, 30.471889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263546, 36.867107, 30.630054>,  <39.086769, 36.998802, 30.724953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263546, 36.867107, 30.630054>,  <39.558178, 36.647614, 30.471889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263546, 36.867107, 30.630054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381064, -0.146315, 0.912898,
		0.558789, 0.823096, -0.101329,
		-0.736577, 0.548730, 0.395411,
		39.042572, 37.031727, 30.748678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869701, 37.086990, 30.859852>,  <39.558178, 36.647614, 30.471889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869701, 37.086990, 30.859852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495014, 37.092022, 30.999792>,  <39.270203, 37.095039, 31.083757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495014, 37.092022, 30.999792>,  <39.869701, 37.086990, 30.859852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495014, 37.092022, 30.999792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349794, -0.006674, 0.936803,
		0.014116, 0.999899, 0.001852,
		-0.936720, 0.012576, 0.349852,
		39.213997, 37.095795, 31.104748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967667, 37.405571, 31.454014>,  <39.869701, 37.086990, 30.859852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967667, 37.405571, 31.454014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615471, 37.221851, 31.500977>,  <39.404152, 37.111622, 31.529154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615471, 37.221851, 31.500977>,  <39.967667, 37.405571, 31.454014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615471, 37.221851, 31.500977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248578, -0.236421, 0.939316,
		-0.403668, 0.856242, 0.322337,
		-0.880489, -0.459297, 0.117407,
		39.351322, 37.084061, 31.536200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722797, 37.611824, 32.075314>,  <39.967667, 37.405571, 31.454014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722797, 37.611824, 32.075314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530537, 37.269768, 31.997633>,  <39.415180, 37.064533, 31.951023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530537, 37.269768, 31.997633>,  <39.722797, 37.611824, 32.075314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530537, 37.269768, 31.997633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116238, -0.281641, 0.952453,
		-0.869175, 0.435222, 0.234770,
		-0.480649, -0.855138, -0.194206,
		39.386341, 37.013226, 31.939371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270294, 37.494553, 32.636509>,  <39.722797, 37.611824, 32.075314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270294, 37.494553, 32.636509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321762, 37.125828, 32.490246>,  <39.352642, 36.904591, 32.402489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321762, 37.125828, 32.490246>,  <39.270294, 37.494553, 32.636509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321762, 37.125828, 32.490246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105588, -0.353887, 0.929309,
		-0.986050, -0.158185, 0.051797,
		0.128673, -0.921814, -0.365653,
		39.360363, 36.849285, 32.380550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861031, 37.056637, 33.070427>,  <39.270294, 37.494553, 32.636509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861031, 37.056637, 33.070427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070820, 36.764679, 32.895069>,  <39.196693, 36.589504, 32.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070820, 36.764679, 32.895069>,  <38.861031, 37.056637, 33.070427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070820, 36.764679, 32.895069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246219, -0.362873, 0.898721,
		-0.815049, -0.579296, -0.010605,
		0.524473, -0.729890, -0.438392,
		39.228161, 36.545712, 32.763550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566559, 36.384216, 33.266739>,  <38.861031, 37.056637, 33.070427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566559, 36.384216, 33.266739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950230, 36.315712, 33.176723>,  <39.180431, 36.274609, 33.122715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950230, 36.315712, 33.176723>,  <38.566559, 36.384216, 33.266739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950230, 36.315712, 33.176723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122038, -0.467174, 0.875703,
		-0.255107, -0.867420, -0.427203,
		0.959181, -0.171263, -0.225038,
		39.237984, 36.264332, 33.109211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719883, 35.775757, 33.484226>,  <38.566559, 36.384216, 33.266739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719883, 35.775757, 33.484226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081223, 35.947159, 33.476692>,  <39.298027, 36.049999, 33.472172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081223, 35.947159, 33.476692>,  <38.719883, 35.775757, 33.484226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081223, 35.947159, 33.476692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155867, -0.287056, 0.945148,
		0.399591, -0.856729, -0.326100,
		0.903345, 0.428501, -0.018831,
		39.352226, 36.075710, 33.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236904, 35.243931, 33.682068>,  <38.719883, 35.775757, 33.484226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236904, 35.243931, 33.682068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410164, 35.594898, 33.764545>,  <39.514122, 35.805477, 33.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410164, 35.594898, 33.764545>,  <39.236904, 35.243931, 33.682068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410164, 35.594898, 33.764545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292246, -0.353129, 0.888759,
		0.852626, -0.324711, -0.409381,
		0.433154, 0.877418, 0.206191,
		39.540112, 35.858124, 33.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869595, 34.962879, 34.001144>,  <39.236904, 35.243931, 33.682068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869595, 34.962879, 34.001144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810772, 35.345947, 34.100128>,  <39.775478, 35.575790, 34.159519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810772, 35.345947, 34.100128>,  <39.869595, 34.962879, 34.001144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810772, 35.345947, 34.100128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427309, -0.164120, 0.889085,
		0.892066, 0.236487, -0.385088,
		-0.147056, 0.957674, 0.247458,
		39.766655, 35.633251, 34.174366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512154, 35.233025, 34.248924>,  <39.869595, 34.962879, 34.001144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512154, 35.233025, 34.248924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249184, 35.482281, 34.418385>,  <40.091400, 35.631836, 34.520061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249184, 35.482281, 34.418385>,  <40.512154, 35.233025, 34.248924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249184, 35.482281, 34.418385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374711, -0.217424, 0.901287,
		0.653745, 0.751277, -0.090559,
		-0.657427, 0.623145, 0.423651,
		40.051956, 35.669224, 34.545479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749153, 35.795586, 34.625736>,  <40.512154, 35.233025, 34.248924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749153, 35.795586, 34.625736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394829, 35.787319, 34.811172>,  <40.182236, 35.782360, 34.922432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394829, 35.787319, 34.811172>,  <40.749153, 35.795586, 34.625736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394829, 35.787319, 34.811172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462734, 0.035801, 0.885774,
		-0.034899, 0.999145, -0.022152,
		-0.885810, -0.020662, 0.463588,
		40.129086, 35.781120, 34.950249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975582, 36.170334, 35.264507>,  <40.749153, 35.795586, 34.625736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975582, 36.170334, 35.264507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610744, 36.018883, 35.327400>,  <40.391842, 35.928013, 35.365135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610744, 36.018883, 35.327400>,  <40.975582, 36.170334, 35.264507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610744, 36.018883, 35.327400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176704, -0.017006, 0.984117,
		-0.369944, 0.925391, 0.082417,
		-0.912095, -0.378631, 0.157229,
		40.337116, 35.905293, 35.374569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639919, 36.546722, 35.723969>,  <40.975582, 36.170334, 35.264507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639919, 36.546722, 35.723969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437366, 36.202911, 35.751633>,  <40.315834, 35.996624, 35.768230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437366, 36.202911, 35.751633>,  <40.639919, 36.546722, 35.723969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437366, 36.202911, 35.751633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246827, -0.067636, 0.966697,
		-0.826229, 0.506587, 0.246405,
		-0.506381, -0.859532, 0.069156,
		40.285454, 35.945053, 35.772381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416180, 36.521854, 36.485661>,  <40.639919, 36.546722, 35.723969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416180, 36.521854, 36.485661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330212, 36.149693, 36.366898>,  <40.278629, 35.926395, 36.295639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330212, 36.149693, 36.366898>,  <40.416180, 36.521854, 36.485661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330212, 36.149693, 36.366898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176297, -0.335979, 0.925223,
		-0.960587, 0.146507, 0.236237,
		-0.214922, -0.930405, -0.296908,
		40.265736, 35.870571, 36.277824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903503, 36.163963, 37.035690>,  <40.416180, 36.521854, 36.485661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903503, 36.163963, 37.035690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101570, 35.880363, 36.834839>,  <40.220409, 35.710205, 36.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101570, 35.880363, 36.834839>,  <39.903503, 36.163963, 37.035690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101570, 35.880363, 36.834839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159584, -0.493894, 0.854752,
		-0.854017, -0.503374, -0.131414,
		0.495165, -0.709001, -0.502125,
		40.250118, 35.667664, 36.684200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738770, 35.588863, 37.437462>,  <39.903503, 36.163963, 37.035690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738770, 35.588863, 37.437462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063690, 35.479576, 37.231350>,  <40.258644, 35.414005, 37.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063690, 35.479576, 37.231350>,  <39.738770, 35.588863, 37.437462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063690, 35.479576, 37.231350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262912, -0.617100, 0.741664,
		-0.520617, -0.737930, -0.429439,
		0.812303, -0.273218, -0.515283,
		40.307381, 35.397610, 37.076763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973160, 34.858013, 37.679718>,  <39.738770, 35.588863, 37.437462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973160, 34.858013, 37.679718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261204, 35.126373, 37.608913>,  <40.434029, 35.287392, 37.566429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261204, 35.126373, 37.608913>,  <39.973160, 34.858013, 37.679718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261204, 35.126373, 37.608913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458743, -0.268944, 0.846891,
		0.520575, -0.691057, -0.501441,
		0.720109, 0.670902, -0.177012,
		40.477238, 35.327644, 37.555809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642746, 34.529659, 37.962944>,  <39.973160, 34.858013, 37.679718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642746, 34.529659, 37.962944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734844, 34.917622, 37.931282>,  <40.790104, 35.150398, 37.912285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734844, 34.917622, 37.931282>,  <40.642746, 34.529659, 37.962944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734844, 34.917622, 37.931282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659993, -0.095865, 0.745130,
		0.715121, -0.223800, -0.662205,
		0.230242, 0.969909, -0.079152,
		40.803917, 35.208595, 37.907536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323170, 34.582401, 37.904667>,  <40.642746, 34.529659, 37.962944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323170, 34.582401, 37.904667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208790, 34.933613, 38.058186>,  <41.140163, 35.144341, 38.150295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208790, 34.933613, 38.058186>,  <41.323170, 34.582401, 37.904667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208790, 34.933613, 38.058186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644743, -0.120009, 0.754921,
		0.708900, 0.463320, -0.531785,
		-0.285951, 0.878027, 0.383797,
		41.123005, 35.197021, 38.173325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874195, 34.828671, 38.343712>,  <41.323170, 34.582401, 37.904667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874195, 34.828671, 38.343712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595169, 35.091377, 38.458302>,  <41.427753, 35.249001, 38.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595169, 35.091377, 38.458302>,  <41.874195, 34.828671, 38.343712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595169, 35.091377, 38.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549005, 0.232980, 0.802692,
		0.460435, 0.717205, -0.523084,
		-0.697563, 0.656763, 0.286476,
		41.385899, 35.288406, 38.544243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225647, 35.349640, 38.561726>,  <41.874195, 34.828671, 38.343712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225647, 35.349640, 38.561726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878754, 35.355484, 38.760803>,  <41.670616, 35.358990, 38.880249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878754, 35.355484, 38.760803>,  <42.225647, 35.349640, 38.561726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878754, 35.355484, 38.760803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496146, 0.109282, 0.861334,
		-0.041802, 0.993904, -0.102023,
		-0.867232, 0.014612, 0.497689,
		41.618584, 35.359867, 38.910110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239479, 36.105972, 38.795795>,  <42.225647, 35.349640, 38.561726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239479, 36.105972, 38.795795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021099, 35.838062, 38.997128>,  <41.890072, 35.677319, 39.117928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021099, 35.838062, 38.997128>,  <42.239479, 36.105972, 38.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021099, 35.838062, 38.997128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427651, 0.293835, 0.854854,
		-0.720455, 0.681958, 0.126010,
		-0.545949, -0.669772, 0.503335,
		41.857315, 35.637131, 39.148129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063560, 36.458447, 39.409744>,  <42.239479, 36.105972, 38.795795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063560, 36.458447, 39.409744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997639, 36.076302, 39.507824>,  <41.958084, 35.847015, 39.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997639, 36.076302, 39.507824>,  <42.063560, 36.458447, 39.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997639, 36.076302, 39.507824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446938, 0.149276, 0.882022,
		-0.879253, 0.254948, 0.402386,
		-0.164803, -0.955363, 0.245198,
		41.948196, 35.789692, 39.581383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787453, 36.519970, 40.095013>,  <42.063560, 36.458447, 39.409744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787453, 36.519970, 40.095013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916164, 36.143612, 40.052734>,  <41.993389, 35.917797, 40.027367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916164, 36.143612, 40.052734>,  <41.787453, 36.519970, 40.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916164, 36.143612, 40.052734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593240, 0.113347, 0.797007,
		-0.737921, -0.319163, 0.594650,
		0.321777, -0.940897, -0.105699,
		42.012699, 35.861343, 40.021023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626740, 36.061481, 40.791309>,  <41.787453, 36.519970, 40.095013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626740, 36.061481, 40.791309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947945, 35.959499, 40.575840>,  <42.140667, 35.898312, 40.446556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947945, 35.959499, 40.575840>,  <41.626740, 36.061481, 40.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947945, 35.959499, 40.575840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584818, 0.163110, 0.794596,
		-0.114721, -0.953097, 0.280080,
		0.803012, -0.254952, -0.538677,
		42.188847, 35.883015, 40.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079296, 35.514397, 41.109447>,  <41.626740, 36.061481, 40.791309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079296, 35.514397, 41.109447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302979, 35.745987, 40.872105>,  <42.437187, 35.884941, 40.729698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302979, 35.745987, 40.872105>,  <42.079296, 35.514397, 41.109447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302979, 35.745987, 40.872105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622711, 0.179135, 0.761670,
		0.547281, -0.795421, -0.260363,
		0.559209, 0.578978, -0.593355,
		42.470741, 35.919682, 40.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760372, 35.410439, 41.029774>,  <42.079296, 35.514397, 41.109447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760372, 35.410439, 41.029774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786549, 35.802544, 40.955143>,  <42.802254, 36.037807, 40.910366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786549, 35.802544, 40.955143>,  <42.760372, 35.410439, 41.029774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786549, 35.802544, 40.955143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655778, 0.098683, 0.748476,
		0.752112, -0.171334, -0.636374,
		0.065440, 0.980258, -0.186578,
		42.806179, 36.096622, 40.899170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423824, 35.493538, 40.966259>,  <42.760372, 35.410439, 41.029774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423824, 35.493538, 40.966259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259125, 35.843643, 41.067749>,  <43.160305, 36.053707, 41.128643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259125, 35.843643, 41.067749>,  <43.423824, 35.493538, 40.966259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259125, 35.843643, 41.067749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778789, 0.193383, 0.596734,
		0.473231, 0.443306, -0.761270,
		-0.411752, 0.875261, 0.253727,
		43.135597, 36.106220, 41.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029488, 36.042717, 40.900444>,  <43.423824, 35.493538, 40.966259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029488, 36.042717, 40.900444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719524, 36.161091, 41.123852>,  <43.533546, 36.232113, 41.257896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719524, 36.161091, 41.123852>,  <44.029488, 36.042717, 40.900444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719524, 36.161091, 41.123852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629980, 0.433489, 0.644370,
		-0.051423, 0.851183, -0.522344,
		-0.774907, 0.295931, 0.558519,
		43.487053, 36.249870, 41.291409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372089, 36.418907, 41.395950>,  <44.029488, 36.042717, 40.900444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372089, 36.418907, 41.395950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995842, 36.451008, 41.527885>,  <43.770092, 36.470268, 41.607044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995842, 36.451008, 41.527885>,  <44.372089, 36.418907, 41.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995842, 36.451008, 41.527885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331219, 0.429757, 0.840001,
		-0.074335, 0.899371, -0.430821,
		-0.940621, 0.080254, 0.329835,
		43.713657, 36.475082, 41.626835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401054, 37.044788, 41.642162>,  <44.372089, 36.418907, 41.395950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401054, 37.044788, 41.642162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073147, 36.884850, 41.806164>,  <43.876404, 36.788887, 41.904564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073147, 36.884850, 41.806164>,  <44.401054, 37.044788, 41.642162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073147, 36.884850, 41.806164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147558, 0.544277, 0.825827,
		-0.553359, 0.737486, -0.387180,
		-0.819769, -0.399847, 0.410002,
		43.827217, 36.764896, 41.929165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887039, 37.643024, 41.756008>,  <44.401054, 37.044788, 41.642162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887039, 37.643024, 41.756008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920731, 37.343391, 42.018848>,  <43.940945, 37.163612, 42.176552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920731, 37.343391, 42.018848>,  <43.887039, 37.643024, 41.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920731, 37.343391, 42.018848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196657, 0.658972, 0.726004,
		-0.976848, 0.068076, 0.202815,
		0.084226, -0.749080, 0.657103,
		43.945999, 37.118668, 42.215981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825916, 37.979622, 42.299107>,  <43.887039, 37.643024, 41.756008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825916, 37.979622, 42.299107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842888, 37.619324, 42.472019>,  <43.853069, 37.403145, 42.575768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842888, 37.619324, 42.472019>,  <43.825916, 37.979622, 42.299107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842888, 37.619324, 42.472019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304902, 0.423702, 0.852942,
		-0.951438, 0.095614, 0.292615,
		0.042428, -0.900741, 0.432279,
		43.855618, 37.349102, 42.601704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519043, 38.100002, 42.939610>,  <43.825916, 37.979622, 42.299107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519043, 38.100002, 42.939610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734550, 37.765652, 42.981636>,  <43.863853, 37.565041, 43.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734550, 37.765652, 42.981636>,  <43.519043, 38.100002, 42.939610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734550, 37.765652, 42.981636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410302, 0.369271, 0.833841,
		-0.735785, -0.406140, 0.541914,
		0.538769, -0.835877, 0.105064,
		43.896183, 37.514889, 43.013157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339336, 37.797028, 43.602028>,  <43.519043, 38.100002, 42.939610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339336, 37.797028, 43.602028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693142, 37.651825, 43.484821>,  <43.905426, 37.564705, 43.414497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693142, 37.651825, 43.484821>,  <43.339336, 37.797028, 43.602028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693142, 37.651825, 43.484821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430228, 0.391885, 0.813222,
		-0.180377, -0.845371, 0.502804,
		0.884516, -0.363007, -0.293015,
		43.958496, 37.542923, 43.396915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613255, 37.348476, 44.089169>,  <43.339336, 37.797028, 43.602028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613255, 37.348476, 44.089169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880444, 37.552811, 43.872704>,  <44.040756, 37.675411, 43.742825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880444, 37.552811, 43.872704>,  <43.613255, 37.348476, 44.089169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880444, 37.552811, 43.872704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342975, 0.434027, 0.833060,
		0.660436, -0.742068, 0.114715,
		0.667976, 0.510838, -0.541158,
		44.080837, 37.706062, 43.710358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232586, 37.353306, 44.473164>,  <43.613255, 37.348476, 44.089169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232586, 37.353306, 44.473164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213169, 37.697212, 44.269814>,  <44.201519, 37.903557, 44.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213169, 37.697212, 44.269814>,  <44.232586, 37.353306, 44.473164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213169, 37.697212, 44.269814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041298, 0.510271, 0.859022,
		0.997967, 0.020701, -0.060275,
		-0.048539, 0.859765, -0.508379,
		44.198608, 37.955143, 44.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600513, 37.822216, 44.830112>,  <44.232586, 37.353306, 44.473164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600513, 37.822216, 44.830112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352039, 38.028442, 44.594036>,  <44.202953, 38.152176, 44.452393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352039, 38.028442, 44.594036>,  <44.600513, 37.822216, 44.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352039, 38.028442, 44.594036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037810, 0.732520, 0.679695,
		0.782749, 0.444534, -0.435539,
		-0.621188, 0.515563, -0.590187,
		44.165684, 38.183109, 44.416981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291725, 38.207199, 44.772587>,  <44.600513, 37.822216, 44.830112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291725, 38.207199, 44.772587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462704, 38.160797, 44.413960>,  <45.565292, 38.132954, 44.198784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462704, 38.160797, 44.413960>,  <45.291725, 38.207199, 44.772587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462704, 38.160797, 44.413960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736480, -0.619838, -0.270922,
		-0.524296, 0.776108, -0.350387,
		0.427448, -0.116009, -0.896566,
		45.590939, 38.125996, 44.144989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752453, 38.354916, 44.278603>,  <45.291725, 38.207199, 44.772587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752453, 38.354916, 44.278603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034531, 38.124100, 44.113808>,  <45.203777, 37.985611, 44.014931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034531, 38.124100, 44.113808>,  <44.752453, 38.354916, 44.278603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034531, 38.124100, 44.113808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708635, -0.592604, -0.382958,
		-0.023163, 0.562006, -0.826809,
		0.705195, -0.577035, -0.411984,
		45.246090, 37.950989, 43.990211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639385, 38.280827, 43.586048>,  <44.752453, 38.354916, 44.278603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639385, 38.280827, 43.586048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843281, 37.960995, 43.713074>,  <44.965618, 37.769096, 43.789288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843281, 37.960995, 43.713074>,  <44.639385, 38.280827, 43.586048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843281, 37.960995, 43.713074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685676, -0.600508, -0.411386,
		0.519633, -0.008046, -0.854352,
		0.509735, -0.799579, 0.317561,
		44.996201, 37.721123, 43.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996399, 37.774807, 43.004646>,  <44.639385, 38.280827, 43.586048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996399, 37.774807, 43.004646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847351, 37.628395, 43.345745>,  <44.757923, 37.540546, 43.550404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847351, 37.628395, 43.345745>,  <44.996399, 37.774807, 43.004646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847351, 37.628395, 43.345745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704429, -0.486630, -0.516692,
		0.604097, -0.793229, -0.076514,
		-0.372621, -0.366031, 0.852745,
		44.735565, 37.518585, 43.601570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104530, 37.108910, 43.053398>,  <44.996399, 37.774807, 43.004646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104530, 37.108910, 43.053398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740784, 37.226128, 43.171501>,  <44.522537, 37.296459, 43.242363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740784, 37.226128, 43.171501>,  <45.104530, 37.108910, 43.053398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740784, 37.226128, 43.171501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410884, -0.521758, -0.747625,
		-0.065038, -0.801181, 0.594878,
		-0.909365, 0.293049, 0.295258,
		44.467976, 37.314041, 43.260078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671310, 36.480095, 43.039562>,  <45.104530, 37.108910, 43.053398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671310, 36.480095, 43.039562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441067, 36.806744, 43.022629>,  <44.302921, 37.002735, 43.012466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441067, 36.806744, 43.022629>,  <44.671310, 36.480095, 43.039562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441067, 36.806744, 43.022629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565974, -0.435238, -0.700172,
		-0.590205, -0.379067, 0.712717,
		-0.575614, 0.816625, -0.042338,
		44.268383, 37.051731, 43.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021324, 36.200783, 43.098118>,  <44.671310, 36.480095, 43.039562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021324, 36.200783, 43.098118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970226, 36.565620, 42.942291>,  <43.939568, 36.784523, 42.848793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970226, 36.565620, 42.942291>,  <44.021324, 36.200783, 43.098118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970226, 36.565620, 42.942291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637244, -0.376465, -0.672455,
		-0.760002, 0.162349, 0.629317,
		-0.127743, 0.912095, -0.389570,
		43.931904, 36.839249, 42.825420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265816, 36.431549, 43.148567>,  <44.021324, 36.200783, 43.098118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265816, 36.431549, 43.148567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459591, 36.591423, 42.837296>,  <43.575855, 36.687347, 42.650532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459591, 36.591423, 42.837296>,  <43.265816, 36.431549, 43.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459591, 36.591423, 42.837296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679093, -0.388961, -0.622528,
		-0.551501, 0.830035, 0.082999,
		0.484437, 0.399689, -0.778184,
		43.604923, 36.711330, 42.603840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841797, 36.298801, 42.627087>,  <43.265816, 36.431549, 43.148567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841797, 36.298801, 42.627087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124241, 36.458359, 42.393063>,  <43.293709, 36.554092, 42.252647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124241, 36.458359, 42.393063>,  <42.841797, 36.298801, 42.627087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124241, 36.458359, 42.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511523, -0.283987, -0.810984,
		-0.489647, 0.871913, 0.003519,
		0.706109, 0.398896, -0.585057,
		43.336075, 36.578026, 42.217545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522793, 36.716808, 42.080418>,  <42.841797, 36.298801, 42.627087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522793, 36.716808, 42.080418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883396, 36.608551, 41.945347>,  <43.099758, 36.543594, 41.864304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883396, 36.608551, 41.945347>,  <42.522793, 36.716808, 42.080418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883396, 36.608551, 41.945347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425461, -0.411671, -0.805922,
		0.079110, 0.870216, -0.486277,
		0.901513, -0.270648, -0.337676,
		43.153851, 36.527355, 41.844044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479561, 37.026211, 41.375526>,  <42.522793, 36.716808, 42.080418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479561, 37.026211, 41.375526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867275, 36.953873, 41.308861>,  <43.099903, 36.910469, 41.268860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867275, 36.953873, 41.308861>,  <42.479561, 37.026211, 41.375526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867275, 36.953873, 41.308861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241481, -0.571523, -0.784250,
		0.046573, 0.800410, -0.597641,
		0.969287, -0.180844, -0.166667,
		43.158062, 36.899620, 41.258862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699043, 37.231030, 40.734505>,  <42.479561, 37.026211, 41.375526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699043, 37.231030, 40.734505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934536, 36.926739, 40.843815>,  <43.075832, 36.744164, 40.909401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934536, 36.926739, 40.843815>,  <42.699043, 37.231030, 40.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934536, 36.926739, 40.843815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308552, -0.523977, -0.793879,
		0.747119, 0.383063, -0.543208,
		0.588734, -0.760731, 0.273278,
		43.111156, 36.698521, 40.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865162, 37.047852, 40.198586>,  <42.699043, 37.231030, 40.734505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865162, 37.047852, 40.198586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938911, 36.710434, 40.400352>,  <42.983162, 36.507984, 40.521412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938911, 36.710434, 40.400352>,  <42.865162, 37.047852, 40.198586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938911, 36.710434, 40.400352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337965, -0.536330, -0.773388,
		0.922922, -0.027882, -0.383975,
		0.184374, -0.843548, 0.504414,
		42.994225, 36.457371, 40.551678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246143, 36.513592, 39.801964>,  <42.865162, 37.047852, 40.198586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246143, 36.513592, 39.801964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008961, 36.341209, 40.074043>,  <42.866650, 36.237778, 40.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008961, 36.341209, 40.074043>,  <43.246143, 36.513592, 39.801964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008961, 36.341209, 40.074043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293857, -0.670654, -0.681080,
		0.749697, -0.603735, 0.271031,
		-0.592960, -0.430960, 0.680200,
		42.831074, 36.211922, 40.278103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307846, 35.741600, 39.844688>,  <43.246143, 36.513592, 39.801964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307846, 35.741600, 39.844688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943386, 35.797939, 39.999588>,  <42.724709, 35.831745, 40.092525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943386, 35.797939, 39.999588>,  <43.307846, 35.741600, 39.844688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943386, 35.797939, 39.999588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381512, -0.643483, -0.663609,
		0.155715, -0.752389, 0.640049,
		-0.911154, 0.140852, 0.387246,
		42.670040, 35.840195, 40.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936581, 35.148533, 39.655968>,  <43.307846, 35.741600, 39.844688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936581, 35.148533, 39.655968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701939, 35.281914, 39.951183>,  <42.561153, 35.361942, 40.128311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701939, 35.281914, 39.951183>,  <42.936581, 35.148533, 39.655968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701939, 35.281914, 39.951183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802012, -0.112544, -0.586610,
		-0.112544, -0.936025, 0.333452,
		0.586610, -0.333452, -0.738037,
		42.525955, 35.381950, 40.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404392, 34.650143, 39.777790>,  <42.936581, 35.148533, 39.655968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404392, 34.650143, 39.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292862, 35.025471, 39.859573>,  <42.225945, 35.250668, 39.908646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292862, 35.025471, 39.859573>,  <42.404392, 34.650143, 39.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292862, 35.025471, 39.859573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776554, -0.095035, -0.622842,
		-0.564997, -0.332439, 0.755157,
		-0.278823, 0.938325, 0.204462,
		42.209213, 35.306969, 39.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677769, 34.629169, 40.010986>,  <42.404392, 34.650143, 39.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677769, 34.629169, 40.010986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772182, 34.974445, 39.832466>,  <41.828831, 35.181610, 39.725353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772182, 34.974445, 39.832466>,  <41.677769, 34.629169, 40.010986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772182, 34.974445, 39.832466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761432, -0.121060, -0.636840,
		-0.603744, 0.490150, 0.628686,
		0.236038, 0.863190, -0.446305,
		41.842995, 35.233402, 39.698574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985977, 34.879295, 39.963120>,  <41.677769, 34.629169, 40.010986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985977, 34.879295, 39.963120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191372, 35.123680, 39.722103>,  <41.314610, 35.270309, 39.577496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191372, 35.123680, 39.722103>,  <40.985977, 34.879295, 39.963120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191372, 35.123680, 39.722103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837947, 0.205752, -0.505480,
		-0.184856, 0.764455, 0.617605,
		0.513490, 0.610962, -0.602539,
		41.345421, 35.306969, 39.541340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513302, 35.368286, 39.622280>,  <40.985977, 34.879295, 39.963120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513302, 35.368286, 39.622280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840084, 35.419022, 39.397247>,  <41.036152, 35.449463, 39.262230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840084, 35.419022, 39.397247>,  <40.513302, 35.368286, 39.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840084, 35.419022, 39.397247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574635, 0.096547, -0.812695,
		-0.048768, 0.987213, 0.151761,
		0.816956, 0.126841, -0.562579,
		41.085171, 35.457073, 39.228474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447475, 35.884758, 39.155647>,  <40.513302, 35.368286, 39.622280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447475, 35.884758, 39.155647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753708, 35.718231, 38.959457>,  <40.937447, 35.618313, 38.841743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753708, 35.718231, 38.959457>,  <40.447475, 35.884758, 39.155647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753708, 35.718231, 38.959457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464369, 0.170044, -0.869164,
		0.445254, 0.893175, -0.063144,
		0.765579, -0.416321, -0.490475,
		40.983383, 35.593334, 38.812313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512756, 36.301388, 38.566864>,  <40.447475, 35.884758, 39.155647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512756, 36.301388, 38.566864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722805, 35.977760, 38.461288>,  <40.848835, 35.783585, 38.397942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722805, 35.977760, 38.461288>,  <40.512756, 36.301388, 38.566864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722805, 35.977760, 38.461288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326874, 0.094601, -0.940321,
		0.785749, 0.580056, -0.214786,
		0.525120, -0.809065, -0.263938,
		40.880341, 35.735043, 38.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958706, 36.517742, 38.019287>,  <40.512756, 36.301388, 38.566864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958706, 36.517742, 38.019287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909714, 36.122803, 37.979004>,  <40.880318, 35.885838, 37.954834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909714, 36.122803, 37.979004>,  <40.958706, 36.517742, 38.019287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909714, 36.122803, 37.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215136, 0.125475, -0.968490,
		0.968873, -0.096958, -0.227782,
		-0.122484, -0.987348, -0.100710,
		40.872967, 35.826599, 37.948792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315052, 36.290459, 37.464382>,  <40.958706, 36.517742, 38.019287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315052, 36.290459, 37.464382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037247, 36.005466, 37.504417>,  <40.870564, 35.834473, 37.528439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037247, 36.005466, 37.504417>,  <41.315052, 36.290459, 37.464382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037247, 36.005466, 37.504417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296163, 0.156335, -0.942256,
		0.655694, -0.684054, -0.319588,
		-0.694516, -0.712482, 0.100084,
		40.828892, 35.791721, 37.534443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446266, 35.705318, 36.883183>,  <41.315052, 36.290459, 37.464382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446266, 35.705318, 36.883183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072014, 35.741245, 37.019733>,  <40.847462, 35.762802, 37.101662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072014, 35.741245, 37.019733>,  <41.446266, 35.705318, 36.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072014, 35.741245, 37.019733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351581, -0.150762, -0.923938,
		-0.031514, -0.984482, 0.172633,
		-0.935627, 0.089811, 0.341374,
		40.791325, 35.768188, 37.122147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694992, 36.255226, 36.543865>,  <41.446266, 35.705318, 36.883183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694992, 36.255226, 36.543865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061199, 36.101147, 36.590240>,  <42.280926, 36.008698, 36.618065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061199, 36.101147, 36.590240>,  <41.694992, 36.255226, 36.543865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061199, 36.101147, 36.590240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397402, 0.821385, -0.409143,
		0.062374, 0.420652, 0.905075,
		0.915522, -0.385199, 0.115935,
		42.335857, 35.985588, 36.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171284, 36.607845, 36.943531>,  <41.694992, 36.255226, 36.543865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171284, 36.607845, 36.943531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337147, 36.413609, 36.635696>,  <42.436665, 36.297066, 36.450996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337147, 36.413609, 36.635696>,  <42.171284, 36.607845, 36.943531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337147, 36.413609, 36.635696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033739, 0.836933, -0.546264,
		0.909351, 0.252478, 0.330659,
		0.414659, -0.485590, -0.769584,
		42.461544, 36.267933, 36.404819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932423, 36.861492, 36.812683>,  <42.171284, 36.607845, 36.943531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932423, 36.861492, 36.812683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709133, 36.705086, 36.519974>,  <42.575161, 36.611240, 36.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709133, 36.705086, 36.519974>,  <42.932423, 36.861492, 36.812683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709133, 36.705086, 36.519974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000052, 0.881965, -0.471315,
		0.829690, -0.263137, -0.492314,
		-0.558224, -0.391020, -0.731771,
		42.541668, 36.587780, 36.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242462, 36.817711, 36.106972>,  <42.932423, 36.861492, 36.812683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242462, 36.817711, 36.106972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849621, 36.882767, 36.144943>,  <42.613914, 36.921803, 36.167725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849621, 36.882767, 36.144943>,  <43.242462, 36.817711, 36.106972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849621, 36.882767, 36.144943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126396, 0.942968, -0.307953,
		-0.139601, -0.290444, -0.946654,
		-0.982108, 0.162644, 0.094928,
		42.554989, 36.931561, 36.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706841, 36.167999, 36.028759>,  <43.242462, 36.817711, 36.106972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706841, 36.167999, 36.028759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027340, 35.933773, 36.077942>,  <44.219639, 35.793236, 36.107452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027340, 35.933773, 36.077942>,  <43.706841, 36.167999, 36.028759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027340, 35.933773, 36.077942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201859, 0.071097, -0.976831,
		0.563255, 0.807502, 0.175167,
		0.801247, -0.585564, 0.122956,
		44.267715, 35.758102, 36.114830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335968, 36.423130, 35.892960>,  <43.706841, 36.167999, 36.028759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335968, 36.423130, 35.892960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341061, 36.034046, 35.800293>,  <44.344116, 35.800594, 35.744694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341061, 36.034046, 35.800293>,  <44.335968, 36.423130, 35.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341061, 36.034046, 35.800293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309365, 0.224149, -0.924148,
		0.950858, -0.059904, 0.303777,
		0.012731, -0.972712, -0.231666,
		44.344879, 35.742233, 35.730793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002544, 36.265800, 35.680500>,  <44.335968, 36.423130, 35.892960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002544, 36.265800, 35.680500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767136, 35.985390, 35.519402>,  <44.625889, 35.817142, 35.422741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767136, 35.985390, 35.519402>,  <45.002544, 36.265800, 35.680500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767136, 35.985390, 35.519402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470091, 0.108572, -0.875914,
		0.657763, -0.704826, 0.265647,
		-0.588525, -0.701023, -0.402748,
		44.590580, 35.775082, 35.398579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443779, 35.723480, 35.439449>,  <45.002544, 36.265800, 35.680500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443779, 35.723480, 35.439449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100143, 35.687992, 35.237816>,  <44.893963, 35.666698, 35.116837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100143, 35.687992, 35.237816>,  <45.443779, 35.723480, 35.439449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100143, 35.687992, 35.237816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505493, 0.007385, -0.862799,
		0.080267, -0.996029, 0.038501,
		-0.859089, -0.088716, -0.504079,
		44.842419, 35.661377, 35.086594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592579, 35.119686, 35.006920>,  <45.443779, 35.723480, 35.439449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592579, 35.119686, 35.006920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323807, 35.391598, 34.889339>,  <45.162544, 35.554745, 34.818790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323807, 35.391598, 34.889339>,  <45.592579, 35.119686, 35.006920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323807, 35.391598, 34.889339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517169, 0.146568, -0.843240,
		-0.530133, -0.718624, -0.450044,
		-0.671934, 0.679778, -0.293949,
		45.122227, 35.595531, 34.801155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307041, 34.892456, 34.310627>,  <45.592579, 35.119686, 35.006920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307041, 34.892456, 34.310627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332050, 35.283360, 34.391678>,  <45.347054, 35.517902, 34.440308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332050, 35.283360, 34.391678>,  <45.307041, 34.892456, 34.310627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332050, 35.283360, 34.391678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541847, 0.137258, -0.829193,
		-0.838148, 0.161632, -0.520944,
		0.062520, 0.977259, 0.202623,
		45.350807, 35.576538, 34.452465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149216, 35.406078, 33.648468>,  <45.307041, 34.892456, 34.310627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149216, 35.406078, 33.648468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391727, 35.564377, 33.924381>,  <45.537235, 35.659355, 34.089931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391727, 35.564377, 33.924381>,  <45.149216, 35.406078, 33.648468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391727, 35.564377, 33.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655262, 0.242887, -0.715289,
		-0.450615, 0.885657, -0.112061,
		0.606282, 0.395749, 0.689786,
		45.573612, 35.683102, 34.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100666, 36.088669, 33.659294>,  <45.149216, 35.406078, 33.648468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100666, 36.088669, 33.659294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464428, 35.956886, 33.760834>,  <45.682686, 35.877815, 33.821758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464428, 35.956886, 33.760834>,  <45.100666, 36.088669, 33.659294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464428, 35.956886, 33.760834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373433, 0.378085, -0.847113,
		0.183115, 0.865163, 0.466864,
		0.909405, -0.329461, 0.253847,
		45.737251, 35.858047, 33.836987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628265, 36.553879, 33.843266>,  <45.100666, 36.088669, 33.659294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628265, 36.553879, 33.843266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866528, 36.276764, 33.680664>,  <46.009487, 36.110497, 33.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866528, 36.276764, 33.680664>,  <45.628265, 36.553879, 33.843266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866528, 36.276764, 33.680664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122982, 0.578771, -0.806163,
		0.793767, 0.430205, 0.429950,
		0.595658, -0.692782, -0.406502,
		46.045223, 36.068928, 33.558712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334332, 36.813416, 33.660362>,  <45.628265, 36.553879, 33.843266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334332, 36.813416, 33.660362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185818, 36.530334, 33.419930>,  <46.096710, 36.360485, 33.275669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185818, 36.530334, 33.419930>,  <46.334332, 36.813416, 33.660362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185818, 36.530334, 33.419930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191732, 0.574966, -0.795395,
		0.908506, -0.410567, -0.077789,
		-0.371289, -0.707707, -0.601079,
		46.074432, 36.318024, 33.239605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806057, 36.760525, 33.067482>,  <46.334332, 36.813416, 33.660362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806057, 36.760525, 33.067482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424633, 36.662903, 32.996872>,  <46.195778, 36.604332, 32.954506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424633, 36.662903, 32.996872>,  <46.806057, 36.760525, 33.067482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424633, 36.662903, 32.996872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007778, 0.605821, -0.795563,
		0.301099, -0.757245, -0.579586,
		-0.953561, -0.244051, -0.176523,
		46.138565, 36.589687, 32.943916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427986, 36.484154, 33.448170>,  <46.806057, 36.760525, 33.067482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427986, 36.484154, 33.448170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310005, 36.103138, 33.478310>,  <47.239216, 35.874531, 33.496395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310005, 36.103138, 33.478310>,  <47.427986, 36.484154, 33.448170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310005, 36.103138, 33.478310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699657, -0.161595, 0.695964,
		-0.650756, 0.257995, 0.714112,
		-0.294952, -0.952537, 0.075349,
		47.221519, 35.817375, 33.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.483883, 36.320053, 34.071022>,  <47.427986, 36.484154, 33.448170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.483883, 36.320053, 34.071022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411232, 35.940052, 33.969437>,  <47.367641, 35.712051, 33.908485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411232, 35.940052, 33.969437>,  <47.483883, 36.320053, 34.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.411232, 35.940052, 33.969437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642641, -0.310151, 0.700585,
		-0.744329, -0.035965, 0.666844,
		-0.181626, -0.950007, -0.253967,
		47.356743, 35.655048, 33.893246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900475, 36.000313, 34.458256>,  <47.483883, 36.320053, 34.071022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900475, 36.000313, 34.458256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758858, 35.660271, 34.302319>,  <47.673889, 35.456245, 34.208755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758858, 35.660271, 34.302319>,  <47.900475, 36.000313, 34.458256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758858, 35.660271, 34.302319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750656, -0.506932, 0.423715,
		-0.557827, -0.142626, 0.817611,
		-0.354040, -0.850104, -0.389844,
		47.652645, 35.405239, 34.185364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.776108, 35.595230, 35.135574>,  <47.900475, 36.000313, 34.458256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.776108, 35.595230, 35.135574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802605, 35.348862, 34.821568>,  <47.818501, 35.201042, 34.633163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.802605, 35.348862, 34.821568>,  <47.776108, 35.595230, 35.135574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.802605, 35.348862, 34.821568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432959, -0.691083, 0.578749,
		-0.898977, -0.378217, 0.220890,
		0.066239, -0.615919, -0.785020,
		47.822475, 35.164085, 34.586060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.629658, 34.877647, 35.344120>,  <47.776108, 35.595230, 35.135574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.629658, 34.877647, 35.344120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.848965, 34.872101, 35.009644>,  <47.980549, 34.868774, 34.808960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.848965, 34.872101, 35.009644>,  <47.629658, 34.877647, 35.344120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.848965, 34.872101, 35.009644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608173, -0.679705, 0.410032,
		-0.574046, -0.733355, -0.364228,
		0.548266, -0.013864, -0.836189,
		48.013443, 34.867943, 34.758785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.482071, 35.790821, 27.231215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412193, 35.408222, 27.137754>,  <41.370266, 35.178661, 27.081678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412193, 35.408222, 27.137754>,  <41.482071, 35.790821, 27.231215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412193, 35.408222, 27.137754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145169, -0.209686, 0.966932,
		-0.973862, 0.202840, -0.102222,
		-0.174698, -0.956498, -0.233652,
		41.359783, 35.121273, 27.067659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125797, 35.558861, 27.861084>,  <41.482071, 35.790821, 27.231215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125797, 35.558861, 27.861084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.236580, 35.219250, 27.681107>,  <41.303051, 35.015484, 27.573120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.236580, 35.219250, 27.681107>,  <41.125797, 35.558861, 27.861084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236580, 35.219250, 27.681107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036942, -0.477325, 0.877950,
		-0.960172, -0.226531, -0.163563,
		0.276956, -0.849026, -0.449946,
		41.319668, 34.964542, 27.546124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769081, 34.977333, 28.202269>,  <41.125797, 35.558861, 27.861084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769081, 34.977333, 28.202269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073368, 34.794415, 28.018013>,  <41.255939, 34.684666, 27.907459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073368, 34.794415, 28.018013>,  <40.769081, 34.977333, 28.202269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073368, 34.794415, 28.018013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134543, -0.583174, 0.801128,
		-0.634983, -0.671410, -0.382107,
		0.760720, -0.457293, -0.460639,
		41.301582, 34.657227, 27.879822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614777, 34.291058, 28.268480>,  <40.769081, 34.977333, 28.202269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614777, 34.291058, 28.268480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.003677, 34.379463, 28.237810>,  <41.237019, 34.432507, 28.219408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.003677, 34.379463, 28.237810>,  <40.614777, 34.291058, 28.268480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003677, 34.379463, 28.237810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180426, -0.499804, 0.847137,
		0.148905, -0.837465, -0.525812,
		0.972252, 0.221014, -0.076677,
		41.295353, 34.445766, 28.214808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987514, 33.718155, 28.528496>,  <40.614777, 34.291058, 28.268480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987514, 33.718155, 28.528496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.309994, 33.953632, 28.552137>,  <41.503479, 34.094917, 28.566322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.309994, 33.953632, 28.552137>,  <40.987514, 33.718155, 28.528496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309994, 33.953632, 28.552137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221172, -0.392523, 0.892753,
		0.548755, -0.706662, -0.446652,
		0.806196, 0.588689, 0.059105,
		41.551853, 34.130238, 28.569868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642979, 33.234524, 28.652283>,  <40.987514, 33.718155, 28.528496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642979, 33.234524, 28.652283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726166, 33.614407, 28.745934>,  <41.776077, 33.842335, 28.802124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726166, 33.614407, 28.745934>,  <41.642979, 33.234524, 28.652283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726166, 33.614407, 28.745934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382365, -0.299246, 0.874213,
		0.900304, -0.092284, -0.425366,
		0.207965, 0.949703, 0.234126,
		41.788555, 33.899319, 28.816172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247654, 33.148483, 28.913139>,  <41.642979, 33.234524, 28.652283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247654, 33.148483, 28.913139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.139641, 33.509853, 29.046352>,  <42.074833, 33.726673, 29.126280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.139641, 33.509853, 29.046352>,  <42.247654, 33.148483, 28.913139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139641, 33.509853, 29.046352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381158, -0.217329, 0.898602,
		0.884196, 0.369587, -0.285662,
		-0.270029, 0.903423, 0.333032,
		42.058632, 33.780880, 29.146261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772442, 33.343693, 29.371483>,  <42.247654, 33.148483, 28.913139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772442, 33.343693, 29.371483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.455322, 33.563496, 29.476942>,  <42.265049, 33.695377, 29.540218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.455322, 33.563496, 29.476942>,  <42.772442, 33.343693, 29.371483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455322, 33.563496, 29.476942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318099, 0.004072, 0.948049,
		0.519886, 0.835479, -0.178026,
		-0.792800, 0.549507, 0.263648,
		42.217484, 33.728348, 29.556036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959862, 33.833561, 29.873064>,  <42.772442, 33.343693, 29.371483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959862, 33.833561, 29.873064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.565205, 33.831871, 29.938210>,  <42.328411, 33.830856, 29.977297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.565205, 33.831871, 29.938210>,  <42.959862, 33.833561, 29.873064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565205, 33.831871, 29.938210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162607, 0.036134, 0.986029,
		-0.010050, 0.999338, -0.034964,
		-0.986640, -0.004225, 0.162863,
		42.269211, 33.830605, 29.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892921, 34.212597, 30.499144>,  <42.959862, 33.833561, 29.873064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892921, 34.212597, 30.499144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.547184, 34.013489, 30.470507>,  <42.339741, 33.894024, 30.453325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.547184, 34.013489, 30.470507>,  <42.892921, 34.212597, 30.499144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547184, 34.013489, 30.470507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033035, -0.085853, 0.995760,
		-0.501807, 0.863049, 0.057763,
		-0.864348, -0.497772, -0.071593,
		42.287880, 33.864159, 30.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418179, 34.555786, 30.964958>,  <42.892921, 34.212597, 30.499144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418179, 34.555786, 30.964958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.273357, 34.187481, 30.906837>,  <42.186466, 33.966499, 30.871965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.273357, 34.187481, 30.906837>,  <42.418179, 34.555786, 30.964958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273357, 34.187481, 30.906837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241366, -0.057961, 0.968702,
		-0.900366, 0.385794, -0.201255,
		-0.362054, -0.920763, -0.145304,
		42.164742, 33.911251, 30.863247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773285, 34.584877, 31.297516>,  <42.418179, 34.555786, 30.964958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773285, 34.584877, 31.297516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 34.208103, 31.277304>,  <41.985737, 33.982037, 31.265177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 34.208103, 31.277304>,  <41.773285, 34.584877, 31.297516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906067, 34.208103, 31.277304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039441, -0.067382, 0.996947,
		-0.942469, -0.328953, -0.059519,
		0.331959, -0.941939, -0.050531,
		42.005653, 33.925522, 31.262144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390503, 34.227177, 31.811941>,  <41.773285, 34.584877, 31.297516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390503, 34.227177, 31.811941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699867, 33.977985, 31.765047>,  <41.885487, 33.828472, 31.736912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699867, 33.977985, 31.765047>,  <41.390503, 34.227177, 31.811941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699867, 33.977985, 31.765047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010604, -0.172196, 0.985006,
		-0.633821, -0.763053, -0.126571,
		0.773407, -0.622975, -0.117233,
		41.931889, 33.791092, 31.729877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263870, 33.641697, 32.270203>,  <41.390503, 34.227177, 31.811941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263870, 33.641697, 32.270203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.654289, 33.613831, 32.187759>,  <41.888538, 33.597111, 32.138294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.654289, 33.613831, 32.187759>,  <41.263870, 33.641697, 32.270203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654289, 33.613831, 32.187759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184126, -0.240160, 0.953111,
		-0.115896, -0.968231, -0.221580,
		0.976046, -0.069663, -0.206110,
		41.947102, 33.592930, 32.125927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464272, 33.002541, 32.602039>,  <41.263870, 33.641697, 32.270203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464272, 33.002541, 32.602039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799553, 33.208199, 32.529305>,  <42.000721, 33.331593, 32.485664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799553, 33.208199, 32.529305>,  <41.464272, 33.002541, 32.602039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799553, 33.208199, 32.529305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327864, -0.208648, 0.921396,
		0.435793, -0.831938, -0.343459,
		0.838206, 0.514146, -0.181835,
		42.051014, 33.362442, 32.474754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027908, 32.553448, 32.720196>,  <41.464272, 33.002541, 32.602039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027908, 32.553448, 32.720196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155502, 32.928543, 32.775177>,  <42.232059, 33.153599, 32.808167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155502, 32.928543, 32.775177>,  <42.027908, 32.553448, 32.720196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155502, 32.928543, 32.775177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322209, -0.243693, 0.914765,
		0.891308, -0.247508, -0.379882,
		0.318986, 0.937738, 0.137456,
		42.251198, 33.209866, 32.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686283, 32.482250, 33.087177>,  <42.027908, 32.553448, 32.720196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686283, 32.482250, 33.087177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579678, 32.861538, 33.156292>,  <42.515717, 33.089111, 33.197762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.579678, 32.861538, 33.156292>,  <42.686283, 32.482250, 33.087177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579678, 32.861538, 33.156292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478576, -0.025422, 0.877678,
		0.836622, 0.316602, -0.447019,
		-0.266511, 0.948218, 0.172787,
		42.499725, 33.146004, 33.208130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319153, 32.780716, 33.300919>,  <42.686283, 32.482250, 33.087177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319153, 32.780716, 33.300919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051365, 33.041397, 33.443523>,  <42.890694, 33.197803, 33.529087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051365, 33.041397, 33.443523>,  <43.319153, 32.780716, 33.300919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051365, 33.041397, 33.443523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559704, 0.126977, 0.818907,
		0.488412, 0.747774, -0.449766,
		-0.669467, 0.651699, 0.356515,
		42.850525, 33.236908, 33.550476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721684, 33.472359, 33.428467>,  <43.319153, 32.780716, 33.300919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721684, 33.472359, 33.428467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.382992, 33.444073, 33.639385>,  <43.179775, 33.427101, 33.765938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.382992, 33.444073, 33.639385>,  <43.721684, 33.472359, 33.428467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382992, 33.444073, 33.639385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489807, 0.283290, 0.824521,
		-0.207686, 0.956423, -0.205233,
		-0.846732, -0.070717, 0.527299,
		43.128971, 33.422859, 33.797573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666840, 34.093632, 33.842548>,  <43.721684, 33.472359, 33.428467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666840, 34.093632, 33.842548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.404942, 33.840603, 34.008034>,  <43.247803, 33.688786, 34.107327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.404942, 33.840603, 34.008034>,  <43.666840, 34.093632, 33.842548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404942, 33.840603, 34.008034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346104, 0.235691, 0.908109,
		-0.671958, 0.737765, 0.064621,
		-0.654741, -0.632576, 0.413717,
		43.208519, 33.650829, 34.132149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289120, 34.571957, 34.223545>,  <43.666840, 34.093632, 33.842548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289120, 34.571957, 34.223545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.271900, 34.194485, 34.354759>,  <43.261570, 33.968002, 34.433487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.271900, 34.194485, 34.354759>,  <43.289120, 34.571957, 34.223545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271900, 34.194485, 34.354759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359748, 0.291675, 0.886288,
		-0.932056, 0.156165, 0.326932,
		-0.043050, -0.943683, 0.328037,
		43.258984, 33.911381, 34.453171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631886, 34.403301, 34.667290>,  <43.289120, 34.571957, 34.223545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631886, 34.403301, 34.667290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452190, 34.681805, 34.891220>,  <42.344372, 34.848907, 35.025578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452190, 34.681805, 34.891220>,  <42.631886, 34.403301, 34.667290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452190, 34.681805, 34.891220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087285, 0.657827, -0.748094,
		-0.889136, -0.287210, -0.356296,
		-0.449241, 0.696257, 0.559829,
		42.317417, 34.890682, 35.059170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159687, 34.683643, 34.269829>,  <42.631886, 34.403301, 34.667290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159687, 34.683643, 34.269829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.192898, 34.960636, 34.556488>,  <42.212822, 35.126831, 34.728481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.192898, 34.960636, 34.556488>,  <42.159687, 34.683643, 34.269829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192898, 34.960636, 34.556488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143943, 0.703254, -0.696214,
		-0.986097, 0.160958, -0.041291,
		0.083023, 0.692479, 0.716645,
		42.217804, 35.168381, 34.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694439, 35.192932, 34.151356>,  <42.159687, 34.683643, 34.269829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694439, 35.192932, 34.151356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958912, 35.391956, 34.375954>,  <42.117596, 35.511372, 34.510712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.958912, 35.391956, 34.375954>,  <41.694439, 35.192932, 34.151356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958912, 35.391956, 34.375954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029768, 0.730443, -0.682325,
		-0.749632, 0.467857, 0.468146,
		0.661185, 0.497557, 0.561491,
		42.157269, 35.541222, 34.544399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474518, 35.856468, 34.221691>,  <41.694439, 35.192932, 34.151356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474518, 35.856468, 34.221691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850739, 35.944984, 34.324753>,  <42.076473, 35.998093, 34.386589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.850739, 35.944984, 34.324753>,  <41.474518, 35.856468, 34.221691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850739, 35.944984, 34.324753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040444, 0.680243, -0.731870,
		-0.337223, 0.698785, 0.630857,
		0.940556, 0.221289, 0.257655,
		42.132904, 36.011372, 34.402050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526104, 36.591652, 34.310772>,  <41.474518, 35.856468, 34.221691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526104, 36.591652, 34.310772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901821, 36.471436, 34.244556>,  <42.127251, 36.399303, 34.204826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901821, 36.471436, 34.244556>,  <41.526104, 36.591652, 34.310772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901821, 36.471436, 34.244556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051022, 0.599425, -0.798803,
		0.339303, 0.741864, 0.578369,
		0.939293, -0.300546, -0.165535,
		42.183609, 36.381271, 34.194897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803600, 37.186985, 34.023727>,  <41.526104, 36.591652, 34.310772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803600, 37.186985, 34.023727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062286, 36.902885, 33.912510>,  <42.217499, 36.732426, 33.845779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062286, 36.902885, 33.912510>,  <41.803600, 37.186985, 34.023727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062286, 36.902885, 33.912510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087432, 0.431171, -0.898024,
		0.757703, 0.556457, 0.340944,
		0.646717, -0.710245, -0.278047,
		42.256302, 36.689812, 33.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338692, 37.525532, 33.660172>,  <41.803600, 37.186985, 34.023727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338692, 37.525532, 33.660172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.315601, 37.141827, 33.549557>,  <42.301746, 36.911602, 33.483189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.315601, 37.141827, 33.549557>,  <42.338692, 37.525532, 33.660172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315601, 37.141827, 33.549557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144086, 0.266095, -0.953117,
		0.987880, -0.094867, 0.122856,
		-0.057728, -0.959267, -0.276539,
		42.298283, 36.854046, 33.466595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706364, 37.537342, 33.061489>,  <42.338692, 37.525532, 33.660172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706364, 37.537342, 33.061489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.535786, 37.175735, 33.073540>,  <42.433441, 36.958771, 33.080769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.535786, 37.175735, 33.073540>,  <42.706364, 37.537342, 33.061489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535786, 37.175735, 33.073540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068303, -0.065392, -0.995519,
		0.901932, -0.422475, 0.089633,
		-0.426443, -0.904013, 0.030123,
		42.407852, 36.904533, 33.082577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147133, 37.085903, 32.741268>,  <42.706364, 37.537342, 33.061489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147133, 37.085903, 32.741268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.772781, 36.946400, 32.721294>,  <42.548168, 36.862698, 32.709312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.772781, 36.946400, 32.721294>,  <43.147133, 37.085903, 32.741268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772781, 36.946400, 32.721294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101597, -0.131448, -0.986103,
		0.337351, -0.927948, 0.158453,
		-0.935880, -0.348762, -0.049933,
		42.492016, 36.841770, 32.706314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236061, 36.534061, 32.266941>,  <43.147133, 37.085903, 32.741268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236061, 36.534061, 32.266941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.862862, 36.676567, 32.287281>,  <42.638943, 36.762070, 32.299484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.862862, 36.676567, 32.287281>,  <43.236061, 36.534061, 32.266941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862862, 36.676567, 32.287281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052084, 0.006127, -0.998624,
		-0.356087, -0.934365, 0.012839,
		-0.933000, 0.356266, 0.050848,
		42.582962, 36.783447, 32.302536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897221, 36.239201, 31.721933>,  <43.236061, 36.534061, 32.266941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897221, 36.239201, 31.721933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.648773, 36.543365, 31.797813>,  <42.499706, 36.725864, 31.843342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.648773, 36.543365, 31.797813>,  <42.897221, 36.239201, 31.721933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648773, 36.543365, 31.797813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206501, 0.074709, -0.975590,
		-0.756022, -0.645131, 0.110623,
		-0.621118, 0.760411, 0.189702,
		42.462437, 36.771488, 31.854725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341682, 35.995972, 31.323307>,  <42.897221, 36.239201, 31.721933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341682, 35.995972, 31.323307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.246586, 36.379047, 31.388189>,  <42.189526, 36.608894, 31.427118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.246586, 36.379047, 31.388189>,  <42.341682, 35.995972, 31.323307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246586, 36.379047, 31.388189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025424, 0.160800, -0.986660,
		-0.970995, -0.238697, -0.013881,
		-0.237745, 0.957688, 0.162205,
		42.175262, 36.666355, 31.436852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890224, 36.088326, 30.901838>,  <42.341682, 35.995972, 31.323307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890224, 36.088326, 30.901838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.989567, 36.466740, 30.985104>,  <42.049171, 36.693790, 31.035063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.989567, 36.466740, 30.985104>,  <41.890224, 36.088326, 30.901838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989567, 36.466740, 30.985104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119749, 0.183265, -0.975743,
		-0.961239, 0.267259, -0.067773,
		0.248356, 0.946037, 0.208165,
		42.064072, 36.750549, 31.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388783, 36.651897, 30.539467>,  <41.890224, 36.088326, 30.901838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388783, 36.651897, 30.539467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.756458, 36.783195, 30.626501>,  <41.977066, 36.861973, 30.678720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.756458, 36.783195, 30.626501>,  <41.388783, 36.651897, 30.539467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756458, 36.783195, 30.626501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072212, 0.402652, -0.912500,
		-0.387134, 0.854474, 0.346411,
		0.919191, 0.328244, 0.217584,
		42.032215, 36.881668, 30.691776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351070, 37.451454, 30.361897>,  <41.388783, 36.651897, 30.539467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351070, 37.451454, 30.361897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742180, 37.375183, 30.396751>,  <41.976845, 37.329418, 30.417664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742180, 37.375183, 30.396751>,  <41.351070, 37.451454, 30.361897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742180, 37.375183, 30.396751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167859, 0.463060, -0.870287,
		0.125599, 0.865573, 0.484777,
		0.977777, -0.190681, 0.087135,
		42.035515, 37.317978, 30.422892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692898, 38.014862, 30.256401>,  <41.351070, 37.451454, 30.361897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692898, 38.014862, 30.256401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.956867, 37.731987, 30.154905>,  <42.115250, 37.562260, 30.094007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.956867, 37.731987, 30.154905>,  <41.692898, 38.014862, 30.256401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956867, 37.731987, 30.154905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077223, 0.399770, -0.913357,
		0.747354, 0.583151, 0.318429,
		0.659923, -0.707191, -0.253737,
		42.154842, 37.519829, 30.078785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271984, 38.366211, 29.977083>,  <41.692898, 38.014862, 30.256401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271984, 38.366211, 29.977083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.320004, 37.993153, 29.840984>,  <42.348816, 37.769318, 29.759325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.320004, 37.993153, 29.840984>,  <42.271984, 38.366211, 29.977083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320004, 37.993153, 29.840984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132358, 0.354703, -0.925563,
		0.983905, 0.066079, 0.166025,
		0.120049, -0.932641, -0.340248,
		42.356018, 37.713360, 29.738911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709980, 38.515919, 29.377485>,  <42.271984, 38.366211, 29.977083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709980, 38.515919, 29.377485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563374, 38.146172, 29.335125>,  <42.475410, 37.924324, 29.309710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563374, 38.146172, 29.335125>,  <42.709980, 38.515919, 29.377485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563374, 38.146172, 29.335125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060721, 0.089814, -0.994106,
		0.928429, -0.370785, 0.023210,
		-0.366515, -0.924366, -0.105901,
		42.453419, 37.868862, 29.303354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072327, 38.234764, 28.828924>,  <42.709980, 38.515919, 29.377485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072327, 38.234764, 28.828924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.730995, 38.029408, 28.865269>,  <42.526196, 37.906193, 28.887075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.730995, 38.029408, 28.865269>,  <43.072327, 38.234764, 28.828924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730995, 38.029408, 28.865269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065122, -0.067954, -0.995561,
		0.517283, -0.855462, 0.024555,
		-0.853333, -0.513387, 0.090861,
		42.474995, 37.875393, 28.892527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.133091, 37.624706, 28.336040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.742649, 37.664471, 28.413334>,  <42.508385, 37.688328, 28.459711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.742649, 37.664471, 28.413334>,  <43.133091, 37.624706, 28.336040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742649, 37.664471, 28.413334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184187, 0.093394, -0.978444,
		-0.115316, -0.990654, -0.072852,
		-0.976103, 0.099412, 0.193235,
		42.449818, 37.694294, 28.471304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644707, 37.029213, 28.075123>,  <43.133091, 37.624706, 28.336040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644707, 37.029213, 28.075123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398754, 37.342724, 28.110008>,  <42.251183, 37.530830, 28.130939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398754, 37.342724, 28.110008>,  <42.644707, 37.029213, 28.075123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398754, 37.342724, 28.110008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332764, -0.157603, -0.929747,
		-0.714973, -0.600707, 0.357722,
		-0.614884, 0.783781, 0.087212,
		42.214291, 37.577858, 28.136171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035305, 36.884602, 27.656698>,  <42.644707, 37.029213, 28.075123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035305, 36.884602, 27.656698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944721, 37.268654, 27.722258>,  <41.890369, 37.499084, 27.761593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944721, 37.268654, 27.722258>,  <42.035305, 36.884602, 27.656698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944721, 37.268654, 27.722258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493584, 0.031939, -0.869112,
		-0.839696, -0.277719, 0.466672,
		-0.226464, 0.960131, 0.163896,
		41.876781, 37.556694, 27.771427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358902, 36.973354, 27.494621>,  <42.035305, 36.884602, 27.656698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358902, 36.973354, 27.494621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477131, 37.354450, 27.466558>,  <41.548069, 37.583107, 27.449720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477131, 37.354450, 27.466558>,  <41.358902, 36.973354, 27.494621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477131, 37.354450, 27.466558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476340, 0.083325, -0.875304,
		-0.828091, 0.292137, 0.478457,
		0.295576, 0.952739, -0.070156,
		41.565804, 37.640270, 27.445511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815105, 37.435070, 27.353079>,  <41.358902, 36.973354, 27.494621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815105, 37.435070, 27.353079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.143108, 37.627876, 27.229631>,  <41.339912, 37.743561, 27.155563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.143108, 37.627876, 27.229631>,  <40.815105, 37.435070, 27.353079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143108, 37.627876, 27.229631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401955, 0.101131, -0.910057,
		-0.407447, 0.870309, 0.276675,
		0.820011, 0.482012, -0.308620,
		41.389111, 37.772480, 27.137045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560104, 38.004982, 26.992966>,  <40.815105, 37.435070, 27.353079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560104, 38.004982, 26.992966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928432, 37.925724, 26.858608>,  <41.149429, 37.878170, 26.777994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.928432, 37.925724, 26.858608>,  <40.560104, 38.004982, 26.992966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928432, 37.925724, 26.858608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307382, 0.161308, -0.937814,
		0.240002, 0.966809, 0.087631,
		0.920823, -0.198141, -0.335894,
		41.204678, 37.866283, 26.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537449, 38.354290, 26.485035>,  <40.560104, 38.004982, 26.992966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537449, 38.354290, 26.485035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888672, 38.181450, 26.402760>,  <41.099407, 38.077747, 26.353394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888672, 38.181450, 26.402760>,  <40.537449, 38.354290, 26.485035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888672, 38.181450, 26.402760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165485, 0.129143, -0.977720,
		0.449033, 0.892533, 0.041890,
		0.878057, -0.432096, -0.205690,
		41.152088, 38.051823, 26.341053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926636, 38.774349, 26.005526>,  <40.537449, 38.354290, 26.485035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926636, 38.774349, 26.005526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.068520, 38.403656, 25.955975>,  <41.153648, 38.181240, 25.926245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.068520, 38.403656, 25.955975>,  <40.926636, 38.774349, 26.005526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068520, 38.403656, 25.955975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042439, 0.148312, -0.988029,
		0.934013, 0.345206, 0.091938,
		0.354710, -0.926734, -0.123875,
		41.174931, 38.125637, 25.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603767, 38.876606, 25.720676>,  <40.926636, 38.774349, 26.005526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603767, 38.876606, 25.720676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.508526, 38.493610, 25.655539>,  <41.451382, 38.263813, 25.616455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.508526, 38.493610, 25.655539>,  <41.603767, 38.876606, 25.720676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508526, 38.493610, 25.655539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139180, 0.132300, -0.981389,
		0.961216, -0.256337, 0.101762,
		-0.238103, -0.957490, -0.162846,
		41.437096, 38.206364, 25.606686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168571, 38.584518, 25.302273>,  <41.603767, 38.876606, 25.720676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168571, 38.584518, 25.302273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846848, 38.351601, 25.254910>,  <41.653812, 38.211849, 25.226492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846848, 38.351601, 25.254910>,  <42.168571, 38.584518, 25.302273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846848, 38.351601, 25.254910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001323, 0.197513, -0.980299,
		0.594214, -0.788617, -0.158091,
		-0.804306, -0.582299, -0.118408,
		41.605556, 38.176910, 25.219387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282833, 38.287350, 24.657101>,  <42.168571, 38.584518, 25.302273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282833, 38.287350, 24.657101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.893154, 38.253410, 24.740749>,  <41.659348, 38.233047, 24.790939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.893154, 38.253410, 24.740749>,  <42.282833, 38.287350, 24.657101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893154, 38.253410, 24.740749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217295, 0.102417, -0.970718,
		0.060942, -0.991117, -0.118211,
		-0.974201, -0.084844, 0.209124,
		41.600895, 38.227955, 24.803486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971302, 37.796352, 24.279985>,  <42.282833, 38.287350, 24.657101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971302, 37.796352, 24.279985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675007, 38.053852, 24.356806>,  <41.497231, 38.208351, 24.402897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675007, 38.053852, 24.356806>,  <41.971302, 37.796352, 24.279985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675007, 38.053852, 24.356806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120868, 0.153500, -0.980729,
		-0.660827, -0.749679, -0.035895,
		-0.740741, 0.643754, 0.192049,
		41.452785, 38.246979, 24.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611706, 37.789799, 23.739429>,  <41.971302, 37.796352, 24.279985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611706, 37.789799, 23.739429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428169, 38.104656, 23.904287>,  <41.318047, 38.293571, 24.003202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428169, 38.104656, 23.904287>,  <41.611706, 37.789799, 23.739429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428169, 38.104656, 23.904287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317516, 0.287967, -0.903471,
		-0.829848, -0.545413, 0.117800,
		-0.458842, 0.787147, 0.412146,
		41.290516, 38.340801, 24.027931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035648, 37.788471, 23.383894>,  <41.611706, 37.789799, 23.739429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035648, 37.788471, 23.383894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036732, 38.152031, 23.550701>,  <41.037384, 38.370167, 23.650785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036732, 38.152031, 23.550701>,  <41.035648, 37.788471, 23.383894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036732, 38.152031, 23.550701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365164, 0.389119, -0.845720,
		-0.930939, -0.149986, 0.332950,
		0.002711, 0.908895, 0.417016,
		41.037544, 38.424698, 23.675806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437775, 38.124283, 23.211765>,  <41.035648, 37.788471, 23.383894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437775, 38.124283, 23.211765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617554, 38.447609, 23.363878>,  <40.725422, 38.641605, 23.455147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617554, 38.447609, 23.363878>,  <40.437775, 38.124283, 23.211765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617554, 38.447609, 23.363878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378608, 0.557944, -0.738481,
		-0.809106, 0.187931, 0.556803,
		0.449448, 0.808320, 0.380283,
		40.752388, 38.690105, 23.477962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902096, 38.636467, 23.399000>,  <40.437775, 38.124283, 23.211765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902096, 38.636467, 23.399000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246700, 38.817814, 23.307564>,  <40.453465, 38.926620, 23.252703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.246700, 38.817814, 23.307564>,  <39.902096, 38.636467, 23.399000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246700, 38.817814, 23.307564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478222, 0.573295, -0.665310,
		-0.170577, 0.682491, 0.710710,
		0.861514, 0.453364, -0.228591,
		40.505154, 38.953823, 23.238987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844627, 39.368488, 23.566927>,  <39.902096, 38.636467, 23.399000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844627, 39.368488, 23.566927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.120571, 39.320797, 23.281305>,  <40.286137, 39.292183, 23.109932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.120571, 39.320797, 23.281305>,  <39.844627, 39.368488, 23.566927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120571, 39.320797, 23.281305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511152, 0.618249, -0.597069,
		0.512653, 0.776886, 0.365561,
		0.689863, -0.119232, -0.714054,
		40.327530, 39.285027, 23.067089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798584, 39.974220, 23.185158>,  <39.844627, 39.368488, 23.566927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798584, 39.974220, 23.185158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007458, 39.741501, 22.935732>,  <40.132782, 39.601868, 22.786076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007458, 39.741501, 22.935732>,  <39.798584, 39.974220, 23.185158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007458, 39.741501, 22.935732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499854, 0.383624, -0.776517,
		0.690994, 0.717174, -0.090495,
		0.522182, -0.581803, -0.623564,
		40.164112, 39.566959, 22.748663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901398, 40.409702, 22.585369>,  <39.798584, 39.974220, 23.185158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901398, 40.409702, 22.585369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985088, 40.040916, 22.455009>,  <40.035301, 39.819645, 22.376795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.985088, 40.040916, 22.455009>,  <39.901398, 40.409702, 22.585369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985088, 40.040916, 22.455009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473272, 0.196166, -0.858797,
		0.855709, 0.333922, -0.395296,
		0.209227, -0.921963, -0.325897,
		40.047855, 39.764328, 22.357241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258247, 40.553543, 21.932997>,  <39.901398, 40.409702, 22.585369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258247, 40.553543, 21.932997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095745, 40.188225, 21.944595>,  <39.998245, 39.969032, 21.951555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095745, 40.188225, 21.944595>,  <40.258247, 40.553543, 21.932997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095745, 40.188225, 21.944595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473072, 0.183071, -0.861793,
		0.781766, -0.363827, -0.506430,
		-0.406257, -0.913299, 0.028998,
		39.973869, 39.914234, 21.953295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421440, 40.222176, 21.262011>,  <40.258247, 40.553543, 21.932997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421440, 40.222176, 21.262011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100594, 40.034088, 21.409258>,  <39.908085, 39.921234, 21.497606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100594, 40.034088, 21.409258>,  <40.421440, 40.222176, 21.262011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100594, 40.034088, 21.409258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424313, 0.015005, -0.905391,
		0.420209, -0.882422, -0.211556,
		-0.802111, -0.470219, 0.368118,
		39.859959, 39.893021, 21.519693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154182, 39.789513, 20.688490>,  <40.421440, 40.222176, 21.262011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154182, 39.789513, 20.688490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844780, 39.810390, 20.941141>,  <39.659138, 39.822918, 21.092731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844780, 39.810390, 20.941141>,  <40.154182, 39.789513, 20.688490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844780, 39.810390, 20.941141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624609, 0.106169, -0.773687,
		-0.107445, -0.992977, -0.049518,
		-0.773511, 0.052199, 0.631630,
		39.612728, 39.826050, 21.130630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578049, 39.248661, 20.676805>,  <40.154182, 39.789513, 20.688490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578049, 39.248661, 20.676805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520626, 39.638321, 20.746584>,  <39.486172, 39.872116, 20.788450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520626, 39.638321, 20.746584>,  <39.578049, 39.248661, 20.676805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520626, 39.638321, 20.746584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392677, 0.105732, -0.913578,
		-0.908403, -0.199651, 0.367347,
		-0.143556, 0.974146, 0.174445,
		39.477558, 39.930565, 20.798918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555874, 38.505775, 20.395210>,  <39.578049, 39.248661, 20.676805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555874, 38.505775, 20.395210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447681, 38.128284, 20.319092>,  <39.382767, 37.901791, 20.273420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447681, 38.128284, 20.319092>,  <39.555874, 38.505775, 20.395210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447681, 38.128284, 20.319092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805272, -0.113456, -0.581950,
		0.527613, -0.310648, 0.790647,
		-0.270485, -0.943730, -0.190295,
		39.366535, 37.845165, 20.262003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243443, 38.178257, 20.243599>,  <39.555874, 38.505775, 20.395210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243443, 38.178257, 20.243599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241703, 37.854755, 20.008345>,  <40.240662, 37.660656, 19.867191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241703, 37.854755, 20.008345>,  <40.243443, 38.178257, 20.243599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241703, 37.854755, 20.008345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110782, -0.584911, 0.803497,
		-0.993835, -0.061663, 0.092136,
		-0.004345, -0.808750, -0.588136,
		40.240398, 37.612129, 19.831903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787556, 37.658859, 20.545887>,  <40.243443, 38.178257, 20.243599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787556, 37.658859, 20.545887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050266, 37.473782, 20.307705>,  <40.207893, 37.362736, 20.164797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050266, 37.473782, 20.307705>,  <39.787556, 37.658859, 20.545887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050266, 37.473782, 20.307705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115005, -0.718940, 0.685492,
		-0.745264, -0.518695, -0.418971,
		0.656777, -0.462689, -0.595453,
		40.247299, 37.334976, 20.129068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555687, 37.013371, 20.559446>,  <39.787556, 37.658859, 20.545887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555687, 37.013371, 20.559446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939846, 36.977577, 20.453892>,  <40.170341, 36.956100, 20.390558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939846, 36.977577, 20.453892>,  <39.555687, 37.013371, 20.559446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939846, 36.977577, 20.453892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112349, -0.742290, 0.660593,
		-0.254995, -0.664076, -0.702837,
		0.960393, -0.089485, -0.263889,
		40.227962, 36.950733, 20.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682331, 36.321167, 20.481785>,  <39.555687, 37.013371, 20.559446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682331, 36.321167, 20.481785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014412, 36.524132, 20.574129>,  <40.213661, 36.645912, 20.629536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014412, 36.524132, 20.574129>,  <39.682331, 36.321167, 20.481785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014412, 36.524132, 20.574129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204507, -0.662470, 0.720632,
		0.518595, -0.551058, -0.653754,
		0.830202, 0.507413, 0.230859,
		40.263474, 36.676357, 20.643387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134605, 35.749916, 20.503300>,  <39.682331, 36.321167, 20.481785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134605, 35.749916, 20.503300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303646, 36.056572, 20.696659>,  <40.405071, 36.240566, 20.812675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303646, 36.056572, 20.696659>,  <40.134605, 35.749916, 20.503300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303646, 36.056572, 20.696659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347514, -0.629671, 0.694801,
		0.837041, -0.125639, -0.532519,
		0.422606, 0.766635, 0.483399,
		40.430428, 36.286564, 20.841679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659878, 35.453575, 20.788666>,  <40.134605, 35.749916, 20.503300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659878, 35.453575, 20.788666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684902, 35.810463, 20.967562>,  <40.699917, 36.024597, 21.074900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684902, 35.810463, 20.967562>,  <40.659878, 35.453575, 20.788666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684902, 35.810463, 20.967562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254810, -0.447544, 0.857191,
		0.964965, 0.060335, -0.255346,
		0.062560, 0.892224, 0.447239,
		40.703671, 36.078129, 21.101734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310917, 35.543835, 21.076681>,  <40.659878, 35.453575, 20.788666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310917, 35.543835, 21.076681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066479, 35.790379, 21.275337>,  <40.919815, 35.938305, 21.394531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066479, 35.790379, 21.275337>,  <41.310917, 35.543835, 21.076681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066479, 35.790379, 21.275337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339095, -0.363087, 0.867861,
		0.715242, 0.698758, 0.012877,
		-0.611100, 0.616364, 0.496641,
		40.883148, 35.975288, 21.424330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603367, 35.474091, 21.722157>,  <41.310917, 35.543835, 21.076681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603367, 35.474091, 21.722157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270069, 35.673576, 21.817644>,  <41.070091, 35.793270, 21.874937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270069, 35.673576, 21.817644>,  <41.603367, 35.474091, 21.722157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270069, 35.673576, 21.817644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140104, -0.227212, 0.963715,
		0.534861, 0.836454, 0.119450,
		-0.833243, 0.498718, 0.238717,
		41.020096, 35.823193, 21.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676353, 36.091866, 22.291330>,  <41.603367, 35.474091, 21.722157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676353, 36.091866, 22.291330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295219, 35.970745, 22.299507>,  <41.066540, 35.898071, 22.304413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295219, 35.970745, 22.299507>,  <41.676353, 36.091866, 22.291330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295219, 35.970745, 22.299507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037874, -0.051804, 0.997939,
		-0.301122, 0.951644, 0.060829,
		-0.952833, -0.302805, 0.020443,
		41.009369, 35.879902, 22.305639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292019, 36.532219, 22.715139>,  <41.676353, 36.091866, 22.291330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292019, 36.532219, 22.715139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053524, 36.211235, 22.724588>,  <40.910427, 36.018642, 22.730259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053524, 36.211235, 22.724588>,  <41.292019, 36.532219, 22.715139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053524, 36.211235, 22.724588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144134, -0.078050, 0.986475,
		-0.789767, 0.591574, 0.162198,
		-0.596233, -0.802464, 0.023624,
		40.874653, 35.970497, 22.731676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800621, 36.696514, 23.225733>,  <41.292019, 36.532219, 22.715139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800621, 36.696514, 23.225733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794926, 36.299099, 23.180679>,  <40.791508, 36.060650, 23.153646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.794926, 36.299099, 23.180679>,  <40.800621, 36.696514, 23.225733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794926, 36.299099, 23.180679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123512, -0.113532, 0.985827,
		-0.992241, 0.000126, 0.124330,
		-0.014239, -0.993534, -0.112636,
		40.790653, 36.001038, 23.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332523, 36.404034, 23.719822>,  <40.800621, 36.696514, 23.225733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332523, 36.404034, 23.719822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543579, 36.075802, 23.631966>,  <40.670212, 35.878864, 23.579252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543579, 36.075802, 23.631966>,  <40.332523, 36.404034, 23.719822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543579, 36.075802, 23.631966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106207, -0.320261, 0.941357,
		-0.842802, -0.473370, -0.256134,
		0.527640, -0.820581, -0.219641,
		40.701870, 35.829628, 23.566072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054909, 35.836800, 24.150564>,  <40.332523, 36.404034, 23.719822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054909, 35.836800, 24.150564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418308, 35.718815, 24.032158>,  <40.636349, 35.648026, 23.961115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418308, 35.718815, 24.032158>,  <40.054909, 35.836800, 24.150564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418308, 35.718815, 24.032158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183533, -0.354747, 0.916772,
		-0.375429, -0.887214, -0.268151,
		0.908498, -0.294968, -0.296016,
		40.690857, 35.630325, 23.943354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128094, 35.207497, 24.525778>,  <40.054909, 35.836800, 24.150564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128094, 35.207497, 24.525778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490433, 35.341259, 24.421770>,  <40.707836, 35.421516, 24.359365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490433, 35.341259, 24.421770>,  <40.128094, 35.207497, 24.525778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490433, 35.341259, 24.421770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356166, -0.268980, 0.894872,
		0.229306, -0.903231, -0.362758,
		0.905850, 0.334401, -0.260021,
		40.762188, 35.441578, 24.343763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516998, 34.642052, 24.814884>,  <40.128094, 35.207497, 24.525778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516998, 34.642052, 24.814884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784046, 34.931538, 24.745005>,  <40.944275, 35.105228, 24.703077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784046, 34.931538, 24.745005>,  <40.516998, 34.642052, 24.814884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784046, 34.931538, 24.745005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448604, -0.203774, 0.870190,
		0.594170, -0.659327, -0.460705,
		0.667620, 0.723715, -0.174701,
		40.984333, 35.148651, 24.692595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126198, 34.411789, 24.925352>,  <40.516998, 34.642052, 24.814884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126198, 34.411789, 24.925352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161819, 34.805382, 24.987129>,  <41.183193, 35.041538, 25.024197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161819, 34.805382, 24.987129>,  <41.126198, 34.411789, 24.925352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161819, 34.805382, 24.987129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404053, -0.177418, 0.897365,
		0.910390, -0.017510, -0.413380,
		0.089053, 0.983980, 0.154445,
		41.188534, 35.100574, 25.033463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675583, 34.414265, 25.201679>,  <41.126198, 34.411789, 24.925352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675583, 34.414265, 25.201679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534805, 34.775032, 25.301823>,  <41.450340, 34.991493, 25.361908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534805, 34.775032, 25.301823>,  <41.675583, 34.414265, 25.201679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534805, 34.775032, 25.301823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244335, -0.169674, 0.954731,
		0.903568, 0.397184, -0.160654,
		-0.351945, 0.901918, 0.250358,
		41.429222, 35.045609, 25.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201687, 34.767296, 25.542410>,  <41.675583, 34.414265, 25.201679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201687, 34.767296, 25.542410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869007, 34.954742, 25.661522>,  <41.669399, 35.067211, 25.732990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.869007, 34.954742, 25.661522>,  <42.201687, 34.767296, 25.542410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869007, 34.954742, 25.661522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258234, -0.148307, 0.954631,
		0.491520, 0.870863, 0.002334,
		-0.831699, 0.468617, 0.297782,
		41.619499, 35.095329, 25.750856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339619, 35.194794, 26.060019>,  <42.201687, 34.767296, 25.542410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339619, 35.194794, 26.060019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958992, 35.092369, 26.128073>,  <41.730614, 35.030914, 26.168905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958992, 35.092369, 26.128073>,  <42.339619, 35.194794, 26.060019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958992, 35.092369, 26.128073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154114, 0.081535, 0.984683,
		-0.266012, 0.963215, -0.038124,
		-0.951570, -0.256062, 0.170134,
		41.673519, 35.015549, 26.179113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165459, 35.606316, 26.675127>,  <42.339619, 35.194794, 26.060019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165459, 35.606316, 26.675127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.877655, 35.328812, 26.662416>,  <41.704971, 35.162312, 26.654791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.877655, 35.328812, 26.662416>,  <42.165459, 35.606316, 26.675127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877655, 35.328812, 26.662416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000447, -0.046216, 0.998931,
		-0.694482, 0.718727, 0.033563,
		-0.719510, -0.693755, -0.031775,
		41.661800, 35.120686, 26.652884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.555714, 37.940422, 31.177588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392879, 37.576077, 31.150425>,  <42.295177, 37.357468, 31.134129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.392879, 37.576077, 31.150425>,  <42.555714, 37.940422, 31.177588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392879, 37.576077, 31.150425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208438, 0.020259, 0.977826,
		-0.889289, 0.412212, -0.198106,
		-0.407085, -0.910862, -0.067905,
		42.270756, 37.302818, 31.130053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005508, 37.944469, 31.533319>,  <42.555714, 37.940422, 31.177588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005508, 37.944469, 31.533319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073853, 37.550396, 31.527327>,  <42.114861, 37.313953, 31.523731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073853, 37.550396, 31.527327>,  <42.005508, 37.944469, 31.533319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073853, 37.550396, 31.527327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032483, -0.009567, 0.999427,
		-0.984759, -0.171252, 0.030367,
		0.170863, -0.985181, -0.014984,
		42.125111, 37.254841, 31.522831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528126, 37.611839, 32.052414>,  <42.005508, 37.944469, 31.533319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528126, 37.611839, 32.052414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814697, 37.337467, 32.001472>,  <41.986641, 37.172844, 31.970907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814697, 37.337467, 32.001472>,  <41.528126, 37.611839, 32.052414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814697, 37.337467, 32.001472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020338, -0.161940, 0.986591,
		-0.697360, -0.709416, -0.102069,
		0.716432, -0.685933, -0.127358,
		42.029629, 37.131687, 31.963264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279617, 37.010807, 32.349129>,  <41.528126, 37.611839, 32.052414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279617, 37.010807, 32.349129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677177, 36.967094, 32.343147>,  <41.915714, 36.940865, 32.339558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677177, 36.967094, 32.343147>,  <41.279617, 37.010807, 32.349129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677177, 36.967094, 32.343147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020962, -0.320254, 0.947100,
		-0.108291, -0.941007, -0.320591,
		0.993898, -0.109282, -0.014955,
		41.975346, 36.934311, 32.338661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313961, 36.346996, 32.655590>,  <41.279617, 37.010807, 32.349129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313961, 36.346996, 32.655590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676632, 36.515682, 32.659431>,  <41.894234, 36.616894, 32.661736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676632, 36.515682, 32.659431>,  <41.313961, 36.346996, 32.655590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676632, 36.515682, 32.659431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160911, -0.366815, 0.916272,
		0.389931, -0.829217, -0.400441,
		0.906676, 0.421718, 0.009602,
		41.948635, 36.642197, 32.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741581, 35.826477, 32.925400>,  <41.313961, 36.346996, 32.655590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741581, 35.826477, 32.925400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972801, 36.150478, 32.964897>,  <42.111534, 36.344879, 32.988598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972801, 36.150478, 32.964897>,  <41.741581, 35.826477, 32.925400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972801, 36.150478, 32.964897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232940, -0.279779, 0.931377,
		0.782045, -0.515383, -0.350409,
		0.578053, 0.810003, 0.098746,
		42.146217, 36.393478, 32.994522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415524, 35.581783, 33.186920>,  <41.741581, 35.826477, 32.925400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415524, 35.581783, 33.186920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381233, 35.973629, 33.259590>,  <42.360661, 36.208736, 33.303192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381233, 35.973629, 33.259590>,  <42.415524, 35.581783, 33.186920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381233, 35.973629, 33.259590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326468, -0.144662, 0.934072,
		0.941313, 0.139382, -0.307413,
		-0.085722, 0.979615, 0.181676,
		42.355518, 36.267513, 33.314095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016968, 35.686234, 33.523590>,  <42.415524, 35.581783, 33.186920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016968, 35.686234, 33.523590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790134, 36.003059, 33.613964>,  <42.654034, 36.193157, 33.668190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790134, 36.003059, 33.613964>,  <43.016968, 35.686234, 33.523590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790134, 36.003059, 33.613964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133261, -0.182468, 0.974139,
		0.812810, 0.582525, -0.002077,
		-0.567082, 0.792067, 0.225940,
		42.620010, 36.240681, 33.681747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401657, 35.955532, 34.042652>,  <43.016968, 35.686234, 33.523590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401657, 35.955532, 34.042652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026356, 36.088211, 34.081970>,  <42.801174, 36.167816, 34.105560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026356, 36.088211, 34.081970>,  <43.401657, 35.955532, 34.042652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026356, 36.088211, 34.081970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031660, -0.200601, 0.979161,
		0.344498, 0.921813, 0.177713,
		-0.938253, 0.331693, 0.098291,
		42.744881, 36.187717, 34.111458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415276, 36.145779, 34.656418>,  <43.401657, 35.955532, 34.042652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415276, 36.145779, 34.656418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023674, 36.113972, 34.581337>,  <42.788712, 36.094887, 34.536289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023674, 36.113972, 34.581337>,  <43.415276, 36.145779, 34.656418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023674, 36.113972, 34.581337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115899, -0.540346, 0.833423,
		-0.167695, 0.837677, 0.519784,
		-0.979002, -0.079518, -0.187700,
		42.729973, 36.090115, 34.525028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066036, 36.105423, 35.320683>,  <43.415276, 36.145779, 34.656418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066036, 36.105423, 35.320683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782047, 35.937668, 35.094391>,  <42.611652, 35.837013, 34.958614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.782047, 35.937668, 35.094391>,  <43.066036, 36.105423, 35.320683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782047, 35.937668, 35.094391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291719, -0.556026, 0.778290,
		-0.640969, 0.717599, 0.272418,
		-0.709971, -0.419390, -0.565733,
		42.569057, 35.811852, 34.924671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452850, 36.087387, 35.680408>,  <43.066036, 36.105423, 35.320683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452850, 36.087387, 35.680408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386639, 35.810944, 35.398994>,  <42.346912, 35.645077, 35.230145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386639, 35.810944, 35.398994>,  <42.452850, 36.087387, 35.680408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386639, 35.810944, 35.398994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238459, -0.664164, 0.708537,
		-0.956942, 0.285046, -0.054866,
		-0.165526, -0.691112, -0.703538,
		42.336983, 35.603611, 35.187935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722313, 35.820889, 35.777344>,  <42.452850, 36.087387, 35.680408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722313, 35.820889, 35.777344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952667, 35.562614, 35.576767>,  <42.090881, 35.407650, 35.456421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952667, 35.562614, 35.576767>,  <41.722313, 35.820889, 35.777344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952667, 35.562614, 35.576767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232832, -0.717503, 0.656490,
		-0.783674, -0.261310, -0.563535,
		0.575885, -0.645683, -0.501447,
		42.125435, 35.368908, 35.426334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300865, 35.222553, 35.584648>,  <41.722313, 35.820889, 35.777344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300865, 35.222553, 35.584648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 35.089188, 35.615021>,  <41.902283, 35.009167, 35.633244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 35.089188, 35.615021>,  <41.300865, 35.222553, 35.584648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676750, 35.089188, 35.615021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308203, -0.729622, 0.610461,
		-0.148135, -0.597064, -0.788398,
		0.939717, -0.333417, 0.075934,
		41.958664, 34.989162, 35.637802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352154, 35.118565, 36.392082>,  <41.300865, 35.222553, 35.584648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352154, 35.118565, 36.392082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030041, 35.182415, 36.620480>,  <40.836773, 35.220726, 36.757519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030041, 35.182415, 36.620480>,  <41.352154, 35.118565, 36.392082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030041, 35.182415, 36.620480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549924, 0.158845, -0.819971,
		-0.221592, -0.974313, -0.040130,
		-0.805283, 0.159631, 0.570997,
		40.788456, 35.230305, 36.791779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771446, 34.635410, 36.129009>,  <41.352154, 35.118565, 36.392082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771446, 34.635410, 36.129009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656025, 34.974457, 36.307125>,  <40.586773, 35.177887, 36.413994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656025, 34.974457, 36.307125>,  <40.771446, 34.635410, 36.129009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656025, 34.974457, 36.307125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545303, 0.236789, -0.804099,
		-0.787009, -0.474840, 0.393883,
		-0.288551, 0.847619, 0.445287,
		40.569458, 35.228741, 36.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110672, 34.583763, 36.050900>,  <40.771446, 34.635410, 36.129009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110672, 34.583763, 36.050900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187393, 34.973064, 36.101490>,  <40.233425, 35.206646, 36.131844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187393, 34.973064, 36.101490>,  <40.110672, 34.583763, 36.050900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187393, 34.973064, 36.101490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415224, 0.197236, -0.888080,
		-0.889269, 0.117825, 0.441948,
		0.191806, 0.973250, 0.126472,
		40.244934, 35.265038, 36.139431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501904, 34.937218, 35.910633>,  <40.110672, 34.583763, 36.050900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501904, 34.937218, 35.910633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.762226, 35.238266, 35.870605>,  <39.918419, 35.418896, 35.846588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.762226, 35.238266, 35.870605>,  <39.501904, 34.937218, 35.910633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762226, 35.238266, 35.870605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377602, 0.206507, -0.902647,
		-0.658687, 0.625232, 0.418587,
		0.650805, 0.752622, -0.100065,
		39.957466, 35.464054, 35.840588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117577, 35.388683, 35.523029>,  <39.501904, 34.937218, 35.910633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117577, 35.388683, 35.523029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480564, 35.552174, 35.484142>,  <39.698357, 35.650269, 35.460812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480564, 35.552174, 35.484142>,  <39.117577, 35.388683, 35.523029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480564, 35.552174, 35.484142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258798, 0.361549, -0.895716,
		-0.330952, 0.837990, 0.433870,
		0.907466, 0.408724, -0.097214,
		39.752804, 35.674789, 35.454979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878483, 35.931759, 35.177887>,  <39.117577, 35.388683, 35.523029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878483, 35.931759, 35.177887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275490, 35.897747, 35.142822>,  <39.513695, 35.877342, 35.121784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275490, 35.897747, 35.142822>,  <38.878483, 35.931759, 35.177887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275490, 35.897747, 35.142822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075362, 0.138395, -0.987506,
		0.096095, 0.986720, 0.130951,
		0.992515, -0.085026, -0.087660,
		39.573246, 35.872238, 35.116524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169106, 36.565014, 34.824089>,  <38.878483, 35.931759, 35.177887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169106, 36.565014, 34.824089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443306, 36.281967, 34.755531>,  <39.607826, 36.112141, 34.714397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443306, 36.281967, 34.755531>,  <39.169106, 36.565014, 34.824089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443306, 36.281967, 34.755531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012821, 0.223635, -0.974589,
		0.727962, 0.670275, 0.144229,
		0.685497, -0.707615, -0.171391,
		39.648956, 36.069683, 34.704113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663876, 36.937336, 34.495155>,  <39.169106, 36.565014, 34.824089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663876, 36.937336, 34.495155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.722221, 36.554653, 34.394417>,  <39.757229, 36.325043, 34.333973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.722221, 36.554653, 34.394417>,  <39.663876, 36.937336, 34.495155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722221, 36.554653, 34.394417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047322, 0.261029, -0.964170,
		0.988172, 0.128720, 0.083348,
		0.145864, -0.956710, -0.251850,
		39.765980, 36.267639, 34.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322720, 36.832123, 34.107136>,  <39.663876, 36.937336, 34.495155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322720, 36.832123, 34.107136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097565, 36.514004, 34.017101>,  <39.962471, 36.323132, 33.963081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097565, 36.514004, 34.017101>,  <40.322720, 36.832123, 34.107136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097565, 36.514004, 34.017101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010469, 0.279165, -0.960186,
		0.826470, -0.538116, -0.165463,
		-0.562883, -0.795298, -0.225089,
		39.928699, 36.275414, 33.949574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523048, 36.657707, 33.395874>,  <40.322720, 36.832123, 34.107136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523048, 36.657707, 33.395874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169418, 36.471203, 33.408592>,  <39.957241, 36.359299, 33.416222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169418, 36.471203, 33.408592>,  <40.523048, 36.657707, 33.395874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169418, 36.471203, 33.408592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109147, 0.139851, -0.984138,
		0.454420, -0.873523, -0.174530,
		-0.884075, -0.466261, 0.031791,
		39.904194, 36.331326, 33.418129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440590, 36.123020, 32.778179>,  <40.523048, 36.657707, 33.395874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440590, 36.123020, 32.778179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055321, 36.140354, 32.884327>,  <39.824158, 36.150753, 32.948017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055321, 36.140354, 32.884327>,  <40.440590, 36.123020, 32.778179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055321, 36.140354, 32.884327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238289, 0.319668, -0.917077,
		-0.124571, -0.946538, -0.297570,
		-0.963172, 0.043334, 0.265371,
		39.766369, 36.153355, 32.963940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103859, 35.776131, 32.200386>,  <40.440590, 36.123020, 32.778179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103859, 35.776131, 32.200386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838280, 36.011032, 32.385559>,  <39.678932, 36.151974, 32.496662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838280, 36.011032, 32.385559>,  <40.103859, 35.776131, 32.200386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838280, 36.011032, 32.385559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337451, 0.317156, -0.886306,
		-0.667311, -0.744676, -0.012404,
		-0.663945, 0.587256, 0.462934,
		39.639095, 36.187210, 32.524441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487648, 35.739426, 31.773832>,  <40.103859, 35.776131, 32.200386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487648, 35.739426, 31.773832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442200, 36.076462, 31.984407>,  <39.414932, 36.278683, 32.110752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442200, 36.076462, 31.984407>,  <39.487648, 35.739426, 31.773832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442200, 36.076462, 31.984407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336752, 0.465846, -0.818282,
		-0.934713, -0.270252, 0.230813,
		-0.113619, 0.842586, 0.526440,
		39.408115, 36.329239, 32.142338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729523, 35.922504, 31.767363>,  <39.487648, 35.739426, 31.773832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729523, 35.922504, 31.767363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937588, 36.261463, 31.809992>,  <39.062428, 36.464836, 31.835569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937588, 36.261463, 31.809992>,  <38.729523, 35.922504, 31.767363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937588, 36.261463, 31.809992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514011, 0.410256, -0.753315,
		-0.682077, 0.337063, 0.648968,
		0.520158, 0.847395, 0.106572,
		39.093636, 36.515682, 31.841963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002541, 35.880474, 31.991938>,  <38.729523, 35.922504, 31.767363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002541, 35.880474, 31.991938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752716, 35.582012, 31.899700>,  <37.602821, 35.402935, 31.844358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752716, 35.582012, 31.899700>,  <38.002541, 35.880474, 31.991938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752716, 35.582012, 31.899700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064105, -0.245284, 0.967330,
		-0.778340, 0.618939, 0.105363,
		-0.624562, -0.746157, -0.230591,
		37.565346, 35.358166, 31.830523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565521, 35.918373, 32.558083>,  <38.002541, 35.880474, 31.991938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565521, 35.918373, 32.558083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488243, 35.560478, 32.397026>,  <37.441875, 35.345741, 32.300392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488243, 35.560478, 32.397026>,  <37.565521, 35.918373, 32.558083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488243, 35.560478, 32.397026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174908, -0.372392, 0.911445,
		-0.965444, 0.246516, -0.084550,
		-0.193200, -0.894737, -0.402641,
		37.430283, 35.292057, 32.276234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952435, 35.680191, 32.893734>,  <37.565521, 35.918373, 32.558083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952435, 35.680191, 32.893734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145443, 35.363171, 32.744583>,  <37.261246, 35.172958, 32.655090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.145443, 35.363171, 32.744583>,  <36.952435, 35.680191, 32.893734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145443, 35.363171, 32.744583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081724, -0.464597, 0.881743,
		-0.872065, -0.394983, -0.288947,
		0.482517, -0.792551, -0.372879,
		37.290199, 35.125404, 32.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598476, 35.109898, 33.153942>,  <36.952435, 35.680191, 32.893734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598476, 35.109898, 33.153942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963230, 34.969978, 33.068047>,  <37.182083, 34.886024, 33.016510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.963230, 34.969978, 33.068047>,  <36.598476, 35.109898, 33.153942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963230, 34.969978, 33.068047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041405, -0.598897, 0.799755,
		-0.408361, -0.720390, -0.560606,
		0.911882, -0.349800, -0.214739,
		37.236794, 34.865040, 33.003624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592148, 34.410419, 33.228905>,  <36.598476, 35.109898, 33.153942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592148, 34.410419, 33.228905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988186, 34.465347, 33.240627>,  <37.225807, 34.498302, 33.247662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988186, 34.465347, 33.240627>,  <36.592148, 34.410419, 33.228905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988186, 34.465347, 33.240627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041646, -0.486513, 0.872680,
		0.134091, -0.862815, -0.487412,
		0.990093, 0.137318, 0.029305,
		37.285213, 34.506542, 33.249420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903774, 33.687954, 33.395233>,  <36.592148, 34.410419, 33.228905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903774, 33.687954, 33.395233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.196190, 33.946354, 33.483109>,  <37.371639, 34.101395, 33.535831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.196190, 33.946354, 33.483109>,  <36.903774, 33.687954, 33.395233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196190, 33.946354, 33.483109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283578, -0.580480, 0.763300,
		0.620616, -0.495705, -0.607546,
		0.731039, 0.646003, 0.219685,
		37.415501, 34.140156, 33.549015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547657, 33.305748, 33.687622>,  <36.903774, 33.687954, 33.395233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547657, 33.305748, 33.687622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584953, 33.679512, 33.825138>,  <37.607330, 33.903770, 33.907646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584953, 33.679512, 33.825138>,  <37.547657, 33.305748, 33.687622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584953, 33.679512, 33.825138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090232, -0.351804, 0.931714,
		0.991547, -0.055850, -0.117115,
		0.093238, 0.934406, 0.343791,
		37.612926, 33.959835, 33.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156387, 33.274704, 34.013542>,  <37.547657, 33.305748, 33.687622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156387, 33.274704, 34.013542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965065, 33.594883, 34.158051>,  <37.850273, 33.786991, 34.244755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965065, 33.594883, 34.158051>,  <38.156387, 33.274704, 34.013542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965065, 33.594883, 34.158051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153910, -0.328604, 0.931843,
		0.864601, 0.501308, 0.033978,
		-0.478306, 0.800443, 0.361268,
		37.821575, 33.835014, 34.266430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489407, 33.327511, 34.652164>,  <38.156387, 33.274704, 34.013542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489407, 33.327511, 34.652164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154457, 33.544617, 34.678135>,  <37.953487, 33.674881, 34.693718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154457, 33.544617, 34.678135>,  <38.489407, 33.327511, 34.652164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154457, 33.544617, 34.678135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054009, -0.200335, 0.978238,
		0.543961, 0.815641, 0.197069,
		-0.837370, 0.542767, 0.064923,
		37.903248, 33.707447, 34.697613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550549, 33.657623, 35.255924>,  <38.489407, 33.327511, 34.652164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550549, 33.657623, 35.255924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161648, 33.682362, 35.165676>,  <37.928307, 33.697205, 35.111526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161648, 33.682362, 35.165676>,  <38.550549, 33.657623, 35.255924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161648, 33.682362, 35.165676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233884, -0.235549, 0.943300,
		0.005199, 0.969892, 0.243478,
		-0.972251, 0.061850, -0.225618,
		37.869972, 33.700916, 35.097992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141094, 33.767811, 35.945419>,  <38.550549, 33.657623, 35.255924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141094, 33.767811, 35.945419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860157, 33.652504, 35.685078>,  <37.691597, 33.583321, 35.528873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.860157, 33.652504, 35.685078>,  <38.141094, 33.767811, 35.945419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860157, 33.652504, 35.685078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416116, -0.575577, 0.703959,
		-0.577551, 0.765252, 0.284297,
		-0.702341, -0.288271, -0.650858,
		37.649456, 33.566021, 35.489819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450382, 33.920349, 36.165428>,  <38.141094, 33.767811, 35.945419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450382, 33.920349, 36.165428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476284, 33.587948, 35.944435>,  <37.491825, 33.388508, 35.811840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476284, 33.587948, 35.944435>,  <37.450382, 33.920349, 36.165428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476284, 33.587948, 35.944435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322884, -0.541309, 0.776357,
		-0.944221, 0.128113, -0.303372,
		0.064756, -0.831007, -0.552481,
		37.495712, 33.338646, 35.778690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.815365, 36.761600, 28.723196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988228, 36.417988, 28.613432>,  <36.091946, 36.211819, 28.547573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988228, 36.417988, 28.613432>,  <35.815365, 36.761600, 28.723196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988228, 36.417988, 28.613432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152791, -0.230148, 0.961087,
		-0.888762, -0.457265, 0.031793,
		0.432155, -0.859035, -0.274413,
		36.117874, 36.160278, 28.531109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552296, 36.309959, 29.179701>,  <35.815365, 36.761600, 28.723196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552296, 36.309959, 29.179701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858280, 36.096134, 29.035992>,  <36.041870, 35.967838, 28.949766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858280, 36.096134, 29.035992>,  <35.552296, 36.309959, 29.179701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858280, 36.096134, 29.035992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264112, -0.248407, 0.931954,
		-0.587431, -0.807799, -0.048839,
		0.764964, -0.534560, -0.359272,
		36.087769, 35.935764, 28.928209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592739, 35.781826, 29.629377>,  <35.552296, 36.309959, 29.179701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592739, 35.781826, 29.629377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959038, 35.747650, 29.472351>,  <36.178818, 35.727146, 29.378136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959038, 35.747650, 29.472351>,  <35.592739, 35.781826, 29.629377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959038, 35.747650, 29.472351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323414, -0.422940, 0.846478,
		-0.238355, -0.902121, -0.359673,
		0.915746, -0.085439, -0.392568,
		36.233761, 35.722019, 29.354580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776077, 35.118694, 29.745049>,  <35.592739, 35.781826, 29.629377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776077, 35.118694, 29.745049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110527, 35.334259, 29.704096>,  <36.311195, 35.463596, 29.679525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110527, 35.334259, 29.704096>,  <35.776077, 35.118694, 29.745049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110527, 35.334259, 29.704096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392597, -0.457551, 0.797819,
		0.383108, -0.707266, -0.594141,
		0.836120, 0.538909, -0.102380,
		36.361362, 35.495930, 29.673382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270401, 34.657532, 30.117212>,  <35.776077, 35.118694, 29.745049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270401, 34.657532, 30.117212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505478, 34.972389, 30.042353>,  <36.646523, 35.161304, 29.997437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505478, 34.972389, 30.042353>,  <36.270401, 34.657532, 30.117212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505478, 34.972389, 30.042353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443271, -0.119741, 0.888354,
		0.676852, -0.605036, -0.419288,
		0.587692, 0.787143, -0.187148,
		36.681786, 35.208530, 29.986208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912125, 34.476475, 30.211315>,  <36.270401, 34.657532, 30.117212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912125, 34.476475, 30.211315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913139, 34.873032, 30.263678>,  <36.913750, 35.110966, 30.295095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913139, 34.873032, 30.263678>,  <36.912125, 34.476475, 30.211315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913139, 34.873032, 30.263678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653289, -0.100754, 0.750375,
		0.757105, 0.083617, -0.647920,
		0.002537, 0.991391, 0.130907,
		36.913902, 35.170448, 30.302950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613461, 34.765083, 30.347128>,  <36.912125, 34.476475, 30.211315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613461, 34.765083, 30.347128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392628, 35.075718, 30.468531>,  <37.260128, 35.262100, 30.541372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392628, 35.075718, 30.468531>,  <37.613461, 34.765083, 30.347128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392628, 35.075718, 30.468531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390164, -0.081078, 0.917169,
		0.736871, 0.624769, -0.258235,
		-0.552081, 0.776589, 0.303506,
		37.227005, 35.308693, 30.559582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088303, 35.406967, 30.567875>,  <37.613461, 34.765083, 30.347128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088303, 35.406967, 30.567875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740345, 35.392200, 30.764614>,  <37.531570, 35.383343, 30.882658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740345, 35.392200, 30.764614>,  <38.088303, 35.406967, 30.567875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740345, 35.392200, 30.764614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488787, 0.069049, 0.869666,
		-0.066065, 0.996930, -0.042023,
		-0.869898, -0.036914, 0.491848,
		37.479374, 35.381126, 30.912169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201824, 35.696671, 31.210169>,  <38.088303, 35.406967, 30.567875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201824, 35.696671, 31.210169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841206, 35.537201, 31.277420>,  <37.624832, 35.441521, 31.317772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841206, 35.537201, 31.277420>,  <38.201824, 35.696671, 31.210169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841206, 35.537201, 31.277420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237025, -0.129980, 0.962769,
		-0.361978, 0.907835, 0.211680,
		-0.901549, -0.398675, 0.168130,
		37.570740, 35.417599, 31.327860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240292, 36.420792, 31.549858>,  <38.201824, 35.696671, 31.210169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240292, 36.420792, 31.549858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569412, 36.647163, 31.570726>,  <38.766884, 36.782986, 31.583248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569412, 36.647163, 31.570726>,  <38.240292, 36.420792, 31.549858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569412, 36.647163, 31.570726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310018, 0.523879, -0.793373,
		-0.476322, 0.636616, 0.606496,
		0.822804, 0.565926, 0.052173,
		38.816254, 36.816940, 31.586378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991783, 37.061405, 31.520967>,  <38.240292, 36.420792, 31.549858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991783, 37.061405, 31.520967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373745, 37.065979, 31.402288>,  <38.602921, 37.068722, 31.331081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373745, 37.065979, 31.402288>,  <37.991783, 37.061405, 31.520967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373745, 37.065979, 31.402288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266885, 0.470971, -0.840808,
		0.130124, 0.882074, 0.452783,
		0.954903, 0.011432, -0.296697,
		38.660217, 37.069408, 31.313280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058743, 37.720913, 31.250120>,  <37.991783, 37.061405, 31.520967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058743, 37.720913, 31.250120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355770, 37.502789, 31.094568>,  <38.533985, 37.371914, 31.001238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355770, 37.502789, 31.094568>,  <38.058743, 37.720913, 31.250120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355770, 37.502789, 31.094568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211689, 0.359766, -0.908711,
		0.635437, 0.757101, 0.151714,
		0.742568, -0.545313, -0.388878,
		38.578541, 37.339195, 30.977905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391663, 38.205387, 30.674290>,  <38.058743, 37.720913, 31.250120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391663, 38.205387, 30.674290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494034, 37.826031, 30.599390>,  <38.555454, 37.598419, 30.554451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494034, 37.826031, 30.599390>,  <38.391663, 38.205387, 30.674290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494034, 37.826031, 30.599390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064595, 0.210042, -0.975556,
		0.964536, 0.237575, 0.115016,
		0.255926, -0.948388, -0.187247,
		38.570812, 37.541515, 30.543217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998100, 38.250538, 30.330549>,  <38.391663, 38.205387, 30.674290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998100, 38.250538, 30.330549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868927, 37.883736, 30.236902>,  <38.791424, 37.663654, 30.180714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868927, 37.883736, 30.236902>,  <38.998100, 38.250538, 30.330549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868927, 37.883736, 30.236902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142667, 0.197376, -0.969891,
		0.935605, -0.346615, 0.067086,
		-0.322937, -0.917006, -0.234117,
		38.772045, 37.608635, 30.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355881, 38.063084, 29.782269>,  <38.998100, 38.250538, 30.330549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355881, 38.063084, 29.782269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042152, 37.817001, 29.750366>,  <38.853916, 37.669353, 29.731224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042152, 37.817001, 29.750366>,  <39.355881, 38.063084, 29.782269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042152, 37.817001, 29.750366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058619, 0.054492, -0.996792,
		0.617574, -0.786484, -0.006677,
		-0.784325, -0.615202, -0.079756,
		38.806854, 37.632442, 29.726439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553040, 37.606949, 29.231678>,  <39.355881, 38.063084, 29.782269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553040, 37.606949, 29.231678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155102, 37.579842, 29.261852>,  <38.916340, 37.563576, 29.279957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155102, 37.579842, 29.261852>,  <39.553040, 37.606949, 29.231678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155102, 37.579842, 29.261852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093269, 0.319529, -0.942975,
		0.039803, -0.945150, -0.324202,
		-0.994845, -0.067771, 0.075435,
		38.856647, 37.559509, 29.284483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312328, 37.102859, 28.656736>,  <39.553040, 37.606949, 29.231678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312328, 37.102859, 28.656736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011806, 37.345646, 28.760382>,  <38.831493, 37.491318, 28.822569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011806, 37.345646, 28.760382>,  <39.312328, 37.102859, 28.656736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011806, 37.345646, 28.760382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138281, 0.239123, -0.961092,
		-0.645307, -0.757903, -0.095722,
		-0.751304, 0.606962, 0.259111,
		38.786415, 37.527733, 28.838116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969200, 37.096996, 28.080910>,  <39.312328, 37.102859, 28.656736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969200, 37.096996, 28.080910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759521, 37.387390, 28.258976>,  <38.633717, 37.561626, 28.365816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759521, 37.387390, 28.258976>,  <38.969200, 37.096996, 28.080910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759521, 37.387390, 28.258976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183299, 0.414301, -0.891491,
		-0.831639, -0.548911, -0.084101,
		-0.524193, 0.725983, 0.445164,
		38.602264, 37.605186, 28.392525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416851, 37.219246, 27.639875>,  <38.969200, 37.096996, 28.080910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416851, 37.219246, 27.639875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425556, 37.551762, 27.862040>,  <38.430779, 37.751270, 27.995338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425556, 37.551762, 27.862040>,  <38.416851, 37.219246, 27.639875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425556, 37.551762, 27.862040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246368, 0.542872, -0.802866,
		-0.968932, -0.119360, 0.216620,
		0.021767, 0.831290, 0.555412,
		38.432087, 37.801147, 28.028664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803421, 37.566849, 27.476250>,  <38.416851, 37.219246, 27.639875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803421, 37.566849, 27.476250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034115, 37.846798, 27.644800>,  <38.172531, 38.014767, 27.745930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034115, 37.846798, 27.644800>,  <37.803421, 37.566849, 27.476250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034115, 37.846798, 27.644800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225783, 0.632265, -0.741123,
		-0.785113, 0.332290, 0.522667,
		0.576732, 0.699875, 0.421374,
		38.207134, 38.056759, 27.771212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401333, 38.137444, 27.508087>,  <37.803421, 37.566849, 27.476250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401333, 38.137444, 27.508087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784889, 38.250919, 27.505615>,  <38.015022, 38.319004, 27.504131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784889, 38.250919, 27.505615>,  <37.401333, 38.137444, 27.508087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784889, 38.250919, 27.505615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228501, 0.759061, -0.609601,
		-0.168248, 0.585956, 0.792684,
		0.958895, 0.283693, -0.006180,
		38.072559, 38.336029, 27.503761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313164, 38.806782, 27.677307>,  <37.401333, 38.137444, 27.508087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313164, 38.806782, 27.677307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683113, 38.767426, 27.530373>,  <37.905083, 38.743813, 27.442213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683113, 38.767426, 27.530373>,  <37.313164, 38.806782, 27.677307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683113, 38.767426, 27.530373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073631, 0.901337, -0.426815,
		0.373088, 0.421795, 0.826374,
		0.924870, -0.098392, -0.367335,
		37.960575, 38.737907, 27.420172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516560, 39.393456, 27.545250>,  <37.313164, 38.806782, 27.677307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516560, 39.393456, 27.545250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786236, 39.197418, 27.324242>,  <37.948040, 39.079796, 27.191637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786236, 39.197418, 27.324242>,  <37.516560, 39.393456, 27.545250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786236, 39.197418, 27.324242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067629, 0.703998, -0.706975,
		0.735456, 0.514001, 0.441484,
		0.674190, -0.490091, -0.552521,
		37.988491, 39.050392, 27.158485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.506969, 32.196720, 25.188631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.163044, 32.372829, 25.292080>,  <39.956688, 32.478493, 25.354149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.163044, 32.372829, 25.292080>,  <40.506969, 32.196720, 25.188631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163044, 32.372829, 25.292080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217690, -0.142088, 0.965620,
		0.461880, 0.886552, 0.026327,
		-0.859813, 0.440269, 0.258621,
		39.905102, 32.504910, 25.369667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645275, 32.510761, 25.879158>,  <40.506969, 32.196720, 25.188631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645275, 32.510761, 25.879158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246452, 32.503632, 25.849339>,  <40.007160, 32.499352, 25.831448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246452, 32.503632, 25.849339>,  <40.645275, 32.510761, 25.879158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246452, 32.503632, 25.849339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074404, -0.008613, 0.997191,
		-0.018420, 0.999804, 0.007261,
		-0.997058, -0.017828, -0.074548,
		39.947334, 32.498283, 25.826975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348042, 33.113503, 26.294605>,  <40.645275, 32.510761, 25.879158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348042, 33.113503, 26.294605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075630, 32.827145, 26.233047>,  <39.912182, 32.655331, 26.196114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075630, 32.827145, 26.233047>,  <40.348042, 33.113503, 26.294605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075630, 32.827145, 26.233047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013401, -0.197944, 0.980122,
		-0.732131, 0.669557, 0.125212,
		-0.681032, -0.715899, -0.153894,
		39.871319, 32.612373, 26.186880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807861, 33.297626, 26.735003>,  <40.348042, 33.113503, 26.294605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807861, 33.297626, 26.735003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760845, 32.909294, 26.651417>,  <39.732635, 32.676292, 26.601265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760845, 32.909294, 26.651417>,  <39.807861, 33.297626, 26.735003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760845, 32.909294, 26.651417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176111, -0.186711, 0.966501,
		-0.977327, 0.150407, -0.149028,
		-0.117544, -0.970833, -0.208966,
		39.725582, 32.618046, 26.588728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319668, 33.170090, 27.077085>,  <39.807861, 33.297626, 26.735003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319668, 33.170090, 27.077085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455547, 32.798798, 27.016434>,  <39.537075, 32.576023, 26.980042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455547, 32.798798, 27.016434>,  <39.319668, 33.170090, 27.077085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455547, 32.798798, 27.016434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052638, -0.179727, 0.982307,
		-0.939060, -0.325708, -0.109913,
		0.339700, -0.928231, -0.151630,
		39.557457, 32.520329, 26.970945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872253, 32.734798, 27.437136>,  <39.319668, 33.170090, 27.077085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872253, 32.734798, 27.437136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196663, 32.503212, 27.403557>,  <39.391308, 32.364262, 27.383410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196663, 32.503212, 27.403557>,  <38.872253, 32.734798, 27.437136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196663, 32.503212, 27.403557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165926, -0.365250, 0.916003,
		-0.560995, -0.728968, -0.392290,
		0.811020, -0.578963, -0.083949,
		39.439968, 32.329525, 27.378372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788532, 32.134289, 27.661585>,  <38.872253, 32.734798, 27.437136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788532, 32.134289, 27.661585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184711, 32.094784, 27.700069>,  <39.422421, 32.071079, 27.723160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184711, 32.094784, 27.700069>,  <38.788532, 32.134289, 27.661585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184711, 32.094784, 27.700069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125396, -0.355120, 0.926372,
		-0.057323, -0.929589, -0.364113,
		0.990449, -0.098761, 0.096211,
		39.481846, 32.065155, 27.728933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864826, 31.546276, 28.234962>,  <38.788532, 32.134289, 27.661585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864826, 31.546276, 28.234962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217628, 31.732325, 28.204689>,  <39.429310, 31.843954, 28.186525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217628, 31.732325, 28.204689>,  <38.864826, 31.546276, 28.234962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217628, 31.732325, 28.204689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195039, -0.214106, 0.957141,
		0.428981, -0.858966, -0.279559,
		0.882006, 0.465120, -0.075684,
		39.482231, 31.871861, 28.181984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300877, 31.094183, 28.569626>,  <38.864826, 31.546276, 28.234962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300877, 31.094183, 28.569626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497246, 31.442644, 28.565863>,  <39.615067, 31.651720, 28.563604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497246, 31.442644, 28.565863>,  <39.300877, 31.094183, 28.569626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497246, 31.442644, 28.565863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286582, -0.151284, 0.946036,
		0.822718, -0.467126, -0.323926,
		0.490923, 0.871152, -0.009406,
		39.644524, 31.703989, 28.563042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039581, 30.902439, 28.761467>,  <39.300877, 31.094183, 28.569626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039581, 30.902439, 28.761467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952614, 31.282270, 28.851824>,  <39.900433, 31.510170, 28.906038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952614, 31.282270, 28.851824>,  <40.039581, 30.902439, 28.761467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952614, 31.282270, 28.851824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396047, -0.125701, 0.909586,
		0.892119, 0.287224, -0.348749,
		-0.217417, 0.949580, 0.225894,
		39.887390, 31.567144, 28.919592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568550, 31.017340, 29.118641>,  <40.039581, 30.902439, 28.761467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568550, 31.017340, 29.118641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361156, 31.343372, 29.222036>,  <40.236721, 31.538992, 29.284073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361156, 31.343372, 29.222036>,  <40.568550, 31.017340, 29.118641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361156, 31.343372, 29.222036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562102, 0.097085, 0.821350,
		0.644371, 0.571155, -0.508496,
		-0.518485, 0.815081, 0.258488,
		40.205612, 31.587896, 29.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072784, 31.667494, 29.142527>,  <40.568550, 31.017340, 29.118641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072784, 31.667494, 29.142527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.746143, 31.707067, 29.369989>,  <40.550159, 31.730812, 29.506468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.746143, 31.707067, 29.369989>,  <41.072784, 31.667494, 29.142527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746143, 31.707067, 29.369989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574898, 0.051503, 0.816602,
		0.051503, 0.993760, -0.098936,
		-0.816602, 0.098936, 0.568658,
		40.501163, 31.736748, 29.540586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269508, 32.167591, 29.625641>,  <41.072784, 31.667494, 29.142527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269508, 32.167591, 29.625641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940273, 32.030094, 29.806471>,  <40.742733, 31.947596, 29.914968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940273, 32.030094, 29.806471>,  <41.269508, 32.167591, 29.625641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940273, 32.030094, 29.806471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466290, 0.045372, 0.883468,
		-0.324195, 0.937968, 0.122937,
		-0.823086, -0.343740, 0.452075,
		40.693348, 31.926971, 29.942093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229450, 32.466877, 30.280367>,  <41.269508, 32.167591, 29.625641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229450, 32.466877, 30.280367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983795, 32.154991, 30.329180>,  <40.836403, 31.967861, 30.358467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983795, 32.154991, 30.329180>,  <41.229450, 32.466877, 30.280367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983795, 32.154991, 30.329180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280298, -0.070949, 0.957287,
		-0.737748, 0.622108, 0.262123,
		-0.614134, -0.779710, 0.122033,
		40.799557, 31.921078, 30.365789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216545, 33.186440, 30.367380>,  <41.229450, 32.466877, 30.280367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216545, 33.186440, 30.367380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571629, 33.369968, 30.382647>,  <41.784679, 33.480087, 30.391806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571629, 33.369968, 30.382647>,  <41.216545, 33.186440, 30.367380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571629, 33.369968, 30.382647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076592, 0.228907, -0.970430,
		-0.453992, 0.858535, 0.238345,
		0.887708, 0.458823, 0.038166,
		41.837940, 33.507614, 30.394096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972996, 33.736462, 29.980820>,  <41.216545, 33.186440, 30.367380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972996, 33.736462, 29.980820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370434, 33.775642, 30.003387>,  <41.608894, 33.799152, 30.016928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370434, 33.775642, 30.003387>,  <40.972996, 33.736462, 29.980820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370434, 33.775642, 30.003387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021773, 0.323909, -0.945838,
		-0.110921, 0.941004, 0.319700,
		0.993591, 0.097952, 0.056417,
		41.668510, 33.805027, 30.020313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188709, 34.447731, 29.873173>,  <40.972996, 33.736462, 29.980820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188709, 34.447731, 29.873173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495262, 34.205841, 29.786478>,  <41.679192, 34.060707, 29.734461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495262, 34.205841, 29.786478>,  <41.188709, 34.447731, 29.873173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495262, 34.205841, 29.786478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138982, 0.485486, -0.863127,
		0.627173, 0.631360, 0.456112,
		0.766380, -0.604721, -0.216736,
		41.725178, 34.024426, 29.721457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592270, 34.890659, 29.600498>,  <41.188709, 34.447731, 29.873173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592270, 34.890659, 29.600498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778629, 34.578106, 29.434423>,  <41.890446, 34.390575, 29.334778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778629, 34.578106, 29.434423>,  <41.592270, 34.890659, 29.600498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778629, 34.578106, 29.434423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126164, 0.405769, -0.905226,
		0.875797, 0.474126, 0.090465,
		0.465899, -0.781381, -0.415189,
		41.918400, 34.343693, 29.309866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215199, 35.087334, 29.048328>,  <41.592270, 34.890659, 29.600498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215199, 35.087334, 29.048328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066254, 34.723122, 28.976461>,  <41.976887, 34.504593, 28.933342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066254, 34.723122, 28.976461>,  <42.215199, 35.087334, 29.048328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066254, 34.723122, 28.976461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194462, 0.265835, -0.944202,
		0.907486, -0.316647, -0.276050,
		-0.372362, -0.910531, -0.179665,
		41.954544, 34.449963, 28.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499573, 34.977356, 28.476379>,  <42.215199, 35.087334, 29.048328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499573, 34.977356, 28.476379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.201263, 34.712296, 28.503860>,  <42.022278, 34.553261, 28.520350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.201263, 34.712296, 28.503860>,  <42.499573, 34.977356, 28.476379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201263, 34.712296, 28.503860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212689, 0.139098, -0.967169,
		0.631335, -0.735902, -0.244674,
		-0.745775, -0.662646, 0.068701,
		41.977531, 34.513500, 28.524471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554691, 34.398006, 27.949640>,  <42.499573, 34.977356, 28.476379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554691, 34.398006, 27.949640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.170826, 34.464203, 28.040548>,  <41.940506, 34.503922, 28.095093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.170826, 34.464203, 28.040548>,  <42.554691, 34.398006, 27.949640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170826, 34.464203, 28.040548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233638, -0.019834, -0.972121,
		-0.156371, -0.986012, 0.057700,
		-0.959667, 0.165492, 0.227268,
		41.882927, 34.513851, 28.108728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292412, 34.118511, 27.298977>,  <42.554691, 34.398006, 27.949640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292412, 34.118511, 27.298977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980816, 34.289593, 27.482389>,  <41.793858, 34.392242, 27.592436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980816, 34.289593, 27.482389>,  <42.292412, 34.118511, 27.298977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980816, 34.289593, 27.482389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305443, 0.379809, -0.873184,
		-0.547616, -0.820254, -0.165228,
		-0.778987, 0.427702, 0.458531,
		41.747120, 34.417904, 27.619949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785099, 33.839951, 26.982525>,  <42.292412, 34.118511, 27.298977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785099, 33.839951, 26.982525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.632515, 34.178715, 27.130707>,  <41.540966, 34.381973, 27.219616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.632515, 34.178715, 27.130707>,  <41.785099, 33.839951, 26.982525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632515, 34.178715, 27.130707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371988, 0.226240, -0.900245,
		-0.846237, -0.481208, 0.228740,
		-0.381455, 0.846909, 0.370456,
		41.518078, 34.432789, 27.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070068, 33.883770, 26.823631>,  <41.785099, 33.839951, 26.982525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070068, 33.883770, 26.823631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179691, 34.263020, 26.888073>,  <41.245464, 34.490570, 26.926739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179691, 34.263020, 26.888073>,  <41.070068, 33.883770, 26.823631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179691, 34.263020, 26.888073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347859, 0.253905, -0.902511,
		-0.896598, 0.191297, 0.399397,
		0.274057, 0.948123, 0.161106,
		41.261909, 34.547455, 26.936405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552223, 34.344536, 26.525131>,  <41.070068, 33.883770, 26.823631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552223, 34.344536, 26.525131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876892, 34.573078, 26.573692>,  <41.071693, 34.710205, 26.602829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876892, 34.573078, 26.573692>,  <40.552223, 34.344536, 26.525131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876892, 34.573078, 26.573692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173659, 0.434491, -0.883776,
		-0.557699, 0.696255, 0.451886,
		0.811674, 0.571355, 0.121404,
		41.120396, 34.744484, 26.610113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407307, 35.104038, 26.341269>,  <40.552223, 34.344536, 26.525131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407307, 35.104038, 26.341269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801620, 35.055042, 26.295277>,  <41.038208, 35.025642, 26.267681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801620, 35.055042, 26.295277>,  <40.407307, 35.104038, 26.341269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801620, 35.055042, 26.295277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040285, 0.492067, -0.869625,
		0.163101, 0.861896, 0.480138,
		0.985787, -0.122494, -0.114978,
		41.097355, 35.018295, 26.260784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680428, 35.843761, 26.121660>,  <40.407307, 35.104038, 26.341269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680428, 35.843761, 26.121660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972286, 35.593765, 26.010662>,  <41.147400, 35.443768, 25.944063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972286, 35.593765, 26.010662>,  <40.680428, 35.843761, 26.121660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972286, 35.593765, 26.010662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017675, 0.422899, -0.906004,
		0.683597, 0.656157, 0.319614,
		0.729645, -0.624991, -0.277495,
		41.191181, 35.406269, 25.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111858, 36.245884, 25.747417>,  <40.680428, 35.843761, 26.121660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111858, 36.245884, 25.747417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190685, 35.874016, 25.622915>,  <41.237984, 35.650894, 25.548214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190685, 35.874016, 25.622915>,  <41.111858, 36.245884, 25.747417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190685, 35.874016, 25.622915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030944, 0.323223, -0.945817,
		0.979901, 0.176761, 0.092465,
		0.197070, -0.929668, -0.311257,
		41.249805, 35.595116, 25.529537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551018, 36.898514, 25.894321>,  <41.111858, 36.245884, 25.747417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551018, 36.898514, 25.894321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442997, 37.283615, 25.899727>,  <41.378185, 37.514675, 25.902969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442997, 37.283615, 25.899727>,  <41.551018, 36.898514, 25.894321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442997, 37.283615, 25.899727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388589, 0.096137, 0.916382,
		0.880949, 0.252723, -0.400076,
		-0.270053, 0.962751, 0.013513,
		41.361980, 37.572441, 25.903780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116997, 37.271046, 26.042095>,  <41.551018, 36.898514, 25.894321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116997, 37.271046, 26.042095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814503, 37.515709, 26.135033>,  <41.633007, 37.662506, 26.190796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.814503, 37.515709, 26.135033>,  <42.116997, 37.271046, 26.042095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814503, 37.515709, 26.135033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469258, 0.259560, 0.844053,
		0.455961, 0.747334, -0.483312,
		-0.756238, 0.611654, 0.232344,
		41.587631, 37.699203, 26.204735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408585, 37.965736, 26.362354>,  <42.116997, 37.271046, 26.042095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408585, 37.965736, 26.362354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.032070, 37.911037, 26.485825>,  <41.806160, 37.878216, 26.559906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.032070, 37.911037, 26.485825>,  <42.408585, 37.965736, 26.362354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032070, 37.911037, 26.485825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293007, 0.123295, 0.948127,
		-0.167715, 0.982903, -0.075987,
		-0.941286, -0.136751, 0.308676,
		41.749683, 37.870010, 26.578428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459293, 38.453033, 26.829388>,  <42.408585, 37.965736, 26.362354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459293, 38.453033, 26.829388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.141502, 38.228859, 26.922955>,  <41.950829, 38.094353, 26.979095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.141502, 38.228859, 26.922955>,  <42.459293, 38.453033, 26.829388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141502, 38.228859, 26.922955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231829, 0.076129, 0.969773,
		-0.561305, 0.824691, 0.069443,
		-0.794476, -0.560437, 0.233919,
		41.903160, 38.060726, 26.993130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191643, 38.841572, 27.371120>,  <42.459293, 38.453033, 26.829388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191643, 38.841572, 27.371120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.017075, 38.482479, 27.395180>,  <41.912334, 38.267025, 27.409615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.017075, 38.482479, 27.395180>,  <42.191643, 38.841572, 27.371120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017075, 38.482479, 27.395180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258341, -0.060991, 0.964127,
		-0.861859, 0.436299, 0.258538,
		-0.436416, -0.897732, 0.060149,
		41.886150, 38.213158, 27.413225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835697, 38.882862, 27.991871>,  <42.191643, 38.841572, 27.371120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835697, 38.882862, 27.991871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.847706, 38.487392, 27.933050>,  <41.854912, 38.250111, 27.897758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.847706, 38.487392, 27.933050>,  <41.835697, 38.882862, 27.991871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847706, 38.487392, 27.933050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123690, -0.142313, 0.982063,
		-0.991867, -0.047669, 0.118017,
		0.030019, -0.988673, -0.147052,
		41.856712, 38.190792, 27.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350533, 38.511692, 28.439882>,  <41.835697, 38.882862, 27.991871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350533, 38.511692, 28.439882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.613277, 38.225811, 28.343769>,  <41.770924, 38.054283, 28.286100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.613277, 38.225811, 28.343769>,  <41.350533, 38.511692, 28.439882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613277, 38.225811, 28.343769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163277, -0.176291, 0.970702,
		-0.736124, -0.676847, 0.000896,
		0.656858, -0.714703, -0.240285,
		41.810333, 38.011398, 28.271683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203659, 37.839180, 28.791851>,  <41.350533, 38.511692, 28.439882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203659, 37.839180, 28.791851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.587505, 37.787918, 28.691687>,  <41.817814, 37.757160, 28.631588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.587505, 37.787918, 28.691687>,  <41.203659, 37.839180, 28.791851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587505, 37.787918, 28.691687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182693, -0.392976, 0.901217,
		-0.213898, -0.910575, -0.353695,
		0.959620, -0.128151, -0.250413,
		41.875393, 37.749474, 28.616562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330082, 37.253796, 29.118170>,  <41.203659, 37.839180, 28.791851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330082, 37.253796, 29.118170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678604, 37.434078, 29.040514>,  <41.887718, 37.542248, 28.993921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.678604, 37.434078, 29.040514>,  <41.330082, 37.253796, 29.118170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678604, 37.434078, 29.040514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358639, -0.314791, 0.878797,
		0.334965, -0.835328, -0.435920,
		0.871307, 0.450704, -0.194137,
		41.939995, 37.569290, 28.982273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873138, 36.734097, 29.141947>,  <41.330082, 37.253796, 29.118170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873138, 36.734097, 29.141947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059032, 37.084900, 29.190748>,  <42.170570, 37.295380, 29.220028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059032, 37.084900, 29.190748>,  <41.873138, 36.734097, 29.141947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059032, 37.084900, 29.190748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359406, -0.312763, 0.879208,
		0.809227, -0.364751, -0.460553,
		0.464736, 0.877004, 0.122002,
		42.198452, 37.348000, 29.227348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548897, 36.558395, 29.238699>,  <41.873138, 36.734097, 29.141947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548897, 36.558395, 29.238699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.477058, 36.918262, 29.397863>,  <42.433956, 37.134186, 29.493362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.477058, 36.918262, 29.397863>,  <42.548897, 36.558395, 29.238699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477058, 36.918262, 29.397863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178042, -0.368082, 0.912588,
		0.967494, 0.234744, -0.094073,
		-0.179598, 0.899672, 0.397912,
		42.423180, 37.188164, 29.517237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919415, 36.481934, 29.921429>,  <42.548897, 36.558395, 29.238699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919415, 36.481934, 29.921429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697262, 36.811752, 29.964640>,  <42.563969, 37.009644, 29.990566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.697262, 36.811752, 29.964640>,  <42.919415, 36.481934, 29.921429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697262, 36.811752, 29.964640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066254, -0.173366, 0.982626,
		0.828950, 0.538577, 0.150915,
		-0.555384, 0.824547, 0.108029,
		42.530647, 37.059116, 29.997047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289009, 36.956226, 30.419085>,  <42.919415, 36.481934, 29.921429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289009, 36.956226, 30.419085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.902233, 37.058170, 30.422676>,  <42.670170, 37.119335, 30.424831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.902233, 37.058170, 30.422676>,  <43.289009, 36.956226, 30.419085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902233, 37.058170, 30.422676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044057, -0.201626, 0.978471,
		0.251181, 0.945724, 0.206188,
		-0.966937, 0.254858, 0.008979,
		42.612152, 37.134628, 30.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134151, 37.485226, 30.984234>,  <43.289009, 36.956226, 30.419085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134151, 37.485226, 30.984234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.804382, 37.275177, 30.899784>,  <42.606522, 37.149147, 30.849115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.804382, 37.275177, 30.899784>,  <43.134151, 37.485226, 30.984234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804382, 37.275177, 30.899784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110016, -0.217223, 0.969902,
		-0.555180, 0.822836, 0.121312,
		-0.824422, -0.525124, -0.211123,
		42.557056, 37.117641, 30.836447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.130886, 40.118317, 27.140455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097218, 39.758007, 26.970036>,  <38.077015, 39.541821, 26.867783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097218, 39.758007, 26.970036>,  <38.130886, 40.118317, 27.140455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097218, 39.758007, 26.970036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069020, 0.431812, -0.899319,
		0.994058, -0.046294, -0.098519,
		-0.084175, -0.900774, -0.426051,
		38.071964, 39.487774, 26.842220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716949, 40.098583, 26.571524>,  <38.130886, 40.118317, 27.140455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716949, 40.098583, 26.571524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.426044, 39.837936, 26.485285>,  <38.251503, 39.681549, 26.433542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.426044, 39.837936, 26.485285>,  <38.716949, 40.098583, 26.571524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426044, 39.837936, 26.485285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058192, 0.371523, -0.926598,
		0.683888, -0.661335, -0.308114,
		-0.727263, -0.651619, -0.215596,
		38.207867, 39.642452, 26.420607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999100, 39.736004, 26.046947>,  <38.716949, 40.098583, 26.571524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999100, 39.736004, 26.046947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605572, 39.665775, 26.032677>,  <38.369453, 39.623638, 26.024115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605572, 39.665775, 26.032677>,  <38.999100, 39.736004, 26.046947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605572, 39.665775, 26.032677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018160, 0.295815, -0.955073,
		0.178238, -0.938971, -0.294217,
		-0.983820, -0.175573, -0.035674,
		38.310425, 39.613102, 26.021975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845753, 39.580818, 25.371666>,  <38.999100, 39.736004, 26.046947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845753, 39.580818, 25.371666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468216, 39.651608, 25.483263>,  <38.241692, 39.694080, 25.550220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468216, 39.651608, 25.483263>,  <38.845753, 39.580818, 25.371666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468216, 39.651608, 25.483263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235014, 0.233890, -0.943432,
		-0.232213, -0.956021, -0.179166,
		-0.943846, 0.176971, 0.278991,
		38.185062, 39.704697, 25.566959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403374, 39.162964, 24.944862>,  <38.845753, 39.580818, 25.371666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403374, 39.162964, 24.944862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161552, 39.457211, 25.067097>,  <38.016460, 39.633759, 25.140436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161552, 39.457211, 25.067097>,  <38.403374, 39.162964, 24.944862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161552, 39.457211, 25.067097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182445, 0.245558, -0.952058,
		-0.775393, -0.631319, -0.014242,
		-0.604549, 0.735621, 0.305585,
		37.980186, 39.677898, 25.158772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885540, 39.129501, 24.496477>,  <38.403374, 39.162964, 24.944862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885540, 39.129501, 24.496477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835369, 39.494514, 24.652193>,  <37.805267, 39.713524, 24.745623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835369, 39.494514, 24.652193>,  <37.885540, 39.129501, 24.496477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835369, 39.494514, 24.652193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339847, 0.329128, -0.881010,
		-0.932079, -0.242805, 0.268840,
		-0.125431, 0.912535, 0.389290,
		37.797741, 39.768276, 24.768980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278423, 39.292225, 24.158710>,  <37.885540, 39.129501, 24.496477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278423, 39.292225, 24.158710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410557, 39.630470, 24.326437>,  <37.489838, 39.833416, 24.427073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410557, 39.630470, 24.326437>,  <37.278423, 39.292225, 24.158710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410557, 39.630470, 24.326437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046418, 0.458269, -0.887601,
		-0.942723, 0.273737, 0.190631,
		0.330330, 0.845611, 0.419315,
		37.509655, 39.884155, 24.452232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794331, 39.871971, 24.016304>,  <37.278423, 39.292225, 24.158710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794331, 39.871971, 24.016304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 40.049210, 24.099718>,  <37.352333, 40.155552, 24.149767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 40.049210, 24.099718>,  <36.794331, 39.871971, 24.016304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143082, 40.049210, 24.099718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135263, 0.627160, -0.767056,
		-0.470665, 0.640575, 0.606744,
		0.871882, 0.443096, 0.208536,
		37.404648, 40.182137, 24.162279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757080, 40.554562, 23.859287>,  <36.794331, 39.871971, 24.016304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757080, 40.554562, 23.859287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 40.501900, 23.875690>,  <37.390968, 40.470303, 23.885532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153259, 40.501900, 23.875690>,  <36.757080, 40.554562, 23.859287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153259, 40.501900, 23.875690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095370, 0.439239, -0.893294,
		0.099590, 0.888672, 0.447599,
		0.990448, -0.131651, 0.041009,
		37.450394, 40.462406, 23.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114201, 41.234165, 23.734823>,  <36.757080, 40.554562, 23.859287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114201, 41.234165, 23.734823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382305, 40.957027, 23.628452>,  <37.543167, 40.790745, 23.564631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382305, 40.957027, 23.628452>,  <37.114201, 41.234165, 23.734823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382305, 40.957027, 23.628452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164715, 0.488281, -0.857001,
		0.723615, 0.530613, 0.441397,
		0.670262, -0.692843, -0.265927,
		37.583385, 40.749176, 23.548674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610481, 41.645164, 23.393520>,  <37.114201, 41.234165, 23.734823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610481, 41.645164, 23.393520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653294, 41.263786, 23.280752>,  <37.678982, 41.034958, 23.213091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653294, 41.263786, 23.280752>,  <37.610481, 41.645164, 23.393520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653294, 41.263786, 23.280752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093654, 0.291955, -0.951836,
		0.989835, 0.075477, 0.120543,
		0.107035, -0.953449, -0.281918,
		37.685406, 40.977753, 23.196177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194885, 41.691257, 22.963293>,  <37.610481, 41.645164, 23.393520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194885, 41.691257, 22.963293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986561, 41.356670, 22.895084>,  <37.861565, 41.155918, 22.854158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986561, 41.356670, 22.895084>,  <38.194885, 41.691257, 22.963293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986561, 41.356670, 22.895084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186605, 0.083372, -0.978891,
		0.833026, -0.541640, 0.112668,
		-0.520813, -0.836466, -0.170524,
		37.830318, 41.105732, 22.843927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600601, 41.068398, 22.681274>,  <38.194885, 41.691257, 22.963293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600601, 41.068398, 22.681274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219875, 41.093914, 22.561285>,  <37.991440, 41.109222, 22.489292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219875, 41.093914, 22.561285>,  <38.600601, 41.068398, 22.681274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219875, 41.093914, 22.561285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301882, 0.022562, -0.953078,
		-0.054029, -0.997708, -0.040732,
		-0.951813, 0.063790, -0.299971,
		37.934330, 41.113052, 22.471294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521458, 40.729301, 22.058844>,  <38.600601, 41.068398, 22.681274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521458, 40.729301, 22.058844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211525, 40.981674, 22.074650>,  <38.025566, 41.133099, 22.084133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211525, 40.981674, 22.074650>,  <38.521458, 40.729301, 22.058844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211525, 40.981674, 22.074650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111332, 0.197716, -0.973917,
		-0.622291, -0.750219, -0.223439,
		-0.774828, 0.630936, 0.039513,
		37.979076, 41.170956, 22.086504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697453, 39.923168, 22.040100>,  <38.521458, 40.729301, 22.058844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697453, 39.923168, 22.040100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980820, 39.893696, 21.759325>,  <39.150841, 39.876015, 21.590860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980820, 39.893696, 21.759325>,  <38.697453, 39.923168, 22.040100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980820, 39.893696, 21.759325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589103, -0.486023, 0.645554,
		-0.388719, -0.870835, -0.300905,
		0.708417, -0.073675, -0.701938,
		39.193344, 39.871593, 21.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816082, 39.154926, 21.886160>,  <38.697453, 39.923168, 22.040100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816082, 39.154926, 21.886160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141579, 39.364059, 21.784599>,  <39.336876, 39.489540, 21.723663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141579, 39.364059, 21.784599>,  <38.816082, 39.154926, 21.886160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141579, 39.364059, 21.784599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557476, -0.578509, 0.595439,
		0.164431, -0.626079, -0.762225,
		0.813746, 0.522831, -0.253899,
		39.385704, 39.520908, 21.708429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408527, 38.713852, 21.988094>,  <38.816082, 39.154926, 21.886160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408527, 38.713852, 21.988094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.593796, 39.067917, 21.970362>,  <39.704956, 39.280354, 21.959723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.593796, 39.067917, 21.970362>,  <39.408527, 38.713852, 21.988094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593796, 39.067917, 21.970362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690873, -0.329271, 0.643642,
		0.555129, -0.328744, -0.764042,
		0.463170, 0.885160, -0.044332,
		39.732746, 39.333466, 21.957062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102043, 38.519764, 22.022806>,  <39.408527, 38.713852, 21.988094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102043, 38.519764, 22.022806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081509, 38.902996, 22.135555>,  <40.069187, 39.132935, 22.203205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081509, 38.902996, 22.135555>,  <40.102043, 38.519764, 22.022806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081509, 38.902996, 22.135555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590822, -0.198419, 0.782023,
		0.805167, 0.206681, -0.555867,
		-0.051335, 0.958078, 0.281872,
		40.066109, 39.190418, 22.220118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779015, 38.775303, 21.953522>,  <40.102043, 38.519764, 22.022806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779015, 38.775303, 21.953522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573658, 38.991982, 22.219751>,  <40.450443, 39.121990, 22.379490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573658, 38.991982, 22.219751>,  <40.779015, 38.775303, 21.953522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573658, 38.991982, 22.219751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721625, -0.147222, 0.676448,
		0.464419, 0.827580, -0.315321,
		-0.513393, 0.541699, 0.665575,
		40.419640, 39.154491, 22.419424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288269, 39.068462, 22.243374>,  <40.779015, 38.775303, 21.953522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288269, 39.068462, 22.243374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.986740, 39.128174, 22.499331>,  <40.805820, 39.164001, 22.652905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.986740, 39.128174, 22.499331>,  <41.288269, 39.068462, 22.243374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986740, 39.128174, 22.499331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615486, -0.180535, 0.767193,
		0.230049, 0.972174, 0.044212,
		-0.753827, 0.149280, 0.639891,
		40.760593, 39.172958, 22.691298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571396, 39.479092, 22.832361>,  <41.288269, 39.068462, 22.243374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571396, 39.479092, 22.832361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239075, 39.297909, 22.961723>,  <41.039680, 39.189198, 23.039341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.239075, 39.297909, 22.961723>,  <41.571396, 39.479092, 22.832361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239075, 39.297909, 22.961723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466250, -0.249115, 0.848854,
		-0.303931, 0.856019, 0.418158,
		-0.830805, -0.452959, 0.323405,
		40.989834, 39.162022, 23.058744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580063, 39.663303, 23.597269>,  <41.571396, 39.479092, 22.832361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580063, 39.663303, 23.597269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310886, 39.368958, 23.567173>,  <41.149380, 39.192352, 23.549116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310886, 39.368958, 23.567173>,  <41.580063, 39.663303, 23.597269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310886, 39.368958, 23.567173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258196, -0.328995, 0.908349,
		-0.693171, 0.591838, 0.411390,
		-0.672940, -0.735860, -0.075239,
		41.109005, 39.148201, 23.544601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133476, 39.615696, 24.203508>,  <41.580063, 39.663303, 23.597269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133476, 39.615696, 24.203508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130325, 39.254963, 24.030706>,  <41.128433, 39.038521, 23.927025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130325, 39.254963, 24.030706>,  <41.133476, 39.615696, 24.203508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130325, 39.254963, 24.030706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108887, -0.430225, 0.896131,
		-0.994023, -0.039977, 0.101589,
		-0.007881, -0.901836, -0.432007,
		41.127960, 38.984413, 23.901104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750362, 39.305271, 24.707752>,  <41.133476, 39.615696, 24.203508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750362, 39.305271, 24.707752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891693, 39.011997, 24.475336>,  <40.976490, 38.836033, 24.335886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891693, 39.011997, 24.475336>,  <40.750362, 39.305271, 24.707752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891693, 39.011997, 24.475336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194897, -0.549782, 0.812253,
		-0.914973, -0.400233, -0.051357,
		0.353326, -0.733181, -0.581040,
		40.997692, 38.792042, 24.301023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291237, 38.742840, 24.676727>,  <40.750362, 39.305271, 24.707752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291237, 38.742840, 24.676727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667629, 38.621716, 24.616241>,  <40.893463, 38.549042, 24.579950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667629, 38.621716, 24.616241>,  <40.291237, 38.742840, 24.676727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667629, 38.621716, 24.616241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028053, -0.514999, 0.856731,
		-0.337302, -0.801924, -0.493098,
		0.940978, -0.302810, -0.151214,
		40.949924, 38.530872, 24.570877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308582, 38.128368, 25.023125>,  <40.291237, 38.742840, 24.676727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308582, 38.128368, 25.023125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702034, 38.178314, 24.971140>,  <40.938103, 38.208282, 24.939949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702034, 38.178314, 24.971140>,  <40.308582, 38.128368, 25.023125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702034, 38.178314, 24.971140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176111, -0.512693, 0.840316,
		0.038299, -0.849443, -0.526289,
		0.983625, 0.124868, -0.129961,
		40.997120, 38.215775, 24.932152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501286, 37.481323, 25.062410>,  <40.308582, 38.128368, 25.023125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501286, 37.481323, 25.062410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.837372, 37.691322, 25.116688>,  <41.039024, 37.817322, 25.149254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.837372, 37.691322, 25.116688>,  <40.501286, 37.481323, 25.062410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837372, 37.691322, 25.116688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120566, -0.424852, 0.897198,
		0.528680, -0.737479, -0.420265,
		0.840215, 0.525000, 0.135696,
		41.089436, 37.848824, 25.157396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889412, 36.984837, 25.400223>,  <40.501286, 37.481323, 25.062410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889412, 36.984837, 25.400223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045372, 37.348431, 25.459179>,  <41.138947, 37.566586, 25.494553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045372, 37.348431, 25.459179>,  <40.889412, 36.984837, 25.400223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045372, 37.348431, 25.459179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347987, -0.293632, 0.890329,
		0.852575, -0.295849, -0.430802,
		0.389900, 0.908985, 0.147392,
		41.162342, 37.621124, 25.503397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339684, 36.424618, 25.083012>,  <40.889412, 36.984837, 25.400223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339684, 36.424618, 25.083012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.320400, 36.025795, 25.059139>,  <41.308830, 35.786503, 25.044817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.320400, 36.025795, 25.059139>,  <41.339684, 36.424618, 25.083012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320400, 36.025795, 25.059139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159542, 0.066667, -0.984938,
		0.986013, -0.037958, -0.162286,
		-0.048206, -0.997053, -0.059679,
		41.305939, 35.726681, 25.041235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729450, 36.226521, 24.456573>,  <41.339684, 36.424618, 25.083012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729450, 36.226521, 24.456573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.504795, 35.905411, 24.536682>,  <41.370003, 35.712746, 24.584747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.504795, 35.905411, 24.536682>,  <41.729450, 36.226521, 24.456573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504795, 35.905411, 24.536682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173449, -0.122436, -0.977203,
		0.808996, -0.583575, -0.070476,
		-0.561642, -0.802777, 0.200271,
		41.336304, 35.664577, 24.596764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010025, 35.741463, 23.937563>,  <41.729450, 36.226521, 24.456573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010025, 35.741463, 23.937563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645744, 35.640499, 24.068350>,  <41.427174, 35.579922, 24.146822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.645744, 35.640499, 24.068350>,  <42.010025, 35.741463, 23.937563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645744, 35.640499, 24.068350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334949, -0.011942, -0.942161,
		0.241713, -0.967547, -0.073668,
		-0.910706, -0.252407, 0.326965,
		41.372532, 35.564777, 24.166439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864098, 35.146488, 23.619663>,  <42.010025, 35.741463, 23.937563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864098, 35.146488, 23.619663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502560, 35.294605, 23.705406>,  <41.285637, 35.383476, 23.756853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.502560, 35.294605, 23.705406>,  <41.864098, 35.146488, 23.619663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502560, 35.294605, 23.705406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299905, -0.190974, -0.934658,
		-0.305157, -0.909073, 0.283663,
		-0.903845, 0.370290, 0.214359,
		41.231407, 35.405693, 23.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395351, 34.763657, 23.326735>,  <41.864098, 35.146488, 23.619663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395351, 34.763657, 23.326735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175892, 35.091610, 23.392193>,  <41.044216, 35.288380, 23.431467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175892, 35.091610, 23.392193>,  <41.395351, 34.763657, 23.326735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175892, 35.091610, 23.392193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405744, -0.089975, -0.909547,
		-0.730994, -0.565423, 0.382027,
		-0.548652, 0.819879, 0.163646,
		41.011295, 35.337574, 23.441286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705528, 34.735703, 22.969528>,  <41.395351, 34.763657, 23.326735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705528, 34.735703, 22.969528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.728973, 35.130276, 23.030855>,  <40.743042, 35.367020, 23.067652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.728973, 35.130276, 23.030855>,  <40.705528, 34.735703, 22.969528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728973, 35.130276, 23.030855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341284, 0.164129, -0.925520,
		-0.938131, 0.001924, 0.346275,
		0.058614, 0.986437, 0.153317,
		40.746559, 35.426208, 23.076851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063324, 34.959221, 22.778437>,  <40.705528, 34.735703, 22.969528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063324, 34.959221, 22.778437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314831, 35.269672, 22.759352>,  <40.465733, 35.455944, 22.747900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314831, 35.269672, 22.759352>,  <40.063324, 34.959221, 22.778437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314831, 35.269672, 22.759352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419409, 0.286825, -0.861294,
		-0.654791, 0.561563, 0.505861,
		0.628765, 0.776130, -0.047714,
		40.503460, 35.502510, 22.745037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513519, 34.527454, 23.036942>,  <40.063324, 34.959221, 22.778437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513519, 34.527454, 23.036942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392952, 34.159096, 22.938068>,  <39.320614, 33.938080, 22.878744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.392952, 34.159096, 22.938068>,  <39.513519, 34.527454, 23.036942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392952, 34.159096, 22.938068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323272, -0.342584, 0.882118,
		-0.897019, 0.185977, 0.400960,
		-0.301416, -0.920895, -0.247183,
		39.302528, 33.882828, 22.863913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953388, 34.275543, 23.561146>,  <39.513519, 34.527454, 23.036942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953388, 34.275543, 23.561146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110832, 33.943981, 23.402157>,  <39.205299, 33.745045, 23.306763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110832, 33.943981, 23.402157>,  <38.953388, 34.275543, 23.561146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110832, 33.943981, 23.402157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182582, -0.353269, 0.917532,
		-0.900961, -0.433725, 0.012291,
		0.393615, -0.828905, -0.397472,
		39.228916, 33.695309, 23.282915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448753, 33.661221, 23.732031>,  <38.953388, 34.275543, 23.561146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448753, 33.661221, 23.732031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822430, 33.538017, 23.660000>,  <39.046635, 33.464096, 23.616781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822430, 33.538017, 23.660000>,  <38.448753, 33.661221, 23.732031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822430, 33.538017, 23.660000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042411, -0.597010, 0.801112,
		-0.354256, -0.740751, -0.570782,
		0.934187, -0.308006, -0.180078,
		39.102684, 33.445614, 23.605976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505127, 33.019791, 24.131081>,  <38.448753, 33.661221, 23.732031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505127, 33.019791, 24.131081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887608, 33.059105, 24.020788>,  <39.117096, 33.082691, 23.954613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887608, 33.059105, 24.020788>,  <38.505127, 33.019791, 24.131081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887608, 33.059105, 24.020788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281338, -0.568716, 0.772924,
		-0.080847, -0.816641, -0.571455,
		0.956197, 0.098284, -0.275731,
		39.174465, 33.088589, 23.938068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798290, 32.400337, 24.211668>,  <38.505127, 33.019791, 24.131081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798290, 32.400337, 24.211668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086834, 32.675644, 24.242445>,  <39.259960, 32.840828, 24.260912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086834, 32.675644, 24.242445>,  <38.798290, 32.400337, 24.211668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086834, 32.675644, 24.242445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257806, -0.369984, 0.892551,
		0.642784, -0.624017, -0.444333,
		0.721364, 0.688269, 0.076944,
		39.303242, 32.882126, 24.265528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288456, 32.017460, 24.451103>,  <38.798290, 32.400337, 24.211668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288456, 32.017460, 24.451103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414822, 32.387192, 24.536711>,  <39.490643, 32.609032, 24.588076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414822, 32.387192, 24.536711>,  <39.288456, 32.017460, 24.451103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414822, 32.387192, 24.536711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313052, -0.314488, 0.896156,
		0.895653, -0.216114, -0.388716,
		0.315918, 0.924333, 0.214017,
		39.509598, 32.664494, 24.600916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937561, 31.807875, 24.775856>,  <39.288456, 32.017460, 24.451103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937561, 31.807875, 24.775856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842720, 32.184483, 24.871620>,  <39.785816, 32.410446, 24.929079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842720, 32.184483, 24.871620>,  <39.937561, 31.807875, 24.775856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842720, 32.184483, 24.871620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307551, -0.161018, 0.937809,
		0.921517, 0.295990, -0.251388,
		-0.237104, 0.941522, 0.239413,
		39.771587, 32.466938, 24.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.159500, 38.408203, 21.939394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419205, 38.640564, 22.135763>,  <36.575027, 38.779980, 22.253586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419205, 38.640564, 22.135763>,  <36.159500, 38.408203, 21.939394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419205, 38.640564, 22.135763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066278, -0.599806, 0.797396,
		0.757669, -0.550259, -0.350932,
		0.649265, 0.580903, 0.490924,
		36.613983, 38.814835, 22.283041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691460, 37.908451, 22.215347>,  <36.159500, 38.408203, 21.939394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691460, 37.908451, 22.215347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709694, 38.249218, 22.424025>,  <36.720634, 38.453678, 22.549231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709694, 38.249218, 22.424025>,  <36.691460, 37.908451, 22.215347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709694, 38.249218, 22.424025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190922, -0.520037, 0.832533,
		0.980546, 0.061652, -0.186354,
		0.045584, 0.851916, 0.521691,
		36.723370, 38.504791, 22.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307278, 37.836662, 22.661983>,  <36.691460, 37.908451, 22.215347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307278, 37.836662, 22.661983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070965, 38.120361, 22.815840>,  <36.929176, 38.290581, 22.908154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070965, 38.120361, 22.815840>,  <37.307278, 37.836662, 22.661983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070965, 38.120361, 22.815840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098931, -0.409455, 0.906951,
		0.800744, 0.573862, 0.171732,
		-0.590781, 0.709245, 0.384641,
		36.893730, 38.333134, 22.931232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631958, 38.113373, 23.295858>,  <37.307278, 37.836662, 22.661983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631958, 38.113373, 23.295858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239044, 38.183834, 23.321402>,  <37.003296, 38.226112, 23.336727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239044, 38.183834, 23.321402>,  <37.631958, 38.113373, 23.295858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239044, 38.183834, 23.321402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023892, -0.455769, 0.889777,
		0.185843, 0.872493, 0.451905,
		-0.982289, 0.176156, 0.063856,
		36.944359, 38.236679, 23.340559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487892, 38.520309, 23.963375>,  <37.631958, 38.113373, 23.295858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487892, 38.520309, 23.963375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147327, 38.329613, 23.875908>,  <36.942989, 38.215195, 23.823427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147327, 38.329613, 23.875908>,  <37.487892, 38.520309, 23.963375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147327, 38.329613, 23.875908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020702, -0.447126, 0.894231,
		-0.524090, 0.756832, 0.390558,
		-0.851411, -0.476743, -0.218666,
		36.891903, 38.186588, 23.810308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084797, 38.470013, 24.567425>,  <37.487892, 38.520309, 23.963375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084797, 38.470013, 24.567425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906933, 38.185917, 24.349127>,  <36.800213, 38.015461, 24.218147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906933, 38.185917, 24.349127>,  <37.084797, 38.470013, 24.567425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906933, 38.185917, 24.349127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082911, -0.574044, 0.814616,
		-0.891853, 0.407477, 0.196369,
		-0.444662, -0.710237, -0.545747,
		36.773533, 37.972847, 24.185402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470676, 38.307152, 24.901621>,  <37.084797, 38.470013, 24.567425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470676, 38.307152, 24.901621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542042, 37.972862, 24.693876>,  <36.584862, 37.772289, 24.569229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542042, 37.972862, 24.693876>,  <36.470676, 38.307152, 24.901621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542042, 37.972862, 24.693876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035122, -0.522086, 0.852170,
		-0.983328, -0.170282, -0.063797,
		0.178416, -0.835722, -0.519362,
		36.595566, 37.722145, 24.538067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077579, 37.837574, 25.247229>,  <36.470676, 38.307152, 24.901621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077579, 37.837574, 25.247229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.300934, 37.598686, 25.016912>,  <36.434948, 37.455353, 24.878723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.300934, 37.598686, 25.016912>,  <36.077579, 37.837574, 25.247229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300934, 37.598686, 25.016912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080128, -0.652004, 0.753970,
		-0.825701, -0.467145, -0.316217,
		0.558388, -0.597216, -0.575791,
		36.468449, 37.419521, 24.844175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712856, 37.276623, 25.258223>,  <36.077579, 37.837574, 25.247229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712856, 37.276623, 25.258223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.076752, 37.160084, 25.139906>,  <36.295090, 37.090160, 25.068916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.076752, 37.160084, 25.139906>,  <35.712856, 37.276623, 25.258223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076752, 37.160084, 25.139906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005568, -0.720938, 0.692977,
		-0.415142, -0.628782, -0.657488,
		0.909739, -0.291344, -0.295790,
		36.349674, 37.072681, 25.051168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633751, 36.614216, 25.264048>,  <35.712856, 37.276623, 25.258223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633751, 36.614216, 25.264048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026016, 36.683678, 25.300156>,  <36.261375, 36.725353, 25.321821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026016, 36.683678, 25.300156>,  <35.633751, 36.614216, 25.264048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026016, 36.683678, 25.300156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013158, -0.518684, 0.854865,
		0.195275, -0.837144, -0.510937,
		0.980660, 0.173656, 0.090271,
		36.320213, 36.735775, 25.327236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930538, 36.017982, 25.554924>,  <35.633751, 36.614216, 25.264048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930538, 36.017982, 25.554924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220398, 36.283348, 25.629498>,  <36.394314, 36.442570, 25.674242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.220398, 36.283348, 25.629498>,  <35.930538, 36.017982, 25.554924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220398, 36.283348, 25.629498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196372, -0.458119, 0.866929,
		0.660545, -0.591610, -0.462253,
		0.724651, 0.663419, 0.186432,
		36.437794, 36.482372, 25.685427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591011, 35.787678, 25.583511>,  <35.930538, 36.017982, 25.554924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591011, 35.787678, 25.583511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569263, 36.108929, 25.820841>,  <36.556213, 36.301678, 25.963238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569263, 36.108929, 25.820841>,  <36.591011, 35.787678, 25.583511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569263, 36.108929, 25.820841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189763, -0.575061, 0.795798,
		0.980323, 0.155859, -0.121138,
		-0.054371, 0.803127, 0.593322,
		36.552952, 36.349865, 25.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020298, 35.213017, 25.482569>,  <36.591011, 35.787678, 25.583511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020298, 35.213017, 25.482569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872040, 34.859184, 25.369328>,  <36.783085, 34.646885, 25.301382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872040, 34.859184, 25.369328>,  <37.020298, 35.213017, 25.482569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872040, 34.859184, 25.369328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105880, 0.343068, -0.933324,
		0.922721, -0.315954, -0.220814,
		-0.370642, -0.884578, -0.283103,
		36.760849, 34.593811, 25.284397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089565, 35.209324, 24.825798>,  <37.020298, 35.213017, 25.482569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089565, 35.209324, 24.825798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845562, 34.892384, 24.829248>,  <36.699162, 34.702221, 24.831320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.845562, 34.892384, 24.829248>,  <37.089565, 35.209324, 24.825798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845562, 34.892384, 24.829248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142072, 0.098653, -0.984928,
		0.779555, -0.602040, -0.172749,
		-0.610008, -0.792349, 0.008628,
		36.662560, 34.654678, 24.831837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402401, 34.757168, 24.316454>,  <37.089565, 35.209324, 24.825798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402401, 34.757168, 24.316454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009521, 34.702671, 24.368170>,  <36.773792, 34.669975, 24.399199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009521, 34.702671, 24.368170>,  <37.402401, 34.757168, 24.316454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009521, 34.702671, 24.368170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145726, 0.118494, -0.982203,
		0.118494, -0.983564, -0.136239,
		0.982203, 0.136239, -0.129290,
		36.714859, 34.661800, 24.406956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216499, 34.317318, 23.774216>,  <37.402401, 34.757168, 24.316454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216499, 34.317318, 23.774216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877785, 34.490738, 23.897493>,  <36.674557, 34.594788, 23.971460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877785, 34.490738, 23.897493>,  <37.216499, 34.317318, 23.774216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877785, 34.490738, 23.897493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297079, 0.095147, -0.950101,
		-0.441237, -0.896094, 0.048228,
		-0.846791, 0.433547, 0.308193,
		36.623749, 34.620804, 23.989952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793152, 34.013084, 23.309090>,  <37.216499, 34.317318, 23.774216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793152, 34.013084, 23.309090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.550247, 34.277603, 23.485233>,  <36.404503, 34.436314, 23.590919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.550247, 34.277603, 23.485233>,  <36.793152, 34.013084, 23.309090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550247, 34.277603, 23.485233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493491, 0.120419, -0.861374,
		-0.622652, -0.740395, 0.253218,
		-0.607266, 0.661297, 0.440358,
		36.368069, 34.475994, 23.617340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004177, 33.805267, 23.337551>,  <36.793152, 34.013084, 23.309090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004177, 33.805267, 23.337551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079937, 34.197910, 23.347143>,  <36.125393, 34.433495, 23.352898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.079937, 34.197910, 23.347143>,  <36.004177, 33.805267, 23.337551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079937, 34.197910, 23.347143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474865, 0.112943, -0.872781,
		-0.859437, 0.153915, 0.487523,
		0.189396, 0.981608, 0.023978,
		36.136757, 34.492393, 23.354336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488388, 33.970863, 22.965828>,  <36.004177, 33.805267, 23.337551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488388, 33.970863, 22.965828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.712112, 34.301754, 22.987268>,  <35.846348, 34.500286, 23.000134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.712112, 34.301754, 22.987268>,  <35.488388, 33.970863, 22.965828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712112, 34.301754, 22.987268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322714, 0.276843, -0.905104,
		-0.763563, 0.488936, 0.421797,
		0.559309, 0.827224, 0.053601,
		35.879906, 34.549923, 23.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991619, 34.510677, 22.897493>,  <35.488388, 33.970863, 22.965828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991619, 34.510677, 22.897493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.347549, 34.649296, 22.778755>,  <35.561108, 34.732468, 22.707512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.347549, 34.649296, 22.778755>,  <34.991619, 34.510677, 22.897493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347549, 34.649296, 22.778755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384742, 0.220044, -0.896412,
		-0.245333, 0.911857, 0.329133,
		0.889823, 0.346551, -0.296846,
		35.614498, 34.753262, 22.689701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855194, 35.156399, 22.609341>,  <34.991619, 34.510677, 22.897493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855194, 35.156399, 22.609341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214394, 35.045395, 22.472765>,  <35.429913, 34.978790, 22.390820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214394, 35.045395, 22.472765>,  <34.855194, 35.156399, 22.609341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214394, 35.045395, 22.472765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290930, 0.207654, -0.933938,
		0.330079, 0.938012, 0.105738,
		0.898002, -0.277511, -0.341438,
		35.483795, 34.962143, 22.370333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212296, 35.762581, 22.252302>,  <34.855194, 35.156399, 22.609341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212296, 35.762581, 22.252302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366253, 35.417774, 22.120375>,  <35.458630, 35.210892, 22.041218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366253, 35.417774, 22.120375>,  <35.212296, 35.762581, 22.252302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366253, 35.417774, 22.120375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270472, 0.236315, -0.933274,
		0.882440, 0.448420, -0.142195,
		0.384896, -0.862018, -0.329819,
		35.481720, 35.159168, 22.021429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304810, 35.987469, 21.629993>,  <35.212296, 35.762581, 22.252302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304810, 35.987469, 21.629993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361534, 35.592102, 21.608393>,  <35.395569, 35.354881, 21.595432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361534, 35.592102, 21.608393>,  <35.304810, 35.987469, 21.629993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361534, 35.592102, 21.608393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107203, 0.038899, -0.993476,
		0.984071, 0.146677, -0.100445,
		0.141813, -0.988419, -0.054004,
		35.404079, 35.295578, 21.592192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869858, 35.855083, 21.108335>,  <35.304810, 35.987469, 21.629993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869858, 35.855083, 21.108335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.632954, 35.534138, 21.137840>,  <35.490810, 35.341572, 21.155542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.632954, 35.534138, 21.137840>,  <35.869858, 35.855083, 21.108335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632954, 35.534138, 21.137840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149464, 0.019447, -0.988576,
		0.791762, -0.596519, -0.131442,
		-0.592261, -0.802363, 0.073761,
		35.455276, 35.293430, 21.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089916, 35.319790, 20.596130>,  <35.869858, 35.855083, 21.108335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089916, 35.319790, 20.596130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710632, 35.260204, 20.708344>,  <35.483063, 35.224453, 20.775671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710632, 35.260204, 20.708344>,  <36.089916, 35.319790, 20.596130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710632, 35.260204, 20.708344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292171, 0.062599, -0.954315,
		0.124607, -0.986858, -0.102883,
		-0.948214, -0.148973, 0.280531,
		35.426167, 35.215515, 20.792503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909237, 35.103210, 20.739441>,  <36.089916, 35.319790, 20.596130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909237, 35.103210, 20.739441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242191, 35.109077, 20.517838>,  <37.441963, 35.112598, 20.384874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242191, 35.109077, 20.517838>,  <36.909237, 35.103210, 20.739441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242191, 35.109077, 20.517838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515076, -0.389414, 0.763579,
		-0.204542, -0.920946, -0.331694,
		0.832382, 0.014664, -0.554009,
		37.491905, 35.113476, 20.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933163, 34.352993, 20.731266>,  <36.909237, 35.103210, 20.739441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933163, 34.352993, 20.731266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281071, 34.523193, 20.631302>,  <37.489815, 34.625313, 20.571323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281071, 34.523193, 20.631302>,  <36.933163, 34.352993, 20.731266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281071, 34.523193, 20.631302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483013, -0.630452, 0.607641,
		0.100994, -0.649217, -0.753868,
		0.869769, 0.425496, -0.249909,
		37.542000, 34.650841, 20.556330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484161, 33.855247, 20.374363>,  <36.933163, 34.352993, 20.731266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484161, 33.855247, 20.374363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661053, 34.149284, 20.579912>,  <37.767189, 34.325706, 20.703241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661053, 34.149284, 20.579912>,  <37.484161, 33.855247, 20.374363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661053, 34.149284, 20.579912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427783, -0.676448, 0.599517,
		0.788309, -0.045301, -0.613609,
		0.442233, 0.735096, 0.513871,
		37.793724, 34.369812, 20.734074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039783, 33.561192, 20.640408>,  <37.484161, 33.855247, 20.374363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039783, 33.561192, 20.640408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064835, 33.905327, 20.842752>,  <38.079865, 34.111809, 20.964159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.064835, 33.905327, 20.842752>,  <38.039783, 33.561192, 20.640408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064835, 33.905327, 20.842752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618556, -0.431233, 0.656831,
		0.783241, 0.271771, -0.559173,
		0.062626, 0.860337, 0.505865,
		38.083622, 34.163429, 20.994513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819458, 33.710503, 20.786232>,  <38.039783, 33.561192, 20.640408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819458, 33.710503, 20.786232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632534, 33.939510, 21.055704>,  <38.520378, 34.076916, 21.217386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632534, 33.939510, 21.055704>,  <38.819458, 33.710503, 20.786232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632534, 33.939510, 21.055704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667423, -0.271274, 0.693510,
		0.579798, 0.773715, -0.255342,
		-0.467312, 0.572517, 0.673679,
		38.492340, 34.111267, 21.257809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429310, 34.046173, 21.204481>,  <38.819458, 33.710503, 20.786232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429310, 34.046173, 21.204481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103420, 34.056835, 21.436174>,  <38.907887, 34.063232, 21.575190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103420, 34.056835, 21.436174>,  <39.429310, 34.046173, 21.204481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103420, 34.056835, 21.436174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561267, -0.214584, 0.799333,
		0.145603, 0.976342, 0.159864,
		-0.814726, 0.026659, 0.579233,
		38.859001, 34.064835, 21.609943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759064, 34.159603, 21.784832>,  <39.429310, 34.046173, 21.204481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759064, 34.159603, 21.784832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389278, 34.059891, 21.900225>,  <39.167408, 34.000065, 21.969461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389278, 34.059891, 21.900225>,  <39.759064, 34.159603, 21.784832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389278, 34.059891, 21.900225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355519, -0.290289, 0.888447,
		-0.137728, 0.923900, 0.356986,
		-0.924466, -0.249280, 0.288483,
		39.111938, 33.985107, 21.986769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596287, 34.544964, 22.330719>,  <39.759064, 34.159603, 21.784832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596287, 34.544964, 22.330719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371189, 34.214783, 22.348394>,  <39.236130, 34.016674, 22.358999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371189, 34.214783, 22.348394>,  <39.596287, 34.544964, 22.330719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371189, 34.214783, 22.348394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461875, -0.269645, 0.844963,
		-0.685562, 0.495904, 0.532996,
		-0.562740, -0.825452, 0.044187,
		39.202366, 33.967148, 22.361650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796543, 35.402088, 22.253059>,  <39.596287, 34.544964, 22.330719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796543, 35.402088, 22.253059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.164791, 35.554943, 22.285151>,  <40.385738, 35.646656, 22.304405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.164791, 35.554943, 22.285151>,  <39.796543, 35.402088, 22.253059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164791, 35.554943, 22.285151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162993, 0.562806, -0.810359,
		-0.354817, 0.732955, 0.580415,
		0.920618, 0.382133, 0.080227,
		40.440975, 35.669582, 22.309219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837185, 36.150257, 22.233614>,  <39.796543, 35.402088, 22.253059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837185, 36.150257, 22.233614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210674, 36.071423, 22.114067>,  <40.434769, 36.024120, 22.042339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210674, 36.071423, 22.114067>,  <39.837185, 36.150257, 22.233614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210674, 36.071423, 22.114067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010622, 0.819199, -0.573411,
		0.357844, 0.538581, 0.762810,
		0.933721, -0.197089, -0.298866,
		40.490791, 36.012295, 22.024406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193165, 36.728981, 22.206625>,  <39.837185, 36.150257, 22.233614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193165, 36.728981, 22.206625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.392197, 36.499298, 21.946562>,  <40.511616, 36.361488, 21.790524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.392197, 36.499298, 21.946562>,  <40.193165, 36.728981, 22.206625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392197, 36.499298, 21.946562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003278, 0.750769, -0.660556,
		0.867414, 0.326545, 0.375447,
		0.497576, -0.574207, -0.650157,
		40.541470, 36.327038, 21.751514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493172, 37.227203, 21.779207>,  <40.193165, 36.728981, 22.206625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493172, 37.227203, 21.779207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568520, 36.884953, 21.586367>,  <40.613728, 36.679604, 21.470663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568520, 36.884953, 21.586367>,  <40.493172, 37.227203, 21.779207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568520, 36.884953, 21.586367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227908, 0.515571, -0.825981,
		0.955288, 0.045713, 0.292121,
		0.188368, -0.855626, -0.482101,
		40.625031, 36.628265, 21.441736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105301, 37.269924, 21.374928>,  <40.493172, 37.227203, 21.779207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105301, 37.269924, 21.374928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872749, 36.993820, 21.202627>,  <40.733219, 36.828159, 21.099247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872749, 36.993820, 21.202627>,  <41.105301, 37.269924, 21.374928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872749, 36.993820, 21.202627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166592, 0.417216, -0.893408,
		0.796397, -0.591166, -0.127568,
		-0.581376, -0.690256, -0.430753,
		40.698338, 36.786743, 21.073400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450142, 37.157051, 20.715504>,  <41.105301, 37.269924, 21.374928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450142, 37.157051, 20.715504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076920, 37.013241, 20.710558>,  <40.852985, 36.926952, 20.707590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076920, 37.013241, 20.710558>,  <41.450142, 37.157051, 20.715504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076920, 37.013241, 20.710558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065306, 0.203086, -0.976981,
		0.353763, -0.910767, -0.212969,
		-0.933053, -0.359528, -0.012365,
		40.797005, 36.905384, 20.706848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502834, 36.860493, 20.103329>,  <41.450142, 37.157051, 20.715504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502834, 36.860493, 20.103329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114105, 36.900143, 20.188868>,  <40.880867, 36.923935, 20.240191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.114105, 36.900143, 20.188868>,  <41.502834, 36.860493, 20.103329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114105, 36.900143, 20.188868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158905, 0.394542, -0.905033,
		-0.174085, -0.913515, -0.367674,
		-0.971825, 0.099127, 0.213846,
		40.822559, 36.929882, 20.253021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146439, 36.589336, 19.619293>,  <41.502834, 36.860493, 20.103329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146439, 36.589336, 19.619293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.904522, 36.857925, 19.790567>,  <40.759373, 37.019081, 19.893332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.904522, 36.857925, 19.790567>,  <41.146439, 36.589336, 19.619293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904522, 36.857925, 19.790567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045146, 0.507889, -0.860239,
		-0.795100, -0.539600, -0.276855,
		-0.604796, 0.671477, 0.428183,
		40.723083, 37.059368, 19.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687073, 36.903179, 19.108810>,  <41.146439, 36.589336, 19.619293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687073, 36.903179, 19.108810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696411, 37.180943, 19.396490>,  <40.702015, 37.347599, 19.569098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696411, 37.180943, 19.396490>,  <40.687073, 36.903179, 19.108810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696411, 37.180943, 19.396490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238399, 0.702511, -0.670556,
		-0.970887, -0.155802, 0.181947,
		0.023346, 0.694409, 0.719201,
		40.703415, 37.389267, 19.612251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.802372, 32.885323, 35.046185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.589977, 33.224148, 35.036926>,  <43.462540, 33.427444, 35.031372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.589977, 33.224148, 35.036926>,  <43.802372, 32.885323, 35.046185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589977, 33.224148, 35.036926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453609, -0.307209, -0.836577,
		-0.715743, -0.433716, 0.547360,
		-0.530990, 0.847062, -0.023145,
		43.430679, 33.478268, 35.029984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030464, 32.712601, 34.985207>,  <43.802372, 32.885323, 35.046185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030464, 32.712601, 34.985207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.104153, 33.069386, 34.820057>,  <43.148365, 33.283459, 34.720966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.104153, 33.069386, 34.820057>,  <43.030464, 32.712601, 34.985207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104153, 33.069386, 34.820057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592394, -0.234428, -0.770787,
		-0.784302, 0.386580, 0.485207,
		0.184224, 0.891964, -0.412870,
		43.159420, 33.336975, 34.696198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410500, 32.899952, 34.780159>,  <43.030464, 32.712601, 34.985207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410500, 32.899952, 34.780159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.667290, 33.138832, 34.587818>,  <42.821365, 33.282162, 34.472412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.667290, 33.138832, 34.587818>,  <42.410500, 32.899952, 34.780159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667290, 33.138832, 34.587818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564779, -0.055822, -0.823352,
		-0.518550, 0.800146, 0.301451,
		0.641974, 0.597202, -0.480853,
		42.859882, 33.317993, 34.443562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016388, 33.533333, 34.520905>,  <42.410500, 32.899952, 34.780159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016388, 33.533333, 34.520905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.346939, 33.486988, 34.300476>,  <42.545269, 33.459183, 34.168217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.346939, 33.486988, 34.300476>,  <42.016388, 33.533333, 34.520905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346939, 33.486988, 34.300476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559052, -0.051367, -0.827540,
		0.067570, 0.991936, -0.107219,
		0.826375, -0.115858, -0.551073,
		42.594852, 33.452232, 34.135155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878685, 34.023228, 33.967701>,  <42.016388, 33.533333, 34.520905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878685, 34.023228, 33.967701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.168941, 33.782299, 33.834641>,  <42.343098, 33.637741, 33.754807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.168941, 33.782299, 33.834641>,  <41.878685, 34.023228, 33.967701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168941, 33.782299, 33.834641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350454, 0.092512, -0.932000,
		0.592134, 0.792877, -0.143954,
		0.725644, -0.602318, -0.332646,
		42.386635, 33.601604, 33.734848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183079, 34.328403, 33.419613>,  <41.878685, 34.023228, 33.967701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183079, 34.328403, 33.419613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.301216, 33.952785, 33.349216>,  <42.372097, 33.727417, 33.306980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.301216, 33.952785, 33.349216>,  <42.183079, 34.328403, 33.419613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301216, 33.952785, 33.349216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010375, 0.181044, -0.983420,
		0.955336, 0.292270, 0.043727,
		0.295341, -0.939043, -0.175990,
		42.389820, 33.671074, 33.296421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693905, 34.442509, 32.836967>,  <42.183079, 34.328403, 33.419613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693905, 34.442509, 32.836967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.610722, 34.051414, 32.825771>,  <42.560814, 33.816757, 32.819054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.610722, 34.051414, 32.825771>,  <42.693905, 34.442509, 32.836967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610722, 34.051414, 32.825771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131221, 0.000475, -0.991353,
		0.969297, -0.209829, 0.128201,
		-0.207954, -0.977738, -0.027994,
		42.548336, 33.758095, 32.817371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142765, 34.058903, 32.309780>,  <42.693905, 34.442509, 32.836967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142765, 34.058903, 32.309780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.838421, 33.803429, 32.355675>,  <42.655815, 33.650143, 32.383213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.838421, 33.803429, 32.355675>,  <43.142765, 34.058903, 32.309780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838421, 33.803429, 32.355675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024624, -0.148270, -0.988640,
		0.648446, -0.755044, 0.097086,
		-0.760862, -0.638690, 0.114738,
		42.610161, 33.611820, 32.390095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274712, 33.583473, 31.824198>,  <43.142765, 34.058903, 32.309780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274712, 33.583473, 31.824198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.886372, 33.551765, 31.914680>,  <42.653366, 33.532742, 31.968969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.886372, 33.551765, 31.914680>,  <43.274712, 33.583473, 31.824198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886372, 33.551765, 31.914680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223650, -0.039869, -0.973854,
		0.086219, -0.996055, 0.020977,
		-0.970848, -0.079274, 0.226205,
		42.595116, 33.527985, 31.982542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983566, 33.047329, 31.456030>,  <43.274712, 33.583473, 31.824198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983566, 33.047329, 31.456030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.657242, 33.267467, 31.527090>,  <42.461445, 33.399551, 31.569727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.657242, 33.267467, 31.527090>,  <42.983566, 33.047329, 31.456030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657242, 33.267467, 31.527090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290586, -0.124512, -0.948713,
		-0.500006, -0.825597, 0.261503,
		-0.815815, 0.550351, 0.177650,
		42.412498, 33.432571, 31.580385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419777, 32.733799, 31.108904>,  <42.983566, 33.047329, 31.456030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419777, 32.733799, 31.108904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311810, 33.112591, 31.178608>,  <42.247028, 33.339867, 31.220430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311810, 33.112591, 31.178608>,  <42.419777, 32.733799, 31.108904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311810, 33.112591, 31.178608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231877, 0.111722, -0.966308,
		-0.934545, -0.301234, 0.189427,
		-0.269922, 0.946982, 0.174258,
		42.230831, 33.396687, 31.230885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694290, 32.722576, 30.744001>,  <42.419777, 32.733799, 31.108904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694290, 32.722576, 30.744001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.856232, 33.086384, 30.781673>,  <41.953396, 33.304668, 30.804277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.856232, 33.086384, 30.781673>,  <41.694290, 32.722576, 30.744001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856232, 33.086384, 30.781673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177076, 0.179037, -0.967775,
		-0.897070, 0.375134, 0.233538,
		0.404858, 0.909516, 0.094181,
		41.977688, 33.359238, 30.809927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913841, 32.581940, 30.927534>,  <41.694290, 32.722576, 30.744001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913841, 32.581940, 30.927534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874577, 32.193031, 30.842628>,  <40.851017, 31.959686, 30.791685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874577, 32.193031, 30.842628>,  <40.913841, 32.581940, 30.927534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874577, 32.193031, 30.842628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000370, -0.213331, 0.976980,
		-0.995170, 0.095828, 0.021302,
		-0.098166, -0.972269, -0.212265,
		40.845127, 31.901350, 30.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499435, 32.329243, 31.420269>,  <40.913841, 32.581940, 30.927534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499435, 32.329243, 31.420269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.649117, 31.985092, 31.281866>,  <40.738926, 31.778603, 31.198824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.649117, 31.985092, 31.281866>,  <40.499435, 32.329243, 31.420269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649117, 31.985092, 31.281866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162784, -0.428268, 0.888869,
		-0.912947, -0.276295, -0.300316,
		0.374205, -0.860377, -0.346009,
		40.761379, 31.726978, 31.178062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052376, 31.833107, 31.687437>,  <40.499435, 32.329243, 31.420269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052376, 31.833107, 31.687437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397266, 31.648287, 31.604416>,  <40.604198, 31.537395, 31.554604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397266, 31.648287, 31.604416>,  <40.052376, 31.833107, 31.687437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397266, 31.648287, 31.604416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095786, -0.253632, 0.962546,
		-0.497388, -0.849812, -0.174430,
		0.862224, -0.462051, -0.207553,
		40.655933, 31.509672, 31.542150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829861, 31.112646, 31.881989>,  <40.052376, 31.833107, 31.687437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829861, 31.112646, 31.881989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.223057, 31.185337, 31.871325>,  <40.458973, 31.228952, 31.864927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.223057, 31.185337, 31.871325>,  <39.829861, 31.112646, 31.881989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223057, 31.185337, 31.871325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087700, -0.336859, 0.937462,
		0.161383, -0.923851, -0.347065,
		0.982988, 0.181728, -0.026659,
		40.517952, 31.239855, 31.863327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206638, 30.523699, 32.017120>,  <39.829861, 31.112646, 31.881989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206638, 30.523699, 32.017120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484417, 30.798594, 32.102402>,  <40.651085, 30.963530, 32.153572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484417, 30.798594, 32.102402>,  <40.206638, 30.523699, 32.017120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484417, 30.798594, 32.102402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076248, -0.364918, 0.927912,
		0.715498, -0.628124, -0.305815,
		0.694442, 0.687237, 0.213204,
		40.692749, 31.004765, 32.166363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807693, 30.168018, 32.335796>,  <40.206638, 30.523699, 32.017120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807693, 30.168018, 32.335796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826283, 30.555317, 32.434055>,  <40.837437, 30.787695, 32.493011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826283, 30.555317, 32.434055>,  <40.807693, 30.168018, 32.335796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826283, 30.555317, 32.434055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036075, -0.244126, 0.969072,
		0.998268, -0.053896, 0.023584,
		0.046471, 0.968245, 0.245647,
		40.840225, 30.845791, 32.507748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419949, 30.245867, 32.874741>,  <40.807693, 30.168018, 32.335796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419949, 30.245867, 32.874741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.179161, 30.562487, 32.916840>,  <41.034687, 30.752459, 32.942097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.179161, 30.562487, 32.916840>,  <41.419949, 30.245867, 32.874741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179161, 30.562487, 32.916840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012335, -0.122564, 0.992384,
		0.798421, 0.598687, 0.064016,
		-0.601973, 0.791551, 0.105243,
		40.998569, 30.799952, 32.948414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677761, 30.431227, 33.471035>,  <41.419949, 30.245867, 32.874741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677761, 30.431227, 33.471035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.324120, 30.612963, 33.427341>,  <41.111935, 30.722004, 33.401123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.324120, 30.612963, 33.427341>,  <41.677761, 30.431227, 33.471035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324120, 30.612963, 33.427341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148390, -0.051308, 0.987597,
		0.443101, 0.889349, 0.112781,
		-0.884105, 0.454341, -0.109236,
		41.058887, 30.749266, 33.394569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570408, 30.836607, 34.070217>,  <41.677761, 30.431227, 33.471035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570408, 30.836607, 34.070217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205143, 30.813698, 33.908794>,  <40.985985, 30.799952, 33.811939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205143, 30.813698, 33.908794>,  <41.570408, 30.836607, 34.070217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205143, 30.813698, 33.908794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400047, -0.063806, 0.914271,
		-0.078114, 0.996318, 0.035352,
		-0.913160, -0.057274, -0.403558,
		40.931194, 30.796515, 33.787727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206146, 31.174955, 34.734104>,  <41.570408, 30.836607, 34.070217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206146, 31.174955, 34.734104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946087, 31.001722, 34.484383>,  <40.790051, 30.897783, 34.334549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946087, 31.001722, 34.484383>,  <41.206146, 31.174955, 34.734104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946087, 31.001722, 34.484383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637683, -0.135742, 0.758245,
		-0.413126, 0.891075, -0.187916,
		-0.650145, -0.433081, -0.624302,
		40.751045, 30.871798, 34.297092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571014, 31.518873, 34.784233>,  <41.206146, 31.174955, 34.734104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571014, 31.518873, 34.784233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479904, 31.155981, 34.642780>,  <40.425240, 30.938246, 34.557911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479904, 31.155981, 34.642780>,  <40.571014, 31.518873, 34.784233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479904, 31.155981, 34.642780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655241, -0.125830, 0.744866,
		-0.720262, 0.401373, -0.565794,
		-0.227775, -0.907230, -0.353627,
		40.411572, 30.883812, 34.536694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889065, 31.476505, 34.646458>,  <40.571014, 31.518873, 34.784233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889065, 31.476505, 34.646458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003304, 31.099722, 34.717049>,  <40.071846, 30.873652, 34.759403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.003304, 31.099722, 34.717049>,  <39.889065, 31.476505, 34.646458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003304, 31.099722, 34.717049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667543, -0.063404, 0.741867,
		-0.687619, -0.329684, -0.646907,
		0.285598, -0.941960, 0.176480,
		40.088982, 30.817135, 34.769993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263073, 31.166122, 34.792645>,  <39.889065, 31.476505, 34.646458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263073, 31.166122, 34.792645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541252, 30.931097, 34.958115>,  <39.708160, 30.790083, 35.057396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541252, 30.931097, 34.958115>,  <39.263073, 31.166122, 34.792645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541252, 30.931097, 34.958115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568527, -0.097834, 0.816826,
		-0.439466, -0.803242, -0.402084,
		0.695447, -0.587563, 0.413670,
		39.749886, 30.754827, 35.082214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968510, 30.655752, 35.099854>,  <39.263073, 31.166122, 34.792645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968510, 30.655752, 35.099854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318432, 30.649899, 35.293556>,  <39.528385, 30.646387, 35.409779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318432, 30.649899, 35.293556>,  <38.968510, 30.655752, 35.099854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318432, 30.649899, 35.293556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480009, -0.161613, 0.862249,
		0.065644, -0.986746, -0.148404,
		0.874804, -0.014634, 0.484256,
		39.580872, 30.645508, 35.438831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925053, 30.144232, 35.561295>,  <38.968510, 30.655752, 35.099854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925053, 30.144232, 35.561295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202965, 30.401260, 35.690529>,  <39.369713, 30.555477, 35.768070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202965, 30.401260, 35.690529>,  <38.925053, 30.144232, 35.561295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202965, 30.401260, 35.690529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426196, 0.005991, 0.904611,
		0.579341, -0.766203, 0.278024,
		0.694781, 0.642571, 0.323082,
		39.411400, 30.594032, 35.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223701, 30.182623, 35.139545>,  <38.925053, 30.144232, 35.561295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223701, 30.182623, 35.139545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932320, 30.434353, 35.247841>,  <37.757488, 30.585392, 35.312817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932320, 30.434353, 35.247841>,  <38.223701, 30.182623, 35.139545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932320, 30.434353, 35.247841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211365, 0.169458, -0.962605,
		-0.651671, -0.758441, 0.009575,
		-0.728457, 0.629326, 0.270739,
		37.713783, 30.623150, 35.329063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661884, 30.051620, 34.737549>,  <38.223701, 30.182623, 35.139545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661884, 30.051620, 34.737549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640434, 30.439575, 34.832581>,  <37.627563, 30.672348, 34.889599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640434, 30.439575, 34.832581>,  <37.661884, 30.051620, 34.737549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640434, 30.439575, 34.832581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417817, 0.194299, -0.887512,
		-0.906948, -0.146853, 0.394817,
		-0.053621, 0.969888, 0.237577,
		37.624348, 30.730541, 34.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958523, 30.310966, 34.563709>,  <37.661884, 30.051620, 34.737549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958523, 30.310966, 34.563709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197975, 30.627344, 34.614384>,  <37.341644, 30.817171, 34.644787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197975, 30.627344, 34.614384>,  <36.958523, 30.310966, 34.563709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197975, 30.627344, 34.614384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293332, 0.363626, -0.884157,
		-0.745386, 0.492120, 0.449686,
		0.598629, 0.790945, 0.126687,
		37.377563, 30.864628, 34.652390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566166, 30.802015, 34.404881>,  <36.958523, 30.310966, 34.563709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566166, 30.802015, 34.404881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909584, 31.001411, 34.356880>,  <37.115635, 31.121050, 34.328079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909584, 31.001411, 34.356880>,  <36.566166, 30.802015, 34.404881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909584, 31.001411, 34.356880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369829, 0.439952, -0.818333,
		-0.355137, 0.746959, 0.562077,
		0.858548, 0.498492, -0.120004,
		37.167149, 31.150959, 34.320881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391079, 31.510454, 34.205498>,  <36.566166, 30.802015, 34.404881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391079, 31.510454, 34.205498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769165, 31.456886, 34.086418>,  <36.996017, 31.424746, 34.014969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769165, 31.456886, 34.086418>,  <36.391079, 31.510454, 34.205498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769165, 31.456886, 34.086418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219918, 0.412714, -0.883913,
		0.241238, 0.900962, 0.360655,
		0.945220, -0.133919, -0.297700,
		37.052731, 31.416710, 33.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627205, 32.208805, 33.950680>,  <36.391079, 31.510454, 34.205498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627205, 32.208805, 33.950680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878048, 31.936262, 33.799686>,  <37.028553, 31.772738, 33.709091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878048, 31.936262, 33.799686>,  <36.627205, 32.208805, 33.950680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878048, 31.936262, 33.799686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145826, 0.373348, -0.916158,
		0.765158, 0.629579, 0.134772,
		0.627110, -0.681353, -0.377479,
		37.066181, 31.731855, 33.686443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201538, 32.602673, 33.669098>,  <36.627205, 32.208805, 33.950680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201538, 32.602673, 33.669098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241642, 32.244766, 33.495041>,  <37.265705, 32.030022, 33.390606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241642, 32.244766, 33.495041>,  <37.201538, 32.602673, 33.669098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241642, 32.244766, 33.495041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121656, 0.445088, -0.887185,
		0.987496, 0.036007, 0.153476,
		0.100255, -0.894763, -0.435142,
		37.271717, 31.976337, 33.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837006, 32.591911, 33.226604>,  <37.201538, 32.602673, 33.669098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837006, 32.591911, 33.226604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557796, 32.347679, 33.076958>,  <37.390270, 32.201141, 32.987171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.557796, 32.347679, 33.076958>,  <37.837006, 32.591911, 33.226604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557796, 32.347679, 33.076958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122402, 0.413025, -0.902457,
		0.705539, -0.675726, -0.213564,
		-0.698021, -0.610578, -0.374115,
		37.348389, 32.164505, 32.964722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186722, 32.388813, 32.583179>,  <37.837006, 32.591911, 33.226604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186722, 32.388813, 32.583179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801971, 32.281273, 32.563103>,  <37.571121, 32.216747, 32.551056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801971, 32.281273, 32.563103>,  <38.186722, 32.388813, 32.583179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801971, 32.281273, 32.563103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003863, 0.170143, -0.985412,
		0.273468, -0.948035, -0.162618,
		-0.961873, -0.268850, -0.050191,
		37.513409, 32.200619, 32.548046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149654, 31.831848, 31.998478>,  <38.186722, 32.388813, 32.583179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149654, 31.831848, 31.998478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797634, 32.015881, 32.045528>,  <37.586422, 32.126301, 32.073761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797634, 32.015881, 32.045528>,  <38.149654, 31.831848, 31.998478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797634, 32.015881, 32.045528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132132, 0.000683, -0.991232,
		-0.456130, -0.887875, 0.060191,
		-0.880049, 0.460084, 0.117628,
		37.533619, 32.153904, 32.080818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772087, 31.440001, 31.547445>,  <38.149654, 31.831848, 31.998478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772087, 31.440001, 31.547445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570679, 31.776266, 31.627195>,  <37.449833, 31.978025, 31.675045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570679, 31.776266, 31.627195>,  <37.772087, 31.440001, 31.547445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570679, 31.776266, 31.627195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024569, 0.216739, -0.975920,
		-0.863634, -0.496293, -0.088478,
		-0.503519, 0.840665, 0.199377,
		37.419624, 32.028465, 31.687008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183815, 31.441214, 31.019344>,  <37.772087, 31.440001, 31.547445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183815, 31.441214, 31.019344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200851, 31.812973, 31.165987>,  <37.211075, 32.036030, 31.253973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200851, 31.812973, 31.165987>,  <37.183815, 31.441214, 31.019344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200851, 31.812973, 31.165987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061124, 0.363831, -0.929457,
		-0.997221, 0.061996, -0.041312,
		0.042592, 0.929400, 0.366609,
		37.213631, 32.091793, 31.275970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591885, 31.838242, 30.784882>,  <37.183815, 31.441214, 31.019344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591885, 31.838242, 30.784882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919750, 32.056335, 30.855164>,  <37.116470, 32.187191, 30.897333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919750, 32.056335, 30.855164>,  <36.591885, 31.838242, 30.784882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919750, 32.056335, 30.855164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018040, 0.331142, -0.943408,
		-0.572561, 0.770108, 0.281261,
		0.819663, 0.545233, 0.175706,
		37.165649, 32.219906, 30.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564857, 32.145760, 30.257214>,  <36.591885, 31.838242, 30.784882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564857, 32.145760, 30.257214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913456, 32.285900, 30.394472>,  <37.122616, 32.369984, 30.476828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913456, 32.285900, 30.394472>,  <36.564857, 32.145760, 30.257214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913456, 32.285900, 30.394472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120459, 0.525358, -0.842312,
		-0.475377, 0.775407, 0.415645,
		0.871497, 0.350348, 0.343148,
		37.174904, 32.391003, 30.497416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626892, 32.957874, 30.252811>,  <36.564857, 32.145760, 30.257214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626892, 32.957874, 30.252811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003662, 32.825748, 30.228611>,  <37.229725, 32.746471, 30.214090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003662, 32.825748, 30.228611>,  <36.626892, 32.957874, 30.252811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003662, 32.825748, 30.228611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132516, 0.531162, -0.836843,
		0.308561, 0.780229, 0.544089,
		0.941929, -0.330317, -0.060503,
		37.286240, 32.726654, 30.210461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979855, 33.563705, 30.113390>,  <36.626892, 32.957874, 30.252811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979855, 33.563705, 30.113390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214756, 33.257687, 30.007681>,  <37.355698, 33.074078, 29.944256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214756, 33.257687, 30.007681>,  <36.979855, 33.563705, 30.113390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214756, 33.257687, 30.007681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165360, 0.433017, -0.886088,
		0.792331, 0.476659, 0.380799,
		0.587254, -0.765044, -0.264272,
		37.390934, 33.028172, 29.928400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497723, 33.874058, 29.794415>,  <36.979855, 33.563705, 30.113390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497723, 33.874058, 29.794415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502815, 33.493145, 29.672428>,  <37.505871, 33.264599, 29.599237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502815, 33.493145, 29.672428>,  <37.497723, 33.874058, 29.794415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502815, 33.493145, 29.672428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004210, 0.304936, -0.952364,
		0.999910, 0.013405, -0.000128,
		0.012727, -0.952279, -0.304965,
		37.506634, 33.207462, 29.580938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027554, 33.808666, 29.261868>,  <37.497723, 33.874058, 29.794415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027554, 33.808666, 29.261868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806885, 33.481983, 29.194178>,  <37.674484, 33.285973, 29.153564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806885, 33.481983, 29.194178>,  <38.027554, 33.808666, 29.261868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806885, 33.481983, 29.194178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049975, 0.170160, -0.984149,
		0.832560, -0.551387, -0.053058,
		-0.551675, -0.816712, -0.169224,
		37.641380, 33.236969, 29.143410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386738, 33.414341, 28.785538>,  <38.027554, 33.808666, 29.261868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386738, 33.414341, 28.785538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012672, 33.278996, 28.743616>,  <37.788235, 33.197788, 28.718464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012672, 33.278996, 28.743616>,  <38.386738, 33.414341, 28.785538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012672, 33.278996, 28.743616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088950, 0.062066, -0.994100,
		0.342869, -0.938968, -0.027944,
		-0.935162, -0.338361, -0.104802,
		37.732124, 33.177486, 28.712175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384388, 32.942688, 28.180454>,  <38.386738, 33.414341, 28.785538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384388, 32.942688, 28.180454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998684, 33.047565, 28.195677>,  <37.767262, 33.110493, 28.204811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998684, 33.047565, 28.195677>,  <38.384388, 32.942688, 28.180454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998684, 33.047565, 28.195677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012341, 0.187939, -0.982103,
		-0.264657, -0.946537, -0.184458,
		-0.964263, 0.262197, 0.038058,
		37.709404, 33.126225, 28.207094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073273, 32.657894, 27.517757>,  <38.384388, 32.942688, 28.180454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073273, 32.657894, 27.517757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828007, 32.948296, 27.642305>,  <37.680847, 33.122536, 27.717033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828007, 32.948296, 27.642305>,  <38.073273, 32.657894, 27.517757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828007, 32.948296, 27.642305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223501, 0.218616, -0.949871,
		-0.757678, -0.652018, 0.028214,
		-0.613165, 0.726002, 0.311367,
		37.644058, 33.166096, 27.735716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564583, 32.649364, 27.084137>,  <38.073273, 32.657894, 27.517757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564583, 32.649364, 27.084137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494045, 33.012474, 27.236370>,  <37.451721, 33.230339, 27.327709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.494045, 33.012474, 27.236370>,  <37.564583, 32.649364, 27.084137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494045, 33.012474, 27.236370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369132, 0.297436, -0.880496,
		-0.912493, -0.295756, 0.282638,
		-0.176346, 0.907777, 0.380582,
		37.441143, 33.284809, 27.350544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812172, 32.918774, 26.800575>,  <37.564583, 32.649364, 27.084137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812172, 32.918774, 26.800575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006516, 33.248348, 26.917246>,  <37.123123, 33.446091, 26.987247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006516, 33.248348, 26.917246>,  <36.812172, 32.918774, 26.800575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006516, 33.248348, 26.917246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413923, 0.510817, -0.753482,
		-0.769812, 0.245354, 0.589229,
		0.485858, 0.823934, 0.291675,
		37.152271, 33.495529, 27.004749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317486, 33.340874, 26.612032>,  <36.812172, 32.918774, 26.800575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317486, 33.340874, 26.612032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652035, 33.556721, 26.650595>,  <36.852764, 33.686230, 26.673733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652035, 33.556721, 26.650595>,  <36.317486, 33.340874, 26.612032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652035, 33.556721, 26.650595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228031, 0.502434, -0.834003,
		-0.498483, 0.675552, 0.543271,
		0.836371, 0.539619, 0.096408,
		36.902946, 33.718605, 26.679518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139957, 34.059803, 26.700714>,  <36.317486, 33.340874, 26.612032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139957, 34.059803, 26.700714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512020, 34.047897, 26.554333>,  <36.735256, 34.040752, 26.466505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512020, 34.047897, 26.554333>,  <36.139957, 34.059803, 26.700714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512020, 34.047897, 26.554333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314907, 0.447814, -0.836837,
		0.188789, 0.893631, 0.407164,
		0.930157, -0.029767, -0.365952,
		36.791069, 34.038967, 26.444548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187824, 34.586731, 26.298191>,  <36.139957, 34.059803, 26.700714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187824, 34.586731, 26.298191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526688, 34.414196, 26.174082>,  <36.730007, 34.310673, 26.099617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526688, 34.414196, 26.174082>,  <36.187824, 34.586731, 26.298191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526688, 34.414196, 26.174082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081607, 0.471391, -0.878141,
		0.525037, 0.769244, 0.364142,
		0.847158, -0.431340, -0.310274,
		36.780834, 34.284794, 26.080999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525646, 35.119713, 25.991364>,  <36.187824, 34.586731, 26.298191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525646, 35.119713, 25.991364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.626171, 34.759239, 25.850111>,  <36.686485, 34.542953, 25.765360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.626171, 34.759239, 25.850111>,  <36.525646, 35.119713, 25.991364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626171, 34.759239, 25.850111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203579, 0.307467, -0.929527,
		0.946254, 0.305494, -0.106193,
		0.251314, -0.901187, -0.353134,
		36.701565, 34.488884, 25.744171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051151, 35.700432, 26.192749>,  <36.525646, 35.119713, 25.991364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051151, 35.700432, 26.192749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853134, 36.020000, 26.329369>,  <36.734325, 36.211742, 26.411341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853134, 36.020000, 26.329369>,  <37.051151, 35.700432, 26.192749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853134, 36.020000, 26.329369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128416, -0.321501, 0.938161,
		0.859326, 0.508291, 0.056563,
		-0.495044, 0.798923, 0.341547,
		36.704620, 36.259678, 26.431833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399265, 35.873238, 26.800547>,  <37.051151, 35.700432, 26.192749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399265, 35.873238, 26.800547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049076, 36.061737, 26.843386>,  <36.838963, 36.174835, 26.869089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049076, 36.061737, 26.843386>,  <37.399265, 35.873238, 26.800547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049076, 36.061737, 26.843386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008626, -0.236813, 0.971517,
		0.483187, 0.849615, 0.211388,
		-0.875475, 0.471248, 0.107096,
		36.786434, 36.203110, 26.875515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464897, 36.194138, 27.383343>,  <37.399265, 35.873238, 26.800547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464897, 36.194138, 27.383343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068089, 36.206657, 27.334480>,  <36.830006, 36.214169, 27.305162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068089, 36.206657, 27.334480>,  <37.464897, 36.194138, 27.383343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068089, 36.206657, 27.334480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125751, -0.173244, 0.976818,
		0.009411, 0.984382, 0.175797,
		-0.992017, 0.031300, -0.122156,
		36.770485, 36.216049, 27.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184563, 36.588089, 28.002411>,  <37.464897, 36.194138, 27.383343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184563, 36.588089, 28.002411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851051, 36.416782, 27.863037>,  <36.650944, 36.313999, 27.779413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851051, 36.416782, 27.863037>,  <37.184563, 36.588089, 28.002411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851051, 36.416782, 27.863037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266564, -0.240404, 0.933354,
		-0.483492, 0.871086, 0.086282,
		-0.833774, -0.428270, -0.348433,
		36.600918, 36.288303, 27.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642159, 36.890141, 28.303093>,  <37.184563, 36.588089, 28.002411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642159, 36.890141, 28.303093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531567, 36.519619, 28.200712>,  <36.465210, 36.297306, 28.139284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531567, 36.519619, 28.200712>,  <36.642159, 36.890141, 28.303093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531567, 36.519619, 28.200712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105622, -0.235429, 0.966135,
		-0.955197, 0.294154, -0.032746,
		-0.276483, -0.926308, -0.255950,
		36.448624, 36.241726, 28.123928>
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
