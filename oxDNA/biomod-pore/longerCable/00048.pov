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
	<24.052065, 34.493923, 35.176098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396053, 34.691452, 35.124588>,  <24.602448, 34.809971, 35.093681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396053, 34.691452, 35.124588>,  <24.052065, 34.493923, 35.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396053, 34.691452, 35.124588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429649, -0.836747, -0.339494,
		-0.275405, 0.236627, -0.931751,
		0.859973, 0.493824, -0.128778,
		24.654045, 34.839600, 35.085953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.261806, 34.519730, 34.406319>,  <24.052065, 34.493923, 35.176098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.261806, 34.519730, 34.406319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543421, 34.493355, 34.689156>,  <24.712389, 34.477531, 34.858860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543421, 34.493355, 34.689156>,  <24.261806, 34.519730, 34.406319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543421, 34.493355, 34.689156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419664, -0.764603, -0.489147,
		0.572899, 0.641120, -0.510638,
		0.704038, -0.065936, 0.707095,
		24.754633, 34.473576, 34.901283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049770, 34.613644, 34.105434>,  <24.261806, 34.519730, 34.406319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049770, 34.613644, 34.105434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991909, 34.374191, 34.420578>,  <24.957191, 34.230522, 34.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991909, 34.374191, 34.420578>,  <25.049770, 34.613644, 34.105434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991909, 34.374191, 34.420578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423839, -0.756974, -0.497344,
		0.894112, 0.261982, 0.363221,
		-0.144654, -0.598628, 0.787858,
		24.948513, 34.194603, 34.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742851, 34.395901, 34.293736>,  <25.049770, 34.613644, 34.105434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742851, 34.395901, 34.293736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428814, 34.156593, 34.357864>,  <25.240391, 34.013008, 34.396339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428814, 34.156593, 34.357864>,  <25.742851, 34.395901, 34.293736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428814, 34.156593, 34.357864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462016, -0.738060, -0.491740,
		0.412518, -0.311992, 0.855856,
		-0.785093, -0.598271, 0.160318,
		25.193287, 33.977112, 34.405960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000526, 33.854496, 34.635551>,  <25.742851, 34.395901, 34.293736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000526, 33.854496, 34.635551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653595, 33.725330, 34.484043>,  <25.445436, 33.647831, 34.393139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653595, 33.725330, 34.484043>,  <26.000526, 33.854496, 34.635551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653595, 33.725330, 34.484043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434446, -0.862504, -0.259505,
		-0.242898, -0.389633, 0.888362,
		-0.867328, -0.322912, -0.378775,
		25.393396, 33.628456, 34.370411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094093, 33.143261, 34.587650>,  <26.000526, 33.854496, 34.635551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094093, 33.143261, 34.587650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748051, 33.192734, 34.393208>,  <25.540426, 33.222416, 34.276543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748051, 33.192734, 34.393208>,  <26.094093, 33.143261, 34.587650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748051, 33.192734, 34.393208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036027, -0.951298, -0.306160,
		-0.500296, -0.282374, 0.818516,
		-0.865105, 0.123682, -0.486104,
		25.488520, 33.229839, 34.247375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642574, 32.606186, 34.743946>,  <26.094093, 33.143261, 34.587650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642574, 32.606186, 34.743946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584162, 32.750694, 34.375565>,  <25.549114, 32.837399, 34.154537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584162, 32.750694, 34.375565>,  <25.642574, 32.606186, 34.743946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584162, 32.750694, 34.375565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105332, -0.919963, -0.377588,
		-0.983656, -0.152146, 0.096291,
		-0.146032, 0.361275, -0.920954,
		25.540352, 32.859077, 34.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118109, 32.257946, 34.410599>,  <25.642574, 32.606186, 34.743946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118109, 32.257946, 34.410599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382301, 32.366589, 34.130600>,  <25.540817, 32.431774, 33.962601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382301, 32.366589, 34.130600>,  <25.118109, 32.257946, 34.410599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382301, 32.366589, 34.130600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009426, -0.929207, -0.369439,
		-0.750784, 0.250606, -0.611164,
		0.660481, 0.271608, -0.699996,
		25.580446, 32.448071, 33.920601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886778, 31.963724, 33.793129>,  <25.118109, 32.257946, 34.410599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886778, 31.963724, 33.793129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278877, 32.019028, 33.736561>,  <25.514137, 32.052212, 33.702621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278877, 32.019028, 33.736561>,  <24.886778, 31.963724, 33.793129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278877, 32.019028, 33.736561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093798, -0.954516, -0.283022,
		-0.174120, 0.264166, -0.948630,
		0.980247, 0.138260, -0.141422,
		25.572952, 32.060505, 33.694134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980053, 31.710701, 33.159843>,  <24.886778, 31.963724, 33.793129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980053, 31.710701, 33.159843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345812, 31.717848, 33.321613>,  <25.565268, 31.722136, 33.418674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345812, 31.717848, 33.321613>,  <24.980053, 31.710701, 33.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345812, 31.717848, 33.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135570, -0.954855, -0.264334,
		0.381446, 0.296534, -0.875538,
		0.914396, 0.017867, 0.404427,
		25.620131, 31.723207, 33.442940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506920, 31.630041, 32.673214>,  <24.980053, 31.710701, 33.159843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506920, 31.630041, 32.673214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664419, 31.504349, 33.018749>,  <25.758919, 31.428932, 33.226070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664419, 31.504349, 33.018749>,  <25.506920, 31.630041, 32.673214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664419, 31.504349, 33.018749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010446, -0.941224, -0.337621,
		0.919159, 0.123914, -0.373887,
		0.393748, -0.314233, 0.863841,
		25.782543, 31.410078, 33.277901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113016, 31.237610, 32.634830>,  <25.506920, 31.630041, 32.673214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113016, 31.237610, 32.634830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926435, 31.111208, 32.965302>,  <25.814487, 31.035366, 33.163582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926435, 31.111208, 32.965302>,  <26.113016, 31.237610, 32.634830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926435, 31.111208, 32.965302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244911, -0.851355, -0.463910,
		0.849966, -0.418731, 0.319722,
		-0.466451, -0.316004, 0.826175,
		25.786501, 31.016407, 33.213154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319725, 30.510962, 32.771851>,  <26.113016, 31.237610, 32.634830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319725, 30.510962, 32.771851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950424, 30.585842, 32.906052>,  <25.728844, 30.630772, 32.986572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950424, 30.585842, 32.906052>,  <26.319725, 30.510962, 32.771851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950424, 30.585842, 32.906052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350992, -0.766106, -0.538410,
		0.156238, -0.614846, 0.773016,
		-0.923252, 0.187202, 0.335502,
		25.673449, 30.642002, 33.006702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804499, 30.181046, 33.216980>,  <26.319725, 30.510962, 32.771851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804499, 30.181046, 33.216980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877235, 30.495270, 33.453564>,  <25.920877, 30.683804, 33.595516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877235, 30.495270, 33.453564>,  <25.804499, 30.181046, 33.216980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877235, 30.495270, 33.453564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400030, -0.608567, 0.685290,
		0.898282, 0.111988, -0.424911,
		0.181842, 0.785560, 0.591463,
		25.931787, 30.730938, 33.631004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517639, 30.232250, 33.431477>,  <25.804499, 30.181046, 33.216980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517639, 30.232250, 33.431477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277842, 30.398939, 33.704811>,  <26.133963, 30.498953, 33.868813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277842, 30.398939, 33.704811>,  <26.517639, 30.232250, 33.431477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277842, 30.398939, 33.704811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417304, -0.565797, 0.711147,
		0.682982, 0.711488, 0.165292,
		-0.599494, 0.416724, 0.683336,
		26.097994, 30.523956, 33.909813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868561, 30.794712, 33.930115>,  <26.517639, 30.232250, 33.431477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868561, 30.794712, 33.930115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563192, 30.581715, 34.076340>,  <26.379971, 30.453917, 34.164074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563192, 30.581715, 34.076340>,  <26.868561, 30.794712, 33.930115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563192, 30.581715, 34.076340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631779, -0.497926, 0.594075,
		-0.134318, 0.684485, 0.716546,
		-0.763423, -0.532494, 0.365563,
		26.334166, 30.421967, 34.186008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443079, 31.213467, 34.354904>,  <26.868561, 30.794712, 33.930115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443079, 31.213467, 34.354904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286005, 31.282063, 33.993488>,  <26.191761, 31.323219, 33.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286005, 31.282063, 33.993488>,  <26.443079, 31.213467, 34.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286005, 31.282063, 33.993488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017477, 0.980893, 0.193763,
		0.919508, 0.091879, -0.382183,
		-0.392683, 0.171488, -0.903544,
		26.168200, 31.333509, 33.722424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802368, 31.798607, 33.989346>,  <26.443079, 31.213467, 34.354904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802368, 31.798607, 33.989346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449644, 31.787630, 33.801025>,  <26.238010, 31.781044, 33.688034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449644, 31.787630, 33.801025>,  <26.802368, 31.798607, 33.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449644, 31.787630, 33.801025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029563, 0.999559, -0.002887,
		0.470675, 0.011373, -0.882233,
		-0.881811, -0.027440, -0.470804,
		26.185101, 31.779398, 33.659782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854702, 32.263374, 33.484821>,  <26.802368, 31.798607, 33.989346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854702, 32.263374, 33.484821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460274, 32.218922, 33.534321>,  <26.223618, 32.192249, 33.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460274, 32.218922, 33.534321>,  <26.854702, 32.263374, 33.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460274, 32.218922, 33.534321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102963, 0.992176, 0.070604,
		-0.130630, 0.056878, -0.989798,
		-0.986070, -0.111135, 0.123752,
		26.164454, 32.185581, 33.571445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499449, 32.700291, 33.072231>,  <26.854702, 32.263374, 33.484821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499449, 32.700291, 33.072231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250738, 32.634449, 33.378513>,  <26.101511, 32.594944, 33.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250738, 32.634449, 33.378513>,  <26.499449, 32.700291, 33.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250738, 32.634449, 33.378513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073826, 0.985631, 0.151927,
		-0.779706, 0.037936, -0.624995,
		-0.621778, -0.164600, 0.765702,
		26.064205, 32.585068, 33.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838936, 32.964863, 32.859486>,  <26.499449, 32.700291, 33.072231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838936, 32.964863, 32.859486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894106, 32.950424, 33.255398>,  <25.927208, 32.941761, 33.492947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894106, 32.950424, 33.255398>,  <25.838936, 32.964863, 32.859486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894106, 32.950424, 33.255398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048152, 0.998398, 0.029698,
		-0.989272, 0.043563, 0.139442,
		0.137925, -0.036094, 0.989785,
		25.935484, 32.939594, 33.552334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016647, 33.531334, 32.491528>,  <25.838936, 32.964863, 32.859486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016647, 33.531334, 32.491528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044533, 33.566299, 32.094036>,  <26.061264, 33.587280, 31.855541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044533, 33.566299, 32.094036>,  <26.016647, 33.531334, 32.491528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044533, 33.566299, 32.094036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996921, -0.041965, 0.066244,
		-0.035911, -0.995288, -0.090073,
		0.069712, 0.087416, -0.993730,
		26.065447, 33.592525, 31.795918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306017, 32.982277, 32.226704>,  <26.016647, 33.531334, 32.491528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306017, 32.982277, 32.226704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412359, 33.303352, 32.013161>,  <26.476166, 33.495998, 31.885035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412359, 33.303352, 32.013161>,  <26.306017, 32.982277, 32.226704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412359, 33.303352, 32.013161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947917, -0.318446, -0.006748,
		-0.175423, -0.504263, -0.845545,
		0.265857, 0.802690, -0.533862,
		26.492117, 33.544159, 31.853003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643852, 32.891148, 31.474094>,  <26.306017, 32.982277, 32.226704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643852, 32.891148, 31.474094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771729, 33.219444, 31.663488>,  <26.848454, 33.416420, 31.777124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771729, 33.219444, 31.663488>,  <26.643852, 32.891148, 31.474094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771729, 33.219444, 31.663488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946613, -0.254756, -0.197544,
		-0.041509, 0.511358, -0.858364,
		0.319689, 0.820739, 0.473484,
		26.867636, 33.465668, 31.805534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028511, 33.272705, 31.013460>,  <26.643852, 32.891148, 31.474094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028511, 33.272705, 31.013460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149471, 33.375256, 31.380682>,  <27.222048, 33.436787, 31.601015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149471, 33.375256, 31.380682>,  <27.028511, 33.272705, 31.013460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149471, 33.375256, 31.380682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874594, -0.457591, -0.160300,
		0.378997, 0.851400, -0.362602,
		0.302403, 0.256377, 0.918054,
		27.240192, 33.452168, 31.656097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812733, 33.563366, 30.950928>,  <27.028511, 33.272705, 31.013460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812733, 33.563366, 30.950928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744307, 33.430218, 31.321857>,  <27.703251, 33.350327, 31.544416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744307, 33.430218, 31.321857>,  <27.812733, 33.563366, 30.950928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744307, 33.430218, 31.321857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875403, -0.483245, -0.011981,
		0.452114, 0.809734, 0.374064,
		-0.171063, -0.332873, 0.927326,
		27.692987, 33.330357, 31.600056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306433, 33.809219, 31.422581>,  <27.812733, 33.563366, 30.950928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306433, 33.809219, 31.422581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153605, 33.456062, 31.531775>,  <28.061907, 33.244167, 31.597292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153605, 33.456062, 31.531775>,  <28.306433, 33.809219, 31.422581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153605, 33.456062, 31.531775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896919, -0.425430, -0.120608,
		0.222620, 0.198765, 0.954428,
		-0.382070, -0.882894, 0.272985,
		28.038984, 33.191193, 31.613670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661360, 33.517864, 32.100975>,  <28.306433, 33.809219, 31.422581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661360, 33.517864, 32.100975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534786, 33.227852, 31.856287>,  <28.458843, 33.053844, 31.709475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534786, 33.227852, 31.856287>,  <28.661360, 33.517864, 32.100975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534786, 33.227852, 31.856287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931855, -0.358261, -0.057409,
		-0.177532, -0.588199, 0.788989,
		-0.316432, -0.725032, -0.611719,
		28.439857, 33.010342, 31.672771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017214, 32.928680, 32.393188>,  <28.661360, 33.517864, 32.100975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017214, 32.928680, 32.393188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906578, 32.840584, 32.019024>,  <28.840197, 32.787727, 31.794525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906578, 32.840584, 32.019024>,  <29.017214, 32.928680, 32.393188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906578, 32.840584, 32.019024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905482, -0.385750, -0.176916,
		-0.321871, -0.895931, 0.306115,
		-0.276588, -0.220237, -0.935411,
		28.823601, 32.774513, 31.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324968, 32.275494, 32.223579>,  <29.017214, 32.928680, 32.393188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324968, 32.275494, 32.223579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272377, 32.472591, 31.879507>,  <29.240822, 32.590851, 31.673063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272377, 32.472591, 31.879507>,  <29.324968, 32.275494, 32.223579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272377, 32.472591, 31.879507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940827, -0.211375, -0.264886,
		-0.312342, -0.844111, -0.435797,
		-0.131476, 0.492745, -0.860184,
		29.232935, 32.620415, 31.621452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828844, 31.897980, 31.735981>,  <29.324968, 32.275494, 32.223579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828844, 31.897980, 31.735981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719059, 32.270645, 31.640759>,  <29.653189, 32.494244, 31.583626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719059, 32.270645, 31.640759>,  <29.828844, 31.897980, 31.735981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719059, 32.270645, 31.640759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954798, 0.234647, -0.182488,
		-0.114159, -0.277380, -0.953954,
		-0.274461, 0.931666, -0.238055,
		29.636721, 32.550144, 31.569342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163202, 32.043339, 31.137602>,  <29.828844, 31.897980, 31.735981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163202, 32.043339, 31.137602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080925, 32.405258, 31.286749>,  <30.031559, 32.622410, 31.376236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080925, 32.405258, 31.286749>,  <30.163202, 32.043339, 31.137602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080925, 32.405258, 31.286749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941012, 0.287475, -0.178479,
		-0.268677, 0.314159, -0.910559,
		-0.205692, 0.904800, 0.372865,
		30.019217, 32.676697, 31.398609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379915, 32.459538, 30.644016>,  <30.163202, 32.043339, 31.137602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379915, 32.459538, 30.644016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368793, 32.661732, 30.988972>,  <30.362120, 32.783047, 31.195946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368793, 32.661732, 30.988972>,  <30.379915, 32.459538, 30.644016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368793, 32.661732, 30.988972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870535, 0.436282, -0.227654,
		-0.491320, 0.744410, -0.452170,
		-0.027806, 0.505481, 0.862390,
		30.360451, 32.813377, 31.247688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491188, 33.022453, 30.301420>,  <30.379915, 32.459538, 30.644016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491188, 33.022453, 30.301420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578409, 33.011105, 30.691629>,  <30.630741, 33.004295, 30.925755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578409, 33.011105, 30.691629>,  <30.491188, 33.022453, 30.301420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578409, 33.011105, 30.691629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965821, 0.149821, -0.211526,
		-0.140153, 0.988306, 0.060068,
		0.218052, -0.028369, 0.975525,
		30.643826, 33.002594, 30.984287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121609, 33.394722, 30.363894>,  <30.491188, 33.022453, 30.301420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121609, 33.394722, 30.363894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088175, 33.133095, 30.664614>,  <31.068113, 32.976116, 30.845047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088175, 33.133095, 30.664614>,  <31.121609, 33.394722, 30.363894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088175, 33.133095, 30.664614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975309, -0.208456, -0.072922,
		0.204414, 0.727144, 0.655344,
		-0.083586, -0.654070, 0.751802,
		31.063099, 32.936874, 30.890154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888489, 33.729412, 30.419943>,  <31.121609, 33.394722, 30.363894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888489, 33.729412, 30.419943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053555, 33.443844, 30.646223>,  <32.152596, 33.272503, 30.781992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053555, 33.443844, 30.646223>,  <31.888489, 33.729412, 30.419943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053555, 33.443844, 30.646223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886145, -0.170899, 0.430744,
		-0.210843, -0.679044, -0.703168,
		0.412665, -0.713928, 0.565699,
		32.177353, 33.229668, 30.815933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702829, 33.000511, 30.406752>,  <31.888489, 33.729412, 30.419943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702829, 33.000511, 30.406752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786533, 33.093388, 30.786709>,  <31.836756, 33.149113, 31.014683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786533, 33.093388, 30.786709>,  <31.702829, 33.000511, 30.406752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786533, 33.093388, 30.786709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968154, -0.087328, 0.234630,
		0.137432, -0.968741, 0.206526,
		0.209260, 0.232195, 0.949892,
		31.849312, 33.163048, 31.071676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448757, 32.397465, 30.924870>,  <31.702829, 33.000511, 30.406752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448757, 32.397465, 30.924870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467312, 32.772663, 31.062277>,  <31.478445, 32.997784, 31.144720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467312, 32.772663, 31.062277>,  <31.448757, 32.397465, 30.924870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467312, 32.772663, 31.062277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938857, -0.076511, 0.335698,
		0.341168, -0.338084, 0.877100,
		0.046386, 0.938001, 0.343516,
		31.481228, 33.054062, 31.165331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288790, 32.528431, 31.652081>,  <31.448757, 32.397465, 30.924870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288790, 32.528431, 31.652081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191725, 32.877502, 31.482592>,  <31.133486, 33.086945, 31.380898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191725, 32.877502, 31.482592>,  <31.288790, 32.528431, 31.652081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191725, 32.877502, 31.482592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884467, -0.019584, 0.466192,
		0.398539, 0.487897, 0.776610,
		-0.242663, 0.872681, -0.423724,
		31.118925, 33.139305, 31.355474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047909, 33.123825, 32.134190>,  <31.288790, 32.528431, 31.652081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047909, 33.123825, 32.134190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886703, 33.133904, 31.768250>,  <30.789980, 33.139950, 31.548685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886703, 33.133904, 31.768250>,  <31.047909, 33.123825, 32.134190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886703, 33.133904, 31.768250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906827, 0.123871, 0.402890,
		0.123473, 0.991978, -0.027075,
		-0.403012, 0.025193, -0.914848,
		30.765800, 33.141460, 31.493795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402027, 33.562893, 32.300537>,  <31.047909, 33.123825, 32.134190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402027, 33.562893, 32.300537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364986, 33.372643, 31.950634>,  <30.342762, 33.258492, 31.740692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364986, 33.372643, 31.950634>,  <30.402027, 33.562893, 32.300537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364986, 33.372643, 31.950634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976526, -0.128208, 0.173087,
		-0.194477, 0.870252, -0.452592,
		-0.092603, -0.475630, -0.874758,
		30.337206, 33.229954, 31.688206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755671, 33.870193, 31.918665>,  <30.402027, 33.562893, 32.300537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755671, 33.870193, 31.918665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839804, 33.513416, 31.758564>,  <29.890284, 33.299351, 31.662504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839804, 33.513416, 31.758564>,  <29.755671, 33.870193, 31.918665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839804, 33.513416, 31.758564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930345, -0.308402, 0.198360,
		-0.300362, 0.330642, -0.894684,
		0.210336, -0.891944, -0.400243,
		29.902905, 33.245834, 31.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289322, 33.750805, 31.421131>,  <29.755671, 33.870193, 31.918665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289322, 33.750805, 31.421131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413506, 33.399784, 31.567295>,  <29.488016, 33.189171, 31.654993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413506, 33.399784, 31.567295>,  <29.289322, 33.750805, 31.421131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413506, 33.399784, 31.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939551, -0.224870, 0.258219,
		-0.144429, -0.423490, -0.894314,
		0.310457, -0.877547, 0.365413,
		29.506643, 33.136520, 31.676918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362345, 33.350822, 30.848749>,  <29.289322, 33.750805, 31.421131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362345, 33.350822, 30.848749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363001, 32.950928, 30.857931>,  <29.363394, 32.710991, 30.863440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363001, 32.950928, 30.857931>,  <29.362345, 33.350822, 30.848749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363001, 32.950928, 30.857931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893311, 0.008853, 0.449353,
		-0.449437, -0.021243, -0.893060,
		0.001640, -0.999735, 0.022956,
		29.363493, 32.651009, 30.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756367, 33.078899, 30.458303>,  <29.362345, 33.350822, 30.848749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756367, 33.078899, 30.458303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867201, 32.842678, 30.761480>,  <28.933701, 32.700947, 30.943386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867201, 32.842678, 30.761480>,  <28.756367, 33.078899, 30.458303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867201, 32.842678, 30.761480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926477, 0.044879, 0.373666,
		-0.254684, -0.805753, -0.534695,
		0.277086, -0.590549, 0.757941,
		28.950327, 32.665512, 30.988863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400097, 32.422035, 30.508995>,  <28.756367, 33.078899, 30.458303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400097, 32.422035, 30.508995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528864, 32.515194, 30.876064>,  <28.606125, 32.571091, 31.096306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528864, 32.515194, 30.876064>,  <28.400097, 32.422035, 30.508995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528864, 32.515194, 30.876064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945049, 0.137431, 0.296641,
		-0.057031, -0.962742, 0.264338,
		0.321917, 0.232894, 0.917676,
		28.625439, 32.585064, 31.151367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828724, 32.199043, 30.860075>,  <28.400097, 32.422035, 30.508995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828724, 32.199043, 30.860075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030228, 32.416275, 31.128788>,  <28.151131, 32.546612, 31.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030228, 32.416275, 31.128788>,  <27.828724, 32.199043, 30.860075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030228, 32.416275, 31.128788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851330, 0.180221, 0.492705,
		0.146504, -0.820118, 0.553122,
		0.503760, 0.543072, 0.671788,
		28.181356, 32.579197, 31.330324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581057, 32.010845, 31.492659>,  <27.828724, 32.199043, 30.860075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581057, 32.010845, 31.492659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717945, 32.386463, 31.505747>,  <27.800079, 32.611835, 31.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717945, 32.386463, 31.505747>,  <27.581057, 32.010845, 31.492659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717945, 32.386463, 31.505747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787483, 0.267642, 0.555192,
		0.512596, -0.215764, 0.831078,
		0.342222, 0.939050, 0.032718,
		27.820612, 32.668179, 31.515562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710541, 32.441284, 32.186935>,  <27.581057, 32.010845, 31.492659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710541, 32.441284, 32.186935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621624, 32.675777, 31.875315>,  <27.568274, 32.816471, 31.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621624, 32.675777, 31.875315>,  <27.710541, 32.441284, 32.186935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621624, 32.675777, 31.875315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816564, 0.324664, 0.477302,
		0.532738, 0.742245, 0.406524,
		-0.222292, 0.586230, -0.779052,
		27.554937, 32.851646, 31.641600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464518, 32.927345, 32.582329>,  <27.710541, 32.441284, 32.186935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464518, 32.927345, 32.582329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616064, 33.187962, 32.319435>,  <27.706991, 33.344330, 32.161697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616064, 33.187962, 32.319435>,  <27.464518, 32.927345, 32.582329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616064, 33.187962, 32.319435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830283, 0.552983, 0.069571,
		0.408768, 0.519333, 0.750468,
		0.378865, 0.651539, -0.657235,
		27.729723, 33.383423, 32.122265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600235, 33.767467, 32.852345>,  <27.464518, 32.927345, 32.582329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600235, 33.767467, 32.852345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496632, 33.689377, 32.473969>,  <27.434469, 33.642521, 32.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496632, 33.689377, 32.473969>,  <27.600235, 33.767467, 32.852345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496632, 33.689377, 32.473969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774426, 0.627251, 0.082588,
		0.577218, 0.753950, -0.313654,
		-0.259007, -0.195230, -0.945939,
		27.418930, 33.630806, 32.190186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356224, 34.360046, 32.613453>,  <27.600235, 33.767467, 32.852345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356224, 34.360046, 32.613453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183342, 34.091320, 32.372833>,  <27.079613, 33.930084, 32.228462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183342, 34.091320, 32.372833>,  <27.356224, 34.360046, 32.613453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183342, 34.091320, 32.372833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858924, 0.509879, 0.047681,
		0.274683, 0.537290, -0.797414,
		-0.432203, -0.671820, -0.601546,
		27.053680, 33.889774, 32.192368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900900, 34.836372, 32.559223>,  <27.356224, 34.360046, 32.613453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900900, 34.836372, 32.559223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241758, 34.982040, 32.408901>,  <27.446274, 35.069439, 32.318707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241758, 34.982040, 32.408901>,  <26.900900, 34.836372, 32.559223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241758, 34.982040, 32.408901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520764, -0.660792, 0.540518,
		-0.051489, -0.656305, -0.752737,
		0.852147, 0.364167, -0.375803,
		27.497402, 35.091290, 32.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621490, 35.118027, 32.885349>,  <26.900900, 34.836372, 32.559223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621490, 35.118027, 32.885349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961439, 34.921551, 32.808979>,  <28.165409, 34.803665, 32.763157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961439, 34.921551, 32.808979>,  <27.621490, 35.118027, 32.885349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961439, 34.921551, 32.808979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371418, 0.301266, 0.878229,
		-0.373854, -0.817297, 0.438473,
		0.849871, -0.491187, -0.190929,
		28.216400, 34.774193, 32.751701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784389, 34.647591, 33.425117>,  <27.621490, 35.118027, 32.885349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784389, 34.647591, 33.425117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139170, 34.740208, 33.265266>,  <28.352037, 34.795780, 33.169357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139170, 34.740208, 33.265266>,  <27.784389, 34.647591, 33.425117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139170, 34.740208, 33.265266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380063, 0.125729, 0.916376,
		0.262429, -0.964665, 0.023513,
		0.886951, 0.231547, -0.399629,
		28.405254, 34.809669, 33.145378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302496, 34.246407, 33.766335>,  <27.784389, 34.647591, 33.425117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302496, 34.246407, 33.766335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440962, 34.588951, 33.613071>,  <28.524040, 34.794479, 33.521114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440962, 34.588951, 33.613071>,  <28.302496, 34.246407, 33.766335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440962, 34.588951, 33.613071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329303, 0.271518, 0.904344,
		0.878482, -0.439227, -0.188013,
		0.346163, 0.856363, -0.383162,
		28.544811, 34.845860, 33.498123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967127, 34.259956, 34.006771>,  <28.302496, 34.246407, 33.766335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967127, 34.259956, 34.006771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861444, 34.642487, 33.956757>,  <28.798035, 34.872005, 33.926746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861444, 34.642487, 33.956757>,  <28.967127, 34.259956, 34.006771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861444, 34.642487, 33.956757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315485, 0.208208, 0.925807,
		0.911408, 0.205155, -0.356716,
		-0.264205, 0.956327, -0.125039,
		28.782183, 34.929386, 33.919247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437914, 33.986927, 34.553875>,  <28.967127, 34.259956, 34.006771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437914, 33.986927, 34.553875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668917, 34.294147, 34.664570>,  <28.807518, 34.478481, 34.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668917, 34.294147, 34.664570>,  <28.437914, 33.986927, 34.553875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668917, 34.294147, 34.664570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766036, -0.627010, 0.141589,
		0.282263, 0.130220, -0.950458,
		0.577508, 0.768051, 0.276735,
		28.842169, 34.524563, 34.747589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030476, 33.714630, 34.611805>,  <28.437914, 33.986927, 34.553875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030476, 33.714630, 34.611805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171459, 34.080151, 34.692543>,  <29.256050, 34.299461, 34.740986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171459, 34.080151, 34.692543>,  <29.030476, 33.714630, 34.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171459, 34.080151, 34.692543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892471, -0.393108, 0.221271,
		0.281545, 0.102153, -0.954095,
		0.352459, 0.913800, 0.201847,
		29.277197, 34.354290, 34.753098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653242, 33.840790, 34.273655>,  <29.030476, 33.714630, 34.611805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653242, 33.840790, 34.273655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671120, 34.136471, 34.542454>,  <29.681847, 34.313881, 34.703732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671120, 34.136471, 34.542454>,  <29.653242, 33.840790, 34.273655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671120, 34.136471, 34.542454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966560, -0.202026, 0.157949,
		0.252517, 0.642466, -0.723514,
		0.044692, 0.739205, 0.671996,
		29.684526, 34.358231, 34.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263155, 34.095161, 34.396427>,  <29.653242, 33.840790, 34.273655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263155, 34.095161, 34.396427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554365, 33.831558, 34.320862>,  <30.729092, 33.673397, 34.275524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554365, 33.831558, 34.320862>,  <30.263155, 34.095161, 34.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554365, 33.831558, 34.320862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261028, -0.011662, -0.965261,
		0.633913, 0.752044, -0.180510,
		0.728024, -0.659009, -0.188912,
		30.772772, 33.633854, 34.264187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642038, 34.491676, 33.817104>,  <30.263155, 34.095161, 34.396427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642038, 34.491676, 33.817104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003183, 34.552582, 33.977928>,  <31.219872, 34.589123, 34.074421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003183, 34.552582, 33.977928>,  <30.642038, 34.491676, 33.817104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003183, 34.552582, 33.977928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423370, -0.152203, -0.893080,
		-0.074785, 0.976551, -0.201881,
		0.902865, 0.152260, 0.402060,
		31.274042, 34.598259, 34.098545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004583, 35.146595, 33.578300>,  <30.642038, 34.491676, 33.817104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004583, 35.146595, 33.578300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203098, 34.802254, 33.623257>,  <31.322206, 34.595650, 33.650230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203098, 34.802254, 33.623257>,  <31.004583, 35.146595, 33.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203098, 34.802254, 33.623257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039839, -0.106734, -0.993489,
		0.867244, 0.497533, -0.018675,
		0.496287, -0.860853, 0.112386,
		31.351984, 34.543999, 33.656971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666842, 35.114620, 33.216560>,  <31.004583, 35.146595, 33.578300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666842, 35.114620, 33.216560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545074, 34.736046, 33.259609>,  <31.472013, 34.508900, 33.285439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545074, 34.736046, 33.259609>,  <31.666842, 35.114620, 33.216560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545074, 34.736046, 33.259609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097082, -0.143223, -0.984917,
		0.947578, -0.289379, 0.135481,
		-0.304418, -0.946439, 0.107622,
		31.453749, 34.452114, 33.291897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209808, 34.549553, 33.092243>,  <31.666842, 35.114620, 33.216560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209808, 34.549553, 33.092243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844194, 34.440903, 32.971737>,  <31.624826, 34.375713, 32.899433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844194, 34.440903, 32.971737>,  <32.209808, 34.549553, 33.092243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844194, 34.440903, 32.971737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364316, -0.223117, -0.904153,
		0.178372, -0.936183, 0.302893,
		-0.914034, -0.271624, -0.301269,
		31.569984, 34.359417, 32.881355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239323, 33.936394, 32.684307>,  <32.209808, 34.549553, 33.092243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239323, 33.936394, 32.684307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903172, 34.125187, 32.577724>,  <31.701481, 34.238464, 32.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903172, 34.125187, 32.577724>,  <32.239323, 33.936394, 32.684307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903172, 34.125187, 32.577724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206939, -0.174956, -0.962583,
		-0.500939, -0.864074, 0.049358,
		-0.840378, 0.471982, -0.266453,
		31.651058, 34.266781, 32.497787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849236, 33.547768, 32.186447>,  <32.239323, 33.936394, 32.684307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849236, 33.547768, 32.186447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732553, 33.927628, 32.140720>,  <31.662544, 34.155544, 32.113285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732553, 33.927628, 32.140720>,  <31.849236, 33.547768, 32.186447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732553, 33.927628, 32.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028535, -0.110819, -0.993431,
		-0.956082, -0.293053, 0.005228,
		-0.291707, 0.949652, -0.114314,
		31.645041, 34.212524, 32.106426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498882, 33.623825, 31.510788>,  <31.849236, 33.547768, 32.186447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498882, 33.623825, 31.510788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558460, 34.006439, 31.611078>,  <31.594208, 34.236008, 31.671251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558460, 34.006439, 31.611078>,  <31.498882, 33.623825, 31.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558460, 34.006439, 31.611078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001346, 0.253355, -0.967372,
		-0.988844, 0.144424, 0.036449,
		0.148947, 0.956531, 0.250723,
		31.603144, 34.293400, 31.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930698, 34.072186, 31.178656>,  <31.498882, 33.623825, 31.510788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930698, 34.072186, 31.178656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232504, 34.322094, 31.259020>,  <31.413588, 34.472038, 31.307238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232504, 34.322094, 31.259020>,  <30.930698, 34.072186, 31.178656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232504, 34.322094, 31.259020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063568, 0.374267, -0.925140,
		-0.653196, 0.685261, 0.322105,
		0.754515, 0.624773, 0.200909,
		31.458858, 34.509525, 31.319292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688293, 34.747658, 30.989653>,  <30.930698, 34.072186, 31.178656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688293, 34.747658, 30.989653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087233, 34.773357, 31.003330>,  <31.326595, 34.788776, 31.011536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087233, 34.773357, 31.003330>,  <30.688293, 34.747658, 30.989653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087233, 34.773357, 31.003330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004057, 0.518144, -0.855284,
		-0.072670, 0.852877, 0.517030,
		0.997348, 0.064251, 0.034193,
		31.386436, 34.792633, 31.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805145, 35.373283, 30.816080>,  <30.688293, 34.747658, 30.989653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805145, 35.373283, 30.816080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176094, 35.233864, 30.761679>,  <31.398663, 35.150211, 30.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176094, 35.233864, 30.761679>,  <30.805145, 35.373283, 30.816080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176094, 35.233864, 30.761679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062188, 0.502056, -0.862596,
		0.368935, 0.791490, 0.487269,
		0.927373, -0.348544, -0.136005,
		31.454306, 35.129299, 30.720877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273626, 35.896629, 30.714729>,  <30.805145, 35.373283, 30.816080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273626, 35.896629, 30.714729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463152, 35.589977, 30.541395>,  <31.576866, 35.405987, 30.437395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463152, 35.589977, 30.541395>,  <31.273626, 35.896629, 30.714729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463152, 35.589977, 30.541395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022323, 0.481465, -0.876181,
		0.880343, 0.424818, 0.211011,
		0.473812, -0.766630, -0.433338,
		31.605295, 35.359989, 30.411394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786261, 36.183693, 30.325480>,  <31.273626, 35.896629, 30.714729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786261, 36.183693, 30.325480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710840, 35.822037, 30.172129>,  <31.665588, 35.605042, 30.080118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710840, 35.822037, 30.172129>,  <31.786261, 36.183693, 30.325480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710840, 35.822037, 30.172129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029004, 0.385084, -0.922426,
		0.981635, -0.185045, -0.046385,
		-0.188553, -0.904140, -0.383379,
		31.654274, 35.550797, 30.057116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328907, 36.084984, 29.883718>,  <31.786261, 36.183693, 30.325480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328907, 36.084984, 29.883718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031963, 35.841618, 29.771477>,  <31.853798, 35.695599, 29.704132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031963, 35.841618, 29.771477>,  <32.328907, 36.084984, 29.883718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031963, 35.841618, 29.771477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199318, 0.199306, -0.959453,
		0.639669, -0.768187, -0.026689,
		-0.742359, -0.608412, -0.280603,
		31.809256, 35.659096, 29.687296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586777, 35.716656, 29.386711>,  <32.328907, 36.084984, 29.883718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586777, 35.716656, 29.386711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191589, 35.699867, 29.327171>,  <31.954477, 35.689796, 29.291447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191589, 35.699867, 29.327171>,  <32.586777, 35.716656, 29.386711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191589, 35.699867, 29.327171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122015, 0.379867, -0.916959,
		0.095026, -0.924089, -0.370176,
		-0.987969, -0.041968, -0.148849,
		31.895199, 35.687275, 29.282516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445812, 35.356213, 28.744045>,  <32.586777, 35.716656, 29.386711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445812, 35.356213, 28.744045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141434, 35.607037, 28.810677>,  <31.958805, 35.757530, 28.850655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141434, 35.607037, 28.810677>,  <32.445812, 35.356213, 28.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141434, 35.607037, 28.810677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216950, 0.487881, -0.845520,
		-0.611463, -0.607260, -0.507294,
		-0.760950, 0.627062, 0.166576,
		31.913149, 35.795155, 28.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246517, 35.554569, 28.094763>,  <32.445812, 35.356213, 28.744045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246517, 35.554569, 28.094763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994102, 35.796024, 28.289661>,  <31.842653, 35.940895, 28.406601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994102, 35.796024, 28.289661>,  <32.246517, 35.554569, 28.094763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994102, 35.796024, 28.289661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041963, 0.600620, -0.798433,
		-0.774614, -0.524291, -0.353685,
		-0.631041, 0.603635, 0.487249,
		31.804790, 35.977116, 28.435837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648079, 35.651279, 27.562002>,  <32.246517, 35.554569, 28.094763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648079, 35.651279, 27.562002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671730, 35.941448, 27.836308>,  <31.685921, 36.115547, 28.000891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671730, 35.941448, 27.836308>,  <31.648079, 35.651279, 27.562002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671730, 35.941448, 27.836308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215022, 0.661584, -0.718382,
		-0.974818, 0.189929, -0.116864,
		0.059127, 0.725420, 0.685762,
		31.689468, 36.159073, 28.042036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252964, 36.221478, 27.249493>,  <31.648079, 35.651279, 27.562002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252964, 36.221478, 27.249493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495625, 36.346474, 27.541883>,  <31.641220, 36.421471, 27.717318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495625, 36.346474, 27.541883>,  <31.252964, 36.221478, 27.249493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495625, 36.346474, 27.541883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301819, 0.760119, -0.575434,
		-0.735447, 0.569709, 0.366811,
		0.606650, 0.312490, 0.730976,
		31.677620, 36.440220, 27.761177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112896, 36.980751, 27.397457>,  <31.252964, 36.221478, 27.249493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112896, 36.980751, 27.397457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472094, 36.893219, 27.550152>,  <31.687613, 36.840698, 27.641768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472094, 36.893219, 27.550152>,  <31.112896, 36.980751, 27.397457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472094, 36.893219, 27.550152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374670, 0.835191, -0.402590,
		-0.230721, 0.504548, 0.831985,
		0.897992, -0.218834, 0.381735,
		31.741491, 36.827568, 27.664673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308563, 37.639187, 27.653568>,  <31.112896, 36.980751, 27.397457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308563, 37.639187, 27.653568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641533, 37.423782, 27.601299>,  <31.841314, 37.294540, 27.569939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641533, 37.423782, 27.601299>,  <31.308563, 37.639187, 27.653568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641533, 37.423782, 27.601299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461316, 0.804091, -0.375000,
		0.307014, 0.251878, 0.917769,
		0.832424, -0.538512, -0.130672,
		31.891260, 37.262230, 27.562098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854307, 37.985321, 28.104242>,  <31.308563, 37.639187, 27.653568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854307, 37.985321, 28.104242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000141, 37.749233, 27.816154>,  <32.087643, 37.607578, 27.643303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000141, 37.749233, 27.816154>,  <31.854307, 37.985321, 28.104242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000141, 37.749233, 27.816154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060516, 0.786839, -0.614184,
		0.929201, 0.180338, 0.322589,
		0.364587, -0.590222, -0.720218,
		32.109516, 37.572166, 27.600088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443241, 38.374458, 27.800583>,  <31.854307, 37.985321, 28.104242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443241, 38.374458, 27.800583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321857, 38.094410, 27.542049>,  <32.249027, 37.926380, 27.386930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321857, 38.094410, 27.542049>,  <32.443241, 38.374458, 27.800583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321857, 38.094410, 27.542049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057282, 0.663688, -0.745813,
		0.951121, -0.263346, -0.161298,
		-0.303459, -0.700119, -0.646333,
		32.230820, 37.884373, 27.348150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797615, 38.525806, 27.246504>,  <32.443241, 38.374458, 27.800583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797615, 38.525806, 27.246504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499641, 38.305508, 27.095905>,  <32.320858, 38.173328, 27.005547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499641, 38.305508, 27.095905>,  <32.797615, 38.525806, 27.246504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499641, 38.305508, 27.095905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080689, 0.485823, -0.870325,
		0.662242, -0.678712, -0.317466,
		-0.744933, -0.550750, -0.376497,
		32.276161, 38.140282, 26.982956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995701, 38.524303, 26.588713>,  <32.797615, 38.525806, 27.246504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995701, 38.524303, 26.588713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609257, 38.433334, 26.637545>,  <32.377388, 38.378754, 26.666843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609257, 38.433334, 26.637545>,  <32.995701, 38.524303, 26.588713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609257, 38.433334, 26.637545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221832, 0.489766, -0.843160,
		0.131963, -0.841670, -0.523620,
		-0.966114, -0.227422, 0.122078,
		32.319424, 38.365108, 26.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745159, 38.457726, 25.824602>,  <32.995701, 38.524303, 26.588713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745159, 38.457726, 25.824602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417809, 38.518974, 26.046167>,  <32.221397, 38.555721, 26.179106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417809, 38.518974, 26.046167>,  <32.745159, 38.457726, 25.824602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417809, 38.518974, 26.046167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349089, 0.633198, -0.690795,
		-0.456508, -0.758693, -0.464741,
		-0.818375, 0.153118, 0.553911,
		32.172295, 38.564911, 26.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148952, 38.256908, 25.381723>,  <32.745159, 38.457726, 25.824602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148952, 38.256908, 25.381723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007755, 38.500317, 25.666006>,  <31.923038, 38.646362, 25.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007755, 38.500317, 25.666006>,  <32.148952, 38.256908, 25.381723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007755, 38.500317, 25.666006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202553, 0.691888, -0.693011,
		-0.913439, -0.388581, -0.120971,
		-0.352990, 0.608520, 0.710705,
		31.901859, 38.682873, 25.879217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530914, 38.482620, 25.124590>,  <32.148952, 38.256908, 25.381723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530914, 38.482620, 25.124590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621601, 38.768963, 25.388756>,  <31.676014, 38.940769, 25.547255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621601, 38.768963, 25.388756>,  <31.530914, 38.482620, 25.124590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621601, 38.768963, 25.388756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317919, 0.695323, -0.644557,
		-0.920612, -0.063825, 0.385228,
		0.226719, 0.715858, 0.660414,
		31.689617, 38.983719, 25.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083445, 39.048866, 25.088886>,  <31.530914, 38.482620, 25.124590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083445, 39.048866, 25.088886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362556, 39.247643, 25.295246>,  <31.530024, 39.366909, 25.419062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362556, 39.247643, 25.295246>,  <31.083445, 39.048866, 25.088886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362556, 39.247643, 25.295246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103582, 0.782646, -0.613788,
		-0.708783, 0.374852, 0.597589,
		0.697780, 0.496942, 0.515899,
		31.571890, 39.396725, 25.450016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867659, 39.727947, 25.090376>,  <31.083445, 39.048866, 25.088886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867659, 39.727947, 25.090376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262432, 39.769157, 25.139923>,  <31.499296, 39.793884, 25.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262432, 39.769157, 25.139923>,  <30.867659, 39.727947, 25.090376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262432, 39.769157, 25.139923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011521, 0.721717, -0.692092,
		-0.160702, 0.684478, 0.711101,
		0.986936, 0.103028, 0.123867,
		31.558514, 39.800064, 25.177084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967411, 40.444981, 25.151329>,  <30.867659, 39.727947, 25.090376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967411, 40.444981, 25.151329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325338, 40.306850, 25.038158>,  <31.540094, 40.223972, 24.970257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325338, 40.306850, 25.038158>,  <30.967411, 40.444981, 25.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325338, 40.306850, 25.038158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053173, 0.711686, -0.700483,
		0.443249, 0.611762, 0.655193,
		0.894820, -0.345327, -0.282925,
		31.593784, 40.203251, 24.953281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434565, 41.047573, 25.051949>,  <30.967411, 40.444981, 25.151329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434565, 41.047573, 25.051949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589308, 40.736778, 24.853302>,  <31.682154, 40.550301, 24.734114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589308, 40.736778, 24.853302>,  <31.434565, 41.047573, 25.051949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589308, 40.736778, 24.853302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236158, 0.604068, -0.761138,
		0.891386, 0.177173, 0.417181,
		0.386859, -0.776989, -0.496617,
		31.705366, 40.503681, 24.704317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976913, 41.347839, 24.665413>,  <31.434565, 41.047573, 25.051949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976913, 41.347839, 24.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966049, 40.987404, 24.492300>,  <31.959530, 40.771141, 24.388433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966049, 40.987404, 24.492300>,  <31.976913, 41.347839, 24.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966049, 40.987404, 24.492300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421356, 0.382280, -0.822388,
		0.906489, -0.204692, 0.369296,
		-0.027162, -0.901090, -0.432781,
		31.957901, 40.717075, 24.362465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578930, 41.122387, 24.483707>,  <31.976913, 41.347839, 24.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578930, 41.122387, 24.483707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345318, 40.921761, 24.228416>,  <32.205151, 40.801384, 24.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345318, 40.921761, 24.228416>,  <32.578930, 41.122387, 24.483707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345318, 40.921761, 24.228416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387220, 0.518883, -0.762116,
		0.713420, -0.692235, -0.108826,
		-0.584031, -0.501569, -0.638228,
		32.170109, 40.771290, 24.036947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034054, 40.843872, 23.937639>,  <32.578930, 41.122387, 24.483707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034054, 40.843872, 23.937639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655579, 40.871544, 23.811184>,  <32.428493, 40.888145, 23.735310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655579, 40.871544, 23.811184>,  <33.034054, 40.843872, 23.937639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655579, 40.871544, 23.811184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311191, 0.462613, -0.830150,
		0.088825, -0.883857, -0.459246,
		-0.946187, 0.069175, -0.316140,
		32.371723, 40.892296, 23.716343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983223, 40.554626, 23.308729>,  <33.034054, 40.843872, 23.937639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983223, 40.554626, 23.308729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679054, 40.813736, 23.327234>,  <32.496552, 40.969204, 23.338337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679054, 40.813736, 23.327234>,  <32.983223, 40.554626, 23.308729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679054, 40.813736, 23.327234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332712, 0.449765, -0.828863,
		-0.557724, -0.614897, -0.557535,
		-0.760425, 0.647776, 0.046261,
		32.450928, 41.008068, 23.341112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946087, 40.787498, 22.602358>,  <32.983223, 40.554626, 23.308729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946087, 40.787498, 22.602358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729507, 41.058723, 22.801178>,  <32.599560, 41.221458, 22.920469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729507, 41.058723, 22.801178>,  <32.946087, 40.787498, 22.602358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729507, 41.058723, 22.801178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150275, 0.659745, -0.736311,
		-0.827194, -0.323981, -0.459115,
		-0.541450, 0.678065, 0.497051,
		32.567074, 41.262142, 22.950293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544014, 41.123455, 22.074095>,  <32.946087, 40.787498, 22.602358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544014, 41.123455, 22.074095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553207, 41.380440, 22.380484>,  <32.558723, 41.534630, 22.564318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553207, 41.380440, 22.380484>,  <32.544014, 41.123455, 22.074095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553207, 41.380440, 22.380484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155525, 0.754551, -0.637546,
		-0.987565, 0.133778, -0.082580,
		0.022979, 0.642461, 0.765973,
		32.560101, 41.573177, 22.610275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287128, 41.686256, 21.750483>,  <32.544014, 41.123455, 22.074095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287128, 41.686256, 21.750483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430687, 41.827362, 22.096142>,  <32.516823, 41.912025, 22.303537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430687, 41.827362, 22.096142>,  <32.287128, 41.686256, 21.750483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430687, 41.827362, 22.096142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094100, 0.907436, -0.409519,
		-0.928622, 0.228291, 0.292480,
		0.358897, 0.352766, 0.864147,
		32.538357, 41.933193, 22.355387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922453, 42.365528, 21.827026>,  <32.287128, 41.686256, 21.750483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922453, 42.365528, 21.827026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259121, 42.340984, 22.041626>,  <32.461121, 42.326260, 22.170385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259121, 42.340984, 22.041626>,  <31.922453, 42.365528, 21.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259121, 42.340984, 22.041626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329715, 0.845214, -0.420596,
		-0.427649, 0.530894, 0.731621,
		0.841668, -0.061359, 0.536498,
		32.511620, 42.322578, 22.202576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033596, 43.037884, 22.042503>,  <31.922453, 42.365528, 21.827026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033596, 43.037884, 22.042503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376480, 42.833790, 22.070379>,  <32.582211, 42.711334, 22.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376480, 42.833790, 22.070379>,  <32.033596, 43.037884, 22.042503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376480, 42.833790, 22.070379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486266, 0.757424, -0.435722,
		0.169538, 0.407391, 0.897379,
		0.857206, -0.510236, 0.069688,
		32.633640, 42.680717, 22.091286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532383, 43.492592, 22.285389>,  <32.033596, 43.037884, 22.042503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532383, 43.492592, 22.285389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769665, 43.218960, 22.115614>,  <32.912033, 43.054783, 22.013748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769665, 43.218960, 22.115614>,  <32.532383, 43.492592, 22.285389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769665, 43.218960, 22.115614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521786, 0.728191, -0.444384,
		0.613065, 0.042144, 0.788907,
		0.593203, -0.684077, -0.424438,
		32.947624, 43.013737, 21.988283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194683, 43.739456, 22.432587>,  <32.532383, 43.492592, 22.285389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194683, 43.739456, 22.432587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219135, 43.484676, 22.125196>,  <33.233807, 43.331806, 21.940763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219135, 43.484676, 22.125196>,  <33.194683, 43.739456, 22.432587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219135, 43.484676, 22.125196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586339, 0.645985, -0.488785,
		0.807756, -0.420706, 0.412961,
		0.061132, -0.636954, -0.768474,
		33.237476, 43.293591, 21.894653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941162, 43.532814, 22.303879>,  <33.194683, 43.739456, 22.432587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941162, 43.532814, 22.303879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740639, 43.467663, 21.963959>,  <33.620323, 43.428574, 21.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740639, 43.467663, 21.963959>,  <33.941162, 43.532814, 22.303879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740639, 43.467663, 21.963959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650334, 0.576903, -0.494214,
		0.570744, -0.800410, -0.183291,
		-0.501315, -0.162869, -0.849798,
		33.590244, 43.418800, 21.709019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495560, 43.428661, 21.758465>,  <33.941162, 43.532814, 22.303879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495560, 43.428661, 21.758465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157578, 43.542725, 21.577473>,  <33.954788, 43.611164, 21.468878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157578, 43.542725, 21.577473>,  <34.495560, 43.428661, 21.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157578, 43.542725, 21.577473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503983, 0.707712, -0.495122,
		0.179038, -0.646397, -0.741698,
		-0.844954, 0.285157, -0.452480,
		33.904091, 43.628273, 21.441729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650829, 43.615719, 21.020794>,  <34.495560, 43.428661, 21.758465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650829, 43.615719, 21.020794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295074, 43.775547, 21.109642>,  <34.081623, 43.871445, 21.162951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295074, 43.775547, 21.109642>,  <34.650829, 43.615719, 21.020794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295074, 43.775547, 21.109642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273282, 0.854189, -0.442355,
		-0.366485, -0.332723, -0.868898,
		-0.889385, 0.399570, 0.222120,
		34.028259, 43.895416, 21.176279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529221, 43.939297, 20.420174>,  <34.650829, 43.615719, 21.020794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529221, 43.939297, 20.420174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275772, 44.137791, 20.657583>,  <34.123703, 44.256889, 20.800030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275772, 44.137791, 20.657583>,  <34.529221, 43.939297, 20.420174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275772, 44.137791, 20.657583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158640, 0.834219, -0.528122,
		-0.757204, -0.240472, -0.607302,
		-0.633621, 0.496238, 0.593525,
		34.085686, 44.286663, 20.835640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079937, 44.302433, 19.972672>,  <34.529221, 43.939297, 20.420174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079937, 44.302433, 19.972672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053864, 44.499054, 20.320034>,  <34.038219, 44.617027, 20.528452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053864, 44.499054, 20.320034>,  <34.079937, 44.302433, 19.972672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053864, 44.499054, 20.320034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108195, 0.861644, -0.495845,
		-0.991990, -0.126280, -0.002985,
		-0.065187, 0.491551, 0.868406,
		34.034306, 44.646519, 20.580555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590927, 44.935871, 19.880682>,  <34.079937, 44.302433, 19.972672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590927, 44.935871, 19.880682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775124, 45.022377, 20.225050>,  <33.885639, 45.074280, 20.431671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775124, 45.022377, 20.225050>,  <33.590927, 44.935871, 19.880682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775124, 45.022377, 20.225050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073641, 0.975832, -0.205740,
		-0.884606, 0.031342, 0.465285,
		0.460489, 0.216262, 0.860918,
		33.913269, 45.087257, 20.483326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142902, 45.484016, 20.224461>,  <33.590927, 44.935871, 19.880682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142902, 45.484016, 20.224461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523941, 45.466084, 20.344830>,  <33.752563, 45.455322, 20.417051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523941, 45.466084, 20.344830>,  <33.142902, 45.484016, 20.224461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523941, 45.466084, 20.344830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114151, 0.969496, -0.216902,
		-0.282019, 0.240970, 0.928654,
		0.952594, -0.044836, 0.300923,
		33.809719, 45.452633, 20.435106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317757, 46.009377, 20.815825>,  <33.142902, 45.484016, 20.224461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317757, 46.009377, 20.815825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636845, 45.910400, 20.595854>,  <33.828297, 45.851017, 20.463871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636845, 45.910400, 20.595854>,  <33.317757, 46.009377, 20.815825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636845, 45.910400, 20.595854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059228, 0.939679, -0.336890,
		0.600115, 0.236172, 0.764254,
		0.797718, -0.247438, -0.549928,
		33.876160, 45.836170, 20.430876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021103, 46.441711, 20.928917>,  <33.317757, 46.009377, 20.815825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021103, 46.441711, 20.928917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003975, 46.282574, 20.562336>,  <33.993698, 46.187092, 20.342388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003975, 46.282574, 20.562336>,  <34.021103, 46.441711, 20.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003975, 46.282574, 20.562336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272047, 0.877989, -0.393860,
		0.961331, -0.266183, 0.070639,
		-0.042818, -0.397847, -0.916452,
		33.991131, 46.163219, 20.287401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814754, 46.919743, 21.486769>,  <34.021103, 46.441711, 20.928917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814754, 46.919743, 21.486769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110405, 47.088242, 21.697004>,  <34.287796, 47.189342, 21.823147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110405, 47.088242, 21.697004>,  <33.814754, 46.919743, 21.486769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110405, 47.088242, 21.697004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483638, 0.211206, -0.849404,
		-0.468817, 0.882011, -0.047624,
		0.739125, 0.421248, 0.525591,
		34.332142, 47.214615, 21.854681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991158, 47.577374, 21.197023>,  <33.814754, 46.919743, 21.486769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991158, 47.577374, 21.197023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314884, 47.457233, 21.398932>,  <34.509121, 47.385147, 21.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314884, 47.457233, 21.398932>,  <33.991158, 47.577374, 21.197023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314884, 47.457233, 21.398932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580171, 0.274605, -0.766808,
		0.091700, 0.913444, 0.396498,
		0.809316, -0.300353, 0.504772,
		34.557678, 47.367126, 21.550364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476784, 47.899323, 20.834194>,  <33.991158, 47.577374, 21.197023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476784, 47.899323, 20.834194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674923, 47.653996, 21.080276>,  <34.793804, 47.506802, 21.227926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674923, 47.653996, 21.080276>,  <34.476784, 47.899323, 20.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674923, 47.653996, 21.080276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842483, 0.166510, -0.512345,
		0.211791, 0.772088, 0.599187,
		0.495346, -0.613314, 0.615206,
		34.823528, 47.470001, 21.264837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118816, 48.267204, 20.885359>,  <34.476784, 47.899323, 20.834194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118816, 48.267204, 20.885359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180336, 47.892052, 21.009764>,  <35.217247, 47.666962, 21.084406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180336, 47.892052, 21.009764>,  <35.118816, 48.267204, 20.885359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180336, 47.892052, 21.009764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930258, 0.031323, -0.365566,
		0.333115, 0.345545, 0.877288,
		0.153799, -0.937880, 0.311011,
		35.226475, 47.610687, 21.103067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801929, 48.125698, 21.161005>,  <35.118816, 48.267204, 20.885359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801929, 48.125698, 21.161005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665051, 47.764034, 21.058712>,  <35.582924, 47.547035, 20.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665051, 47.764034, 21.058712>,  <35.801929, 48.125698, 21.161005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665051, 47.764034, 21.058712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875712, -0.208216, -0.435631,
		0.340633, -0.373018, 0.863034,
		-0.342195, -0.904159, -0.255731,
		35.562393, 47.492786, 20.981993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222816, 47.525097, 21.510181>,  <35.801929, 48.125698, 21.161005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222816, 47.525097, 21.510181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049976, 47.409470, 21.168486>,  <35.946270, 47.340092, 20.963469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049976, 47.409470, 21.168486>,  <36.222816, 47.525097, 21.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049976, 47.409470, 21.168486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893550, -0.265248, -0.362231,
		-0.121877, -0.919828, 0.372911,
		-0.432104, -0.289067, -0.854240,
		35.920345, 47.322750, 20.912214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624699, 47.290081, 22.000576>,  <36.222816, 47.525097, 21.510181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624699, 47.290081, 22.000576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246151, 47.413494, 21.962215>,  <35.019024, 47.487541, 21.939199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246151, 47.413494, 21.962215>,  <35.624699, 47.290081, 22.000576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246151, 47.413494, 21.962215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282497, -0.646108, 0.709042,
		0.156803, 0.698104, 0.698615,
		-0.946366, 0.308536, -0.095900,
		34.962242, 47.506054, 21.933445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366203, 47.375095, 22.707945>,  <35.624699, 47.290081, 22.000576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366203, 47.375095, 22.707945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064583, 47.334248, 22.448416>,  <34.883610, 47.309738, 22.292698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064583, 47.334248, 22.448416>,  <35.366203, 47.375095, 22.707945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064583, 47.334248, 22.448416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379891, -0.738031, 0.557667,
		-0.535803, 0.666994, 0.517721,
		-0.754055, -0.102122, -0.648824,
		34.838367, 47.303612, 22.253769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692772, 47.377941, 23.076691>,  <35.366203, 47.375095, 22.707945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692772, 47.377941, 23.076691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682583, 47.171276, 22.734367>,  <34.676468, 47.047276, 22.528973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682583, 47.171276, 22.734367>,  <34.692772, 47.377941, 23.076691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682583, 47.171276, 22.734367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501297, -0.734068, 0.458089,
		-0.864900, 0.440685, -0.240301,
		-0.025475, -0.516663, -0.855809,
		34.674942, 47.016277, 22.477625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964436, 47.157539, 23.056316>,  <34.692772, 47.377941, 23.076691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964436, 47.157539, 23.056316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168171, 46.914688, 22.812359>,  <34.290413, 46.768978, 22.665983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168171, 46.914688, 22.812359>,  <33.964436, 47.157539, 23.056316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168171, 46.914688, 22.812359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404184, -0.794453, 0.453298,
		-0.759741, 0.015626, -0.650038,
		0.509341, -0.607124, -0.609895,
		34.320972, 46.732552, 22.629391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455399, 46.687241, 22.775793>,  <33.964436, 47.157539, 23.056316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455399, 46.687241, 22.775793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818386, 46.520416, 22.796001>,  <34.036179, 46.420322, 22.808126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818386, 46.520416, 22.796001>,  <33.455399, 46.687241, 22.775793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818386, 46.520416, 22.796001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380626, -0.765314, 0.519055,
		-0.177813, -0.490258, -0.853247,
		0.907472, -0.417063, 0.050522,
		34.090630, 46.395298, 22.811157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267647, 46.084934, 22.919186>,  <33.455399, 46.687241, 22.775793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267647, 46.084934, 22.919186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655048, 45.986702, 22.935637>,  <33.887489, 45.927765, 22.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655048, 45.986702, 22.935637>,  <33.267647, 46.084934, 22.919186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655048, 45.986702, 22.935637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234191, -0.842303, 0.485470,
		-0.084579, -0.479811, -0.873286,
		0.968504, -0.245576, 0.041127,
		33.945599, 45.913029, 22.947975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440670, 45.360268, 22.778231>,  <33.267647, 46.084934, 22.919186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440670, 45.360268, 22.778231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749554, 45.469822, 23.007551>,  <33.934883, 45.535553, 23.145144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749554, 45.469822, 23.007551>,  <33.440670, 45.360268, 22.778231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749554, 45.469822, 23.007551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168621, -0.781619, 0.600531,
		0.612582, -0.560408, -0.557392,
		0.772211, 0.273886, 0.573303,
		33.981216, 45.551987, 23.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856018, 44.782120, 22.823483>,  <33.440670, 45.360268, 22.778231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856018, 44.782120, 22.823483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970306, 45.014011, 23.128710>,  <34.038879, 45.153145, 23.311846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970306, 45.014011, 23.128710>,  <33.856018, 44.782120, 22.823483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970306, 45.014011, 23.128710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116142, -0.811344, 0.572916,
		0.951248, -0.075072, -0.299152,
		0.285725, 0.579729, 0.763070,
		34.056023, 45.187931, 23.357630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476063, 44.454006, 23.151539>,  <33.856018, 44.782120, 22.823483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476063, 44.454006, 23.151539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 44.700634, 23.431520>,  <34.245388, 44.848610, 23.599510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 44.700634, 23.431520>,  <34.476063, 44.454006, 23.151539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331890, 44.700634, 23.431520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098682, -0.720976, 0.685898,
		0.927553, 0.316290, 0.199015,
		-0.360427, 0.616567, 0.699955,
		34.223763, 44.885605, 23.641506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019878, 44.441036, 23.669432>,  <34.476063, 44.454006, 23.151539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019878, 44.441036, 23.669432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684483, 44.578899, 23.838261>,  <34.483246, 44.661617, 23.939558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684483, 44.578899, 23.838261>,  <35.019878, 44.441036, 23.669432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684483, 44.578899, 23.838261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090178, -0.676114, 0.731257,
		0.537402, 0.651214, 0.535835,
		-0.838491, 0.344658, 0.422070,
		34.432934, 44.682297, 23.964882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203754, 44.642525, 24.397135>,  <35.019878, 44.441036, 23.669432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203754, 44.642525, 24.397135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805855, 44.602402, 24.389051>,  <34.567116, 44.578327, 24.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805855, 44.602402, 24.389051>,  <35.203754, 44.642525, 24.397135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805855, 44.602402, 24.389051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042952, -0.588591, 0.807289,
		-0.092874, 0.802184, 0.589810,
		-0.994751, -0.100310, -0.020210,
		34.507431, 44.572308, 24.382988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953590, 44.711304, 25.106998>,  <35.203754, 44.642525, 24.397135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953590, 44.711304, 25.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666603, 44.502216, 24.922823>,  <34.494411, 44.376766, 24.812317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666603, 44.502216, 24.922823>,  <34.953590, 44.711304, 25.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666603, 44.502216, 24.922823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036840, -0.631594, 0.774424,
		-0.695613, 0.572590, 0.433894,
		-0.717471, -0.522714, -0.460439,
		34.451363, 44.345402, 24.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447697, 44.519707, 25.609913>,  <34.953590, 44.711304, 25.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447697, 44.519707, 25.609913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398491, 44.243484, 25.324816>,  <34.368965, 44.077751, 25.153757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398491, 44.243484, 25.324816>,  <34.447697, 44.519707, 25.609913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398491, 44.243484, 25.324816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187698, -0.689046, 0.699990,
		-0.974493, 0.219892, -0.044850,
		-0.123018, -0.690553, -0.712743,
		34.361584, 44.036320, 25.110992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827400, 44.251617, 25.801777>,  <34.447697, 44.519707, 25.609913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827400, 44.251617, 25.801777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995804, 43.990917, 25.549437>,  <34.096848, 43.834496, 25.398033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995804, 43.990917, 25.549437>,  <33.827400, 44.251617, 25.801777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995804, 43.990917, 25.549437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256522, -0.752651, 0.606393,
		-0.870027, -0.093470, -0.484062,
		0.421009, -0.651751, -0.630850,
		34.122108, 43.795391, 25.360182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340950, 43.817047, 25.622641>,  <33.827400, 44.251617, 25.801777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340950, 43.817047, 25.622641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697128, 43.639881, 25.580816>,  <33.910835, 43.533581, 25.555721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697128, 43.639881, 25.580816>,  <33.340950, 43.817047, 25.622641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697128, 43.639881, 25.580816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314417, -0.764853, 0.562264,
		-0.329005, -0.467791, -0.820321,
		0.890447, -0.442911, -0.104559,
		33.964264, 43.507008, 25.549448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136322, 43.138191, 25.735958>,  <33.340950, 43.817047, 25.622641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136322, 43.138191, 25.735958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535282, 43.109436, 25.733650>,  <33.774658, 43.092182, 25.732265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535282, 43.109436, 25.733650>,  <33.136322, 43.138191, 25.735958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535282, 43.109436, 25.733650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055163, -0.812032, 0.581000,
		-0.046450, -0.579169, -0.813883,
		0.997396, -0.071883, -0.005770,
		33.834499, 43.087872, 25.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314693, 42.441341, 25.420147>,  <33.136322, 43.138191, 25.735958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314693, 42.441341, 25.420147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574551, 42.598915, 25.680231>,  <33.730465, 42.693459, 25.836281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574551, 42.598915, 25.680231>,  <33.314693, 42.441341, 25.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574551, 42.598915, 25.680231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148542, -0.773016, 0.616751,
		0.745583, -0.497254, -0.443671,
		0.649647, 0.393936, 0.650210,
		33.769444, 42.717094, 25.875294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684509, 41.894466, 25.645941>,  <33.314693, 42.441341, 25.420147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684509, 41.894466, 25.645941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738621, 42.183102, 25.917532>,  <33.771088, 42.356281, 26.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738621, 42.183102, 25.917532>,  <33.684509, 41.894466, 25.645941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738621, 42.183102, 25.917532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216165, -0.647275, 0.730963,
		0.966940, -0.245657, 0.068418,
		0.135281, 0.721587, 0.678979,
		33.779205, 42.399578, 26.121225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054695, 41.628544, 26.249186>,  <33.684509, 41.894466, 25.645941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054695, 41.628544, 26.249186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878559, 41.962650, 26.380903>,  <33.772877, 42.163113, 26.459934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878559, 41.962650, 26.380903>,  <34.054695, 41.628544, 26.249186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878559, 41.962650, 26.380903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376498, -0.504744, 0.776841,
		0.815077, 0.218096, 0.536735,
		-0.440339, 0.835265, 0.329293,
		33.746456, 42.213230, 26.479691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156639, 41.563259, 26.921343>,  <34.054695, 41.628544, 26.249186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156639, 41.563259, 26.921343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861893, 41.833122, 26.904058>,  <33.685047, 41.995041, 26.893688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861893, 41.833122, 26.904058>,  <34.156639, 41.563259, 26.921343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861893, 41.833122, 26.904058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432155, -0.420920, 0.797539,
		0.519880, 0.606350, 0.601718,
		-0.736863, 0.674660, -0.043209,
		33.640835, 42.035519, 26.891096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116318, 41.750744, 27.617378>,  <34.156639, 41.563259, 26.921343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116318, 41.750744, 27.617378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772572, 41.886581, 27.464453>,  <33.566322, 41.968082, 27.372698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772572, 41.886581, 27.464453>,  <34.116318, 41.750744, 27.617378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772572, 41.886581, 27.464453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502349, -0.420925, 0.755293,
		0.095568, 0.841129, 0.532324,
		-0.859368, 0.339594, -0.382313,
		33.514763, 41.988461, 27.349758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766354, 41.974785, 28.210569>,  <34.116318, 41.750744, 27.617378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766354, 41.974785, 28.210569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470913, 41.930492, 27.944574>,  <33.293648, 41.903915, 27.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470913, 41.930492, 27.944574>,  <33.766354, 41.974785, 28.210569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470913, 41.930492, 27.944574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480014, -0.606224, 0.634097,
		-0.473348, 0.787547, 0.394603,
		-0.738599, -0.110733, -0.664989,
		33.249332, 41.897274, 27.745077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964077, 42.182816, 28.476770>,  <33.766354, 41.974785, 28.210569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964077, 42.182816, 28.476770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902935, 41.953613, 28.154701>,  <32.866249, 41.816093, 27.961460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902935, 41.953613, 28.154701>,  <32.964077, 42.182816, 28.476770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902935, 41.953613, 28.154701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624017, -0.575812, 0.528245,
		-0.766314, 0.583186, -0.269547,
		-0.152857, -0.573004, -0.805171,
		32.857079, 41.781712, 27.913149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292339, 41.994091, 28.497280>,  <32.964077, 42.182816, 28.476770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292339, 41.994091, 28.497280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447647, 41.714428, 28.257139>,  <32.540833, 41.546631, 28.113054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447647, 41.714428, 28.257139>,  <32.292339, 41.994091, 28.497280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447647, 41.714428, 28.257139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564780, -0.695309, 0.444488,
		-0.728199, 0.166488, -0.664837,
		0.388265, -0.699162, -0.600352,
		32.564129, 41.504681, 28.077034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716421, 41.526062, 28.387825>,  <32.292339, 41.994091, 28.497280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716421, 41.526062, 28.387825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040646, 41.310699, 28.295647>,  <32.235180, 41.181480, 28.240339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040646, 41.310699, 28.295647>,  <31.716421, 41.526062, 28.387825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040646, 41.310699, 28.295647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383327, -0.785230, 0.486287,
		-0.442775, -0.305829, -0.842864,
		0.810562, -0.538408, -0.230447,
		32.283813, 41.149178, 28.226513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419283, 40.937607, 28.155064>,  <31.716421, 41.526062, 28.387825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419283, 40.937607, 28.155064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792526, 40.817665, 28.234457>,  <32.016472, 40.745701, 28.282093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792526, 40.817665, 28.234457>,  <31.419283, 40.937607, 28.155064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792526, 40.817665, 28.234457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359561, -0.785821, 0.503190,
		0.005088, -0.540898, -0.841073,
		0.933108, -0.299857, 0.198484,
		32.072460, 40.727707, 28.294003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535643, 40.248665, 27.853981>,  <31.419283, 40.937607, 28.155064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535643, 40.248665, 27.853981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785585, 40.331612, 28.155060>,  <31.935551, 40.381382, 28.335707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785585, 40.331612, 28.155060>,  <31.535643, 40.248665, 27.853981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785585, 40.331612, 28.155060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329497, -0.803976, 0.495029,
		0.707805, -0.557334, -0.434041,
		0.624855, 0.207369, 0.752698,
		31.973042, 40.393822, 28.380869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766146, 39.541458, 28.091167>,  <31.535643, 40.248665, 27.853981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766146, 39.541458, 28.091167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908287, 39.774826, 28.383291>,  <31.993572, 39.914845, 28.558565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908287, 39.774826, 28.383291>,  <31.766146, 39.541458, 28.091167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908287, 39.774826, 28.383291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183460, -0.809637, 0.557521,
		0.916552, -0.064134, -0.394740,
		0.355352, 0.583416, 0.730309,
		32.014893, 39.949852, 28.602385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359016, 39.315731, 28.334030>,  <31.766146, 39.541458, 28.091167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359016, 39.315731, 28.334030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222336, 39.511627, 28.654877>,  <32.140327, 39.629166, 28.847385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222336, 39.511627, 28.654877>,  <32.359016, 39.315731, 28.334030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222336, 39.511627, 28.654877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244803, -0.777646, 0.579084,
		0.907365, 0.394236, 0.145834,
		-0.341703, 0.489740, 0.802118,
		32.119823, 39.658550, 28.895512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841293, 39.127762, 28.889240>,  <32.359016, 39.315731, 28.334030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841293, 39.127762, 28.889240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534615, 39.298164, 29.081364>,  <32.350609, 39.400406, 29.196638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534615, 39.298164, 29.081364>,  <32.841293, 39.127762, 28.889240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534615, 39.298164, 29.081364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214517, -0.535148, 0.817067,
		0.605113, 0.729476, 0.318910,
		-0.766695, 0.426006, 0.480310,
		32.304607, 39.425968, 29.225456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111557, 39.254963, 29.568104>,  <32.841293, 39.127762, 28.889240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111557, 39.254963, 29.568104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714901, 39.272861, 29.616507>,  <32.476906, 39.283600, 29.645548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714901, 39.272861, 29.616507>,  <33.111557, 39.254963, 29.568104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714901, 39.272861, 29.616507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074265, -0.568965, 0.819001,
		0.105499, 0.821143, 0.560887,
		-0.991642, 0.044749, 0.121008,
		32.417408, 39.286285, 29.652809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014626, 39.502411, 30.264317>,  <33.111557, 39.254963, 29.568104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014626, 39.502411, 30.264317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665478, 39.326065, 30.180668>,  <32.455990, 39.220257, 30.130478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665478, 39.326065, 30.180668>,  <33.014626, 39.502411, 30.264317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665478, 39.326065, 30.180668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081497, -0.554274, 0.828335,
		-0.481094, 0.705988, 0.519740,
		-0.872873, -0.440865, -0.209122,
		32.403618, 39.193806, 30.117931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738667, 39.482304, 30.808489>,  <33.014626, 39.502411, 30.264317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738667, 39.482304, 30.808489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528923, 39.186050, 30.640436>,  <32.403076, 39.008297, 30.539604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528923, 39.186050, 30.640436>,  <32.738667, 39.482304, 30.808489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528923, 39.186050, 30.640436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120031, -0.552768, 0.824646,
		-0.842992, 0.381985, 0.378749,
		-0.524363, -0.740631, -0.420129,
		32.371613, 38.963860, 30.514397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270081, 39.237526, 31.320837>,  <32.738667, 39.482304, 30.808489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270081, 39.237526, 31.320837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314030, 38.931671, 31.066824>,  <32.340401, 38.748158, 30.914417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314030, 38.931671, 31.066824>,  <32.270081, 39.237526, 31.320837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314030, 38.931671, 31.066824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077203, -0.630403, 0.772419,
		-0.990942, -0.133897, -0.010235,
		0.109876, -0.764633, -0.635030,
		32.346992, 38.702282, 30.876314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848089, 38.787155, 31.556246>,  <32.270081, 39.237526, 31.320837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848089, 38.787155, 31.556246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104225, 38.583736, 31.325996>,  <32.257908, 38.461685, 31.187847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104225, 38.583736, 31.325996>,  <31.848089, 38.787155, 31.556246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104225, 38.583736, 31.325996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073922, -0.705138, 0.705206,
		-0.764526, -0.494123, -0.413936,
		0.640340, -0.508549, -0.575623,
		32.296326, 38.431171, 31.153309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480150, 38.095951, 31.626011>,  <31.848089, 38.787155, 31.556246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480150, 38.095951, 31.626011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867016, 38.057938, 31.531723>,  <32.099136, 38.035130, 31.475149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867016, 38.057938, 31.531723>,  <31.480150, 38.095951, 31.626011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867016, 38.057938, 31.531723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114750, -0.664269, 0.738634,
		-0.226778, -0.741428, -0.631551,
		0.967163, -0.095036, -0.235720,
		32.157166, 38.029427, 31.461006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471401, 37.399746, 31.647793>,  <31.480150, 38.095951, 31.626011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471401, 37.399746, 31.647793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844290, 37.543140, 31.667593>,  <32.068024, 37.629177, 31.679472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844290, 37.543140, 31.667593>,  <31.471401, 37.399746, 31.647793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844290, 37.543140, 31.667593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228031, -0.688092, 0.688863,
		0.281009, -0.630885, -0.723200,
		0.932221, 0.358488, 0.049499,
		32.123955, 37.650688, 31.682444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810146, 36.873775, 31.497591>,  <31.471401, 37.399746, 31.647793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810146, 36.873775, 31.497591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080788, 37.112068, 31.670708>,  <32.243172, 37.255043, 31.774578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080788, 37.112068, 31.670708>,  <31.810146, 36.873775, 31.497591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080788, 37.112068, 31.670708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194156, -0.711294, 0.675548,
		0.710288, -0.373049, -0.596929,
		0.676605, 0.595731, 0.432794,
		32.283768, 37.290787, 31.800547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433769, 36.515114, 31.481306>,  <31.810146, 36.873775, 31.497591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433769, 36.515114, 31.481306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478924, 36.789055, 31.769260>,  <32.506016, 36.953419, 31.942034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478924, 36.789055, 31.769260>,  <32.433769, 36.515114, 31.481306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478924, 36.789055, 31.769260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301229, -0.714008, 0.632023,
		0.946846, 0.145506, -0.286896,
		0.112883, 0.684850, 0.719887,
		32.512791, 36.994511, 31.985226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087315, 36.308159, 31.708433>,  <32.433769, 36.515114, 31.481306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087315, 36.308159, 31.708433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936951, 36.520523, 32.012230>,  <32.846733, 36.647942, 32.194508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936951, 36.520523, 32.012230>,  <33.087315, 36.308159, 31.708433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936951, 36.520523, 32.012230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503096, -0.571366, 0.648410,
		0.778193, 0.625843, -0.052314,
		-0.375912, 0.530907, 0.759492,
		32.824177, 36.679794, 32.240078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629478, 36.365044, 32.228077>,  <33.087315, 36.308159, 31.708433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629478, 36.365044, 32.228077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292133, 36.440823, 32.429214>,  <33.089725, 36.486290, 32.549896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292133, 36.440823, 32.429214>,  <33.629478, 36.365044, 32.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292133, 36.440823, 32.429214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264208, -0.668669, 0.695037,
		0.467910, 0.719022, 0.513874,
		-0.843359, 0.189445, 0.502848,
		33.039127, 36.497658, 32.580070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131073, 36.700405, 32.560452>,  <33.629478, 36.365044, 32.228077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131073, 36.700405, 32.560452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497200, 36.786739, 32.696457>,  <34.716877, 36.838539, 32.778061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497200, 36.786739, 32.696457>,  <34.131073, 36.700405, 32.560452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497200, 36.786739, 32.696457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038204, 0.793924, -0.606815,
		-0.400916, 0.568418, 0.718447,
		0.915318, 0.215835, 0.340013,
		34.771797, 36.851490, 32.798462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107819, 37.487858, 32.666553>,  <34.131073, 36.700405, 32.560452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107819, 37.487858, 32.666553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485489, 37.360020, 32.634594>,  <34.712093, 37.283318, 32.615417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485489, 37.360020, 32.634594>,  <34.107819, 37.487858, 32.666553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485489, 37.360020, 32.634594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207038, 0.764319, -0.610698,
		0.256244, 0.560067, 0.787823,
		0.944179, -0.319597, -0.079898,
		34.768742, 37.264141, 32.610626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495094, 37.979511, 32.896797>,  <34.107819, 37.487858, 32.666553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495094, 37.979511, 32.896797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716274, 37.756927, 32.648735>,  <34.848984, 37.623379, 32.499897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716274, 37.756927, 32.648735>,  <34.495094, 37.979511, 32.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716274, 37.756927, 32.648735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219182, 0.815229, -0.536060,
		0.803867, 0.160489, 0.572749,
		0.552953, -0.556457, -0.620160,
		34.882160, 37.589989, 32.462688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094719, 38.300068, 32.938351>,  <34.495094, 37.979511, 32.896797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094719, 38.300068, 32.938351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150917, 38.122128, 32.584545>,  <35.184635, 38.015362, 32.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150917, 38.122128, 32.584545>,  <35.094719, 38.300068, 32.938351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150917, 38.122128, 32.584545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335769, 0.861841, -0.380119,
		0.931408, -0.243588, 0.270452,
		0.140494, -0.444855, -0.884515,
		35.193066, 37.988670, 32.319191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494175, 38.748116, 32.612720>,  <35.094719, 38.300068, 32.938351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494175, 38.748116, 32.612720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355324, 38.512909, 32.320492>,  <35.272015, 38.371784, 32.145153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355324, 38.512909, 32.320492>,  <35.494175, 38.748116, 32.612720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355324, 38.512909, 32.320492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276797, 0.680071, -0.678887,
		0.896039, -0.437881, -0.073310,
		-0.347127, -0.588017, -0.730574,
		35.251186, 38.336502, 32.101318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046047, 38.756851, 32.141563>,  <35.494175, 38.748116, 32.612720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046047, 38.756851, 32.141563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730347, 38.599430, 31.953009>,  <35.540928, 38.504978, 31.839876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730347, 38.599430, 31.953009>,  <36.046047, 38.756851, 32.141563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730347, 38.599430, 31.953009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201213, 0.559519, -0.804023,
		0.580174, -0.729422, -0.362411,
		-0.789248, -0.393551, -0.471388,
		35.493572, 38.481365, 31.811592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162552, 38.599293, 31.354174>,  <36.046047, 38.756851, 32.141563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162552, 38.599293, 31.354174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769428, 38.665428, 31.387030>,  <35.533554, 38.705109, 31.406744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769428, 38.665428, 31.387030>,  <36.162552, 38.599293, 31.354174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769428, 38.665428, 31.387030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050880, 0.670270, -0.740371,
		-0.177467, -0.723465, -0.667161,
		-0.982811, 0.165337, 0.082141,
		35.474586, 38.715031, 31.411673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927593, 38.597691, 30.608862>,  <36.162552, 38.599293, 31.354174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927593, 38.597691, 30.608862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652832, 38.780319, 30.835033>,  <35.487976, 38.889896, 30.970736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652832, 38.780319, 30.835033>,  <35.927593, 38.597691, 30.608862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652832, 38.780319, 30.835033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017292, 0.767536, -0.640773,
		-0.726544, -0.449926, -0.519327,
		-0.686902, 0.456569, 0.565428,
		35.446762, 38.917290, 31.004662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460739, 38.835239, 30.131317>,  <35.927593, 38.597691, 30.608862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460739, 38.835239, 30.131317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399708, 39.059059, 30.457169>,  <35.363091, 39.193352, 30.652679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399708, 39.059059, 30.457169>,  <35.460739, 38.835239, 30.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399708, 39.059059, 30.457169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021374, 0.822219, -0.568770,
		-0.988061, -0.104192, -0.113491,
		-0.152576, 0.559554, 0.814629,
		35.353935, 39.226925, 30.701557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039860, 39.286198, 29.928078>,  <35.460739, 38.835239, 30.131317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039860, 39.286198, 29.928078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160809, 39.473160, 30.260366>,  <35.233379, 39.585335, 30.459740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160809, 39.473160, 30.260366>,  <35.039860, 39.286198, 29.928078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160809, 39.473160, 30.260366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008023, 0.872738, -0.488122,
		-0.953155, 0.140931, 0.267645,
		0.302376, 0.467404, 0.830724,
		35.251522, 39.613380, 30.509584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516109, 39.867935, 30.066734>,  <35.039860, 39.286198, 29.928078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516109, 39.867935, 30.066734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860359, 39.947617, 30.254200>,  <35.066910, 39.995426, 30.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860359, 39.947617, 30.254200>,  <34.516109, 39.867935, 30.066734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860359, 39.947617, 30.254200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021621, 0.905193, -0.424451,
		-0.508784, 0.375425, 0.774722,
		0.860623, 0.199203, 0.468665,
		35.118546, 40.007378, 30.394800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441635, 40.538666, 30.150711>,  <34.516109, 39.867935, 30.066734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441635, 40.538666, 30.150711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831596, 40.460835, 30.193972>,  <35.065575, 40.414135, 30.219927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831596, 40.460835, 30.193972>,  <34.441635, 40.538666, 30.150711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831596, 40.460835, 30.193972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222434, 0.831806, -0.508549,
		0.008995, 0.519844, 0.854214,
		0.974906, -0.194581, 0.108149,
		35.124069, 40.402462, 30.226416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688129, 41.161297, 30.345705>,  <34.441635, 40.538666, 30.150711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688129, 41.161297, 30.345705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992577, 40.958584, 30.183783>,  <35.175247, 40.836956, 30.086628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992577, 40.958584, 30.183783>,  <34.688129, 41.161297, 30.345705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992577, 40.958584, 30.183783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289743, 0.824036, -0.486841,
		0.580297, 0.253254, 0.774027,
		0.761120, -0.506781, -0.404807,
		35.220913, 40.806549, 30.062340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315723, 41.611198, 30.404974>,  <34.688129, 41.161297, 30.345705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315723, 41.611198, 30.404974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458031, 41.345997, 30.141502>,  <35.543415, 41.186878, 29.983419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458031, 41.345997, 30.141502>,  <35.315723, 41.611198, 30.404974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458031, 41.345997, 30.141502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345558, 0.748164, -0.566427,
		0.868342, -0.026094, 0.495279,
		0.355770, -0.663000, -0.658679,
		35.564762, 41.147099, 29.943899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964031, 41.734741, 30.245125>,  <35.315723, 41.611198, 30.404974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964031, 41.734741, 30.245125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858402, 41.521793, 29.923416>,  <35.795025, 41.394024, 29.730391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858402, 41.521793, 29.923416>,  <35.964031, 41.734741, 30.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858402, 41.521793, 29.923416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437808, 0.676852, -0.591774,
		0.859413, -0.508387, 0.054337,
		-0.264072, -0.532367, -0.804271,
		35.779179, 41.362083, 29.682135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458889, 41.867847, 29.843761>,  <35.964031, 41.734741, 30.245125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458889, 41.867847, 29.843761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217281, 41.707966, 29.567966>,  <36.072315, 41.612038, 29.402491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217281, 41.707966, 29.567966>,  <36.458889, 41.867847, 29.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217281, 41.707966, 29.567966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391911, 0.604334, -0.693676,
		0.693949, -0.689212, -0.208380,
		-0.604021, -0.399709, -0.689487,
		36.036076, 41.588055, 29.361120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896748, 41.688667, 29.259308>,  <36.458889, 41.867847, 29.843761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896748, 41.688667, 29.259308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523075, 41.749477, 29.130188>,  <36.298874, 41.785961, 29.052717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523075, 41.749477, 29.130188>,  <36.896748, 41.688667, 29.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523075, 41.749477, 29.130188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351185, 0.551682, -0.756516,
		0.063073, -0.820083, -0.568758,
		-0.934179, 0.152023, -0.322797,
		36.242821, 41.795086, 29.033348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879627, 41.633892, 28.560240>,  <36.896748, 41.688667, 29.259308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879627, 41.633892, 28.560240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561047, 41.868526, 28.618992>,  <36.369896, 42.009308, 28.654243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561047, 41.868526, 28.618992>,  <36.879627, 41.633892, 28.560240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561047, 41.868526, 28.618992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196449, 0.480722, -0.854584,
		-0.571898, -0.651782, -0.498108,
		-0.796455, 0.586588, 0.146882,
		36.322109, 42.044502, 28.663057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571575, 41.807648, 27.862278>,  <36.879627, 41.633892, 28.560240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571575, 41.807648, 27.862278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387810, 42.072533, 28.099058>,  <36.277550, 42.231464, 28.241127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387810, 42.072533, 28.099058>,  <36.571575, 41.807648, 27.862278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387810, 42.072533, 28.099058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093142, 0.626855, -0.773548,
		-0.883324, -0.410517, -0.226307,
		-0.459416, 0.662215, 0.591953,
		36.249985, 42.271198, 28.276644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802631, 41.932812, 27.649685>,  <36.571575, 41.807648, 27.862278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802631, 41.932812, 27.649685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919605, 42.243553, 27.872747>,  <35.989792, 42.429996, 28.006584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919605, 42.243553, 27.872747>,  <35.802631, 41.932812, 27.649685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919605, 42.243553, 27.872747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249568, 0.624937, -0.739709,
		-0.923145, 0.077146, 0.376633,
		0.292437, 0.776854, 0.557654,
		36.007336, 42.476608, 28.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351833, 42.474243, 27.368891>,  <35.802631, 41.932812, 27.649685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351833, 42.474243, 27.368891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637550, 42.664532, 27.574211>,  <35.808979, 42.778706, 27.697403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637550, 42.664532, 27.574211>,  <35.351833, 42.474243, 27.368891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637550, 42.664532, 27.574211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032025, 0.754896, -0.655062,
		-0.699113, 0.451468, 0.554452,
		0.714293, 0.475719, 0.513299,
		35.851837, 42.807247, 27.728201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202835, 43.196430, 27.326374>,  <35.351833, 42.474243, 27.368891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202835, 43.196430, 27.326374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591980, 43.179432, 27.417356>,  <35.825466, 43.169231, 27.471945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591980, 43.179432, 27.417356>,  <35.202835, 43.196430, 27.326374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591980, 43.179432, 27.417356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199872, 0.649626, -0.733510,
		-0.116587, 0.759065, 0.640490,
		0.972861, -0.042498, 0.227454,
		35.883839, 43.166683, 27.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448330, 43.851906, 27.143406>,  <35.202835, 43.196430, 27.326374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448330, 43.851906, 27.143406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778469, 43.626408, 27.156017>,  <35.976551, 43.491108, 27.163584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778469, 43.626408, 27.156017>,  <35.448330, 43.851906, 27.143406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778469, 43.626408, 27.156017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314015, 0.411889, -0.855419,
		0.469255, 0.715917, 0.516976,
		0.825345, -0.563748, 0.031528,
		36.026073, 43.457283, 27.165476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890671, 44.351967, 26.900776>,  <35.448330, 43.851906, 27.143406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890671, 44.351967, 26.900776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033005, 43.986279, 26.823238>,  <36.118404, 43.766865, 26.776716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033005, 43.986279, 26.823238>,  <35.890671, 44.351967, 26.900776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033005, 43.986279, 26.823238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182040, 0.271253, -0.945137,
		0.916649, 0.301022, 0.262946,
		0.355831, -0.914225, -0.193846,
		36.139755, 43.712009, 26.765085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386101, 44.487740, 26.482815>,  <35.890671, 44.351967, 26.900776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386101, 44.487740, 26.482815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349621, 44.092457, 26.433622>,  <36.327732, 43.855286, 26.404106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349621, 44.092457, 26.433622>,  <36.386101, 44.487740, 26.482815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349621, 44.092457, 26.433622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340728, 0.085075, -0.936305,
		0.935728, -0.127295, 0.328952,
		-0.091201, -0.988210, -0.122980,
		36.322262, 43.795994, 26.396729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017330, 44.204094, 26.255136>,  <36.386101, 44.487740, 26.482815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017330, 44.204094, 26.255136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732704, 43.952454, 26.129971>,  <36.561928, 43.801472, 26.054871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732704, 43.952454, 26.129971>,  <37.017330, 44.204094, 26.255136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732704, 43.952454, 26.129971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346544, 0.073184, -0.935174,
		0.611215, -0.773875, 0.165934,
		-0.711564, -0.629096, -0.312913,
		36.519234, 43.763725, 26.036097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362564, 43.778229, 25.865776>,  <37.017330, 44.204094, 26.255136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362564, 43.778229, 25.865776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991104, 43.702236, 25.738329>,  <36.768227, 43.656639, 25.661861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991104, 43.702236, 25.738329>,  <37.362564, 43.778229, 25.865776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991104, 43.702236, 25.738329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298237, 0.128414, -0.945814,
		0.220605, -0.973353, -0.062591,
		-0.928649, -0.189985, -0.318619,
		36.712509, 43.645241, 25.642744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401268, 43.420475, 25.271034>,  <37.362564, 43.778229, 25.865776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401268, 43.420475, 25.271034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030155, 43.568520, 25.252102>,  <36.807487, 43.657345, 25.240742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030155, 43.568520, 25.252102>,  <37.401268, 43.420475, 25.271034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030155, 43.568520, 25.252102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118933, 0.173101, -0.977697,
		-0.353665, -0.912717, -0.204619,
		-0.927780, 0.370113, -0.047333,
		36.751820, 43.679554, 25.237902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060947, 42.975487, 24.719719>,  <37.401268, 43.420475, 25.271034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060947, 42.975487, 24.719719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848030, 43.309708, 24.774132>,  <36.720280, 43.510242, 24.806780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848030, 43.309708, 24.774132>,  <37.060947, 42.975487, 24.719719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848030, 43.309708, 24.774132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078859, 0.111049, -0.990681,
		-0.842876, -0.538065, 0.006780,
		-0.532298, 0.835557, 0.136032,
		36.688339, 43.560375, 24.814941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442627, 43.010151, 24.300657>,  <37.060947, 42.975487, 24.719719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442627, 43.010151, 24.300657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516884, 43.396809, 24.371235>,  <36.561436, 43.628803, 24.413582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516884, 43.396809, 24.371235>,  <36.442627, 43.010151, 24.300657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516884, 43.396809, 24.371235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015125, 0.182353, -0.983117,
		-0.982501, 0.179838, 0.048472,
		0.185640, 0.966647, 0.176443,
		36.572575, 43.686802, 24.424168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092060, 43.268005, 23.713776>,  <36.442627, 43.010151, 24.300657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092060, 43.268005, 23.713776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302994, 43.576225, 23.856979>,  <36.429554, 43.761158, 23.942902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302994, 43.576225, 23.856979>,  <36.092060, 43.268005, 23.713776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302994, 43.576225, 23.856979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100613, 0.361760, -0.926826,
		-0.843680, 0.524767, 0.113241,
		0.527334, 0.770551, 0.358008,
		36.461193, 43.807392, 23.964382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819534, 43.862843, 23.410856>,  <36.092060, 43.268005, 23.713776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819534, 43.862843, 23.410856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188419, 43.976402, 23.515877>,  <36.409748, 44.044537, 23.578890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188419, 43.976402, 23.515877>,  <35.819534, 43.862843, 23.410856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188419, 43.976402, 23.515877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088621, 0.505733, -0.858126,
		-0.376400, 0.814639, 0.441233,
		0.922209, 0.283897, 0.262552,
		36.465080, 44.061573, 23.594643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886581, 44.611576, 23.262968>,  <35.819534, 43.862843, 23.410856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886581, 44.611576, 23.262968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254578, 44.459263, 23.300089>,  <36.475376, 44.367874, 23.322361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254578, 44.459263, 23.300089>,  <35.886581, 44.611576, 23.262968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254578, 44.459263, 23.300089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261670, 0.420483, -0.868748,
		0.291787, 0.823526, 0.486483,
		0.919994, -0.380787, 0.092800,
		36.530575, 44.345028, 23.327929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298199, 45.159996, 23.084436>,  <35.886581, 44.611576, 23.262968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298199, 45.159996, 23.084436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556732, 44.859673, 23.029972>,  <36.711853, 44.679478, 22.997293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556732, 44.859673, 23.029972>,  <36.298199, 45.159996, 23.084436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556732, 44.859673, 23.029972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271302, 0.392894, -0.878652,
		0.713199, 0.530959, 0.457635,
		0.646330, -0.750811, -0.136162,
		36.750629, 44.634430, 22.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046513, 45.408321, 22.787827>,  <36.298199, 45.159996, 23.084436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046513, 45.408321, 22.787827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994926, 45.023392, 22.692074>,  <36.963974, 44.792435, 22.634623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994926, 45.023392, 22.692074>,  <37.046513, 45.408321, 22.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994926, 45.023392, 22.692074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181562, 0.214401, -0.959722,
		0.974886, -0.167236, 0.147071,
		-0.128968, -0.962322, -0.239380,
		36.956238, 44.734695, 22.620260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513317, 45.356281, 22.388634>,  <37.046513, 45.408321, 22.787827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513317, 45.356281, 22.388634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285503, 45.038780, 22.303236>,  <37.148815, 44.848278, 22.251997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285503, 45.038780, 22.303236>,  <37.513317, 45.356281, 22.388634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285503, 45.038780, 22.303236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174426, 0.137109, -0.975078,
		0.803246, -0.592581, 0.060363,
		-0.569536, -0.793756, -0.213494,
		37.114643, 44.800652, 22.239187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874256, 45.034969, 21.791016>,  <37.513317, 45.356281, 22.388634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874256, 45.034969, 21.791016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513725, 44.864674, 21.759121>,  <37.297409, 44.762497, 21.739985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513725, 44.864674, 21.759121>,  <37.874256, 45.034969, 21.791016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513725, 44.864674, 21.759121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184439, -0.210666, -0.960001,
		0.391915, -0.879979, 0.268402,
		-0.901324, -0.425743, -0.079739,
		37.243328, 44.736950, 21.735199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959984, 44.387360, 21.324203>,  <37.874256, 45.034969, 21.791016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959984, 44.387360, 21.324203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574062, 44.487053, 21.290667>,  <37.342510, 44.546867, 21.270544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574062, 44.487053, 21.290667>,  <37.959984, 44.387360, 21.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574062, 44.487053, 21.290667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017864, -0.255991, -0.966514,
		-0.262368, -0.933993, 0.242529,
		-0.964803, 0.249250, -0.083849,
		37.284618, 44.561821, 21.265512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375275, 43.873894, 21.010660>,  <37.959984, 44.387360, 21.324203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375275, 43.873894, 21.010660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659393, 43.706352, 20.784372>,  <38.829865, 43.605827, 20.648600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659393, 43.706352, 20.784372>,  <38.375275, 43.873894, 21.010660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659393, 43.706352, 20.784372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037418, -0.780084, 0.624555,
		-0.702906, -0.464788, -0.538419,
		0.710298, -0.418857, -0.565717,
		38.872482, 43.580696, 20.614656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125435, 43.257633, 20.833069>,  <38.375275, 43.873894, 21.010660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125435, 43.257633, 20.833069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523777, 43.232376, 20.806873>,  <38.762783, 43.217220, 20.791155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523777, 43.232376, 20.806873>,  <38.125435, 43.257633, 20.833069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523777, 43.232376, 20.806873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010452, -0.794525, 0.607142,
		-0.090372, -0.603940, -0.791890,
		0.995854, -0.063145, -0.065490,
		38.822533, 43.213432, 20.787226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324448, 42.621471, 20.646402>,  <38.125435, 43.257633, 20.833069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324448, 42.621471, 20.646402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654987, 42.743446, 20.835789>,  <38.853310, 42.816631, 20.949421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654987, 42.743446, 20.835789>,  <38.324448, 42.621471, 20.646402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654987, 42.743446, 20.835789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101291, -0.746533, 0.657593,
		0.553981, -0.591356, -0.586007,
		0.826345, 0.304937, 0.473464,
		38.902889, 42.834927, 20.977827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513485, 42.041550, 20.939299>,  <38.324448, 42.621471, 20.646402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513485, 42.041550, 20.939299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748798, 42.310680, 21.118731>,  <38.889984, 42.472160, 21.226389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748798, 42.310680, 21.118731>,  <38.513485, 42.041550, 20.939299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748798, 42.310680, 21.118731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146637, -0.634285, 0.759065,
		0.795250, -0.380766, -0.471800,
		0.588282, 0.672830, 0.448580,
		38.925282, 42.512531, 21.253305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044632, 41.715069, 21.211824>,  <38.513485, 42.041550, 20.939299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044632, 41.715069, 21.211824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024933, 42.062927, 21.408308>,  <39.013111, 42.271645, 21.526197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024933, 42.062927, 21.408308>,  <39.044632, 41.715069, 21.211824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024933, 42.062927, 21.408308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104146, -0.493594, 0.863434,
		0.993342, -0.008631, 0.114881,
		-0.049253, 0.869650, 0.491207,
		39.010159, 42.323822, 21.555670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258362, 41.576427, 21.856159>,  <39.044632, 41.715069, 21.211824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258362, 41.576427, 21.856159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115311, 41.935211, 21.960138>,  <39.029480, 42.150482, 22.022526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115311, 41.935211, 21.960138>,  <39.258362, 41.576427, 21.856159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115311, 41.935211, 21.960138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024267, -0.287189, 0.957566,
		0.933548, 0.336145, 0.124474,
		-0.357629, 0.896955, 0.259947,
		39.008022, 42.204296, 22.038122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657249, 41.842152, 22.419842>,  <39.258362, 41.576427, 21.856159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657249, 41.842152, 22.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309460, 42.039719, 22.423058>,  <39.100784, 42.158257, 22.424988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309460, 42.039719, 22.423058>,  <39.657249, 41.842152, 22.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309460, 42.039719, 22.423058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063104, -0.127202, 0.989867,
		0.489932, 0.860156, 0.141767,
		-0.869474, 0.493914, 0.008041,
		39.048618, 42.187893, 22.425470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678577, 42.290417, 23.064907>,  <39.657249, 41.842152, 22.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678577, 42.290417, 23.064907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294315, 42.291840, 22.953821>,  <39.063759, 42.292694, 22.887169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294315, 42.291840, 22.953821>,  <39.678577, 42.290417, 23.064907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294315, 42.291840, 22.953821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276191, -0.117632, 0.953877,
		-0.029279, 0.993051, 0.113985,
		-0.960657, 0.003553, -0.277716,
		39.006119, 42.292904, 22.870506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301926, 42.771954, 23.542887>,  <39.678577, 42.290417, 23.064907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301926, 42.771954, 23.542887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064133, 42.483418, 23.400757>,  <38.921455, 42.310295, 23.315479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064133, 42.483418, 23.400757>,  <39.301926, 42.771954, 23.542887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064133, 42.483418, 23.400757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226941, -0.273414, 0.934742,
		-0.771417, 0.636329, -0.001161,
		-0.594486, -0.721340, -0.355325,
		38.885788, 42.267017, 23.294159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783520, 42.837086, 24.058285>,  <39.301926, 42.771954, 23.542887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783520, 42.837086, 24.058285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 42.488529, 23.880383>,  <38.651020, 42.279396, 23.773642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 42.488529, 23.880383>,  <38.783520, 42.837086, 24.058285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700706, 42.488529, 23.880383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236663, -0.396495, 0.887007,
		-0.949277, 0.288899, -0.124139,
		-0.207035, -0.871395, -0.444756,
		38.638596, 42.227112, 23.746956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110672, 42.632023, 24.229647>,  <38.783520, 42.837086, 24.058285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110672, 42.632023, 24.229647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271225, 42.287518, 24.104986>,  <38.367558, 42.080814, 24.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271225, 42.287518, 24.104986>,  <38.110672, 42.632023, 24.229647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271225, 42.287518, 24.104986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310757, -0.448138, 0.838214,
		-0.861583, -0.239594, -0.447515,
		0.401379, -0.861259, -0.311653,
		38.391640, 42.029140, 24.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625511, 42.142982, 24.407631>,  <38.110672, 42.632023, 24.229647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625511, 42.142982, 24.407631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976994, 41.952282, 24.398048>,  <38.187885, 41.837860, 24.392298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976994, 41.952282, 24.398048>,  <37.625511, 42.142982, 24.407631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976994, 41.952282, 24.398048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141379, -0.307858, 0.940869,
		-0.455940, -0.823364, -0.337921,
		0.878709, -0.476755, -0.023958,
		38.240608, 41.809258, 24.390862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390385, 41.508110, 24.584248>,  <37.625511, 42.142982, 24.407631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390385, 41.508110, 24.584248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788483, 41.476089, 24.606440>,  <38.027340, 41.456875, 24.619755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788483, 41.476089, 24.606440>,  <37.390385, 41.508110, 24.584248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788483, 41.476089, 24.606440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093193, -0.617106, 0.781342,
		-0.028315, -0.782798, -0.621632,
		0.995245, -0.080055, 0.055478,
		38.087055, 41.452072, 24.623083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552834, 40.736229, 24.536972>,  <37.390385, 41.508110, 24.584248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552834, 40.736229, 24.536972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837959, 40.944851, 24.724539>,  <38.009033, 41.070023, 24.837078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837959, 40.944851, 24.724539>,  <37.552834, 40.736229, 24.536972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837959, 40.944851, 24.724539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131618, -0.557232, 0.819859,
		0.688892, -0.646125, -0.328557,
		0.712814, 0.521551, 0.468915,
		38.051804, 41.101315, 24.865213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920052, 40.224163, 24.928802>,  <37.552834, 40.736229, 24.536972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920052, 40.224163, 24.928802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056400, 40.559795, 25.098391>,  <38.138210, 40.761177, 25.200144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056400, 40.559795, 25.098391>,  <37.920052, 40.224163, 24.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056400, 40.559795, 25.098391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056742, -0.431791, 0.900187,
		0.938398, -0.330901, -0.099572,
		0.340867, 0.839083, 0.423968,
		38.158661, 40.811520, 25.225580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545235, 40.039822, 25.381992>,  <37.920052, 40.224163, 24.928802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545235, 40.039822, 25.381992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401772, 40.393429, 25.501909>,  <38.315693, 40.605595, 25.573858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401772, 40.393429, 25.501909>,  <38.545235, 40.039822, 25.381992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401772, 40.393429, 25.501909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083926, -0.350396, 0.932834,
		0.929687, 0.309411, 0.199866,
		-0.358661, 0.884018, 0.299791,
		38.294174, 40.658634, 25.591846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966324, 40.297802, 25.934635>,  <38.545235, 40.039822, 25.381992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966324, 40.297802, 25.934635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622463, 40.496273, 25.983311>,  <38.416145, 40.615356, 26.012516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622463, 40.496273, 25.983311>,  <38.966324, 40.297802, 25.934635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622463, 40.496273, 25.983311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039738, -0.172533, 0.984202,
		0.509333, 0.850906, 0.128601,
		-0.859651, 0.496176, 0.121691,
		38.364567, 40.645126, 26.019817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034512, 40.662010, 26.608454>,  <38.966324, 40.297802, 25.934635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034512, 40.662010, 26.608454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641647, 40.657856, 26.533348>,  <38.405930, 40.655365, 26.488285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641647, 40.657856, 26.533348>,  <39.034512, 40.662010, 26.608454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641647, 40.657856, 26.533348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185198, -0.119821, 0.975369,
		-0.032625, 0.992742, 0.115760,
		-0.982159, -0.010383, -0.187763,
		38.347000, 40.654739, 26.477018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744335, 40.982388, 27.255484>,  <39.034512, 40.662010, 26.608454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744335, 40.982388, 27.255484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426888, 40.793915, 27.101524>,  <38.236420, 40.680832, 27.009148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426888, 40.793915, 27.101524>,  <38.744335, 40.982388, 27.255484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426888, 40.793915, 27.101524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254567, -0.317425, 0.913475,
		-0.552591, 0.822939, 0.131968,
		-0.793624, -0.471183, -0.384899,
		38.188801, 40.652561, 26.986055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198132, 41.215332, 27.671585>,  <38.744335, 40.982388, 27.255484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198132, 41.215332, 27.671585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095886, 40.861835, 27.514784>,  <38.034538, 40.649738, 27.420702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095886, 40.861835, 27.514784>,  <38.198132, 41.215332, 27.671585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095886, 40.861835, 27.514784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314683, -0.307339, 0.898063,
		-0.914131, 0.352915, -0.199538,
		-0.255614, -0.883739, -0.392005,
		38.019203, 40.596714, 27.397182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515385, 41.173679, 27.899597>,  <38.198132, 41.215332, 27.671585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515385, 41.173679, 27.899597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646179, 40.804836, 27.816845>,  <37.724655, 40.583530, 27.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646179, 40.804836, 27.816845>,  <37.515385, 41.173679, 27.899597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646179, 40.804836, 27.816845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385454, -0.330011, 0.861694,
		-0.862849, -0.202015, -0.463338,
		0.326982, -0.922108, -0.206882,
		37.744274, 40.528202, 27.754780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999512, 40.685310, 28.180986>,  <37.515385, 41.173679, 27.899597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999512, 40.685310, 28.180986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312454, 40.442379, 28.125742>,  <37.500221, 40.296619, 28.092596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312454, 40.442379, 28.125742>,  <36.999512, 40.685310, 28.180986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312454, 40.442379, 28.125742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222382, -0.479515, 0.848888,
		-0.581778, -0.633420, -0.510210,
		0.782356, -0.607325, -0.138110,
		37.547161, 40.260181, 28.084309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753368, 39.966801, 28.261930>,  <36.999512, 40.685310, 28.180986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753368, 39.966801, 28.261930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147549, 39.987499, 28.326679>,  <37.384056, 39.999916, 28.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147549, 39.987499, 28.326679>,  <36.753368, 39.966801, 28.261930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147549, 39.987499, 28.326679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099340, -0.597421, 0.795751,
		0.137881, -0.800256, -0.583591,
		0.985454, 0.051745, 0.161870,
		37.443184, 40.003021, 28.375240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942993, 39.266224, 28.388302>,  <36.753368, 39.966801, 28.261930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942993, 39.266224, 28.388302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207340, 39.504040, 28.571508>,  <37.365948, 39.646729, 28.681433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207340, 39.504040, 28.571508>,  <36.942993, 39.266224, 28.388302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207340, 39.504040, 28.571508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063475, -0.652367, 0.755241,
		0.747815, -0.470040, -0.468865,
		0.660866, 0.594541, 0.458014,
		37.405602, 39.682404, 28.708912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515949, 38.875957, 28.740543>,  <36.942993, 39.266224, 28.388302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515949, 38.875957, 28.740543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566525, 39.232430, 28.914816>,  <37.596870, 39.446312, 29.019379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566525, 39.232430, 28.914816>,  <37.515949, 38.875957, 28.740543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566525, 39.232430, 28.914816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381851, -0.449086, 0.807782,
		0.915534, 0.064231, -0.397078,
		0.126438, 0.891177, 0.435681,
		37.604454, 39.499783, 29.045521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230259, 38.833145, 29.165916>,  <37.515949, 38.875957, 28.740543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230259, 38.833145, 29.165916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020866, 39.150860, 29.289255>,  <37.895229, 39.341488, 29.363258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020866, 39.150860, 29.289255>,  <38.230259, 38.833145, 29.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020866, 39.150860, 29.289255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314161, -0.156458, 0.936389,
		0.792003, 0.587053, -0.167631,
		-0.523482, 0.794286, 0.308344,
		37.863823, 39.389145, 29.381758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662010, 39.277317, 29.578770>,  <38.230259, 38.833145, 29.165916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662010, 39.277317, 29.578770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287109, 39.313385, 29.713491>,  <38.062168, 39.335026, 29.794325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287109, 39.313385, 29.713491>,  <38.662010, 39.277317, 29.578770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287109, 39.313385, 29.713491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274462, -0.404937, 0.872179,
		0.215029, 0.909888, 0.354778,
		-0.937248, 0.090171, 0.336802,
		38.005936, 39.340435, 29.814531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735550, 39.451534, 30.289118>,  <38.662010, 39.277317, 29.578770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735550, 39.451534, 30.289118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368427, 39.308182, 30.220783>,  <38.148151, 39.222168, 30.179783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368427, 39.308182, 30.220783>,  <38.735550, 39.451534, 30.289118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368427, 39.308182, 30.220783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072337, -0.574052, 0.815617,
		-0.390374, 0.736224, 0.552795,
		-0.917810, -0.358384, -0.170839,
		38.093082, 39.200668, 30.169531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306385, 39.530483, 30.908573>,  <38.735550, 39.451534, 30.289118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306385, 39.530483, 30.908573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105030, 39.231487, 30.735201>,  <37.984219, 39.052090, 30.631178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105030, 39.231487, 30.735201>,  <38.306385, 39.530483, 30.908573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105030, 39.231487, 30.735201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054864, -0.528255, 0.847311,
		-0.862320, 0.402743, 0.306925,
		-0.503383, -0.747492, -0.433429,
		37.954014, 39.007240, 30.605173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816906, 39.382427, 31.386055>,  <38.306385, 39.530483, 30.908573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816906, 39.382427, 31.386055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808174, 39.060551, 31.148739>,  <37.802937, 38.867424, 31.006350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808174, 39.060551, 31.148739>,  <37.816906, 39.382427, 31.386055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808174, 39.060551, 31.148739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018566, -0.593003, 0.804986,
		-0.999589, 0.028586, -0.001996,
		-0.021828, -0.804693, -0.593290,
		37.801624, 38.819141, 30.970751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460152, 38.865223, 31.846844>,  <37.816906, 39.382427, 31.386055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460152, 38.865223, 31.846844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620445, 38.657272, 31.545078>,  <37.716621, 38.532501, 31.364019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620445, 38.657272, 31.545078>,  <37.460152, 38.865223, 31.846844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620445, 38.657272, 31.545078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056093, -0.807956, 0.586566,
		-0.914475, -0.277375, -0.294615,
		0.400735, -0.519874, -0.754415,
		37.740665, 38.501308, 31.318754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013123, 38.241695, 31.650198>,  <37.460152, 38.865223, 31.846844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013123, 38.241695, 31.650198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392609, 38.149845, 31.563292>,  <37.620300, 38.094734, 31.511148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392609, 38.149845, 31.563292>,  <37.013123, 38.241695, 31.650198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392609, 38.149845, 31.563292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064768, -0.813897, 0.577388,
		-0.309414, -0.533708, -0.787032,
		0.948720, -0.229626, -0.217264,
		37.677223, 38.080956, 31.498112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021023, 37.565525, 31.428211>,  <37.013123, 38.241695, 31.650198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021023, 37.565525, 31.428211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392815, 37.647587, 31.550842>,  <37.615891, 37.696823, 31.624420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392815, 37.647587, 31.550842>,  <37.021023, 37.565525, 31.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392815, 37.647587, 31.550842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009434, -0.817599, 0.575710,
		0.368764, -0.538001, -0.758003,
		0.929475, 0.205150, 0.306577,
		37.671658, 37.709133, 31.642815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414032, 36.926620, 31.265381>,  <37.021023, 37.565525, 31.428211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414032, 36.926620, 31.265381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673615, 37.119167, 31.501057>,  <37.829365, 37.234695, 31.642462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673615, 37.119167, 31.501057>,  <37.414032, 36.926620, 31.265381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673615, 37.119167, 31.501057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347804, -0.876450, 0.332968,
		0.676676, -0.011158, -0.736196,
		0.648954, 0.481364, 0.589192,
		37.868301, 37.263577, 31.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122391, 36.606350, 31.158485>,  <37.414032, 36.926620, 31.265381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122391, 36.606350, 31.158485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153255, 36.793076, 31.510880>,  <38.171772, 36.905109, 31.722317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153255, 36.793076, 31.510880>,  <38.122391, 36.606350, 31.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153255, 36.793076, 31.510880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498157, -0.783467, 0.371509,
		0.863647, 0.410204, -0.292996,
		0.077158, 0.466811, 0.880985,
		38.176403, 36.933117, 31.775175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815945, 36.501560, 31.376171>,  <38.122391, 36.606350, 31.158485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815945, 36.501560, 31.376171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606846, 36.577099, 31.708694>,  <38.481388, 36.622421, 31.908209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606846, 36.577099, 31.708694>,  <38.815945, 36.501560, 31.376171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606846, 36.577099, 31.708694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413897, -0.796285, 0.441157,
		0.745268, 0.574690, 0.338093,
		-0.522747, 0.188844, 0.831308,
		38.450024, 36.633751, 31.958086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272938, 36.401840, 31.959122>,  <38.815945, 36.501560, 31.376171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272938, 36.401840, 31.959122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902847, 36.348766, 32.101307>,  <38.680794, 36.316921, 32.186619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902847, 36.348766, 32.101307>,  <39.272938, 36.401840, 31.959122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902847, 36.348766, 32.101307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327235, -0.753229, 0.570581,
		0.192038, 0.644236, 0.740325,
		-0.925224, -0.132687, 0.355465,
		38.625278, 36.308960, 32.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416882, 36.193703, 32.628365>,  <39.272938, 36.401840, 31.959122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416882, 36.193703, 32.628365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022564, 36.128799, 32.611038>,  <38.785973, 36.089859, 32.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022564, 36.128799, 32.611038>,  <39.416882, 36.193703, 32.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022564, 36.128799, 32.611038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083273, -0.696248, 0.712955,
		-0.145842, 0.699222, 0.699871,
		-0.985797, -0.162259, -0.043316,
		38.726826, 36.080120, 32.598042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065380, 36.211689, 33.393501>,  <39.416882, 36.193703, 32.628365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065380, 36.211689, 33.393501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869022, 35.998707, 33.117672>,  <38.751209, 35.870918, 32.952175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869022, 35.998707, 33.117672>,  <39.065380, 36.211689, 33.393501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869022, 35.998707, 33.117672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081321, -0.760047, 0.644760,
		-0.867417, 0.372584, 0.329801,
		-0.490891, -0.532456, -0.689577,
		38.721756, 35.838970, 32.910797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603397, 35.866226, 33.832390>,  <39.065380, 36.211689, 33.393501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603397, 35.866226, 33.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631554, 35.665474, 33.487560>,  <38.648449, 35.545025, 33.280663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631554, 35.665474, 33.487560>,  <38.603397, 35.866226, 33.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631554, 35.665474, 33.487560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078250, -0.864330, 0.496802,
		-0.994445, 0.032485, -0.100116,
		0.070395, -0.501876, -0.862070,
		38.652672, 35.514912, 33.228939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180252, 35.364212, 33.851238>,  <38.603397, 35.866226, 33.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180252, 35.364212, 33.851238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441952, 35.230717, 33.579777>,  <38.598972, 35.150620, 33.416901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441952, 35.230717, 33.579777>,  <38.180252, 35.364212, 33.851238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441952, 35.230717, 33.579777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052695, -0.915301, 0.399309,
		-0.754439, -0.225487, -0.616423,
		0.654252, -0.333736, -0.678656,
		38.638226, 35.130596, 33.376179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074791, 34.658264, 33.861336>,  <38.180252, 35.364212, 33.851238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074791, 34.658264, 33.861336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403751, 34.674534, 33.634354>,  <38.601128, 34.684296, 33.498165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403751, 34.674534, 33.634354>,  <38.074791, 34.658264, 33.861336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403751, 34.674534, 33.634354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116359, -0.988381, 0.097795,
		-0.556883, -0.146455, -0.817577,
		0.822400, 0.040672, -0.567454,
		38.650471, 34.686737, 33.464119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039234, 34.119072, 33.425060>,  <38.074791, 34.658264, 33.861336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039234, 34.119072, 33.425060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423794, 34.229126, 33.426601>,  <38.654530, 34.295158, 33.427528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423794, 34.229126, 33.426601>,  <38.039234, 34.119072, 33.425060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423794, 34.229126, 33.426601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268404, -0.940768, 0.207159,
		0.060625, -0.198128, -0.978300,
		0.961397, 0.275138, 0.003856,
		38.712212, 34.311668, 33.427757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443256, 33.811375, 32.860352>,  <38.039234, 34.119072, 33.425060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443256, 33.811375, 32.860352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663727, 33.889549, 33.184822>,  <38.796009, 33.936455, 33.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663727, 33.889549, 33.184822>,  <38.443256, 33.811375, 32.860352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663727, 33.889549, 33.184822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231904, -0.969760, 0.076070,
		0.801515, 0.146188, -0.579829,
		0.551175, 0.195436, 0.811179,
		38.829079, 33.948181, 33.428177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944412, 33.293850, 32.840389>,  <38.443256, 33.811375, 32.860352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944412, 33.293850, 32.840389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002354, 33.464657, 33.197414>,  <39.037121, 33.567142, 33.411629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002354, 33.464657, 33.197414>,  <38.944412, 33.293850, 32.840389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002354, 33.464657, 33.197414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271970, -0.884516, 0.379031,
		0.951340, 0.187845, -0.244266,
		0.144858, 0.427021, 0.892563,
		39.045811, 33.592762, 33.465183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673008, 33.121353, 33.034878>,  <38.944412, 33.293850, 32.840389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673008, 33.121353, 33.034878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470642, 33.187599, 33.373493>,  <39.349224, 33.227348, 33.576664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470642, 33.187599, 33.373493>,  <39.673008, 33.121353, 33.034878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470642, 33.187599, 33.373493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326397, -0.871669, 0.365594,
		0.798448, 0.461265, 0.386931,
		-0.505911, 0.165615, 0.846537,
		39.318871, 33.237282, 33.627453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185009, 32.893509, 33.553741>,  <39.673008, 33.121353, 33.034878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185009, 32.893509, 33.553741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844395, 32.943375, 33.757446>,  <39.640026, 32.973293, 33.879669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844395, 32.943375, 33.757446>,  <40.185009, 32.893509, 33.553741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844395, 32.943375, 33.757446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137886, -0.883882, 0.446922,
		0.505839, 0.450791, 0.735469,
		-0.851536, 0.124660, 0.509260,
		39.588932, 32.980774, 33.910225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393246, 32.626842, 34.147495>,  <40.185009, 32.893509, 33.553741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393246, 32.626842, 34.147495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994274, 32.638092, 34.173843>,  <39.754890, 32.644840, 34.189651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994274, 32.638092, 34.173843>,  <40.393246, 32.626842, 34.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994274, 32.638092, 34.173843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004601, -0.892631, 0.450764,
		0.071475, 0.449909, 0.890209,
		-0.997432, 0.028122, 0.065871,
		39.695045, 32.646530, 34.193604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161430, 32.480469, 34.940960>,  <40.393246, 32.626842, 34.147495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161430, 32.480469, 34.940960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880085, 32.386356, 34.672657>,  <39.711277, 32.329887, 34.511673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880085, 32.386356, 34.672657>,  <40.161430, 32.480469, 34.940960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880085, 32.386356, 34.672657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146789, -0.875216, 0.460922,
		-0.695507, 0.422657, 0.581061,
		-0.703366, -0.235281, -0.670761,
		39.669075, 32.315773, 34.471428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602386, 32.202816, 35.224655>,  <40.161430, 32.480469, 34.940960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602386, 32.202816, 35.224655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523659, 32.037086, 34.869217>,  <39.476421, 31.937649, 34.655952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523659, 32.037086, 34.869217>,  <39.602386, 32.202816, 35.224655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523659, 32.037086, 34.869217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154957, -0.881785, 0.445470,
		-0.968118, 0.225369, 0.109346,
		-0.196815, -0.414324, -0.888594,
		39.464615, 31.912788, 34.602638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847454, 32.020004, 35.212013>,  <39.602386, 32.202816, 35.224655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847454, 32.020004, 35.212013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097359, 31.784039, 35.007397>,  <39.247303, 31.642460, 34.884628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097359, 31.784039, 35.007397>,  <38.847454, 32.020004, 35.212013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097359, 31.784039, 35.007397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518913, -0.803221, 0.292514,
		-0.583438, 0.082693, -0.807937,
		0.624764, -0.589913, -0.511540,
		39.284786, 31.607065, 34.853935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698811, 31.353655, 35.429420>,  <38.847454, 32.020004, 35.212013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698811, 31.353655, 35.429420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893196, 31.307959, 35.082829>,  <39.009827, 31.280540, 34.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893196, 31.307959, 35.082829>,  <38.698811, 31.353655, 35.429420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893196, 31.307959, 35.082829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255258, -0.966745, -0.015702,
		-0.835870, 0.228807, -0.498967,
		0.485967, -0.114240, -0.866479,
		39.038986, 31.273687, 34.822884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317543, 31.097473, 34.755108>,  <38.698811, 31.353655, 35.429420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317543, 31.097473, 34.755108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691963, 30.956841, 34.760616>,  <38.916618, 30.872461, 34.763920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691963, 30.956841, 34.760616>,  <38.317543, 31.097473, 34.755108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691963, 30.956841, 34.760616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351837, -0.935669, 0.027097,
		0.003355, -0.030209, -0.999538,
		0.936055, -0.351584, 0.013767,
		38.972778, 30.851366, 34.764748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350285, 30.420891, 34.442917>,  <38.317543, 31.097473, 34.755108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350285, 30.420891, 34.442917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690254, 30.423286, 34.653667>,  <38.894234, 30.424723, 34.780117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690254, 30.423286, 34.653667>,  <38.350285, 30.420891, 34.442917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690254, 30.423286, 34.653667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243803, -0.881987, 0.403309,
		0.467112, -0.471235, -0.748160,
		0.849921, 0.005987, 0.526875,
		38.945232, 30.425083, 34.811729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691742, 29.793833, 34.271053>,  <38.350285, 30.420891, 34.442917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691742, 29.793833, 34.271053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846752, 29.909956, 34.621037>,  <38.939758, 29.979630, 34.831024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846752, 29.909956, 34.621037>,  <38.691742, 29.793833, 34.271053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846752, 29.909956, 34.621037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218085, -0.893308, 0.392989,
		0.895692, -0.343107, -0.282865,
		0.387523, 0.290309, 0.874955,
		38.963009, 29.997049, 34.883522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171638, 29.289455, 34.427544>,  <38.691742, 29.793833, 34.271053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171638, 29.289455, 34.427544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038132, 29.476791, 34.754776>,  <38.958027, 29.589193, 34.951115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038132, 29.476791, 34.754776>,  <39.171638, 29.289455, 34.427544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038132, 29.476791, 34.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267182, -0.879259, 0.394357,
		0.903997, -0.086952, 0.418602,
		-0.333770, 0.468341, 0.818080,
		38.938000, 29.617294, 35.000198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346737, 28.866898, 34.976837>,  <39.171638, 29.289455, 34.427544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346737, 28.866898, 34.976837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035580, 29.093857, 35.084869>,  <38.848885, 29.230032, 35.149689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035580, 29.093857, 35.084869>,  <39.346737, 28.866898, 34.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035580, 29.093857, 35.084869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472433, -0.811454, 0.344020,
		0.414357, 0.140013, 0.899280,
		-0.777892, 0.567396, 0.270085,
		38.802212, 29.264076, 35.165894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014362, 28.383533, 35.350620>,  <39.346737, 28.866898, 34.976837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014362, 28.383533, 35.350620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742813, 28.674780, 35.388515>,  <38.579884, 28.849527, 35.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742813, 28.674780, 35.388515>,  <39.014362, 28.383533, 35.350620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742813, 28.674780, 35.388515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516881, -0.565545, 0.642645,
		0.521502, 0.387305, 0.760283,
		-0.678874, 0.728117, 0.094743,
		38.539150, 28.893215, 35.416939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921494, 28.522398, 36.051201>,  <39.014362, 28.383533, 35.350620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921494, 28.522398, 36.051201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588448, 28.608625, 35.847134>,  <38.388618, 28.660362, 35.724693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588448, 28.608625, 35.847134>,  <38.921494, 28.522398, 36.051201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588448, 28.608625, 35.847134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503732, -0.677640, 0.535778,
		-0.230215, 0.703089, 0.672805,
		-0.832619, 0.215569, -0.510172,
		38.338661, 28.673296, 35.694080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376644, 28.596991, 36.570477>,  <38.921494, 28.522398, 36.051201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376644, 28.596991, 36.570477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217899, 28.429234, 36.243893>,  <38.122654, 28.328579, 36.047943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217899, 28.429234, 36.243893>,  <38.376644, 28.596991, 36.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217899, 28.429234, 36.243893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093128, -0.866524, 0.490371,
		-0.913143, 0.270645, 0.304831,
		-0.396860, -0.419391, -0.816464,
		38.098843, 28.303417, 35.998955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088459, 28.119476, 36.929600>,  <38.376644, 28.596991, 36.570477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088459, 28.119476, 36.929600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047539, 28.024702, 36.543152>,  <38.022987, 27.967836, 36.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047539, 28.024702, 36.543152>,  <38.088459, 28.119476, 36.929600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047539, 28.024702, 36.543152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243046, -0.935830, 0.255245,
		-0.964605, 0.260925, 0.038153,
		-0.102304, -0.236938, -0.966123,
		38.016846, 27.953621, 36.253315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473888, 27.818487, 36.816074>,  <38.088459, 28.119476, 36.929600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473888, 27.818487, 36.816074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749657, 27.694622, 36.554142>,  <37.915119, 27.620302, 36.396984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749657, 27.694622, 36.554142>,  <37.473888, 27.818487, 36.816074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749657, 27.694622, 36.554142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176927, -0.948622, 0.262321,
		-0.702419, -0.064993, -0.708791,
		0.689423, -0.309663, -0.654831,
		37.956482, 27.601723, 36.357693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198830, 27.455072, 36.265255>,  <37.473888, 27.818487, 36.816074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198830, 27.455072, 36.265255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974621, 27.613836, 35.974525>,  <36.840096, 27.709095, 35.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974621, 27.613836, 35.974525>,  <37.198830, 27.455072, 36.265255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974621, 27.613836, 35.974525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764604, 0.585168, -0.270108,
		0.318107, -0.707137, -0.631479,
		-0.560525, 0.396908, -0.726826,
		36.806465, 27.732908, 35.756477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590347, 27.352371, 35.616024>,  <37.198830, 27.455072, 36.265255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590347, 27.352371, 35.616024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345989, 27.666590, 35.655483>,  <37.199375, 27.855120, 35.679161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345989, 27.666590, 35.655483>,  <37.590347, 27.352371, 35.616024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345989, 27.666590, 35.655483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781393, 0.618283, -0.084565,
		-0.127425, 0.025426, -0.991522,
		-0.610891, 0.785544, 0.098652,
		37.162724, 27.902252, 35.685078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740833, 27.911247, 35.125889>,  <37.590347, 27.352371, 35.616024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740833, 27.911247, 35.125889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570278, 28.108227, 35.429386>,  <37.467945, 28.226414, 35.611485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570278, 28.108227, 35.429386>,  <37.740833, 27.911247, 35.125889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570278, 28.108227, 35.429386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711030, 0.700977, -0.055379,
		-0.559130, 0.515873, -0.649036,
		-0.426391, 0.492449, 0.758739,
		37.442360, 28.255960, 35.657009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466831, 28.616520, 34.843185>,  <37.740833, 27.911247, 35.125889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466831, 28.616520, 34.843185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582413, 28.583254, 35.224674>,  <37.651760, 28.563295, 35.453568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582413, 28.583254, 35.224674>,  <37.466831, 28.616520, 34.843185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582413, 28.583254, 35.224674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531048, 0.842822, -0.087399,
		-0.796552, 0.531728, 0.287698,
		0.288951, -0.083163, 0.953725,
		37.669098, 28.558306, 35.510792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221493, 29.227690, 35.319195>,  <37.466831, 28.616520, 34.843185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221493, 29.227690, 35.319195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571362, 29.067045, 35.427750>,  <37.781284, 28.970659, 35.492882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571362, 29.067045, 35.427750>,  <37.221493, 29.227690, 35.319195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571362, 29.067045, 35.427750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441542, 0.891158, -0.104299,
		-0.199965, 0.211058, 0.956801,
		0.874674, -0.401611, 0.271391,
		37.833763, 28.946562, 35.509167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592548, 29.700642, 35.684349>,  <37.221493, 29.227690, 35.319195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592548, 29.700642, 35.684349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890690, 29.452034, 35.587879>,  <38.069572, 29.302870, 35.529995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890690, 29.452034, 35.587879>,  <37.592548, 29.700642, 35.684349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890690, 29.452034, 35.587879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584285, 0.783202, -0.212616,
		0.321034, 0.017558, 0.946905,
		0.745351, -0.621519, -0.241176,
		38.114296, 29.265579, 35.515526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102585, 30.159292, 35.725796>,  <37.592548, 29.700642, 35.684349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102585, 30.159292, 35.725796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306446, 29.829205, 35.628418>,  <38.428764, 29.631153, 35.569992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306446, 29.829205, 35.628418>,  <38.102585, 30.159292, 35.725796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306446, 29.829205, 35.628418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839195, 0.539194, -0.070860,
		0.189741, -0.168186, 0.967322,
		0.509657, -0.825217, -0.243448,
		38.459343, 29.581640, 35.555382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738506, 30.282373, 36.040058>,  <38.102585, 30.159292, 35.725796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738506, 30.282373, 36.040058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836746, 30.029383, 35.746216>,  <38.895691, 29.877588, 35.569908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836746, 30.029383, 35.746216>,  <38.738506, 30.282373, 36.040058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836746, 30.029383, 35.746216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620665, 0.684716, -0.382019,
		0.744619, -0.362124, 0.560722,
		0.245598, -0.632479, -0.734610,
		38.910427, 29.839640, 35.525833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540169, 30.254658, 35.993820>,  <38.738506, 30.282373, 36.040058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540169, 30.254658, 35.993820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358593, 30.175877, 35.646225>,  <39.249645, 30.128609, 35.437668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358593, 30.175877, 35.646225>,  <39.540169, 30.254658, 35.993820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358593, 30.175877, 35.646225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467727, 0.777423, -0.420528,
		0.758396, -0.597347, -0.260789,
		-0.453945, -0.196949, -0.868991,
		39.222412, 30.116791, 35.385529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009682, 30.399698, 35.554066>,  <39.540169, 30.254658, 35.993820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009682, 30.399698, 35.554066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676296, 30.399467, 35.333035>,  <39.476265, 30.399330, 35.200417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676296, 30.399467, 35.333035>,  <40.009682, 30.399698, 35.554066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676296, 30.399467, 35.333035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360335, 0.757568, -0.544289,
		0.418926, -0.652756, -0.631197,
		-0.833463, -0.000575, -0.552576,
		39.426258, 30.399296, 35.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209988, 30.251301, 34.798004>,  <40.009682, 30.399698, 35.554066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209988, 30.251301, 34.798004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878021, 30.474453, 34.797791>,  <39.678841, 30.608345, 34.797661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878021, 30.474453, 34.797791>,  <40.209988, 30.251301, 34.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878021, 30.474453, 34.797791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433149, 0.643757, -0.630840,
		-0.351588, -0.523780, -0.775913,
		-0.829921, 0.557881, -0.000537,
		39.629044, 30.641817, 34.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333790, 30.752573, 34.301235>,  <40.209988, 30.251301, 34.798004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333790, 30.752573, 34.301235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980000, 30.895309, 34.421482>,  <39.767727, 30.980951, 34.493629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980000, 30.895309, 34.421482>,  <40.333790, 30.752573, 34.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980000, 30.895309, 34.421482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105913, 0.781015, -0.615466,
		-0.454415, -0.512522, -0.728579,
		-0.884471, 0.356843, 0.300622,
		39.714657, 31.002363, 34.511669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115871, 31.294172, 33.904797>,  <40.333790, 30.752573, 34.301235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115871, 31.294172, 33.904797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795452, 31.351288, 34.137325>,  <39.603203, 31.385557, 34.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795452, 31.351288, 34.137325>,  <40.115871, 31.294172, 33.904797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795452, 31.351288, 34.137325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180609, 0.868224, -0.462134,
		-0.570709, -0.475182, -0.669696,
		-0.801044, 0.142791, 0.581325,
		39.555138, 31.394125, 34.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558277, 31.402493, 33.407249>,  <40.115871, 31.294172, 33.904797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558277, 31.402493, 33.407249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511292, 31.564091, 33.770126>,  <39.483101, 31.661049, 33.987850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511292, 31.564091, 33.770126>,  <39.558277, 31.402493, 33.407249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511292, 31.564091, 33.770126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088490, 0.905621, -0.414753,
		-0.989127, -0.128995, -0.070626,
		-0.117462, 0.403994, 0.907189,
		39.476051, 31.685289, 34.042282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012093, 31.875957, 33.477516>,  <39.558277, 31.402493, 33.407249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012093, 31.875957, 33.477516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271843, 32.011589, 33.749794>,  <39.427692, 32.092968, 33.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271843, 32.011589, 33.749794>,  <39.012093, 31.875957, 33.477516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271843, 32.011589, 33.749794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187285, 0.796216, -0.575294,
		-0.737049, 0.501063, 0.453536,
		0.649371, 0.339080, 0.680692,
		39.466656, 32.113312, 33.954002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643993, 31.899273, 34.091286>,  <39.012093, 31.875957, 33.477516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643993, 31.899273, 34.091286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954994, 32.072445, 34.273743>,  <39.141594, 32.176350, 34.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954994, 32.072445, 34.273743>,  <38.643993, 31.899273, 34.091286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954994, 32.072445, 34.273743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178536, 0.847431, -0.499985,
		-0.603010, 0.307299, 0.736170,
		0.777499, 0.432929, 0.456145,
		39.188244, 32.202324, 34.410587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391762, 32.501438, 34.255020>,  <38.643993, 31.899273, 34.091286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391762, 32.501438, 34.255020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785023, 32.574493, 34.252182>,  <39.020981, 32.618324, 34.250481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785023, 32.574493, 34.252182>,  <38.391762, 32.501438, 34.255020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785023, 32.574493, 34.252182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162139, 0.853585, -0.495079,
		-0.084363, 0.487889, 0.868819,
		0.983155, 0.182636, -0.007095,
		39.079967, 32.629284, 34.250053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504307, 33.183483, 34.580982>,  <38.391762, 32.501438, 34.255020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504307, 33.183483, 34.580982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837097, 33.107906, 34.372326>,  <39.036774, 33.062561, 34.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837097, 33.107906, 34.372326>,  <38.504307, 33.183483, 34.580982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837097, 33.107906, 34.372326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074002, 0.894031, -0.441851,
		0.549848, 0.406213, 0.729834,
		0.831980, -0.188942, -0.521642,
		39.086693, 33.051224, 34.215832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909618, 33.655739, 34.768265>,  <38.504307, 33.183483, 34.580982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909618, 33.655739, 34.768265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025822, 33.540768, 34.403191>,  <39.095543, 33.471783, 34.184147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025822, 33.540768, 34.403191>,  <38.909618, 33.655739, 34.768265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025822, 33.540768, 34.403191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169817, 0.923189, -0.344795,
		0.941683, 0.255155, 0.219383,
		0.290508, -0.287433, -0.912682,
		39.112972, 33.454536, 34.129387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382202, 34.079384, 34.655312>,  <38.909618, 33.655739, 34.768265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382202, 34.079384, 34.655312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255997, 33.946213, 34.299873>,  <39.180275, 33.866310, 34.086609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255997, 33.946213, 34.299873>,  <39.382202, 34.079384, 34.655312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255997, 33.946213, 34.299873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066772, 0.926322, -0.370770,
		0.946570, -0.176316, -0.270034,
		-0.315510, -0.332928, -0.888601,
		39.161343, 33.846333, 34.033295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825958, 34.372677, 34.189144>,  <39.382202, 34.079384, 34.655312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825958, 34.372677, 34.189144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475040, 34.291691, 34.015083>,  <39.264488, 34.243099, 33.910648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475040, 34.291691, 34.015083>,  <39.825958, 34.372677, 34.189144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475040, 34.291691, 34.015083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008214, 0.900200, -0.435399,
		0.479874, -0.385549, -0.788082,
		-0.877299, -0.202464, -0.435150,
		39.211849, 34.230953, 33.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894123, 34.785255, 33.622303>,  <39.825958, 34.372677, 34.189144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894123, 34.785255, 33.622303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530396, 34.624821, 33.578003>,  <39.312157, 34.528561, 33.551422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530396, 34.624821, 33.578003>,  <39.894123, 34.785255, 33.622303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530396, 34.624821, 33.578003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259376, 0.754510, -0.602859,
		0.325359, -0.519467, -0.790124,
		-0.909322, -0.401084, -0.110749,
		39.257599, 34.504494, 33.544777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845325, 34.762413, 32.928223>,  <39.894123, 34.785255, 33.622303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845325, 34.762413, 32.928223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473553, 34.744404, 33.074718>,  <39.250488, 34.733597, 33.162617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473553, 34.744404, 33.074718>,  <39.845325, 34.762413, 32.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473553, 34.744404, 33.074718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256599, 0.792114, -0.553816,
		-0.265169, -0.608710, -0.747768,
		-0.929431, -0.045021, 0.366238,
		39.194725, 34.730896, 33.184589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371262, 34.763153, 32.389687>,  <39.845325, 34.762413, 32.928223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371262, 34.763153, 32.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147797, 34.871384, 32.703293>,  <39.013718, 34.936321, 32.891457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147797, 34.871384, 32.703293>,  <39.371262, 34.763153, 32.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147797, 34.871384, 32.703293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461208, 0.684310, -0.564807,
		-0.689332, -0.677134, -0.257510,
		-0.558666, 0.270573, 0.784016,
		38.980198, 34.952557, 32.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153965, 34.592331, 31.725685>,  <39.371262, 34.763153, 32.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153965, 34.592331, 31.725685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396637, 34.405022, 31.982641>,  <39.542240, 34.292637, 32.136814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396637, 34.405022, 31.982641>,  <39.153965, 34.592331, 31.725685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396637, 34.405022, 31.982641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735974, 0.025410, -0.676533,
		0.300478, 0.883220, 0.360051,
		0.606676, -0.468271, 0.642392,
		39.578640, 34.264542, 32.175358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867424, 34.906345, 31.832481>,  <39.153965, 34.592331, 31.725685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867424, 34.906345, 31.832481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886818, 34.509480, 31.878550>,  <39.898453, 34.271362, 31.906191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886818, 34.509480, 31.878550>,  <39.867424, 34.906345, 31.832481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886818, 34.509480, 31.878550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688748, -0.050299, -0.723254,
		0.723378, 0.114389, 0.680911,
		0.048484, -0.992162, 0.115170,
		39.901363, 34.211830, 31.913101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649548, 34.700615, 31.833372>,  <39.867424, 34.906345, 31.832481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649548, 34.700615, 31.833372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376358, 34.440994, 31.699341>,  <40.212444, 34.285221, 31.618921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376358, 34.440994, 31.699341>,  <40.649548, 34.700615, 31.833372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376358, 34.440994, 31.699341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562544, -0.174761, -0.808086,
		0.465933, -0.740397, 0.484478,
		-0.682972, -0.649054, -0.335079,
		40.171467, 34.246277, 31.598818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114216, 34.862278, 32.327347>,  <40.649548, 34.700615, 31.833372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114216, 34.862278, 32.327347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792675, 34.781902, 32.551292>,  <40.599751, 34.733677, 32.685661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792675, 34.781902, 32.551292>,  <41.114216, 34.862278, 32.327347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792675, 34.781902, 32.551292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395639, -0.883445, 0.250985,
		0.444177, 0.423259, 0.789657,
		-0.803851, -0.200937, 0.559864,
		40.551521, 34.721622, 32.719254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392776, 34.732101, 32.888466>,  <41.114216, 34.862278, 32.327347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392776, 34.732101, 32.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038666, 34.546909, 32.870861>,  <40.826199, 34.435795, 32.860298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038666, 34.546909, 32.870861>,  <41.392776, 34.732101, 32.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038666, 34.546909, 32.870861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449784, -0.876408, 0.172055,
		-0.118226, 0.132522, 0.984104,
		-0.885278, -0.462976, -0.044008,
		40.773083, 34.408016, 32.857658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844646, 34.198284, 32.975029>,  <41.392776, 34.732101, 32.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844646, 34.198284, 32.975029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982643, 34.421619, 32.673237>,  <42.065441, 34.555622, 32.492161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982643, 34.421619, 32.673237>,  <41.844646, 34.198284, 32.975029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982643, 34.421619, 32.673237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541500, -0.774963, -0.325899,
		-0.766656, -0.296119, -0.569695,
		0.344988, 0.558342, -0.754479,
		42.086140, 34.589123, 32.446892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858303, 33.698700, 32.475811>,  <41.844646, 34.198284, 32.975029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858303, 33.698700, 32.475811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102905, 34.008484, 32.410984>,  <42.249668, 34.194355, 32.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102905, 34.008484, 32.410984>,  <41.858303, 33.698700, 32.475811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102905, 34.008484, 32.410984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754745, -0.632427, -0.174344,
		-0.237520, -0.015708, -0.971256,
		0.611510, 0.774460, -0.162069,
		42.286358, 34.240822, 32.362362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269291, 33.597870, 31.820742>,  <41.858303, 33.698700, 32.475811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269291, 33.597870, 31.820742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477489, 33.831963, 32.069447>,  <42.602409, 33.972416, 32.218670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477489, 33.831963, 32.069447>,  <42.269291, 33.597870, 31.820742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477489, 33.831963, 32.069447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815146, -0.557353, -0.157783,
		0.254201, 0.588952, -0.767149,
		0.520499, 0.585229, 0.621762,
		42.633640, 34.007530, 32.255974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979500, 33.908768, 31.540676>,  <42.269291, 33.597870, 31.820742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979500, 33.908768, 31.540676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 33.836403, 31.933014>,  <43.025715, 33.792984, 32.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008385, 33.836403, 31.933014>,  <42.979500, 33.908768, 31.540676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008385, 33.836403, 31.933014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842348, -0.515528, -0.157104,
		0.534074, 0.837557, 0.115162,
		0.072215, -0.180912, 0.980845,
		43.030048, 33.782127, 32.227268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661812, 34.145412, 31.788115>,  <42.979500, 33.908768, 31.540676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661812, 34.145412, 31.788115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511353, 33.857601, 32.021622>,  <43.421078, 33.684914, 32.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511353, 33.857601, 32.021622>,  <43.661812, 34.145412, 31.788115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511353, 33.857601, 32.021622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918768, -0.371174, 0.134515,
		0.119892, 0.586946, 0.800700,
		-0.376152, -0.719530, 0.583768,
		43.398506, 33.641743, 32.196751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116386, 34.460678, 32.342743>,  <43.661812, 34.145412, 31.788115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116386, 34.460678, 32.342743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060371, 34.855007, 32.379719>,  <44.026764, 35.091606, 32.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060371, 34.855007, 32.379719>,  <44.116386, 34.460678, 32.342743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060371, 34.855007, 32.379719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531822, -0.153635, 0.832803,
		0.835197, 0.067463, 0.545797,
		-0.140037, 0.985822, 0.092437,
		44.018360, 35.150753, 32.407452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315109, 34.738377, 32.995682>,  <44.116386, 34.460678, 32.342743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315109, 34.738377, 32.995682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014462, 34.960831, 32.853817>,  <43.834072, 35.094303, 32.768700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014462, 34.960831, 32.853817>,  <44.315109, 34.738377, 32.995682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014462, 34.960831, 32.853817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567551, -0.271305, 0.777354,
		0.336096, 0.785559, 0.519555,
		-0.751615, 0.556139, -0.354660,
		43.788979, 35.127674, 32.747417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834255, 35.016315, 32.535225>,  <44.315109, 34.738377, 32.995682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834255, 35.016315, 32.535225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000469, 35.368530, 32.444023>,  <45.100197, 35.579861, 32.389301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000469, 35.368530, 32.444023>,  <44.834255, 35.016315, 32.535225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000469, 35.368530, 32.444023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338754, 0.382455, 0.859636,
		0.844144, -0.279967, 0.457208,
		0.415531, 0.880538, -0.228007,
		45.125130, 35.632690, 32.375622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809425, 35.269463, 33.138378>,  <44.834255, 35.016315, 32.535225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809425, 35.269463, 33.138378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956333, 34.911625, 33.036545>,  <45.044476, 34.696922, 32.975445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956333, 34.911625, 33.036545>,  <44.809425, 35.269463, 33.138378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956333, 34.911625, 33.036545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474189, -0.055383, 0.878679,
		-0.800163, -0.443430, 0.403868,
		0.367266, -0.894596, -0.254585,
		45.066513, 34.643246, 32.960171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571236, 34.805424, 33.692123>,  <44.809425, 35.269463, 33.138378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571236, 34.805424, 33.692123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908371, 34.780277, 33.478329>,  <45.110653, 34.765190, 33.350052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908371, 34.780277, 33.478329>,  <44.571236, 34.805424, 33.692123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908371, 34.780277, 33.478329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537324, 0.153882, 0.829219,
		0.030117, -0.986087, 0.163477,
		0.842838, -0.062866, -0.534483,
		45.161224, 34.761417, 33.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957207, 34.497955, 34.213276>,  <44.571236, 34.805424, 33.692123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957207, 34.497955, 34.213276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138023, 34.738979, 33.950191>,  <45.246513, 34.883595, 33.792343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138023, 34.738979, 33.950191>,  <44.957207, 34.497955, 34.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138023, 34.738979, 33.950191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543975, 0.398139, 0.738631,
		0.706929, -0.691669, -0.147801,
		0.452043, 0.602561, -0.657707,
		45.273636, 34.919746, 33.752880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686413, 34.436726, 34.252773>,  <44.957207, 34.497955, 34.213276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686413, 34.436726, 34.252773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543629, 34.790970, 34.133934>,  <45.457958, 35.003517, 34.062630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543629, 34.790970, 34.133934>,  <45.686413, 34.436726, 34.252773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543629, 34.790970, 34.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351284, 0.421978, 0.835783,
		0.865550, 0.193975, -0.461732,
		-0.356962, 0.885612, -0.297103,
		45.436539, 35.056652, 34.044804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206879, 34.880474, 34.282356>,  <45.686413, 34.436726, 34.252773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206879, 34.880474, 34.282356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845295, 35.026974, 34.370651>,  <45.628345, 35.114872, 34.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845295, 35.026974, 34.370651>,  <46.206879, 34.880474, 34.282356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845295, 35.026974, 34.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360393, 0.374631, 0.854265,
		0.230178, 0.851771, -0.470643,
		-0.903955, 0.366249, 0.220740,
		45.574108, 35.136848, 34.436874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530136, 35.105927, 34.916458>,  <46.206879, 34.880474, 34.282356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530136, 35.105927, 34.916458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868294, 35.319305, 34.927338>,  <47.071190, 35.447334, 34.933865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868294, 35.319305, 34.927338>,  <46.530136, 35.105927, 34.916458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868294, 35.319305, 34.927338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352268, -0.595098, 0.722333,
		0.401515, -0.601075, -0.691010,
		0.845395, 0.533448, 0.027201,
		47.121914, 35.479340, 34.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088833, 34.621166, 34.913860>,  <46.530136, 35.105927, 34.916458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088833, 34.621166, 34.913860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.233845, 34.955105, 35.079567>,  <47.320850, 35.155468, 35.178989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.233845, 34.955105, 35.079567>,  <47.088833, 34.621166, 34.913860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.233845, 34.955105, 35.079567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409998, -0.542040, 0.733549,
		0.836945, -0.096083, -0.538787,
		0.362525, 0.834842, 0.414264,
		47.342602, 35.205559, 35.203846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840069, 34.769390, 35.002373>,  <47.088833, 34.621166, 34.913860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840069, 34.769390, 35.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673599, 34.967335, 35.307503>,  <47.573715, 35.086102, 35.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673599, 34.967335, 35.307503>,  <47.840069, 34.769390, 35.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673599, 34.967335, 35.307503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564505, -0.517068, 0.643409,
		0.712832, 0.698394, -0.064159,
		-0.416178, 0.494861, 0.762829,
		47.548744, 35.115791, 35.536350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.138973, 38.330303, 23.429832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739952, 38.346703, 23.407152>,  <34.500542, 38.356541, 23.393543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739952, 38.346703, 23.407152>,  <35.138973, 38.330303, 23.429832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739952, 38.346703, 23.407152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063055, -0.175447, 0.982468,
		0.030333, 0.983635, 0.177602,
		-0.997549, 0.041000, -0.056701,
		34.440689, 38.359001, 23.390142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839035, 38.694664, 24.096008>,  <35.138973, 38.330303, 23.429832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839035, 38.694664, 24.096008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546284, 38.482311, 23.925123>,  <34.370632, 38.354900, 23.822592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546284, 38.482311, 23.925123>,  <34.839035, 38.694664, 24.096008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546284, 38.482311, 23.925123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267225, -0.353119, 0.896604,
		-0.626849, 0.770370, 0.116576,
		-0.731882, -0.530883, -0.427215,
		34.326717, 38.323048, 23.796959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303509, 38.783291, 24.616890>,  <34.839035, 38.694664, 24.096008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303509, 38.783291, 24.616890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.201668, 38.472477, 24.386621>,  <34.140564, 38.285988, 24.248461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.201668, 38.472477, 24.386621>,  <34.303509, 38.783291, 24.616890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201668, 38.472477, 24.386621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318198, -0.494824, 0.808641,
		-0.913195, 0.389062, -0.121264,
		-0.254607, -0.777033, -0.575670,
		34.125286, 38.239368, 24.213921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565292, 38.583622, 24.716311>,  <34.303509, 38.783291, 24.616890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565292, 38.583622, 24.716311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751453, 38.264854, 24.562260>,  <33.863152, 38.073593, 24.469830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751453, 38.264854, 24.562260>,  <33.565292, 38.583622, 24.716311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751453, 38.264854, 24.562260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229721, -0.528971, 0.816957,
		-0.854769, -0.291740, -0.429252,
		0.465401, -0.796918, -0.385129,
		33.891075, 38.025780, 24.446720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160973, 38.065182, 24.955242>,  <33.565292, 38.583622, 24.716311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160973, 38.065182, 24.955242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487770, 37.890453, 24.804667>,  <33.683849, 37.785618, 24.714321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487770, 37.890453, 24.804667>,  <33.160973, 38.065182, 24.955242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487770, 37.890453, 24.804667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048925, -0.702963, 0.709542,
		-0.574565, -0.561275, -0.595689,
		0.816996, -0.436822, -0.376437,
		33.732868, 37.759407, 24.691736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025105, 37.248978, 24.984640>,  <33.160973, 38.065182, 24.955242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025105, 37.248978, 24.984640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.422298, 37.293945, 24.969973>,  <33.660614, 37.320927, 24.961172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.422298, 37.293945, 24.969973>,  <33.025105, 37.248978, 24.984640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422298, 37.293945, 24.969973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101773, -0.654583, 0.749108,
		0.060214, -0.747584, -0.661432,
		0.992984, 0.112423, -0.036668,
		33.720192, 37.327671, 24.958973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325172, 36.618675, 25.282312>,  <33.025105, 37.248978, 24.984640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325172, 36.618675, 25.282312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637291, 36.868202, 25.300127>,  <33.824562, 37.017918, 25.310816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637291, 36.868202, 25.300127>,  <33.325172, 36.618675, 25.282312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637291, 36.868202, 25.300127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388581, -0.539385, 0.747040,
		0.490041, -0.565608, -0.663285,
		0.780298, 0.623820, 0.044537,
		33.871380, 37.055347, 25.313488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987938, 36.184731, 25.235973>,  <33.325172, 36.618675, 25.282312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987938, 36.184731, 25.235973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059563, 36.517593, 25.445908>,  <34.102539, 36.717312, 25.571867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059563, 36.517593, 25.445908>,  <33.987938, 36.184731, 25.235973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059563, 36.517593, 25.445908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084647, -0.544509, 0.834473,
		0.980189, -0.104998, -0.167941,
		0.179064, 0.832157, 0.524834,
		34.113281, 36.767239, 25.603357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621662, 36.096806, 25.564775>,  <33.987938, 36.184731, 25.235973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621662, 36.096806, 25.564775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.426079, 36.379005, 25.769983>,  <34.308727, 36.548325, 25.893108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.426079, 36.379005, 25.769983>,  <34.621662, 36.096806, 25.564775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426079, 36.379005, 25.769983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257243, -0.445342, 0.857611,
		0.833515, 0.551305, 0.036268,
		-0.488957, 0.705502, 0.513019,
		34.279392, 36.590656, 25.923889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096458, 36.381741, 26.112381>,  <34.621662, 36.096806, 25.564775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096458, 36.381741, 26.112381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747860, 36.515430, 26.255928>,  <34.538700, 36.595642, 26.342056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747860, 36.515430, 26.255928>,  <35.096458, 36.381741, 26.112381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747860, 36.515430, 26.255928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283837, -0.252982, 0.924898,
		0.399909, 0.907907, 0.125608,
		-0.871498, 0.334222, 0.358868,
		34.486412, 36.615696, 26.363588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260376, 36.713703, 26.768465>,  <35.096458, 36.381741, 26.112381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260376, 36.713703, 26.768465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867298, 36.641087, 26.783148>,  <34.631451, 36.597519, 26.791958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867298, 36.641087, 26.783148>,  <35.260376, 36.713703, 26.768465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867298, 36.641087, 26.783148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102125, -0.365777, 0.925083,
		-0.154512, 0.912826, 0.377988,
		-0.982699, -0.181539, 0.036705,
		34.572487, 36.586624, 26.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979614, 36.925934, 27.470598>,  <35.260376, 36.713703, 26.768465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979614, 36.925934, 27.470598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726448, 36.651878, 27.326378>,  <34.574547, 36.487446, 27.239845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726448, 36.651878, 27.326378>,  <34.979614, 36.925934, 27.470598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726448, 36.651878, 27.326378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055666, -0.504763, 0.861462,
		-0.772216, 0.525163, 0.357612,
		-0.632917, -0.685142, -0.360552,
		34.536572, 36.446335, 27.218212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499744, 36.775665, 28.018242>,  <34.979614, 36.925934, 27.470598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499744, 36.775665, 28.018242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501259, 36.448238, 27.788481>,  <34.502167, 36.251781, 27.650623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501259, 36.448238, 27.788481>,  <34.499744, 36.775665, 28.018242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501259, 36.448238, 27.788481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260834, -0.553714, 0.790800,
		-0.965376, -0.152814, 0.211416,
		0.003781, -0.818565, -0.574402,
		34.502392, 36.202667, 27.616159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429070, 36.193573, 28.449766>,  <34.499744, 36.775665, 28.018242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429070, 36.193573, 28.449766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545757, 35.993160, 28.123854>,  <34.615768, 35.872913, 27.928307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545757, 35.993160, 28.123854>,  <34.429070, 36.193573, 28.449766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545757, 35.993160, 28.123854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396669, -0.711759, 0.579701,
		-0.870376, -0.492308, -0.008890,
		0.291719, -0.501031, -0.814781,
		34.633274, 35.842850, 27.879419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261986, 35.519146, 28.598808>,  <34.429070, 36.193573, 28.449766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261986, 35.519146, 28.598808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511478, 35.438145, 28.296827>,  <34.661175, 35.389545, 28.115639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511478, 35.438145, 28.296827>,  <34.261986, 35.519146, 28.598808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511478, 35.438145, 28.296827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362149, -0.781067, 0.508707,
		-0.692681, -0.590702, -0.413841,
		0.623732, -0.202499, -0.754952,
		34.698597, 35.377396, 28.070341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196598, 34.778236, 28.409441>,  <34.261986, 35.519146, 28.598808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196598, 34.778236, 28.409441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550007, 34.906090, 28.272491>,  <34.762054, 34.982803, 28.190321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550007, 34.906090, 28.272491>,  <34.196598, 34.778236, 28.409441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550007, 34.906090, 28.272491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452531, -0.771091, 0.447921,
		-0.120831, -0.550684, -0.825922,
		0.883524, 0.319633, -0.342373,
		34.815063, 35.001980, 28.169779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558239, 34.192970, 28.240625>,  <34.196598, 34.778236, 28.409441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558239, 34.192970, 28.240625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860458, 34.454437, 28.223379>,  <35.041790, 34.611317, 28.213032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860458, 34.454437, 28.223379>,  <34.558239, 34.192970, 28.240625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860458, 34.454437, 28.223379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602413, -0.667433, 0.437758,
		0.257372, -0.356722, -0.898059,
		0.755552, 0.653669, -0.043116,
		35.087124, 34.650539, 28.210443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169765, 33.874969, 27.896500>,  <34.558239, 34.192970, 28.240625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169765, 33.874969, 27.896500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334190, 34.170349, 28.110313>,  <35.432846, 34.347576, 28.238602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334190, 34.170349, 28.110313>,  <35.169765, 33.874969, 27.896500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334190, 34.170349, 28.110313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557066, -0.667622, 0.493921,
		0.721600, 0.094739, -0.685797,
		0.411059, 0.738448, 0.534532,
		35.457508, 34.391884, 28.270674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853352, 33.783119, 27.802698>,  <35.169765, 33.874969, 27.896500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853352, 33.783119, 27.802698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818432, 34.016705, 28.125526>,  <35.797482, 34.156857, 28.319223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818432, 34.016705, 28.125526>,  <35.853352, 33.783119, 27.802698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818432, 34.016705, 28.125526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632754, -0.593238, 0.497685,
		0.769416, 0.554124, -0.317718,
		-0.087297, 0.583965, 0.807072,
		35.792244, 34.191895, 28.367647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596291, 34.031025, 28.076836>,  <35.853352, 33.783119, 27.802698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596291, 34.031025, 28.076836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336960, 34.024651, 28.381315>,  <36.181362, 34.020824, 28.564003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336960, 34.024651, 28.381315>,  <36.596291, 34.031025, 28.076836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336960, 34.024651, 28.381315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552638, -0.697552, 0.456083,
		0.523707, 0.716356, 0.461047,
		-0.648323, -0.015938, 0.761199,
		36.142464, 34.019871, 28.609674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961292, 33.930729, 28.556355>,  <36.596291, 34.031025, 28.076836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961292, 33.930729, 28.556355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616333, 33.843838, 28.739256>,  <36.409359, 33.791702, 28.848997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616333, 33.843838, 28.739256>,  <36.961292, 33.930729, 28.556355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616333, 33.843838, 28.739256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485979, -0.608179, 0.627648,
		0.141748, 0.763498, 0.630062,
		-0.862399, -0.217229, 0.457253,
		36.357613, 33.778667, 28.876432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132824, 33.885834, 29.284716>,  <36.961292, 33.930729, 28.556355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132824, 33.885834, 29.284716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777199, 33.709057, 29.236969>,  <36.563824, 33.602989, 29.208321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777199, 33.709057, 29.236969>,  <37.132824, 33.885834, 29.284716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777199, 33.709057, 29.236969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301324, -0.761261, 0.574182,
		-0.344624, 0.474518, 0.809980,
		-0.889066, -0.441943, -0.119365,
		36.510479, 33.576473, 29.201159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157578, 33.891693, 29.968992>,  <37.132824, 33.885834, 29.284716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157578, 33.891693, 29.968992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508163, 33.872608, 30.160629>,  <37.718513, 33.861156, 30.275612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508163, 33.872608, 30.160629>,  <37.157578, 33.891693, 29.968992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508163, 33.872608, 30.160629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331672, 0.781144, -0.528969,
		-0.349001, 0.622525, 0.700472,
		0.876466, -0.047716, 0.479093,
		37.771103, 33.858292, 30.304358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208206, 34.539135, 30.192493>,  <37.157578, 33.891693, 29.968992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208206, 34.539135, 30.192493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 34.375656, 30.150572>,  <37.788448, 34.277569, 30.125418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 34.375656, 30.150572>,  <37.208206, 34.539135, 30.192493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570858, 34.375656, 30.150572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296035, 0.793182, -0.532189,
		0.300634, 0.451473, 0.840113,
		0.906632, -0.408698, -0.104806,
		37.842846, 34.253048, 30.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691528, 35.052349, 30.472555>,  <37.208206, 34.539135, 30.192493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691528, 35.052349, 30.472555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884373, 34.819393, 30.210747>,  <38.000080, 34.679619, 30.053661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884373, 34.819393, 30.210747>,  <37.691528, 35.052349, 30.472555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884373, 34.819393, 30.210747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307244, 0.812017, -0.496215,
		0.820471, 0.038131, 0.570415,
		0.482108, -0.582387, -0.654521,
		38.029007, 34.644676, 30.014391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149837, 35.470055, 30.272923>,  <37.691528, 35.052349, 30.472555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149837, 35.470055, 30.272923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205585, 35.185368, 29.997520>,  <38.239033, 35.014557, 29.832279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205585, 35.185368, 29.997520>,  <38.149837, 35.470055, 30.272923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205585, 35.185368, 29.997520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292861, 0.693810, -0.657921,
		0.945944, -0.109943, 0.305128,
		0.139367, -0.711717, -0.688503,
		38.247395, 34.971851, 29.790970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755775, 35.600620, 29.965277>,  <38.149837, 35.470055, 30.272923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755775, 35.600620, 29.965277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556801, 35.377426, 29.699583>,  <38.437416, 35.243511, 29.540167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556801, 35.377426, 29.699583>,  <38.755775, 35.600620, 29.965277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556801, 35.377426, 29.699583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130779, 0.708705, -0.693278,
		0.857587, -0.431729, -0.279562,
		-0.497436, -0.557985, -0.664237,
		38.407570, 35.210030, 29.500313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184963, 35.641129, 29.306259>,  <38.755775, 35.600620, 29.965277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184963, 35.641129, 29.306259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804161, 35.544220, 29.231430>,  <38.575680, 35.486076, 29.186533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804161, 35.544220, 29.231430>,  <39.184963, 35.641129, 29.306259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804161, 35.544220, 29.231430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030480, 0.533096, -0.845505,
		0.304570, -0.810625, -0.500124,
		-0.952002, -0.242272, -0.187073,
		38.518562, 35.471539, 29.175308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153542, 35.371510, 28.656836>,  <39.184963, 35.641129, 29.306259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153542, 35.371510, 28.656836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777321, 35.491962, 28.719671>,  <38.551586, 35.564232, 28.757374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777321, 35.491962, 28.719671>,  <39.153542, 35.371510, 28.656836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777321, 35.491962, 28.719671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014113, 0.496769, -0.867768,
		-0.339349, -0.813966, -0.471489,
		-0.940555, 0.301130, 0.157090,
		38.495155, 35.582302, 28.766798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917885, 35.505741, 27.991938>,  <39.153542, 35.371510, 28.656836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917885, 35.505741, 27.991938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623028, 35.657921, 28.215321>,  <38.446114, 35.749229, 28.349350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623028, 35.657921, 28.215321>,  <38.917885, 35.505741, 27.991938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623028, 35.657921, 28.215321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252587, 0.611404, -0.749924,
		-0.626749, -0.693863, -0.354598,
		-0.737147, 0.380447, 0.558457,
		38.401882, 35.772057, 28.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236111, 35.323635, 27.753418>,  <38.917885, 35.505741, 27.991938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236111, 35.323635, 27.753418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172585, 35.670227, 27.942728>,  <38.134468, 35.878181, 28.056314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172585, 35.670227, 27.942728>,  <38.236111, 35.323635, 27.753418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172585, 35.670227, 27.942728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315083, 0.409813, -0.856023,
		-0.935681, -0.285073, 0.207928,
		-0.158817, 0.866480, 0.473276,
		38.124939, 35.930172, 28.084711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723473, 35.645451, 27.376038>,  <38.236111, 35.323635, 27.753418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723473, 35.645451, 27.376038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869976, 35.950272, 27.589626>,  <37.957878, 36.133163, 27.717779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869976, 35.950272, 27.589626>,  <37.723473, 35.645451, 27.376038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869976, 35.950272, 27.589626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331105, 0.643024, -0.690572,
		-0.869610, 0.076129, 0.487834,
		0.366261, 0.762053, 0.533974,
		37.979855, 36.178886, 27.749819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147915, 36.073330, 27.554087>,  <37.723473, 35.645451, 27.376038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147915, 36.073330, 27.554087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463467, 36.318172, 27.575937>,  <37.652798, 36.465080, 27.589048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463467, 36.318172, 27.575937>,  <37.147915, 36.073330, 27.554087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463467, 36.318172, 27.575937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422257, 0.604486, -0.675497,
		-0.446500, 0.509821, 0.735337,
		0.788883, 0.612110, 0.054628,
		37.700130, 36.501804, 27.592325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829193, 36.654907, 27.624306>,  <37.147915, 36.073330, 27.554087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829193, 36.654907, 27.624306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 36.740807, 27.529163>,  <37.435444, 36.792347, 27.472078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 36.740807, 27.529163>,  <36.829193, 36.654907, 27.624306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208099, 36.740807, 27.529163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320447, 0.629733, -0.707637,
		-0.002177, 0.746539, 0.665338,
		0.947264, 0.214746, -0.237855,
		37.492279, 36.805229, 27.457808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883316, 37.413681, 27.634058>,  <36.829193, 36.654907, 27.624306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883316, 37.413681, 27.634058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167084, 37.251987, 27.403124>,  <37.337345, 37.154972, 27.264565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167084, 37.251987, 27.403124>,  <36.883316, 37.413681, 27.634058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167084, 37.251987, 27.403124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255585, 0.615844, -0.745260,
		0.656809, 0.676260, 0.333576,
		0.709421, -0.404237, -0.577334,
		37.379910, 37.130718, 27.229923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097305, 37.995571, 27.290272>,  <36.883316, 37.413681, 27.634058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097305, 37.995571, 27.290272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227406, 37.702705, 27.050890>,  <37.305466, 37.526985, 26.907261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227406, 37.702705, 27.050890>,  <37.097305, 37.995571, 27.290272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227406, 37.702705, 27.050890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091525, 0.605519, -0.790550,
		0.941188, 0.311902, 0.129935,
		0.325252, -0.732164, -0.598454,
		37.324982, 37.483055, 26.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493095, 38.339176, 26.782137>,  <37.097305, 37.995571, 27.290272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493095, 38.339176, 26.782137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418247, 37.972042, 26.642105>,  <37.373337, 37.751762, 26.558086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418247, 37.972042, 26.642105>,  <37.493095, 38.339176, 26.782137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418247, 37.972042, 26.642105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075365, 0.341911, -0.936705,
		0.979442, -0.201661, 0.005195,
		-0.187120, -0.917840, -0.350081,
		37.362110, 37.696690, 26.537081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934246, 38.309811, 26.134308>,  <37.493095, 38.339176, 26.782137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934246, 38.309811, 26.134308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629383, 38.053864, 26.094936>,  <37.446465, 37.900295, 26.071314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629383, 38.053864, 26.094936>,  <37.934246, 38.309811, 26.134308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629383, 38.053864, 26.094936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136512, 0.307464, -0.941717,
		0.632837, -0.704298, -0.321685,
		-0.762156, -0.639867, -0.098430,
		37.400738, 37.861904, 26.065407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023746, 37.951385, 25.526218>,  <37.934246, 38.309811, 26.134308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023746, 37.951385, 25.526218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632763, 37.924503, 25.606279>,  <37.398174, 37.908375, 25.654316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632763, 37.924503, 25.606279>,  <38.023746, 37.951385, 25.526218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632763, 37.924503, 25.606279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210567, 0.240875, -0.947439,
		0.015462, -0.968227, -0.249596,
		-0.977457, -0.067206, 0.200152,
		37.339527, 37.904343, 25.666325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624107, 37.623478, 24.958509>,  <38.023746, 37.951385, 25.526218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624107, 37.623478, 24.958509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338844, 37.829151, 25.149096>,  <37.167686, 37.952557, 25.263447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338844, 37.829151, 25.149096>,  <37.624107, 37.623478, 24.958509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338844, 37.829151, 25.149096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262283, 0.434600, -0.861586,
		-0.650086, -0.739416, -0.175077,
		-0.713159, 0.514185, 0.476464,
		37.124897, 37.983406, 25.292034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.419968, 37.209072, 24.818357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479507, 37.583893, 24.944712>,  <36.515232, 37.808784, 25.020525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479507, 37.583893, 24.944712>,  <36.419968, 37.209072, 24.818357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479507, 37.583893, 24.944712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189586, 0.340560, -0.920910,
		-0.970516, 0.077189, 0.228343,
		0.148849, 0.937049, 0.315885,
		36.524162, 37.865009, 25.039476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949383, 37.546276, 24.476658>,  <36.419968, 37.209072, 24.818357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949383, 37.546276, 24.476658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172863, 37.862164, 24.578009>,  <36.306950, 38.051697, 24.638819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172863, 37.862164, 24.578009>,  <35.949383, 37.546276, 24.476658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172863, 37.862164, 24.578009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170683, 0.408445, -0.896683,
		-0.811619, 0.457727, 0.362989,
		0.558697, 0.789721, 0.253375,
		36.340473, 38.099079, 24.654020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580078, 38.191013, 24.209991>,  <35.949383, 37.546276, 24.476658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580078, 38.191013, 24.209991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963245, 38.296783, 24.254656>,  <36.193146, 38.360245, 24.281454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963245, 38.296783, 24.254656>,  <35.580078, 38.191013, 24.209991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963245, 38.296783, 24.254656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059385, 0.563177, -0.824200,
		-0.280821, 0.782887, 0.555182,
		0.957921, 0.264422, 0.111660,
		36.250622, 38.376110, 24.288155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628010, 38.914921, 24.060780>,  <35.580078, 38.191013, 24.209991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628010, 38.914921, 24.060780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008629, 38.794941, 24.033703>,  <36.237000, 38.722954, 24.017458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008629, 38.794941, 24.033703>,  <35.628010, 38.914921, 24.060780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008629, 38.794941, 24.033703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103834, 0.520642, -0.847438,
		0.289432, 0.799351, 0.526562,
		0.951550, -0.299951, -0.067690,
		36.294094, 38.704956, 24.013395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037624, 39.479397, 23.739408>,  <35.628010, 38.914921, 24.060780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037624, 39.479397, 23.739408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336407, 39.213493, 23.734585>,  <36.515678, 39.053951, 23.731689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336407, 39.213493, 23.734585>,  <36.037624, 39.479397, 23.739408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336407, 39.213493, 23.734585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321734, 0.377272, -0.868420,
		0.581842, 0.644793, 0.495683,
		0.746958, -0.664761, -0.012061,
		36.560493, 39.014065, 23.730967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758556, 39.768242, 23.674549>,  <36.037624, 39.479397, 23.739408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758556, 39.768242, 23.674549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738159, 39.403450, 23.511723>,  <36.725922, 39.184574, 23.414026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738159, 39.403450, 23.511723>,  <36.758556, 39.768242, 23.674549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738159, 39.403450, 23.511723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239189, 0.384580, -0.891564,
		0.969633, -0.142827, 0.198524,
		-0.050991, -0.911975, -0.407065,
		36.722862, 39.129856, 23.389603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319405, 39.714939, 23.276384>,  <36.758556, 39.768242, 23.674549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319405, 39.714939, 23.276384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082775, 39.435539, 23.115322>,  <36.940796, 39.267899, 23.018684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082775, 39.435539, 23.115322>,  <37.319405, 39.714939, 23.276384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082775, 39.435539, 23.115322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159631, 0.388059, -0.907705,
		0.790288, -0.601253, -0.118064,
		-0.591576, -0.698502, -0.402657,
		36.905304, 39.225990, 22.994526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771492, 39.317684, 22.768780>,  <37.319405, 39.714939, 23.276384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771492, 39.317684, 22.768780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378304, 39.277912, 22.706963>,  <37.142391, 39.254051, 22.669872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378304, 39.277912, 22.706963>,  <37.771492, 39.317684, 22.768780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378304, 39.277912, 22.706963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124541, 0.257956, -0.958096,
		0.135124, -0.961027, -0.241181,
		-0.982971, -0.099425, -0.154543,
		37.083412, 39.248085, 22.660599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749187, 39.134277, 22.138021>,  <37.771492, 39.317684, 22.768780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749187, 39.134277, 22.138021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362488, 39.226036, 22.183220>,  <37.130466, 39.281094, 22.210339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362488, 39.226036, 22.183220>,  <37.749187, 39.134277, 22.138021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362488, 39.226036, 22.183220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027677, 0.345418, -0.938041,
		-0.254218, -0.909979, -0.327584,
		-0.966751, 0.229400, 0.112997,
		37.072464, 39.294857, 22.217119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334072, 38.834938, 21.609043>,  <37.749187, 39.134277, 22.138021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334072, 38.834938, 21.609043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167084, 39.171684, 21.745852>,  <37.066891, 39.373734, 21.827936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167084, 39.171684, 21.745852>,  <37.334072, 38.834938, 21.609043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167084, 39.171684, 21.745852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238611, 0.261622, -0.935211,
		-0.876802, -0.472034, 0.091659,
		-0.417471, 0.841866, 0.342023,
		37.041843, 39.424244, 21.848459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845089, 39.008896, 21.044577>,  <37.334072, 38.834938, 21.609043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845089, 39.008896, 21.044577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903664, 39.315052, 21.295252>,  <36.938808, 39.498745, 21.445656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903664, 39.315052, 21.295252>,  <36.845089, 39.008896, 21.044577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903664, 39.315052, 21.295252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065797, 0.624576, -0.778187,
		-0.987029, 0.155189, 0.041100,
		0.146436, 0.765389, 0.626686,
		36.947594, 39.544670, 21.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380215, 39.580338, 20.805262>,  <36.845089, 39.008896, 21.044577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380215, 39.580338, 20.805262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670567, 39.736942, 21.031469>,  <36.844780, 39.830906, 21.167194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670567, 39.736942, 21.031469>,  <36.380215, 39.580338, 20.805262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670567, 39.736942, 21.031469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157276, 0.705932, -0.690597,
		-0.669595, 0.590236, 0.450849,
		0.725884, 0.391513, 0.565518,
		36.888332, 39.854397, 21.201124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184212, 40.283615, 20.985888>,  <36.380215, 39.580338, 20.805262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184212, 40.283615, 20.985888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577660, 40.296787, 21.056774>,  <36.813728, 40.304691, 21.099306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577660, 40.296787, 21.056774>,  <36.184212, 40.283615, 20.985888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577660, 40.296787, 21.056774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115013, 0.642374, -0.757712,
		-0.138789, 0.765684, 0.628065,
		0.983621, 0.032926, 0.177218,
		36.872746, 40.306664, 21.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401882, 40.971115, 21.141232>,  <36.184212, 40.283615, 20.985888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401882, 40.971115, 21.141232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754581, 40.805233, 21.051298>,  <36.966202, 40.705704, 20.997337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754581, 40.805233, 21.051298>,  <36.401882, 40.971115, 21.141232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754581, 40.805233, 21.051298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170443, 0.724492, -0.667878,
		0.439860, 0.550576, 0.709499,
		0.881744, -0.414702, -0.224833,
		37.019104, 40.680824, 20.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919739, 41.513977, 21.183153>,  <36.401882, 40.971115, 21.141232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919739, 41.513977, 21.183153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042858, 41.212791, 20.950499>,  <37.116730, 41.032082, 20.810905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042858, 41.212791, 20.950499>,  <36.919739, 41.513977, 21.183153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042858, 41.212791, 20.950499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239504, 0.652950, -0.718537,
		0.920813, 0.081862, 0.381316,
		0.307801, -0.752964, -0.581638,
		37.135197, 40.986900, 20.776007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590717, 41.726112, 21.022615>,  <36.919739, 41.513977, 21.183153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590717, 41.726112, 21.022615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501743, 41.439396, 20.758272>,  <37.448357, 41.267365, 20.599667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501743, 41.439396, 20.758272>,  <37.590717, 41.726112, 21.022615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501743, 41.439396, 20.758272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291489, 0.597941, -0.746660,
		0.930352, -0.358719, 0.075931,
		-0.222439, -0.716790, -0.660858,
		37.435013, 41.224358, 20.560015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938671, 41.932453, 20.469137>,  <37.590717, 41.726112, 21.022615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938671, 41.932453, 20.469137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738960, 41.636448, 20.288872>,  <37.619133, 41.458843, 20.180714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738960, 41.636448, 20.288872>,  <37.938671, 41.932453, 20.469137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738960, 41.636448, 20.288872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018532, 0.510890, -0.859446,
		0.866242, -0.437456, -0.241364,
		-0.499280, -0.740016, -0.450662,
		37.589176, 41.414444, 20.153673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354877, 41.590939, 19.931248>,  <37.938671, 41.932453, 20.469137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354877, 41.590939, 19.931248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960251, 41.581772, 19.866560>,  <37.723473, 41.576271, 19.827747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960251, 41.581772, 19.866560>,  <38.354877, 41.590939, 19.931248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960251, 41.581772, 19.866560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103117, 0.680462, -0.725492,
		0.126667, -0.732425, -0.668961,
		-0.986571, -0.022915, -0.161718,
		37.664280, 41.574898, 19.818045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216663, 41.589516, 19.237890>,  <38.354877, 41.590939, 19.931248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216663, 41.589516, 19.237890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893234, 41.744453, 19.415060>,  <37.699177, 41.837414, 19.521362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893234, 41.744453, 19.415060>,  <38.216663, 41.589516, 19.237890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893234, 41.744453, 19.415060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052055, 0.702722, -0.709558,
		-0.586094, -0.596783, -0.548036,
		-0.808569, 0.387340, 0.442927,
		37.650665, 41.860657, 19.547937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897976, 41.643131, 18.658609>,  <38.216663, 41.589516, 19.237890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897976, 41.643131, 18.658609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687729, 41.858368, 18.922178>,  <37.561581, 41.987511, 19.080320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687729, 41.858368, 18.922178>,  <37.897976, 41.643131, 18.658609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687729, 41.858368, 18.922178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282685, 0.620062, -0.731855,
		-0.802380, -0.570945, -0.173806,
		-0.525620, 0.538093, 0.658923,
		37.530045, 42.019794, 19.119856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278980, 41.727127, 18.281025>,  <37.897976, 41.643131, 18.658609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278980, 41.727127, 18.281025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325649, 41.999046, 18.570648>,  <37.353649, 42.162197, 18.744423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325649, 41.999046, 18.570648>,  <37.278980, 41.727127, 18.281025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325649, 41.999046, 18.570648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270248, 0.723258, -0.635503,
		-0.955696, -0.121530, 0.268098,
		0.116672, 0.679800, 0.724058,
		37.360649, 42.202988, 18.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668121, 42.120213, 18.248280>,  <37.278980, 41.727127, 18.281025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668121, 42.120213, 18.248280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953350, 42.346634, 18.413742>,  <37.124489, 42.482487, 18.513020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953350, 42.346634, 18.413742>,  <36.668121, 42.120213, 18.248280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953350, 42.346634, 18.413742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159826, 0.705733, -0.690215,
		-0.682629, 0.426061, 0.593709,
		0.713074, 0.566051, 0.413657,
		37.167271, 42.516449, 18.537840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460999, 42.800503, 18.287832>,  <36.668121, 42.120213, 18.248280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460999, 42.800503, 18.287832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851429, 42.887356, 18.283215>,  <37.085686, 42.939468, 18.280445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851429, 42.887356, 18.283215>,  <36.460999, 42.800503, 18.287832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851429, 42.887356, 18.283215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167956, 0.719164, -0.674236,
		-0.138099, 0.660042, 0.738426,
		0.976074, 0.217134, -0.011542,
		37.144253, 42.952496, 18.279753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661011, 43.549511, 18.372616>,  <36.460999, 42.800503, 18.287832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661011, 43.549511, 18.372616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953587, 43.404667, 18.141491>,  <37.129131, 43.317760, 18.002815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953587, 43.404667, 18.141491>,  <36.661011, 43.549511, 18.372616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953587, 43.404667, 18.141491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248657, 0.647374, -0.720470,
		0.634949, 0.670661, 0.383477,
		0.731444, -0.362107, -0.577813,
		37.173019, 43.296036, 17.968147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002937, 44.022675, 18.187922>,  <36.661011, 43.549511, 18.372616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002937, 44.022675, 18.187922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646709, 43.984413, 18.010054>,  <35.432972, 43.961456, 17.903334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646709, 43.984413, 18.010054>,  <36.002937, 44.022675, 18.187922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646709, 43.984413, 18.010054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372185, -0.408711, 0.833327,
		-0.261453, 0.907637, 0.328386,
		-0.890573, -0.095655, -0.444668,
		35.379536, 43.955715, 17.876654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603275, 44.191116, 18.735180>,  <36.002937, 44.022675, 18.187922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603275, 44.191116, 18.735180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337765, 44.018990, 18.490484>,  <35.178459, 43.915714, 18.343666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337765, 44.018990, 18.490484>,  <35.603275, 44.191116, 18.735180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337765, 44.018990, 18.490484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272255, -0.622782, 0.733498,
		-0.696618, 0.653429, 0.296233,
		-0.663778, -0.430317, -0.611741,
		35.138630, 43.889896, 18.306963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925148, 44.176483, 19.077890>,  <35.603275, 44.191116, 18.735180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925148, 44.176483, 19.077890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899033, 43.909565, 18.781120>,  <34.883362, 43.749413, 18.603058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899033, 43.909565, 18.781120>,  <34.925148, 44.176483, 19.077890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899033, 43.909565, 18.781120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434220, -0.650427, 0.623215,
		-0.898437, 0.362849, -0.247287,
		-0.065291, -0.667296, -0.741925,
		34.879444, 43.709377, 18.558542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247681, 43.900173, 19.037666>,  <34.925148, 44.176483, 19.077890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247681, 43.900173, 19.037666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451267, 43.610741, 18.851168>,  <34.573418, 43.437080, 18.739269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451267, 43.610741, 18.851168>,  <34.247681, 43.900173, 19.037666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451267, 43.610741, 18.851168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351192, -0.669075, 0.654983,
		-0.785885, -0.169624, -0.594653,
		0.508968, -0.723579, -0.466246,
		34.603958, 43.393665, 18.711294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830532, 43.301853, 19.075035>,  <34.247681, 43.900173, 19.037666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830532, 43.301853, 19.075035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188709, 43.143524, 18.993546>,  <34.403614, 43.048527, 18.944653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188709, 43.143524, 18.993546>,  <33.830532, 43.301853, 19.075035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188709, 43.143524, 18.993546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175667, -0.734667, 0.655290,
		-0.409049, -0.550988, -0.727387,
		0.895444, -0.395823, -0.203724,
		34.457344, 43.024776, 18.932428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728981, 42.562351, 18.797104>,  <33.830532, 43.301853, 19.075035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728981, 42.562351, 18.797104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087727, 42.593189, 18.971321>,  <34.302975, 42.611694, 19.075851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087727, 42.593189, 18.971321>,  <33.728981, 42.562351, 18.797104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087727, 42.593189, 18.971321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254008, -0.716359, 0.649854,
		0.362107, -0.693460, -0.622890,
		0.896860, 0.077098, 0.435543,
		34.356785, 42.616318, 19.101984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890987, 41.800957, 18.992275>,  <33.728981, 42.562351, 18.797104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890987, 41.800957, 18.992275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167675, 42.001850, 19.199848>,  <34.333687, 42.122387, 19.324392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167675, 42.001850, 19.199848>,  <33.890987, 41.800957, 18.992275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167675, 42.001850, 19.199848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043397, -0.746187, 0.664321,
		0.720864, -0.437001, -0.537945,
		0.691716, 0.502231, 0.518934,
		34.375191, 42.152519, 19.355528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420216, 41.405266, 19.075081>,  <33.890987, 41.800957, 18.992275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420216, 41.405266, 19.075081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498295, 41.660267, 19.373207>,  <34.545143, 41.813267, 19.552082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498295, 41.660267, 19.373207>,  <34.420216, 41.405266, 19.075081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498295, 41.660267, 19.373207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308570, -0.761260, 0.570323,
		0.930958, 0.118656, -0.345309,
		0.195198, 0.637498, 0.745314,
		34.556854, 41.851517, 19.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015724, 41.117844, 19.397263>,  <34.420216, 41.405266, 19.075081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015724, 41.117844, 19.397263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828651, 41.350639, 19.663363>,  <34.716408, 41.490318, 19.823023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828651, 41.350639, 19.663363>,  <35.015724, 41.117844, 19.397263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828651, 41.350639, 19.663363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088722, -0.717924, 0.690445,
		0.879432, 0.381932, 0.284126,
		-0.467683, 0.581991, 0.665251,
		34.688347, 41.525238, 19.862938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452988, 41.153641, 19.902094>,  <35.015724, 41.117844, 19.397263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452988, 41.153641, 19.902094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119282, 41.268475, 20.090387>,  <34.919060, 41.337376, 20.203363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119282, 41.268475, 20.090387>,  <35.452988, 41.153641, 19.902094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119282, 41.268475, 20.090387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179676, -0.665595, 0.724361,
		0.521273, 0.688886, 0.503698,
		-0.834261, 0.287088, 0.470733,
		34.869003, 41.354603, 20.231607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622387, 41.163322, 20.672005>,  <35.452988, 41.153641, 19.902094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622387, 41.163322, 20.672005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223217, 41.160145, 20.646435>,  <34.983715, 41.158237, 20.631092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223217, 41.160145, 20.646435>,  <35.622387, 41.163322, 20.672005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223217, 41.160145, 20.646435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042813, -0.659697, 0.750311,
		-0.048134, 0.751490, 0.657987,
		-0.997923, -0.007945, -0.063927,
		34.923840, 41.157761, 20.627256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343319, 41.058964, 21.245094>,  <35.622387, 41.163322, 20.672005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343319, 41.058964, 21.245094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009960, 40.936802, 21.060843>,  <34.809944, 40.863503, 20.950291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009960, 40.936802, 21.060843>,  <35.343319, 41.058964, 21.245094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009960, 40.936802, 21.060843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168287, -0.653645, 0.737853,
		-0.526434, 0.692441, 0.493348,
		-0.833395, -0.305407, -0.460630,
		34.759941, 40.845181, 20.922653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796844, 41.137032, 21.699274>,  <35.343319, 41.058964, 21.245094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796844, 41.137032, 21.699274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671783, 40.862129, 21.436998>,  <34.596745, 40.697189, 21.279633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671783, 40.862129, 21.436998>,  <34.796844, 41.137032, 21.699274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671783, 40.862129, 21.436998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160534, -0.642136, 0.749593,
		-0.936203, 0.339625, 0.090439,
		-0.312655, -0.687253, -0.655691,
		34.577988, 40.655952, 21.240292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291763, 40.780331, 22.054224>,  <34.796844, 41.137032, 21.699274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291763, 40.780331, 22.054224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377396, 40.545414, 21.742004>,  <34.428776, 40.404465, 21.554672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377396, 40.545414, 21.742004>,  <34.291763, 40.780331, 22.054224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377396, 40.545414, 21.742004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221005, -0.807473, 0.546941,
		-0.951487, 0.055418, -0.302657,
		0.214077, -0.587296, -0.780548,
		34.441620, 40.369225, 21.507839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684761, 40.307617, 21.928528>,  <34.291763, 40.780331, 22.054224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684761, 40.307617, 21.928528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999973, 40.120525, 21.768408>,  <34.189098, 40.008270, 21.672335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999973, 40.120525, 21.768408>,  <33.684761, 40.307617, 21.928528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999973, 40.120525, 21.768408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286235, -0.854026, 0.434407,
		-0.545054, -0.227743, -0.806876,
		0.788026, -0.467732, -0.400302,
		34.236382, 39.980206, 21.648317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469509, 39.644363, 21.660030>,  <33.684761, 40.307617, 21.928528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469509, 39.644363, 21.660030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860645, 39.597622, 21.729523>,  <34.095325, 39.569576, 21.771217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860645, 39.597622, 21.729523>,  <33.469509, 39.644363, 21.660030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860645, 39.597622, 21.729523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195793, -0.804319, 0.561013,
		0.074178, -0.582594, -0.809371,
		0.977835, -0.116854, 0.173731,
		34.153996, 39.562565, 21.781641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625168, 38.948643, 21.532640>,  <33.469509, 39.644363, 21.660030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625168, 38.948643, 21.532640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937969, 39.051594, 21.759697>,  <34.125652, 39.113365, 21.895931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937969, 39.051594, 21.759697>,  <33.625168, 38.948643, 21.532640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937969, 39.051594, 21.759697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237073, -0.719459, 0.652821,
		0.576420, -0.645084, -0.501604,
		0.782008, 0.257382, 0.567643,
		34.172573, 39.128807, 21.929989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986053, 38.288296, 21.727942>,  <33.625168, 38.948643, 21.532640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986053, 38.288296, 21.727942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059978, 38.570774, 22.001328>,  <34.104332, 38.740261, 22.165359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059978, 38.570774, 22.001328>,  <33.986053, 38.288296, 21.727942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059978, 38.570774, 22.001328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237335, -0.642792, 0.728348,
		0.953686, -0.296816, 0.048813,
		0.184809, 0.706201, 0.683467,
		34.115421, 38.782635, 22.206367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522835, 38.100410, 22.123978>,  <33.986053, 38.288296, 21.727942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522835, 38.100410, 22.123978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319489, 38.359337, 22.351149>,  <34.197479, 38.514694, 22.487452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319489, 38.359337, 22.351149>,  <34.522835, 38.100410, 22.123978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319489, 38.359337, 22.351149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098703, -0.611360, 0.785173,
		0.855466, 0.455211, 0.246901,
		-0.508365, 0.647319, 0.567929,
		34.166981, 38.553532, 22.521526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848816, 37.986195, 22.773535>,  <34.522835, 38.100410, 22.123978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848816, 37.986195, 22.773535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524227, 38.199047, 22.870157>,  <34.329475, 38.326759, 22.928131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524227, 38.199047, 22.870157>,  <34.848816, 37.986195, 22.773535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524227, 38.199047, 22.870157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018163, -0.390183, 0.920558,
		0.584111, 0.751393, 0.306957,
		-0.811470, 0.532133, 0.241558,
		34.280785, 38.358688, 22.942625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.686813, 37.066307, 26.975779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319683, 37.004013, 27.121838>,  <38.099403, 36.966637, 27.209473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319683, 37.004013, 27.121838>,  <38.686813, 37.066307, 26.975779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319683, 37.004013, 27.121838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395937, -0.425549, 0.813721,
		0.028660, 0.891433, 0.452245,
		-0.917830, -0.155739, 0.365148,
		38.044334, 36.957291, 27.231382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781059, 37.236286, 27.696396>,  <38.686813, 37.066307, 26.975779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781059, 37.236286, 27.696396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455059, 37.007549, 27.658937>,  <38.259457, 36.870308, 27.636463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455059, 37.007549, 27.658937>,  <38.781059, 37.236286, 27.696396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455059, 37.007549, 27.658937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235279, -0.474259, 0.848365,
		-0.529540, 0.669388, 0.521064,
		-0.815004, -0.571838, -0.093646,
		38.210556, 36.835999, 27.630844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397076, 37.255466, 28.343481>,  <38.781059, 37.236286, 27.696396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397076, 37.255466, 28.343481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284138, 36.910698, 28.175018>,  <38.216373, 36.703838, 28.073940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.284138, 36.910698, 28.175018>,  <38.397076, 37.255466, 28.343481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284138, 36.910698, 28.175018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054582, -0.452740, 0.889970,
		-0.957758, 0.228294, 0.174876,
		-0.282348, -0.861921, -0.421155,
		38.199432, 36.652122, 28.048672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960514, 36.930611, 28.897760>,  <38.397076, 37.255466, 28.343481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960514, 36.930611, 28.897760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999779, 36.619480, 28.649456>,  <38.023338, 36.432800, 28.500473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999779, 36.619480, 28.649456>,  <37.960514, 36.930611, 28.897760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999779, 36.619480, 28.649456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086817, -0.628090, 0.773283,
		-0.991376, -0.022014, -0.129184,
		0.098162, -0.777829, -0.620762,
		38.029228, 36.386131, 28.463228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411747, 36.385952, 28.994505>,  <37.960514, 36.930611, 28.897760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411747, 36.385952, 28.994505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726227, 36.200802, 28.830727>,  <37.914913, 36.089714, 28.732460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726227, 36.200802, 28.830727>,  <37.411747, 36.385952, 28.994505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726227, 36.200802, 28.830727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038602, -0.698050, 0.715008,
		-0.616770, -0.546331, -0.566672,
		0.786196, -0.462870, -0.409447,
		37.962086, 36.061939, 28.707891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243340, 35.771580, 29.133112>,  <37.411747, 36.385952, 28.994505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243340, 35.771580, 29.133112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615517, 35.704777, 29.002647>,  <37.838825, 35.664696, 28.924370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615517, 35.704777, 29.002647>,  <37.243340, 35.771580, 29.133112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615517, 35.704777, 29.002647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027775, -0.855400, 0.517223,
		-0.365375, -0.490307, -0.791265,
		0.930446, -0.167003, -0.326160,
		37.894650, 35.654675, 28.904800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259010, 35.144859, 28.736307>,  <37.243340, 35.771580, 29.133112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259010, 35.144859, 28.736307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613483, 35.214104, 28.908220>,  <37.826168, 35.255650, 29.011368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613483, 35.214104, 28.908220>,  <37.259010, 35.144859, 28.736307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613483, 35.214104, 28.908220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058717, -0.878146, 0.474775,
		0.459599, -0.445974, -0.768034,
		0.886184, 0.173109, 0.429781,
		37.879337, 35.266037, 29.037155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605915, 34.484200, 28.760353>,  <37.259010, 35.144859, 28.736307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605915, 34.484200, 28.760353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862598, 34.702141, 28.976259>,  <38.016609, 34.832905, 29.105803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862598, 34.702141, 28.976259>,  <37.605915, 34.484200, 28.760353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862598, 34.702141, 28.976259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155546, -0.781614, 0.604057,
		0.751009, -0.303671, -0.586318,
		0.641709, 0.544852, 0.539765,
		38.055111, 34.865597, 29.138189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246914, 34.075657, 28.893833>,  <37.605915, 34.484200, 28.760353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246914, 34.075657, 28.893833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257191, 34.363171, 29.171736>,  <38.263355, 34.535679, 29.338476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257191, 34.363171, 29.171736>,  <38.246914, 34.075657, 28.893833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257191, 34.363171, 29.171736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025861, -0.695229, 0.718323,
		0.999335, -0.000489, -0.036451,
		0.025693, 0.718788, 0.694755,
		38.264900, 34.578808, 29.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912376, 33.896450, 29.338840>,  <38.246914, 34.075657, 28.893833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912376, 33.896450, 29.338840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640049, 34.104389, 29.545235>,  <38.476654, 34.229153, 29.669071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640049, 34.104389, 29.545235>,  <38.912376, 33.896450, 29.338840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640049, 34.104389, 29.545235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013939, -0.695141, 0.718738,
		0.732321, 0.496521, 0.466018,
		-0.680817, 0.519851, 0.515987,
		38.435802, 34.260345, 29.700031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083931, 33.769672, 30.030754>,  <38.912376, 33.896450, 29.338840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083931, 33.769672, 30.030754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716801, 33.925201, 30.062763>,  <38.496521, 34.018520, 30.081968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716801, 33.925201, 30.062763>,  <39.083931, 33.769672, 30.030754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716801, 33.925201, 30.062763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188493, -0.604270, 0.774163,
		0.349372, 0.695465, 0.627908,
		-0.917829, 0.388827, 0.080025,
		38.441452, 34.041851, 30.086771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018852, 33.776604, 30.759621>,  <39.083931, 33.769672, 30.030754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018852, 33.776604, 30.759621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640453, 33.821857, 30.638103>,  <38.413414, 33.849010, 30.565193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640453, 33.821857, 30.638103>,  <39.018852, 33.776604, 30.759621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640453, 33.821857, 30.638103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324175, -0.330452, 0.886404,
		-0.000106, 0.937018, 0.349282,
		-0.945997, 0.113134, -0.303793,
		38.356655, 33.855797, 30.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704178, 34.194527, 31.228046>,  <39.018852, 33.776604, 30.759621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704178, 34.194527, 31.228046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402412, 33.975330, 31.083508>,  <38.221355, 33.843811, 30.996784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402412, 33.975330, 31.083508>,  <38.704178, 34.194527, 31.228046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402412, 33.975330, 31.083508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195425, -0.338025, 0.920624,
		-0.626639, 0.765143, 0.147918,
		-0.754409, -0.547992, -0.361347,
		38.176090, 33.810932, 30.975103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622398, 34.881367, 31.315859>,  <38.704178, 34.194527, 31.228046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622398, 34.881367, 31.315859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238247, 34.840492, 31.419569>,  <38.007755, 34.815968, 31.481794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238247, 34.840492, 31.419569>,  <38.622398, 34.881367, 31.315859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238247, 34.840492, 31.419569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056771, 0.982580, 0.176959,
		-0.272840, 0.155229, -0.949454,
		-0.960383, -0.102183, 0.259274,
		37.950130, 34.809837, 31.497351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604511, 34.894989, 32.089554>,  <38.622398, 34.881367, 31.315859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604511, 34.894989, 32.089554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610882, 35.065460, 32.451351>,  <38.614704, 35.167744, 32.668430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610882, 35.065460, 32.451351>,  <38.604511, 34.894989, 32.089554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610882, 35.065460, 32.451351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504702, 0.784339, -0.360677,
		-0.863147, -0.450758, 0.227586,
		0.015926, 0.426180, 0.904498,
		38.615658, 35.193314, 32.722702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023163, 35.141182, 32.080635>,  <38.604511, 34.894989, 32.089554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023163, 35.141182, 32.080635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240093, 35.346661, 32.346569>,  <38.370251, 35.469948, 32.506130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240093, 35.346661, 32.346569>,  <38.023163, 35.141182, 32.080635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240093, 35.346661, 32.346569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475201, 0.840121, -0.261496,
		-0.692869, -0.174113, 0.699727,
		0.542326, 0.513694, 0.664832,
		38.402790, 35.500771, 32.546021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596291, 35.543579, 32.569611>,  <38.023163, 35.141182, 32.080635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596291, 35.543579, 32.569611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953518, 35.723549, 32.569084>,  <38.167854, 35.831532, 32.568768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953518, 35.723549, 32.569084>,  <37.596291, 35.543579, 32.569611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953518, 35.723549, 32.569084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381638, 0.755965, -0.531854,
		-0.238302, 0.475482, 0.846835,
		0.893065, 0.449926, -0.001314,
		38.221436, 35.858528, 32.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406147, 36.262547, 32.733841>,  <37.596291, 35.543579, 32.569611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406147, 36.262547, 32.733841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775349, 36.270119, 32.580116>,  <37.996872, 36.274662, 32.487881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775349, 36.270119, 32.580116>,  <37.406147, 36.262547, 32.733841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775349, 36.270119, 32.580116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180496, 0.903387, -0.388990,
		0.339818, 0.428408, 0.837252,
		0.923009, 0.018935, -0.384313,
		38.052250, 36.275799, 32.464821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739025, 36.878693, 33.016869>,  <37.406147, 36.262547, 32.733841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739025, 36.878693, 33.016869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947540, 36.793236, 32.686386>,  <38.072647, 36.741962, 32.488094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.947540, 36.793236, 32.686386>,  <37.739025, 36.878693, 33.016869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947540, 36.793236, 32.686386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221204, 0.901240, -0.372605,
		0.824216, 0.376994, 0.422544,
		0.521284, -0.213639, -0.826209,
		38.103924, 36.729145, 32.438522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154312, 37.554287, 32.921486>,  <37.739025, 36.878693, 33.016869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154312, 37.554287, 32.921486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171642, 37.367947, 32.567966>,  <38.182041, 37.256142, 32.355854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171642, 37.367947, 32.567966>,  <38.154312, 37.554287, 32.921486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171642, 37.367947, 32.567966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055762, 0.882126, -0.467700,
		0.997504, 0.069544, 0.012239,
		0.043322, -0.465850, -0.883802,
		38.184639, 37.228191, 32.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684681, 37.872910, 32.512325>,  <38.154312, 37.554287, 32.921486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684681, 37.872910, 32.512325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433163, 37.692307, 32.259102>,  <38.282253, 37.583946, 32.107170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433163, 37.692307, 32.259102>,  <38.684681, 37.872910, 32.512325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433163, 37.692307, 32.259102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024299, 0.825156, -0.564381,
		0.777188, -0.339500, -0.529829,
		-0.628799, -0.451505, -0.633052,
		38.244522, 37.556854, 32.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908131, 38.034550, 31.793850>,  <38.684681, 37.872910, 32.512325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908131, 38.034550, 31.793850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.522980, 37.931267, 31.762386>,  <38.291889, 37.869297, 31.743507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.522980, 37.931267, 31.762386>,  <38.908131, 38.034550, 31.793850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522980, 37.931267, 31.762386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112044, 0.647468, -0.753811,
		0.245570, -0.717018, -0.652366,
		-0.962882, -0.258207, -0.078661,
		38.234116, 37.853806, 31.738789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833698, 37.862026, 31.009981>,  <38.908131, 38.034550, 31.793850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833698, 37.862026, 31.009981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476494, 37.943336, 31.170586>,  <38.262173, 37.992123, 31.266949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476494, 37.943336, 31.170586>,  <38.833698, 37.862026, 31.009981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476494, 37.943336, 31.170586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144597, 0.715272, -0.683723,
		-0.426173, -0.668630, -0.609353,
		-0.893011, 0.203273, 0.401511,
		38.208591, 38.004318, 31.291039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416954, 37.844883, 30.444050>,  <38.833698, 37.862026, 31.009981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416954, 37.844883, 30.444050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209999, 38.046665, 30.720552>,  <38.085827, 38.167736, 30.886454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209999, 38.046665, 30.720552>,  <38.416954, 37.844883, 30.444050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209999, 38.046665, 30.720552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238360, 0.690855, -0.682572,
		-0.821887, -0.517919, -0.237194,
		-0.517383, 0.504460, 0.691256,
		38.054783, 38.198002, 30.927929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760063, 37.816879, 30.190046>,  <38.416954, 37.844883, 30.444050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760063, 37.816879, 30.190046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792572, 38.116074, 30.453533>,  <37.812077, 38.295589, 30.611626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792572, 38.116074, 30.453533>,  <37.760063, 37.816879, 30.190046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792572, 38.116074, 30.453533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289812, 0.650080, -0.702428,
		-0.953627, -0.133816, 0.269609,
		0.081272, 0.747990, 0.658715,
		37.816952, 38.340469, 30.651148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151306, 38.119316, 30.005053>,  <37.760063, 37.816879, 30.190046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151306, 38.119316, 30.005053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409100, 38.368145, 30.182890>,  <37.563778, 38.517441, 30.289593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409100, 38.368145, 30.182890>,  <37.151306, 38.119316, 30.005053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409100, 38.368145, 30.182890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214658, 0.705278, -0.675651,
		-0.733865, 0.340014, 0.588076,
		0.644488, 0.622072, 0.444592,
		37.602448, 38.554768, 30.316267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844933, 38.762760, 30.219368>,  <37.151306, 38.119316, 30.005053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844933, 38.762760, 30.219368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222755, 38.891167, 30.191759>,  <37.449448, 38.968208, 30.175194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222755, 38.891167, 30.191759>,  <36.844933, 38.762760, 30.219368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222755, 38.891167, 30.191759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290303, 0.718229, -0.632354,
		-0.153420, 0.617331, 0.771598,
		0.944556, 0.321013, -0.069023,
		37.506123, 38.987473, 30.171053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820763, 39.588245, 30.264528>,  <36.844933, 38.762760, 30.219368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820763, 39.588245, 30.264528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178867, 39.497082, 30.111395>,  <37.393730, 39.442383, 30.019514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178867, 39.497082, 30.111395>,  <36.820763, 39.588245, 30.264528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178867, 39.497082, 30.111395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114257, 0.713082, -0.691708,
		0.430642, 0.663001, 0.612354,
		0.895261, -0.227913, -0.382835,
		37.447445, 39.428707, 29.996544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414284, 40.197517, 30.387508>,  <36.820763, 39.588245, 30.264528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414284, 40.197517, 30.387508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.023327, 40.270676, 30.345062>,  <35.788754, 40.314571, 30.319595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.023327, 40.270676, 30.345062>,  <36.414284, 40.197517, 30.387508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023327, 40.270676, 30.345062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174610, -0.415069, 0.892877,
		0.119263, 0.891215, 0.437620,
		-0.977388, 0.182900, -0.106113,
		35.730110, 40.325546, 30.313229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172802, 40.279736, 31.030014>,  <36.414284, 40.197517, 30.387508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172802, 40.279736, 31.030014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842361, 40.205212, 30.817280>,  <35.644096, 40.160496, 30.689640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842361, 40.205212, 30.817280>,  <36.172802, 40.279736, 31.030014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842361, 40.205212, 30.817280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321837, -0.618725, 0.716659,
		-0.462581, 0.763196, 0.451167,
		-0.826099, -0.186311, -0.531835,
		35.594532, 40.149319, 30.657730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593849, 40.284832, 31.539921>,  <36.172802, 40.279736, 31.030014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593849, 40.284832, 31.539921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.494370, 40.072380, 31.215931>,  <35.434681, 39.944908, 31.021538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.494370, 40.072380, 31.215931>,  <35.593849, 40.284832, 31.539921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494370, 40.072380, 31.215931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171227, -0.798967, 0.576483,
		-0.953327, 0.282058, 0.107756,
		-0.248695, -0.531126, -0.809973,
		35.419762, 39.913044, 30.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125214, 39.840622, 31.809311>,  <35.593849, 40.284832, 31.539921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125214, 39.840622, 31.809311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.182934, 39.666416, 31.453896>,  <35.217567, 39.561893, 31.240646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.182934, 39.666416, 31.453896>,  <35.125214, 39.840622, 31.809311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182934, 39.666416, 31.453896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128490, -0.898581, 0.419574,
		-0.981156, 0.053623, -0.185626,
		0.144301, -0.435519, -0.888538,
		35.226223, 39.535759, 31.187334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462452, 39.569073, 31.496780>,  <35.125214, 39.840622, 31.809311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462452, 39.569073, 31.496780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.804150, 39.388309, 31.393986>,  <35.009171, 39.279850, 31.332308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.804150, 39.388309, 31.393986>,  <34.462452, 39.569073, 31.496780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804150, 39.388309, 31.393986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286969, -0.822099, 0.491734,
		-0.433487, -0.346315, -0.831958,
		0.854247, -0.451907, -0.256988,
		35.060425, 39.252739, 31.316889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219959, 38.938629, 31.393103>,  <34.462452, 39.569073, 31.496780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219959, 38.938629, 31.393103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614235, 38.877541, 31.421663>,  <34.850800, 38.840889, 31.438799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614235, 38.877541, 31.421663>,  <34.219959, 38.938629, 31.393103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614235, 38.877541, 31.421663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168088, -0.922767, 0.346768,
		0.012930, -0.353807, -0.935229,
		0.985687, -0.152717, 0.071402,
		34.909943, 38.831726, 31.443083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402618, 38.269188, 31.182665>,  <34.219959, 38.938629, 31.393103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402618, 38.269188, 31.182665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.732922, 38.354816, 31.391394>,  <34.931103, 38.406193, 31.516632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.732922, 38.354816, 31.391394>,  <34.402618, 38.269188, 31.182665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732922, 38.354816, 31.391394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055692, -0.951599, 0.302254,
		0.561270, -0.220526, -0.797711,
		0.825756, 0.214073, 0.521823,
		34.980648, 38.419037, 31.547941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687069, 37.622269, 31.171820>,  <34.402618, 38.269188, 31.182665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687069, 37.622269, 31.171820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.877209, 37.831150, 31.455044>,  <34.991291, 37.956478, 31.624977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.877209, 37.831150, 31.455044>,  <34.687069, 37.622269, 31.171820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877209, 37.831150, 31.455044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135980, -0.838734, 0.527291,
		0.869227, -0.154364, -0.469698,
		0.475347, 0.522205, 0.708059,
		35.019814, 37.987812, 31.667461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316399, 37.214985, 31.274971>,  <34.687069, 37.622269, 31.171820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316399, 37.214985, 31.274971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.246113, 37.457306, 31.585360>,  <35.203941, 37.602699, 31.771593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.246113, 37.457306, 31.585360>,  <35.316399, 37.214985, 31.274971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246113, 37.457306, 31.585360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276755, -0.726048, 0.629493,
		0.944739, 0.325363, -0.040083,
		-0.175712, 0.605799, 0.775972,
		35.193398, 37.639046, 31.818151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792065, 36.924782, 31.778152>,  <35.316399, 37.214985, 31.274971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792065, 36.924782, 31.778152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543983, 37.141609, 32.004959>,  <35.395134, 37.271706, 32.141045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543983, 37.141609, 32.004959>,  <35.792065, 36.924782, 31.778152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543983, 37.141609, 32.004959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102995, -0.660298, 0.743908,
		0.777651, 0.519773, 0.353687,
		-0.620203, 0.542072, 0.567015,
		35.357922, 37.304230, 32.175064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102493, 37.078259, 32.489365>,  <35.792065, 36.924782, 31.778152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102493, 37.078259, 32.489365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707027, 37.115696, 32.536308>,  <35.469746, 37.138157, 32.564476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.707027, 37.115696, 32.536308>,  <36.102493, 37.078259, 32.489365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707027, 37.115696, 32.536308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028752, -0.649277, 0.760009,
		0.147331, 0.754771, 0.639229,
		-0.988669, 0.093594, 0.117359,
		35.410427, 37.143776, 32.571518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910961, 37.127354, 33.275440>,  <36.102493, 37.078259, 32.489365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910961, 37.127354, 33.275440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582928, 36.999851, 33.085342>,  <35.386108, 36.923347, 32.971283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582928, 36.999851, 33.085342>,  <35.910961, 37.127354, 33.275440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582928, 36.999851, 33.085342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140004, -0.693490, 0.706732,
		-0.554854, 0.646115, 0.524092,
		-0.820083, -0.318758, -0.475245,
		35.336903, 36.904224, 32.942768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.763592, 43.380383, 28.435074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488636, 43.202698, 28.205231>,  <36.323662, 43.096088, 28.067324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488636, 43.202698, 28.205231>,  <36.763592, 43.380383, 28.435074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488636, 43.202698, 28.205231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148001, -0.688886, 0.709600,
		-0.711050, 0.572814, 0.407790,
		-0.687389, -0.444208, -0.574609,
		36.282421, 43.069435, 28.032848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143337, 43.466576, 28.800594>,  <36.763592, 43.380383, 28.435074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143337, 43.466576, 28.800594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148617, 43.146820, 28.560326>,  <36.151783, 42.954967, 28.416164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148617, 43.146820, 28.560326>,  <36.143337, 43.466576, 28.800594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148617, 43.146820, 28.560326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243213, -0.585252, 0.773517,
		-0.969883, 0.135882, -0.202145,
		0.013199, -0.799385, -0.600674,
		36.152576, 42.907005, 28.380123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617821, 43.070305, 29.059044>,  <36.143337, 43.466576, 28.800594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617821, 43.070305, 29.059044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793480, 42.815891, 28.805241>,  <35.898876, 42.663242, 28.652958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793480, 42.815891, 28.805241>,  <35.617821, 43.070305, 29.059044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793480, 42.815891, 28.805241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190580, -0.756134, 0.626052,
		-0.877967, -0.154006, -0.453273,
		0.439151, -0.636037, -0.634510,
		35.925224, 42.625080, 28.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126701, 42.531967, 28.975578>,  <35.617821, 43.070305, 29.059044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126701, 42.531967, 28.975578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480305, 42.378445, 28.868830>,  <35.692467, 42.286331, 28.804781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480305, 42.378445, 28.868830>,  <35.126701, 42.531967, 28.975578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480305, 42.378445, 28.868830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210476, -0.836534, 0.505876,
		-0.417405, -0.391029, -0.820286,
		0.884010, -0.383805, -0.266872,
		35.745506, 42.263302, 28.788769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017429, 41.973476, 28.649656>,  <35.126701, 42.531967, 28.975578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017429, 41.973476, 28.649656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388218, 41.939587, 28.795835>,  <35.610691, 41.919250, 28.883543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388218, 41.939587, 28.795835>,  <35.017429, 41.973476, 28.649656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388218, 41.939587, 28.795835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274303, -0.817625, 0.506209,
		0.255909, -0.569483, -0.781153,
		0.926967, -0.084729, 0.365448,
		35.666309, 41.914169, 28.905470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003269, 41.275517, 28.550644>,  <35.017429, 41.973476, 28.649656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003269, 41.275517, 28.550644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302292, 41.372211, 28.798103>,  <35.481705, 41.430229, 28.946579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302292, 41.372211, 28.798103>,  <35.003269, 41.275517, 28.550644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302292, 41.372211, 28.798103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247609, -0.762846, 0.597290,
		0.616323, -0.599689, -0.510411,
		0.747553, 0.241742, 0.618648,
		35.526558, 41.444733, 28.983698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358841, 40.615986, 28.705868>,  <35.003269, 41.275517, 28.550644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358841, 40.615986, 28.705868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476360, 40.864300, 28.996609>,  <35.546871, 41.013287, 29.171053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476360, 40.864300, 28.996609>,  <35.358841, 40.615986, 28.705868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476360, 40.864300, 28.996609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135287, -0.725749, 0.674526,
		0.946246, -0.296507, -0.129238,
		0.293796, 0.620783, 0.726851,
		35.564499, 41.050533, 29.214664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901512, 40.257122, 29.059711>,  <35.358841, 40.615986, 28.705868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901512, 40.257122, 29.059711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784496, 40.520535, 29.337057>,  <35.714287, 40.678581, 29.503464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784496, 40.520535, 29.337057>,  <35.901512, 40.257122, 29.059711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784496, 40.520535, 29.337057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005207, -0.726169, 0.687496,
		0.956240, 0.197507, 0.215859,
		-0.292536, 0.658536, 0.693364,
		35.696735, 40.718094, 29.545067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320347, 40.252331, 29.623024>,  <35.901512, 40.257122, 29.059711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320347, 40.252331, 29.623024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987366, 40.416256, 29.772196>,  <35.787575, 40.514610, 29.861698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987366, 40.416256, 29.772196>,  <36.320347, 40.252331, 29.623024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987366, 40.416256, 29.772196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059410, -0.603149, 0.795413,
		0.550898, 0.684301, 0.477748,
		-0.832455, 0.409809, 0.372928,
		35.737629, 40.539200, 29.884075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055031, 40.282059, 29.861002>,  <36.320347, 40.252331, 29.623024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055031, 40.282059, 29.861002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311783, 40.001030, 29.738117>,  <37.465836, 39.832413, 29.664387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311783, 40.001030, 29.738117>,  <37.055031, 40.282059, 29.861002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311783, 40.001030, 29.738117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067277, 0.450691, -0.890141,
		0.763849, 0.550695, 0.336557,
		0.641879, -0.702576, -0.307211,
		37.504345, 39.790257, 29.645954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661026, 40.636467, 29.663660>,  <37.055031, 40.282059, 29.861002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661026, 40.636467, 29.663660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653316, 40.284878, 29.473070>,  <37.648689, 40.073925, 29.358717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653316, 40.284878, 29.473070>,  <37.661026, 40.636467, 29.663660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653316, 40.284878, 29.473070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055049, 0.474906, -0.878313,
		0.998298, -0.043158, 0.039233,
		-0.019274, -0.878978, -0.476473,
		37.647533, 40.021183, 29.330128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285545, 40.565132, 29.182926>,  <37.661026, 40.636467, 29.663660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285545, 40.565132, 29.182926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041691, 40.277058, 29.050455>,  <37.895378, 40.104214, 28.970972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041691, 40.277058, 29.050455>,  <38.285545, 40.565132, 29.182926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041691, 40.277058, 29.050455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169118, 0.290002, -0.941965,
		0.774434, -0.630260, -0.054997,
		-0.609632, -0.720188, -0.331176,
		37.858803, 40.061001, 28.951103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685497, 40.011528, 28.628408>,  <38.285545, 40.565132, 29.182926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685497, 40.011528, 28.628408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293312, 40.015968, 28.549862>,  <38.057999, 40.018631, 28.502733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293312, 40.015968, 28.549862>,  <38.685497, 40.011528, 28.628408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293312, 40.015968, 28.549862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189795, 0.315265, -0.929831,
		0.051588, -0.948939, -0.311214,
		-0.980468, 0.011099, -0.196368,
		37.999172, 40.019299, 28.490952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652946, 39.660187, 28.017427>,  <38.685497, 40.011528, 28.628408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652946, 39.660187, 28.017427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293449, 39.835438, 28.024405>,  <38.077751, 39.940586, 28.028591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293449, 39.835438, 28.024405>,  <38.652946, 39.660187, 28.017427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293449, 39.835438, 28.024405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089381, 0.222004, -0.970940,
		-0.429266, -0.871068, -0.238685,
		-0.898745, 0.438126, 0.017442,
		38.023827, 39.966877, 28.029636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258472, 39.388889, 27.404936>,  <38.652946, 39.660187, 28.017427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258472, 39.388889, 27.404936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094299, 39.737354, 27.512726>,  <37.995796, 39.946434, 27.577400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094299, 39.737354, 27.512726>,  <38.258472, 39.388889, 27.404936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094299, 39.737354, 27.512726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045334, 0.275655, -0.960187,
		-0.910764, -0.406308, -0.073644,
		-0.410431, 0.871165, 0.269476,
		37.971169, 39.998703, 27.593569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601913, 39.488777, 26.933695>,  <38.258472, 39.388889, 27.404936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601913, 39.488777, 26.933695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726295, 39.841831, 27.074701>,  <37.800926, 40.053661, 27.159306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726295, 39.841831, 27.074701>,  <37.601913, 39.488777, 26.933695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726295, 39.841831, 27.074701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074099, 0.347259, -0.934837,
		-0.947531, 0.316815, 0.042581,
		0.310957, 0.882632, 0.352514,
		37.819584, 40.106621, 27.180456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243473, 40.020348, 26.467245>,  <37.601913, 39.488777, 26.933695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243473, 40.020348, 26.467245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532791, 40.216732, 26.661484>,  <37.706383, 40.334560, 26.778027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532791, 40.216732, 26.661484>,  <37.243473, 40.020348, 26.467245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532791, 40.216732, 26.661484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266501, 0.450273, -0.852192,
		-0.637041, 0.745799, 0.194840,
		0.723295, 0.490957, 0.485598,
		37.749779, 40.364017, 26.807163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088909, 40.701836, 26.167143>,  <37.243473, 40.020348, 26.467245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088909, 40.701836, 26.167143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467846, 40.699799, 26.295221>,  <37.695206, 40.698574, 26.372068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467846, 40.699799, 26.295221>,  <37.088909, 40.701836, 26.167143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467846, 40.699799, 26.295221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294797, 0.404439, -0.865751,
		-0.125087, 0.914551, 0.384642,
		0.947337, -0.005097, 0.320197,
		37.752048, 40.698269, 26.391281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263176, 41.349285, 26.250284>,  <37.088909, 40.701836, 26.167143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263176, 41.349285, 26.250284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587341, 41.129860, 26.168005>,  <37.781841, 40.998207, 26.118637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587341, 41.129860, 26.168005>,  <37.263176, 41.349285, 26.250284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587341, 41.129860, 26.168005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125988, 0.506074, -0.853239,
		0.572149, 0.665562, 0.479242,
		0.810415, -0.548559, -0.205696,
		37.830467, 40.965294, 26.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777889, 41.763657, 25.947498>,  <37.263176, 41.349285, 26.250284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777889, 41.763657, 25.947498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921070, 41.407722, 25.834322>,  <38.006981, 41.194160, 25.766417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921070, 41.407722, 25.834322>,  <37.777889, 41.763657, 25.947498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921070, 41.407722, 25.834322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334871, 0.405202, -0.850690,
		0.871625, 0.209760, 0.443025,
		0.357955, -0.889839, -0.282941,
		38.028458, 41.140770, 25.749439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571564, 41.856060, 25.806372>,  <37.777889, 41.763657, 25.947498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571564, 41.856060, 25.806372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438602, 41.532589, 25.612236>,  <38.358826, 41.338509, 25.495754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438602, 41.532589, 25.612236>,  <38.571564, 41.856060, 25.806372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438602, 41.532589, 25.612236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376374, 0.358109, -0.854459,
		0.864784, -0.466694, 0.185327,
		-0.332404, -0.808674, -0.485338,
		38.338882, 41.289986, 25.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143520, 41.637802, 25.353727>,  <38.571564, 41.856060, 25.806372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143520, 41.637802, 25.353727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814220, 41.464771, 25.206682>,  <38.616642, 41.360950, 25.118456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814220, 41.464771, 25.206682>,  <39.143520, 41.637802, 25.353727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814220, 41.464771, 25.206682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224199, 0.347172, -0.910608,
		0.521538, -0.832072, -0.188822,
		-0.823245, -0.432583, -0.367613,
		38.567245, 41.334995, 25.096397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360619, 41.380932, 24.702026>,  <39.143520, 41.637802, 25.353727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360619, 41.380932, 24.702026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961876, 41.411800, 24.694920>,  <38.722630, 41.430321, 24.690655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961876, 41.411800, 24.694920>,  <39.360619, 41.380932, 24.702026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961876, 41.411800, 24.694920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046298, 0.385931, -0.921365,
		-0.064245, -0.919294, -0.388292,
		-0.996860, 0.077170, -0.017767,
		38.662819, 41.434952, 24.689589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.072783, 40.848610, 23.306898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456202, 40.865524, 23.419607>,  <31.686253, 40.875675, 23.487232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456202, 40.865524, 23.419607>,  <31.072783, 40.848610, 23.306898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456202, 40.865524, 23.419607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196536, -0.617865, 0.761326,
		0.206292, -0.785146, -0.583943,
		0.958550, 0.042289, 0.281770,
		31.743767, 40.878212, 23.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303982, 40.143288, 23.337107>,  <31.072783, 40.848610, 23.306898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303982, 40.143288, 23.337107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560528, 40.353180, 23.561005>,  <31.714455, 40.479115, 23.695343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560528, 40.353180, 23.561005>,  <31.303982, 40.143288, 23.337107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560528, 40.353180, 23.561005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052830, -0.758033, 0.650073,
		0.765416, -0.387362, -0.513896,
		0.641363, 0.524726, 0.559747,
		31.752937, 40.510597, 23.728928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609924, 39.655918, 23.691509>,  <31.303982, 40.143288, 23.337107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609924, 39.655918, 23.691509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698093, 39.982582, 23.904854>,  <31.750996, 40.178581, 24.032860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698093, 39.982582, 23.904854>,  <31.609924, 39.655918, 23.691509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698093, 39.982582, 23.904854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044297, -0.554628, 0.830918,
		0.974398, -0.159527, -0.158428,
		0.220422, 0.816663, 0.533362,
		31.764219, 40.227581, 24.064863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255775, 39.479595, 24.046295>,  <31.609924, 39.655918, 23.691509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255775, 39.479595, 24.046295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083637, 39.780083, 24.246483>,  <31.980354, 39.960377, 24.366596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083637, 39.780083, 24.246483>,  <32.255775, 39.479595, 24.046295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083637, 39.780083, 24.246483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261717, -0.426780, 0.865658,
		0.863892, 0.503511, -0.012946,
		-0.430343, 0.751223, 0.500469,
		31.954535, 40.005451, 24.396624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746109, 39.753265, 24.586271>,  <32.255775, 39.479595, 24.046295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746109, 39.753265, 24.586271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395126, 39.891544, 24.719278>,  <32.184536, 39.974510, 24.799082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395126, 39.891544, 24.719278>,  <32.746109, 39.753265, 24.586271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395126, 39.891544, 24.719278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175678, -0.413452, 0.893417,
		0.446329, 0.842350, 0.302055,
		-0.877455, 0.345694, 0.332518,
		32.131889, 39.995251, 24.819035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819004, 39.911861, 25.271978>,  <32.746109, 39.753265, 24.586271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819004, 39.911861, 25.271978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420513, 39.884796, 25.250271>,  <32.181419, 39.868557, 25.237247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.420513, 39.884796, 25.250271>,  <32.819004, 39.911861, 25.271978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420513, 39.884796, 25.250271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001540, -0.611769, 0.791035,
		-0.086722, 0.788137, 0.609359,
		-0.996231, -0.067662, -0.054267,
		32.121643, 39.864498, 25.233992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544144, 39.984169, 25.977678>,  <32.819004, 39.911861, 25.271978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544144, 39.984169, 25.977678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224419, 39.799114, 25.824276>,  <32.032585, 39.688084, 25.732235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224419, 39.799114, 25.824276>,  <32.544144, 39.984169, 25.977678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224419, 39.799114, 25.824276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043622, -0.591840, 0.804874,
		-0.599336, 0.660072, 0.452882,
		-0.799308, -0.462634, -0.383505,
		31.984627, 39.660324, 25.709225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044941, 39.829540, 26.487391>,  <32.544144, 39.984169, 25.977678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044941, 39.829540, 26.487391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.942961, 39.564903, 26.205313>,  <31.881773, 39.406120, 26.036066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.942961, 39.564903, 26.205313>,  <32.044941, 39.829540, 26.487391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942961, 39.564903, 26.205313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045196, -0.720345, 0.692142,
		-0.965898, 0.208332, 0.153749,
		-0.254948, -0.661590, -0.705196,
		31.866476, 39.366425, 25.993753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385166, 39.516251, 26.753826>,  <32.044941, 39.829540, 26.487391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385166, 39.516251, 26.753826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.537842, 39.260719, 26.486631>,  <31.629448, 39.107399, 26.326315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.537842, 39.260719, 26.486631>,  <31.385166, 39.516251, 26.753826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537842, 39.260719, 26.486631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027632, -0.714494, 0.699096,
		-0.923878, -0.285295, -0.255062,
		0.381689, -0.638831, -0.667989,
		31.652348, 39.069069, 26.286234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157475, 38.829624, 26.956448>,  <31.385166, 39.516251, 26.753826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157475, 38.829624, 26.956448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.465658, 38.729019, 26.722137>,  <31.650568, 38.668655, 26.581551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.465658, 38.729019, 26.722137>,  <31.157475, 38.829624, 26.956448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465658, 38.729019, 26.722137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203472, -0.773799, 0.599862,
		-0.604144, -0.581359, -0.545007,
		0.770460, -0.251509, -0.585776,
		31.696796, 38.653568, 26.546404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066526, 38.063511, 26.627522>,  <31.157475, 38.829624, 26.956448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066526, 38.063511, 26.627522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454992, 38.149925, 26.667858>,  <31.688072, 38.201775, 26.692060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454992, 38.149925, 26.667858>,  <31.066526, 38.063511, 26.627522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454992, 38.149925, 26.667858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122227, -0.814308, 0.567418,
		0.204702, -0.538730, -0.817232,
		0.971163, 0.216039, 0.100844,
		31.746342, 38.214737, 26.698111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347492, 37.440372, 26.512100>,  <31.066526, 38.063511, 26.627522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347492, 37.440372, 26.512100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.663479, 37.642456, 26.651077>,  <31.853071, 37.763706, 26.734463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.663479, 37.642456, 26.651077>,  <31.347492, 37.440372, 26.512100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663479, 37.642456, 26.651077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227206, -0.767509, 0.599423,
		0.569497, -0.394585, -0.721094,
		0.789969, 0.505206, 0.347442,
		31.900469, 37.794018, 26.755310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951384, 37.112446, 26.344128>,  <31.347492, 37.440372, 26.512100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951384, 37.112446, 26.344128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035351, 37.337894, 26.663694>,  <32.085732, 37.473164, 26.855434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035351, 37.337894, 26.663694>,  <31.951384, 37.112446, 26.344128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035351, 37.337894, 26.663694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143938, -0.826035, 0.544930,
		0.967066, 0.000604, -0.254526,
		0.209918, 0.563619, 0.798917,
		32.098328, 37.506981, 26.903370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575932, 36.836800, 26.539648>,  <31.951384, 37.112446, 26.344128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575932, 36.836800, 26.539648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.448128, 37.044327, 26.856821>,  <32.371445, 37.168842, 27.047125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.448128, 37.044327, 26.856821>,  <32.575932, 36.836800, 26.539648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448128, 37.044327, 26.856821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295006, -0.740745, 0.603546,
		0.900491, 0.426760, 0.083622,
		-0.319512, 0.518818, 0.792931,
		32.352276, 37.199974, 27.094700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279327, 36.988510, 26.687475>,  <32.575932, 36.836800, 26.539648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279327, 36.988510, 26.687475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661972, 36.902100, 26.609272>,  <33.891560, 36.850254, 26.562349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661972, 36.902100, 26.609272>,  <33.279327, 36.988510, 26.687475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661972, 36.902100, 26.609272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041843, 0.562212, -0.825934,
		0.288338, 0.798281, 0.528781,
		0.956614, -0.216022, -0.195510,
		33.948956, 36.837292, 26.550619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707058, 37.618507, 26.549747>,  <33.279327, 36.988510, 26.687475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707058, 37.618507, 26.549747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.879921, 37.310677, 26.361706>,  <33.983639, 37.125980, 26.248880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.879921, 37.310677, 26.361706>,  <33.707058, 37.618507, 26.549747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879921, 37.310677, 26.361706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078269, 0.551335, -0.830604,
		0.898397, 0.322154, 0.298496,
		0.432154, -0.769575, -0.470104,
		34.009567, 37.079803, 26.220675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305290, 37.872066, 26.238337>,  <33.707058, 37.618507, 26.549747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305290, 37.872066, 26.238337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207394, 37.548485, 26.024538>,  <34.148655, 37.354336, 25.896259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207394, 37.548485, 26.024538>,  <34.305290, 37.872066, 26.238337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207394, 37.548485, 26.024538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084821, 0.531286, -0.842936,
		0.965872, -0.251636, -0.061410,
		-0.244740, -0.808959, -0.534498,
		34.133972, 37.305798, 25.864189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799599, 37.821037, 25.711308>,  <34.305290, 37.872066, 26.238337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799599, 37.821037, 25.711308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480190, 37.619259, 25.579910>,  <34.288548, 37.498192, 25.501072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.480190, 37.619259, 25.579910>,  <34.799599, 37.821037, 25.711308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480190, 37.619259, 25.579910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103416, 0.422625, -0.900385,
		0.593023, -0.752944, -0.285305,
		-0.798517, -0.504444, -0.328493,
		34.240635, 37.467926, 25.481363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044788, 37.414440, 25.082127>,  <34.799599, 37.821037, 25.711308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044788, 37.414440, 25.082127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649200, 37.393024, 25.026890>,  <34.411846, 37.380177, 24.993748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649200, 37.393024, 25.026890>,  <35.044788, 37.414440, 25.082127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649200, 37.393024, 25.026890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119380, 0.263700, -0.957189,
		0.087656, -0.963118, -0.254401,
		-0.988971, -0.053533, -0.138091,
		34.352509, 37.376965, 24.985462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813568, 37.021652, 24.407572>,  <35.044788, 37.414440, 25.082127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813568, 37.021652, 24.407572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510040, 37.272030, 24.479549>,  <34.327923, 37.422256, 24.522736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510040, 37.272030, 24.479549>,  <34.813568, 37.021652, 24.407572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510040, 37.272030, 24.479549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035211, 0.315306, -0.948337,
		-0.650346, -0.713282, -0.261301,
		-0.758821, 0.625948, 0.179942,
		34.282394, 37.459816, 24.533531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330429, 36.916077, 23.950516>,  <34.813568, 37.021652, 24.407572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330429, 36.916077, 23.950516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204559, 37.266033, 24.097784>,  <34.129036, 37.476006, 24.186144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204559, 37.266033, 24.097784>,  <34.330429, 36.916077, 23.950516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204559, 37.266033, 24.097784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079056, 0.362369, -0.928676,
		-0.945902, -0.321337, -0.044863,
		-0.314675, 0.874889, 0.368169,
		34.110157, 37.528500, 24.208235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748066, 37.159504, 23.586140>,  <34.330429, 36.916077, 23.950516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748066, 37.159504, 23.586140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.867359, 37.499622, 23.759600>,  <33.938934, 37.703693, 23.863676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.867359, 37.499622, 23.759600>,  <33.748066, 37.159504, 23.586140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867359, 37.499622, 23.759600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127315, 0.485702, -0.864803,
		-0.945963, 0.202706, 0.253109,
		0.298236, 0.850296, 0.433649,
		33.956829, 37.754711, 23.889694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328125, 37.640144, 23.214659>,  <33.748066, 37.159504, 23.586140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328125, 37.640144, 23.214659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616024, 37.843399, 23.403870>,  <33.788765, 37.965351, 23.517397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616024, 37.843399, 23.403870>,  <33.328125, 37.640144, 23.214659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616024, 37.843399, 23.403870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017434, 0.667923, -0.744026,
		-0.694013, 0.543761, 0.471880,
		0.719751, 0.508137, 0.473027,
		33.831951, 37.995842, 23.545778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096180, 38.372341, 23.407784>,  <33.328125, 37.640144, 23.214659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096180, 38.372341, 23.407784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.495037, 38.357109, 23.381672>,  <33.734352, 38.347969, 23.366005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.495037, 38.357109, 23.381672>,  <33.096180, 38.372341, 23.407784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495037, 38.357109, 23.381672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011444, 0.777735, -0.628489,
		0.074700, 0.627438, 0.775075,
		0.997140, -0.038078, -0.065277,
		33.794178, 38.345684, 23.362089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279373, 39.129120, 23.373497>,  <33.096180, 38.372341, 23.407784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279373, 39.129120, 23.373497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584511, 38.895599, 23.262321>,  <33.767593, 38.755486, 23.195616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584511, 38.895599, 23.262321>,  <33.279373, 39.129120, 23.373497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584511, 38.895599, 23.262321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261289, 0.671531, -0.693379,
		0.591439, 0.456316, 0.664812,
		0.762842, -0.583800, -0.277939,
		33.813362, 38.720459, 23.178940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929863, 39.510750, 23.341373>,  <33.279373, 39.129120, 23.373497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929863, 39.510750, 23.341373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021626, 39.196133, 23.112036>,  <34.076683, 39.007362, 22.974432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021626, 39.196133, 23.112036>,  <33.929863, 39.510750, 23.341373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021626, 39.196133, 23.112036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425498, 0.610828, -0.667713,
		0.875399, -0.090780, 0.474800,
		0.229406, -0.786542, -0.573345,
		34.090446, 38.960171, 22.940033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660351, 39.433529, 23.177938>,  <33.929863, 39.510750, 23.341373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660351, 39.433529, 23.177938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477463, 39.245537, 22.875927>,  <34.367729, 39.132740, 22.694721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477463, 39.245537, 22.875927>,  <34.660351, 39.433529, 23.177938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477463, 39.245537, 22.875927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575692, 0.490693, -0.654064,
		0.677884, -0.733715, 0.046210,
		-0.457222, -0.469982, -0.755027,
		34.340298, 39.104542, 22.649420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159134, 39.377220, 22.701408>,  <34.660351, 39.433529, 23.177938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159134, 39.377220, 22.701408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854591, 39.294441, 22.455639>,  <34.671867, 39.244774, 22.308178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854591, 39.294441, 22.455639>,  <35.159134, 39.377220, 22.701408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854591, 39.294441, 22.455639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499903, 0.416081, -0.759587,
		0.412836, -0.885468, -0.213337,
		-0.761356, -0.206937, -0.614422,
		34.626186, 39.232357, 22.271313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807076, 39.064610, 22.474947>,  <35.159134, 39.377220, 22.701408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807076, 39.064610, 22.474947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199135, 39.124973, 22.526394>,  <36.434368, 39.161190, 22.557262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199135, 39.124973, 22.526394>,  <35.807076, 39.064610, 22.474947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199135, 39.124973, 22.526394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006162, -0.671531, 0.740951,
		0.198183, -0.725447, -0.659128,
		0.980146, 0.150905, 0.128616,
		36.493179, 39.170246, 22.564980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138992, 38.336437, 22.583021>,  <35.807076, 39.064610, 22.474947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138992, 38.336437, 22.583021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410286, 38.605274, 22.701880>,  <36.573063, 38.766575, 22.773195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410286, 38.605274, 22.701880>,  <36.138992, 38.336437, 22.583021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410286, 38.605274, 22.701880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252584, -0.592942, 0.764605,
		0.690075, -0.443525, -0.571911,
		0.678232, 0.672090, 0.297146,
		36.613754, 38.806900, 22.791023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909771, 38.037235, 22.818869>,  <36.138992, 38.336437, 22.583021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909771, 38.037235, 22.818869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822090, 38.380554, 23.004461>,  <36.769482, 38.586544, 23.115818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822090, 38.380554, 23.004461>,  <36.909771, 38.037235, 22.818869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822090, 38.380554, 23.004461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163329, -0.436559, 0.884726,
		0.961913, 0.269712, -0.044492,
		-0.219198, 0.858296, 0.463983,
		36.756332, 38.638042, 23.143656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329632, 38.040676, 23.478046>,  <36.909771, 38.037235, 22.818869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329632, 38.040676, 23.478046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108196, 38.365746, 23.550827>,  <36.975334, 38.560787, 23.594496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108196, 38.365746, 23.550827>,  <37.329632, 38.040676, 23.478046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108196, 38.365746, 23.550827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070429, -0.172012, 0.982574,
		0.829809, 0.556752, 0.037987,
		-0.553585, 0.812674, 0.181949,
		36.942120, 38.609547, 23.605412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594017, 38.458656, 23.997627>,  <37.329632, 38.040676, 23.478046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594017, 38.458656, 23.997627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197250, 38.508286, 23.986961>,  <36.959190, 38.538063, 23.980562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197250, 38.508286, 23.986961>,  <37.594017, 38.458656, 23.997627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197250, 38.508286, 23.986961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053956, -0.222122, 0.973525,
		0.114867, 0.967092, 0.227021,
		-0.991914, 0.124075, -0.026666,
		36.899677, 38.545509, 23.978962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490746, 38.811310, 24.522015>,  <37.594017, 38.458656, 23.997627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490746, 38.811310, 24.522015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111942, 38.697033, 24.463276>,  <36.884663, 38.628468, 24.428032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111942, 38.697033, 24.463276>,  <37.490746, 38.811310, 24.522015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111942, 38.697033, 24.463276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110079, -0.140843, 0.983893,
		-0.301771, 0.947916, 0.101930,
		-0.947004, -0.285690, -0.146848,
		36.827843, 38.611324, 24.419222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126354, 39.088989, 25.050562>,  <37.490746, 38.811310, 24.522015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126354, 39.088989, 25.050562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900551, 38.777462, 24.941183>,  <36.765068, 38.590546, 24.875555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900551, 38.777462, 24.941183>,  <37.126354, 39.088989, 25.050562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900551, 38.777462, 24.941183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040106, -0.305010, 0.951504,
		-0.824454, 0.548096, 0.140945,
		-0.564506, -0.778819, -0.273449,
		36.731197, 38.543816, 24.859148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655556, 39.066124, 25.591845>,  <37.126354, 39.088989, 25.050562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655556, 39.066124, 25.591845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618984, 38.715004, 25.403759>,  <36.597042, 38.504330, 25.290907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618984, 38.715004, 25.403759>,  <36.655556, 39.066124, 25.591845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618984, 38.715004, 25.403759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129289, -0.478660, 0.868429,
		-0.987383, 0.018606, 0.157254,
		-0.091428, -0.877803, -0.470215,
		36.591557, 38.451664, 25.262695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241318, 38.561626, 25.985003>,  <36.655556, 39.066124, 25.591845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241318, 38.561626, 25.985003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488285, 38.345867, 25.755974>,  <36.636467, 38.216412, 25.618557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488285, 38.345867, 25.755974>,  <36.241318, 38.561626, 25.985003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488285, 38.345867, 25.755974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265293, -0.542455, 0.797096,
		-0.740548, -0.644044, -0.191825,
		0.617421, -0.539398, -0.572574,
		36.673512, 38.184048, 25.584202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097599, 37.718987, 25.986574>,  <36.241318, 38.561626, 25.985003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097599, 37.718987, 25.986574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478107, 37.770912, 25.874699>,  <36.706413, 37.802067, 25.807573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478107, 37.770912, 25.874699>,  <36.097599, 37.718987, 25.986574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478107, 37.770912, 25.874699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299052, -0.609459, 0.734253,
		-0.075141, -0.782117, -0.618584,
		0.951274, 0.129816, -0.279689,
		36.763489, 37.809856, 25.790792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408283, 37.065224, 25.954433>,  <36.097599, 37.718987, 25.986574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408283, 37.065224, 25.954433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730774, 37.298080, 25.996599>,  <36.924267, 37.437794, 26.021898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730774, 37.298080, 25.996599>,  <36.408283, 37.065224, 25.954433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730774, 37.298080, 25.996599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360561, -0.624766, 0.692577,
		0.469035, -0.520367, -0.713600,
		0.806227, 0.582139, 0.105413,
		36.972641, 37.472721, 26.028223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952446, 36.606644, 25.988873>,  <36.408283, 37.065224, 25.954433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952446, 36.606644, 25.988873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092686, 36.937622, 26.164333>,  <37.176830, 37.136208, 26.269609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092686, 36.937622, 26.164333>,  <36.952446, 36.606644, 25.988873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092686, 36.937622, 26.164333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273763, -0.538474, 0.796931,
		0.895619, -0.159317, -0.415313,
		0.350599, 0.827444, 0.438652,
		37.197865, 37.185856, 26.295929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569160, 36.398487, 26.210529>,  <36.952446, 36.606644, 25.988873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569160, 36.398487, 26.210529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517536, 36.740772, 26.410967>,  <37.486561, 36.946144, 26.531229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517536, 36.740772, 26.410967>,  <37.569160, 36.398487, 26.210529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517536, 36.740772, 26.410967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377276, -0.424944, 0.822852,
		0.917064, 0.295251, -0.267995,
		-0.129065, 0.855716, 0.501092,
		37.478817, 36.997486, 26.561295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251492, 36.553890, 26.441483>,  <37.569160, 36.398487, 26.210529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251492, 36.553890, 26.441483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983906, 36.717129, 26.689981>,  <37.823353, 36.815071, 26.839081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983906, 36.717129, 26.689981>,  <38.251492, 36.553890, 26.441483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983906, 36.717129, 26.689981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591926, -0.213032, 0.777330,
		0.449567, 0.887738, -0.099049,
		-0.668964, 0.408092, 0.621247,
		37.783218, 36.839558, 26.876356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.180782, 40.936733, 24.177416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903538, 41.217800, 24.241743>,  <38.737190, 41.386440, 24.280340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903538, 41.217800, 24.241743>,  <39.180782, 40.936733, 24.177416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903538, 41.217800, 24.241743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061019, 0.279492, -0.958207,
		-0.718245, -0.654329, -0.236594,
		-0.693109, 0.702664, 0.160818,
		38.695606, 41.428600, 24.289988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664871, 40.823635, 23.591568>,  <39.180782, 40.936733, 24.177416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664871, 40.823635, 23.591568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605656, 41.198128, 23.719040>,  <38.570126, 41.422825, 23.795523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605656, 41.198128, 23.719040>,  <38.664871, 40.823635, 23.591568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605656, 41.198128, 23.719040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015057, 0.320057, -0.947279,
		-0.988867, -0.145029, -0.033283,
		-0.148036, 0.936232, 0.318678,
		38.561245, 41.478996, 23.814644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375668, 41.072006, 23.134752>,  <38.664871, 40.823635, 23.591568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375668, 41.072006, 23.134752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.450932, 41.417831, 23.321142>,  <38.496090, 41.625324, 23.432976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.450932, 41.417831, 23.321142>,  <38.375668, 41.072006, 23.134752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450932, 41.417831, 23.321142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013622, 0.472106, -0.881437,
		-0.982043, 0.172202, 0.077057,
		0.188164, 0.864559, 0.465974,
		38.507381, 41.677200, 23.460934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922150, 41.511250, 22.851864>,  <38.375668, 41.072006, 23.134752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922150, 41.511250, 22.851864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230656, 41.724072, 22.991617>,  <38.415760, 41.851765, 23.075470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230656, 41.724072, 22.991617>,  <37.922150, 41.511250, 22.851864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230656, 41.724072, 22.991617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157420, 0.372407, -0.914621,
		-0.616740, 0.760416, 0.203469,
		0.771266, 0.532054, 0.349383,
		38.462036, 41.883686, 23.096432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761875, 42.124382, 22.545500>,  <37.922150, 41.511250, 22.851864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761875, 42.124382, 22.545500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.150921, 42.146137, 22.635889>,  <38.384350, 42.159191, 22.690123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.150921, 42.146137, 22.635889>,  <37.761875, 42.124382, 22.545500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150921, 42.146137, 22.635889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171089, 0.490541, -0.854458,
		-0.157320, 0.869719, 0.467802,
		0.972615, 0.054387, 0.225971,
		38.442707, 42.162453, 22.703680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944771, 42.805286, 22.504276>,  <37.761875, 42.124382, 22.545500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944771, 42.805286, 22.504276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281605, 42.595230, 22.455088>,  <38.483704, 42.469196, 22.425573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281605, 42.595230, 22.455088>,  <37.944771, 42.805286, 22.504276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281605, 42.595230, 22.455088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075928, 0.341158, -0.936934,
		0.533974, 0.779641, 0.327157,
		0.842085, -0.525139, -0.122973,
		38.534229, 42.437687, 22.418196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378216, 43.299797, 22.325270>,  <37.944771, 42.805286, 22.504276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378216, 43.299797, 22.325270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556934, 42.957737, 22.220127>,  <38.664165, 42.752502, 22.157042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556934, 42.957737, 22.220127>,  <38.378216, 43.299797, 22.325270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556934, 42.957737, 22.220127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251139, 0.401889, -0.880576,
		0.858661, 0.327427, 0.394325,
		0.446799, -0.855147, -0.262857,
		38.690975, 42.701195, 22.141270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088688, 43.422733, 22.282034>,  <38.378216, 43.299797, 22.325270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088688, 43.422733, 22.282034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.041538, 43.094406, 22.058474>,  <39.013248, 42.897411, 21.924337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.041538, 43.094406, 22.058474>,  <39.088688, 43.422733, 22.282034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041538, 43.094406, 22.058474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380821, 0.482428, -0.788821,
		0.917105, -0.305820, 0.255719,
		-0.117872, -0.820815, -0.558900,
		39.006176, 42.848160, 21.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621254, 43.465775, 21.889957>,  <39.088688, 43.422733, 22.282034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621254, 43.465775, 21.889957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415703, 43.176865, 21.704807>,  <39.292370, 43.003521, 21.593718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415703, 43.176865, 21.704807>,  <39.621254, 43.465775, 21.889957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415703, 43.176865, 21.704807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248353, 0.391205, -0.886160,
		0.821127, -0.570335, -0.021653,
		-0.513879, -0.722272, -0.462873,
		39.261539, 42.960182, 21.565945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076595, 43.163677, 21.430935>,  <39.621254, 43.465775, 21.889957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076595, 43.163677, 21.430935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709839, 43.066383, 21.304348>,  <39.489784, 43.008007, 21.228395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709839, 43.066383, 21.304348>,  <40.076595, 43.163677, 21.430935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709839, 43.066383, 21.304348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242499, 0.290301, -0.925699,
		0.317038, -0.925505, -0.207188,
		-0.916887, -0.243239, -0.316470,
		39.434772, 42.993412, 21.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151932, 43.154316, 20.733711>,  <40.076595, 43.163677, 21.430935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151932, 43.154316, 20.733711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753887, 43.187115, 20.755724>,  <39.515060, 43.206795, 20.768930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753887, 43.187115, 20.755724>,  <40.151932, 43.154316, 20.733711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753887, 43.187115, 20.755724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021828, 0.360845, -0.932370,
		-0.096306, -0.929014, -0.357292,
		-0.995112, 0.081994, 0.055030,
		39.455353, 43.211712, 20.772232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944782, 43.067657, 20.023342>,  <40.151932, 43.154316, 20.733711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944782, 43.067657, 20.023342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.620392, 43.221886, 20.199369>,  <39.425758, 43.314423, 20.304987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.620392, 43.221886, 20.199369>,  <39.944782, 43.067657, 20.023342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620392, 43.221886, 20.199369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140521, 0.601779, -0.786203,
		-0.567959, -0.699428, -0.433846,
		-0.810972, 0.385567, 0.440071,
		39.377102, 43.337555, 20.331390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280125, 42.947945, 19.585768>,  <39.944782, 43.067657, 20.023342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280125, 42.947945, 19.585768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301178, 43.280312, 19.807329>,  <39.313812, 43.479733, 19.940266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301178, 43.280312, 19.807329>,  <39.280125, 42.947945, 19.585768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301178, 43.280312, 19.807329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011792, 0.554119, -0.832354,
		-0.998544, 0.050343, 0.019368,
		0.052636, 0.830914, 0.553906,
		39.316967, 43.529587, 19.973501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658894, 43.522575, 19.361032>,  <39.280125, 42.947945, 19.585768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658894, 43.522575, 19.361032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985119, 43.692127, 19.518602>,  <39.180855, 43.793858, 19.613144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985119, 43.692127, 19.518602>,  <38.658894, 43.522575, 19.361032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985119, 43.692127, 19.518602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031397, 0.647330, -0.761563,
		-0.577813, 0.633472, 0.514631,
		0.815565, 0.423883, 0.393925,
		39.229790, 43.819294, 19.636780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033817, 43.243557, 19.130909>,  <38.658894, 43.522575, 19.361032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033817, 43.243557, 19.130909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721294, 43.056473, 18.965591>,  <37.533783, 42.944221, 18.866402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721294, 43.056473, 18.965591>,  <38.033817, 43.243557, 19.130909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721294, 43.056473, 18.965591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053847, -0.609193, 0.791192,
		-0.621822, 0.640417, 0.450781,
		-0.781305, -0.467707, -0.413294,
		37.486904, 42.916161, 18.841602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430805, 43.202248, 19.610134>,  <38.033817, 43.243557, 19.130909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430805, 43.202248, 19.610134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419933, 42.890724, 19.359465>,  <37.413410, 42.703812, 19.209063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419933, 42.890724, 19.359465>,  <37.430805, 43.202248, 19.610134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419933, 42.890724, 19.359465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013855, -0.626554, 0.779255,
		-0.999534, 0.029865, 0.006241,
		-0.027183, -0.778806, -0.626676,
		37.411777, 42.657082, 19.171461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978802, 42.769905, 19.983173>,  <37.430805, 43.202248, 19.610134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978802, 42.769905, 19.983173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147621, 42.529785, 19.711433>,  <37.248913, 42.385715, 19.548389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147621, 42.529785, 19.711433>,  <36.978802, 42.769905, 19.983173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147621, 42.529785, 19.711433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040637, -0.736080, 0.675674,
		-0.905660, -0.312777, -0.286270,
		0.422053, -0.600297, -0.679348,
		37.274239, 42.349697, 19.507629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467667, 42.260536, 19.935720>,  <36.978802, 42.769905, 19.983173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467667, 42.260536, 19.935720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824017, 42.129822, 19.809507>,  <37.037827, 42.051395, 19.733780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824017, 42.129822, 19.809507>,  <36.467667, 42.260536, 19.935720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824017, 42.129822, 19.809507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114575, -0.833802, 0.540043,
		-0.439570, -0.444956, -0.780252,
		0.890871, -0.326784, -0.315533,
		37.091278, 42.031788, 19.714848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418804, 41.541233, 19.788595>,  <36.467667, 42.260536, 19.935720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418804, 41.541233, 19.788595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816586, 41.578102, 19.808895>,  <37.055252, 41.600224, 19.821075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816586, 41.578102, 19.808895>,  <36.418804, 41.541233, 19.788595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816586, 41.578102, 19.808895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045316, -0.810460, 0.584038,
		0.094963, -0.578497, -0.810138,
		0.994449, 0.092174, 0.050749,
		37.114922, 41.605755, 19.824120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587627, 40.800682, 19.720041>,  <36.418804, 41.541233, 19.788595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587627, 40.800682, 19.720041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895237, 41.004478, 19.874449>,  <37.079803, 41.126759, 19.967094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895237, 41.004478, 19.874449>,  <36.587627, 40.800682, 19.720041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895237, 41.004478, 19.874449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261376, -0.801745, 0.537483,
		0.583334, -0.312443, -0.749734,
		0.769028, 0.509495, 0.386020,
		37.125946, 41.157326, 19.990255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055344, 40.281303, 19.754230>,  <36.587627, 40.800682, 19.720041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055344, 40.281303, 19.754230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181515, 40.575363, 19.994249>,  <37.257217, 40.751801, 20.138262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181515, 40.575363, 19.994249>,  <37.055344, 40.281303, 19.754230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181515, 40.575363, 19.994249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072488, -0.611815, 0.787672,
		0.946178, -0.291948, -0.139692,
		0.315426, 0.735152, 0.600049,
		37.276142, 40.795910, 20.174265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658527, 40.022583, 20.129801>,  <37.055344, 40.281303, 19.754230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658527, 40.022583, 20.129801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507549, 40.325989, 20.342287>,  <37.416962, 40.508034, 20.469778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507549, 40.325989, 20.342287>,  <37.658527, 40.022583, 20.129801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507549, 40.325989, 20.342287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053277, -0.590483, 0.805290,
		0.924498, 0.275651, 0.263286,
		-0.377445, 0.758516, 0.531214,
		37.394318, 40.553543, 20.501652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103310, 40.039574, 20.708492>,  <37.658527, 40.022583, 20.129801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103310, 40.039574, 20.708492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755619, 40.223083, 20.782211>,  <37.547005, 40.333191, 20.826443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755619, 40.223083, 20.782211>,  <38.103310, 40.039574, 20.708492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755619, 40.223083, 20.782211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088813, -0.511591, 0.854627,
		0.486367, 0.726498, 0.485435,
		-0.869229, 0.458775, 0.184299,
		37.494850, 40.360718, 20.837502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156319, 40.282215, 21.382307>,  <38.103310, 40.039574, 20.708492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156319, 40.282215, 21.382307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768127, 40.278980, 21.285889>,  <37.535213, 40.277039, 21.228037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768127, 40.278980, 21.285889>,  <38.156319, 40.282215, 21.382307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768127, 40.278980, 21.285889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189937, -0.590302, 0.784518,
		-0.148638, 0.807142, 0.571339,
		-0.970480, -0.008091, -0.241047,
		37.476982, 40.276554, 21.213575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765980, 40.394913, 21.998957>,  <38.156319, 40.282215, 21.382307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765980, 40.394913, 21.998957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504250, 40.222267, 21.750580>,  <37.347210, 40.118679, 21.601555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504250, 40.222267, 21.750580>,  <37.765980, 40.394913, 21.998957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504250, 40.222267, 21.750580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385984, -0.515481, 0.765046,
		-0.650288, 0.740262, 0.170696,
		-0.654325, -0.431615, -0.620940,
		37.307953, 40.092781, 21.564299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154572, 40.527225, 22.295393>,  <37.765980, 40.394913, 21.998957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154572, 40.527225, 22.295393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111092, 40.224037, 22.038126>,  <37.085003, 40.042126, 21.883766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111092, 40.224037, 22.038126>,  <37.154572, 40.527225, 22.295393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111092, 40.224037, 22.038126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458870, -0.535686, 0.708858,
		-0.881829, 0.372186, -0.289578,
		-0.108704, -0.757970, -0.643168,
		37.078480, 39.996647, 21.845175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315994, 40.469112, 22.261576>,  <37.154572, 40.527225, 22.295393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315994, 40.469112, 22.261576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541691, 40.153488, 22.164396>,  <36.677109, 39.964115, 22.106089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541691, 40.153488, 22.164396>,  <36.315994, 40.469112, 22.261576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541691, 40.153488, 22.164396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337444, -0.488968, 0.804389,
		-0.753505, -0.371884, -0.542156,
		0.564236, -0.789059, -0.242950,
		36.710960, 39.916771, 22.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879700, 39.804348, 22.319479>,  <36.315994, 40.469112, 22.261576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879700, 39.804348, 22.319479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261051, 39.685978, 22.343136>,  <36.489861, 39.614956, 22.357330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261051, 39.685978, 22.343136>,  <35.879700, 39.804348, 22.319479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261051, 39.685978, 22.343136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253467, -0.678875, 0.689118,
		-0.163775, -0.671982, -0.722232,
		0.953380, -0.295922, 0.059142,
		36.547066, 39.597202, 22.360878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431908, 39.517544, 21.925758>,  <35.879700, 39.804348, 22.319479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431908, 39.517544, 21.925758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033447, 39.534271, 21.894939>,  <34.794373, 39.544308, 21.876448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033447, 39.534271, 21.894939>,  <35.431908, 39.517544, 21.925758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033447, 39.534271, 21.894939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086527, 0.610239, -0.787478,
		0.014085, -0.791113, -0.611508,
		-0.996150, 0.041820, -0.077048,
		34.734604, 39.546818, 21.871824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344872, 39.439774, 21.205107>,  <35.431908, 39.517544, 21.925758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344872, 39.439774, 21.205107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013378, 39.602253, 21.359098>,  <34.814484, 39.699741, 21.451492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013378, 39.602253, 21.359098>,  <35.344872, 39.439774, 21.205107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013378, 39.602253, 21.359098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088898, 0.583612, -0.807151,
		-0.552541, -0.703135, -0.447548,
		-0.828731, 0.406199, 0.384977,
		34.764759, 39.724113, 21.474592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891167, 39.600990, 20.585186>,  <35.344872, 39.439774, 21.205107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891167, 39.600990, 20.585186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761662, 39.843479, 20.875751>,  <34.683960, 39.988972, 21.050091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761662, 39.843479, 20.875751>,  <34.891167, 39.600990, 20.585186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761662, 39.843479, 20.875751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066043, 0.751413, -0.656519,
		-0.943830, -0.260531, -0.203243,
		-0.323763, 0.606220, 0.726413,
		34.664532, 40.025345, 21.093676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270535, 39.871655, 20.278383>,  <34.891167, 39.600990, 20.585186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270535, 39.871655, 20.278383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324200, 40.105972, 20.598095>,  <34.356400, 40.246563, 20.789923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324200, 40.105972, 20.598095>,  <34.270535, 39.871655, 20.278383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324200, 40.105972, 20.598095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193341, 0.806545, -0.558663,
		-0.971915, -0.079582, 0.221466,
		0.134163, 0.585791, 0.799280,
		34.364449, 40.281708, 20.837879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783390, 40.398026, 20.216011>,  <34.270535, 39.871655, 20.278383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783390, 40.398026, 20.216011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078419, 40.550941, 20.438663>,  <34.255436, 40.642693, 20.572254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078419, 40.550941, 20.438663>,  <33.783390, 40.398026, 20.216011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078419, 40.550941, 20.438663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066801, 0.861578, -0.503211,
		-0.671952, 0.333973, 0.661017,
		0.737576, 0.382290, 0.556629,
		34.299690, 40.665630, 20.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646614, 40.966125, 20.500322>,  <33.783390, 40.398026, 20.216011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646614, 40.966125, 20.500322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040005, 41.035942, 20.519539>,  <34.276039, 41.077831, 20.531069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040005, 41.035942, 20.519539>,  <33.646614, 40.966125, 20.500322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040005, 41.035942, 20.519539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151250, 0.938037, -0.311786,
		-0.099486, 0.299368, 0.948937,
		0.983477, 0.174545, 0.048042,
		34.335049, 41.088306, 20.533951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708450, 41.671211, 20.717772>,  <33.646614, 40.966125, 20.500322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708450, 41.671211, 20.717772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051079, 41.556705, 20.546032>,  <34.256657, 41.488003, 20.442989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051079, 41.556705, 20.546032>,  <33.708450, 41.671211, 20.717772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051079, 41.556705, 20.546032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015290, 0.817580, -0.575612,
		0.515800, 0.499618, 0.695940,
		0.856573, -0.286260, -0.429347,
		34.308052, 41.470829, 20.417229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641052, 42.081799, 21.387417>,  <33.708450, 41.671211, 20.717772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641052, 42.081799, 21.387417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422512, 42.370155, 21.557976>,  <33.291389, 42.543171, 21.660311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422512, 42.370155, 21.557976>,  <33.641052, 42.081799, 21.387417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422512, 42.370155, 21.557976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478279, -0.686458, 0.547745,
		0.687570, 0.095322, 0.719834,
		-0.546349, 0.720894, 0.426397,
		33.258606, 42.586422, 21.685894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815819, 42.025921, 22.158749>,  <33.641052, 42.081799, 21.387417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815819, 42.025921, 22.158749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462318, 42.207874, 22.114820>,  <33.250217, 42.317047, 22.088465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462318, 42.207874, 22.114820>,  <33.815819, 42.025921, 22.158749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462318, 42.207874, 22.114820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389147, -0.584056, 0.712350,
		0.259900, 0.672276, 0.693179,
		-0.883752, 0.454888, -0.109818,
		33.197193, 42.344341, 22.081875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691360, 42.284115, 22.825922>,  <33.815819, 42.025921, 22.158749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691360, 42.284115, 22.825922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344742, 42.257828, 22.628017>,  <33.136772, 42.242058, 22.509275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344742, 42.257828, 22.628017>,  <33.691360, 42.284115, 22.825922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344742, 42.257828, 22.628017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393017, -0.521178, 0.757569,
		-0.307641, 0.850914, 0.425796,
		-0.866542, -0.065714, -0.494759,
		33.084778, 42.238113, 22.479589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225185, 42.280994, 23.364088>,  <33.691360, 42.284115, 22.825922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225185, 42.280994, 23.364088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.991978, 42.177246, 23.056108>,  <32.852055, 42.114998, 22.871321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.991978, 42.177246, 23.056108>,  <33.225185, 42.280994, 23.364088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991978, 42.177246, 23.056108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483935, -0.650357, 0.585527,
		-0.652610, 0.713976, 0.253650,
		-0.583016, -0.259370, -0.769948,
		32.817074, 42.099434, 22.825125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587292, 42.371243, 23.627350>,  <33.225185, 42.280994, 23.364088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587292, 42.371243, 23.627350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563293, 42.138107, 23.303202>,  <32.548897, 41.998226, 23.108713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563293, 42.138107, 23.303202>,  <32.587292, 42.371243, 23.627350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563293, 42.138107, 23.303202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597476, -0.629378, 0.496896,
		-0.799639, 0.513988, -0.310473,
		-0.059994, -0.582837, -0.810371,
		32.545296, 41.963257, 23.060091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910351, 42.228355, 23.558056>,  <32.587292, 42.371243, 23.627350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910351, 42.228355, 23.558056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110626, 41.931038, 23.380598>,  <32.230793, 41.752647, 23.274122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110626, 41.931038, 23.380598>,  <31.910351, 42.228355, 23.558056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110626, 41.931038, 23.380598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577127, -0.668624, 0.468899,
		-0.645161, 0.021265, -0.763751,
		0.500691, -0.743297, -0.443642,
		32.260834, 41.708050, 23.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431822, 41.809174, 23.493397>,  <31.910351, 42.228355, 23.558056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431822, 41.809174, 23.493397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735544, 41.557449, 23.427166>,  <31.917778, 41.406414, 23.387428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735544, 41.557449, 23.427166>,  <31.431822, 41.809174, 23.493397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735544, 41.557449, 23.427166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465485, -0.703080, 0.537590,
		-0.454724, -0.331124, -0.826791,
		0.759308, -0.629314, -0.165574,
		31.963337, 41.368656, 23.377493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.000591, 44.888775, 21.397594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.356037, 44.710892, 21.352695>,  <36.569305, 44.604160, 21.325756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.356037, 44.710892, 21.352695>,  <36.000591, 44.888775, 21.397594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356037, 44.710892, 21.352695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034588, -0.309010, 0.950429,
		-0.457352, -0.840682, -0.289972,
		0.888613, -0.444710, -0.112249,
		36.622620, 44.577480, 21.319021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945610, 44.179993, 21.654770>,  <36.000591, 44.888775, 21.397594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945610, 44.179993, 21.654770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.325260, 44.301983, 21.686136>,  <36.553051, 44.375175, 21.704956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.325260, 44.301983, 21.686136>,  <35.945610, 44.179993, 21.654770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325260, 44.301983, 21.686136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012803, -0.286189, 0.958088,
		0.314631, -0.908344, -0.275535,
		0.949128, 0.304972, 0.078414,
		36.609997, 44.393475, 21.709660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391369, 43.737274, 21.963928>,  <35.945610, 44.179993, 21.654770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391369, 43.737274, 21.963928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616192, 44.060001, 22.036743>,  <36.751083, 44.253639, 22.080433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616192, 44.060001, 22.036743>,  <36.391369, 43.737274, 21.963928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616192, 44.060001, 22.036743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211234, -0.352818, 0.911537,
		0.799673, -0.473880, -0.368730,
		0.562053, 0.806820, 0.182039,
		36.784809, 44.302048, 22.091354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073048, 43.478973, 22.136806>,  <36.391369, 43.737274, 21.963928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073048, 43.478973, 22.136806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040531, 43.845139, 22.294497>,  <37.021019, 44.064838, 22.389111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040531, 43.845139, 22.294497>,  <37.073048, 43.478973, 22.136806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040531, 43.845139, 22.294497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162713, -0.378038, 0.911379,
		0.983319, 0.138236, -0.118217,
		-0.081295, 0.915411, 0.394224,
		37.016144, 44.119762, 22.412764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473507, 43.561668, 22.717056>,  <37.073048, 43.478973, 22.136806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473507, 43.561668, 22.717056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.259594, 43.887104, 22.808334>,  <37.131245, 44.082367, 22.863102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.259594, 43.887104, 22.808334>,  <37.473507, 43.561668, 22.717056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259594, 43.887104, 22.808334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007816, -0.265285, 0.964138,
		0.844951, 0.517391, 0.135511,
		-0.534786, 0.813591, 0.228197,
		37.099159, 44.131180, 22.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741810, 43.935242, 23.408104>,  <37.473507, 43.561668, 22.717056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741810, 43.935242, 23.408104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367073, 44.063839, 23.353004>,  <37.142231, 44.140999, 23.319944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367073, 44.063839, 23.353004>,  <37.741810, 43.935242, 23.408104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367073, 44.063839, 23.353004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193175, -0.147285, 0.970047,
		0.291580, 0.935386, 0.200088,
		-0.936838, 0.321498, -0.137747,
		37.086021, 44.160290, 23.311680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651585, 44.436127, 23.905340>,  <37.741810, 43.935242, 23.408104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651585, 44.436127, 23.905340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.284107, 44.312393, 23.807100>,  <37.063622, 44.238155, 23.748156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.284107, 44.312393, 23.807100>,  <37.651585, 44.436127, 23.905340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284107, 44.312393, 23.807100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174896, -0.238937, 0.955155,
		-0.354142, 0.920448, 0.165409,
		-0.918692, -0.309331, -0.245600,
		37.008499, 44.219593, 23.733421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254517, 44.758892, 24.369781>,  <37.651585, 44.436127, 23.905340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254517, 44.758892, 24.369781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.050282, 44.442272, 24.235472>,  <36.927742, 44.252300, 24.154886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.050282, 44.442272, 24.235472>,  <37.254517, 44.758892, 24.369781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050282, 44.442272, 24.235472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248688, -0.237871, 0.938920,
		-0.823077, 0.562903, -0.075396,
		-0.510586, -0.791554, -0.335774,
		36.897106, 44.204807, 24.134739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645557, 44.956696, 24.630020>,  <37.254517, 44.758892, 24.369781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645557, 44.956696, 24.630020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652287, 44.560387, 24.576212>,  <36.656322, 44.322601, 24.543926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652287, 44.560387, 24.576212>,  <36.645557, 44.956696, 24.630020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652287, 44.560387, 24.576212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378518, -0.130837, 0.916300,
		-0.925441, 0.035504, -0.377224,
		0.016823, -0.990768, -0.134521,
		36.657333, 44.263157, 24.535856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069839, 44.745350, 24.949310>,  <36.645557, 44.956696, 24.630020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069839, 44.745350, 24.949310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275650, 44.408611, 24.884119>,  <36.399136, 44.206570, 24.845003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275650, 44.408611, 24.884119>,  <36.069839, 44.745350, 24.949310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275650, 44.408611, 24.884119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279680, -0.344437, 0.896182,
		-0.810580, -0.415528, -0.412669,
		0.514527, -0.841843, -0.162979,
		36.430008, 44.156059, 24.835226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559181, 44.178673, 25.072348>,  <36.069839, 44.745350, 24.949310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559181, 44.178673, 25.072348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927471, 44.034836, 25.132957>,  <36.148445, 43.948536, 25.169323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927471, 44.034836, 25.132957>,  <35.559181, 44.178673, 25.072348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927471, 44.034836, 25.132957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310911, -0.441388, 0.841731,
		-0.235795, -0.822114, -0.518198,
		0.920726, -0.359589, 0.151527,
		36.203690, 43.926960, 25.178415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460709, 43.474098, 25.255192>,  <35.559181, 44.178673, 25.072348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460709, 43.474098, 25.255192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831120, 43.538559, 25.391716>,  <36.053368, 43.577236, 25.473631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831120, 43.538559, 25.391716>,  <35.460709, 43.474098, 25.255192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831120, 43.538559, 25.391716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189554, -0.583407, 0.789750,
		0.326395, -0.796031, -0.509706,
		0.926032, 0.161153, 0.341312,
		36.108929, 43.586906, 25.494110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962925, 42.830910, 25.174843>,  <35.460709, 43.474098, 25.255192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962925, 42.830910, 25.174843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.637161, 43.043472, 25.268097>,  <34.441704, 43.171009, 25.324049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.637161, 43.043472, 25.268097>,  <34.962925, 42.830910, 25.174843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637161, 43.043472, 25.268097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110559, 0.536478, -0.836641,
		-0.569668, -0.655590, -0.495662,
		-0.814405, 0.531407, 0.233133,
		34.392841, 43.202896, 25.338037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636215, 42.983452, 24.537582>,  <34.962925, 42.830910, 25.174843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636215, 42.983452, 24.537582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.455494, 43.231750, 24.793879>,  <34.347061, 43.380730, 24.947657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.455494, 43.231750, 24.793879>,  <34.636215, 42.983452, 24.537582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455494, 43.231750, 24.793879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042930, 0.702263, -0.710622,
		-0.891084, -0.348568, -0.290636,
		-0.451803, 0.620747, 0.640739,
		34.319954, 43.417976, 24.986101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983498, 43.246040, 24.175438>,  <34.636215, 42.983452, 24.537582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983498, 43.246040, 24.175438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102665, 43.498379, 24.462013>,  <34.174164, 43.649780, 24.633959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102665, 43.498379, 24.462013>,  <33.983498, 43.246040, 24.175438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102665, 43.498379, 24.462013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069755, 0.734124, -0.675423,
		-0.952039, 0.251196, 0.174704,
		0.297918, 0.630843, 0.716437,
		34.192039, 43.687634, 24.676945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534779, 43.684704, 24.168051>,  <33.983498, 43.246040, 24.175438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534779, 43.684704, 24.168051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824142, 43.884701, 24.358498>,  <33.997761, 44.004700, 24.472765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824142, 43.884701, 24.358498>,  <33.534779, 43.684704, 24.168051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824142, 43.884701, 24.358498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086499, 0.749802, -0.655983,
		-0.684981, 0.433360, 0.585663,
		0.723408, 0.499995, 0.476115,
		34.041164, 44.034698, 24.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200432, 44.342705, 24.353870>,  <33.534779, 43.684704, 24.168051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200432, 44.342705, 24.353870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597961, 44.381268, 24.331879>,  <33.836479, 44.404404, 24.318684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597961, 44.381268, 24.331879>,  <33.200432, 44.342705, 24.353870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597961, 44.381268, 24.331879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109780, 0.781408, -0.614289,
		-0.016259, 0.616530, 0.787164,
		0.993823, 0.096402, -0.054978,
		33.896107, 44.410187, 24.315386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334682, 45.057819, 24.543110>,  <33.200432, 44.342705, 24.353870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334682, 45.057819, 24.543110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669060, 44.945938, 24.354233>,  <33.869686, 44.878811, 24.240908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.669060, 44.945938, 24.354233>,  <33.334682, 45.057819, 24.543110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669060, 44.945938, 24.354233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099067, 0.769348, -0.631102,
		0.539798, 0.574345, 0.615423,
		0.835945, -0.279700, -0.472191,
		33.919842, 44.862030, 24.212576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790703, 45.633308, 24.583391>,  <33.334682, 45.057819, 24.543110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790703, 45.633308, 24.583391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966152, 45.419327, 24.294550>,  <34.071423, 45.290936, 24.121244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966152, 45.419327, 24.294550>,  <33.790703, 45.633308, 24.583391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966152, 45.419327, 24.294550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201866, 0.841639, -0.500894,
		0.875706, 0.073935, 0.477150,
		0.438622, -0.534956, -0.722103,
		34.097740, 45.258839, 24.077919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430573, 45.971909, 24.343397>,  <33.790703, 45.633308, 24.583391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430573, 45.971909, 24.343397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334106, 45.712158, 24.054911>,  <34.276226, 45.556309, 23.881819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.334106, 45.712158, 24.054911>,  <34.430573, 45.971909, 24.343397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334106, 45.712158, 24.054911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451093, 0.582984, -0.675755,
		0.859275, -0.488305, 0.152332,
		-0.241168, -0.649375, -0.721214,
		34.261757, 45.517345, 23.838547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957203, 45.888500, 23.925522>,  <34.430573, 45.971909, 24.343397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957203, 45.888500, 23.925522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.651402, 45.785652, 23.689072>,  <34.467922, 45.723946, 23.547201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.651402, 45.785652, 23.689072>,  <34.957203, 45.888500, 23.925522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651402, 45.785652, 23.689072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361468, 0.588285, -0.723368,
		0.533738, -0.766689, -0.356807,
		-0.764503, -0.257115, -0.591123,
		34.422050, 45.708519, 23.511734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222385, 45.808121, 23.255226>,  <34.957203, 45.888500, 23.925522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222385, 45.808121, 23.255226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831062, 45.845436, 23.181248>,  <34.596268, 45.867825, 23.136860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831062, 45.845436, 23.181248>,  <35.222385, 45.808121, 23.255226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831062, 45.845436, 23.181248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194580, 0.720087, -0.666043,
		0.071041, -0.687584, -0.722621,
		-0.978311, 0.093291, -0.184946,
		34.537571, 45.873425, 23.125765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228344, 45.816475, 22.540247>,  <35.222385, 45.808121, 23.255226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228344, 45.816475, 22.540247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879261, 45.981186, 22.645180>,  <34.669811, 46.080013, 22.708139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879261, 45.981186, 22.645180>,  <35.228344, 45.816475, 22.540247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879261, 45.981186, 22.645180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125828, 0.708847, -0.694049,
		-0.471745, -0.572695, -0.670430,
		-0.872711, 0.411773, 0.262334,
		34.617447, 46.104717, 22.723881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991627, 45.983356, 21.876183>,  <35.228344, 45.816475, 22.540247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991627, 45.983356, 21.876183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.793186, 46.221497, 22.128986>,  <34.674122, 46.364380, 22.280668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.793186, 46.221497, 22.128986>,  <34.991627, 45.983356, 21.876183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793186, 46.221497, 22.128986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040815, 0.743086, -0.667950,
		-0.867304, -0.305576, -0.392946,
		-0.496103, 0.595354, 0.632010,
		34.644356, 46.400105, 22.318590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906269, 46.436478, 21.339163>,  <34.991627, 45.983356, 21.876183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906269, 46.436478, 21.339163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816982, 46.598766, 21.693689>,  <34.763409, 46.696140, 21.906406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.816982, 46.598766, 21.693689>,  <34.906269, 46.436478, 21.339163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816982, 46.598766, 21.693689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, 0.910585, -0.413048,
		-0.974652, -0.078880, -0.209358,
		-0.223219, 0.405725, 0.886319,
		34.750015, 46.720486, 21.959585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956684, 45.678322, 21.169836>,  <34.906269, 46.436478, 21.339163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956684, 45.678322, 21.169836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602287, 45.648956, 20.986696>,  <34.389648, 45.631336, 20.876812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602287, 45.648956, 20.986696>,  <34.956684, 45.678322, 21.169836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602287, 45.648956, 20.986696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265230, -0.729678, 0.630256,
		-0.380356, 0.679838, 0.627016,
		-0.885992, -0.073418, -0.457851,
		34.336491, 45.626930, 20.849340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492695, 45.449291, 21.614157>,  <34.956684, 45.678322, 21.169836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492695, 45.449291, 21.614157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321953, 45.344940, 21.267809>,  <34.219505, 45.282330, 21.059999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321953, 45.344940, 21.267809>,  <34.492695, 45.449291, 21.614157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321953, 45.344940, 21.267809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144877, -0.925390, 0.350235,
		-0.892639, 0.274945, 0.357213,
		-0.426857, -0.260882, -0.865872,
		34.193897, 45.266674, 21.008047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829800, 45.337776, 21.620693>,  <34.492695, 45.449291, 21.614157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829800, 45.337776, 21.620693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881962, 45.101360, 21.302280>,  <33.913261, 44.959511, 21.111233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881962, 45.101360, 21.302280>,  <33.829800, 45.337776, 21.620693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881962, 45.101360, 21.302280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396462, -0.766990, 0.504523,
		-0.908742, 0.249802, -0.334346,
		0.130409, -0.591037, -0.796033,
		33.921085, 44.924049, 21.063471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170151, 44.922115, 21.510416>,  <33.829800, 45.337776, 21.620693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170151, 44.922115, 21.510416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.456753, 44.719494, 21.318571>,  <33.628712, 44.597919, 21.203465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.456753, 44.719494, 21.318571>,  <33.170151, 44.922115, 21.510416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456753, 44.719494, 21.318571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471063, -0.858439, 0.202933,
		-0.514513, 0.080526, -0.853693,
		0.716502, -0.506555, -0.479611,
		33.671703, 44.567528, 21.174688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859085, 44.417053, 21.015186>,  <33.170151, 44.922115, 21.510416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859085, 44.417053, 21.015186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218693, 44.270359, 21.110914>,  <33.434456, 44.182343, 21.168350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218693, 44.270359, 21.110914>,  <32.859085, 44.417053, 21.015186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218693, 44.270359, 21.110914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413444, -0.890940, 0.187855,
		0.144326, -0.267830, -0.952595,
		0.899018, -0.366732, 0.239318,
		33.488400, 44.160339, 21.182711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829727, 43.820152, 20.706223>,  <32.859085, 44.417053, 21.015186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829727, 43.820152, 20.706223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151302, 43.769611, 20.938679>,  <33.344246, 43.739285, 21.078152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151302, 43.769611, 20.938679>,  <32.829727, 43.820152, 20.706223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151302, 43.769611, 20.938679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235775, -0.964813, 0.116389,
		0.545985, -0.230588, -0.805438,
		0.803934, -0.126355, 0.581140,
		33.392483, 43.731705, 21.113020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091835, 43.162670, 20.538609>,  <32.829727, 43.820152, 20.706223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091835, 43.162670, 20.538609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.247810, 43.226154, 20.901432>,  <33.341396, 43.264244, 21.119127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.247810, 43.226154, 20.901432>,  <33.091835, 43.162670, 20.538609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247810, 43.226154, 20.901432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295285, -0.911465, 0.286424,
		0.872213, -0.379528, -0.308548,
		0.389937, 0.158713, 0.907061,
		33.364792, 43.273769, 21.173550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341492, 42.487495, 20.856590>,  <33.091835, 43.162670, 20.538609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341492, 42.487495, 20.856590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.320621, 42.724148, 21.178398>,  <33.308102, 42.866138, 21.371483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.320621, 42.724148, 21.178398>,  <33.341492, 42.487495, 20.856590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320621, 42.724148, 21.178398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316895, -0.773788, 0.548480,
		0.947025, -0.226332, 0.227855,
		-0.052173, 0.591630, 0.804519,
		33.304970, 42.901638, 21.419754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067154, 42.328373, 20.689016>,  <33.341492, 42.487495, 20.856590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067154, 42.328373, 20.689016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.261108, 42.065563, 20.458120>,  <34.377480, 41.907875, 20.319584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.261108, 42.065563, 20.458120>,  <34.067154, 42.328373, 20.689016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261108, 42.065563, 20.458120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053018, 0.680887, -0.730466,
		0.872970, 0.323588, 0.364986,
		0.484884, -0.657026, -0.577238,
		34.406574, 41.868454, 20.284948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624615, 42.763931, 20.519297>,  <34.067154, 42.328373, 20.689016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624615, 42.763931, 20.519297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.609272, 42.477470, 20.240540>,  <34.600067, 42.305595, 20.073286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.609272, 42.477470, 20.240540>,  <34.624615, 42.763931, 20.519297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609272, 42.477470, 20.240540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305460, 0.655621, -0.690548,
		0.951432, -0.239359, 0.193609,
		-0.038355, -0.716149, -0.696893,
		34.597767, 42.262627, 20.031471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243412, 42.747620, 20.140211>,  <34.624615, 42.763931, 20.519297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243412, 42.747620, 20.140211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.975742, 42.584541, 19.891699>,  <34.815140, 42.486694, 19.742592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.975742, 42.584541, 19.891699>,  <35.243412, 42.747620, 20.140211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975742, 42.584541, 19.891699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376505, 0.534791, -0.756467,
		0.640667, -0.740122, -0.204366,
		-0.669171, -0.407698, -0.621283,
		34.774990, 42.462231, 19.705315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609486, 42.527527, 19.419601>,  <35.243412, 42.747620, 20.140211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609486, 42.527527, 19.419601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.218018, 42.567245, 19.347670>,  <34.983135, 42.591076, 19.304510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.218018, 42.567245, 19.347670>,  <35.609486, 42.527527, 19.419601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218018, 42.567245, 19.347670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205315, 0.501345, -0.840535,
		0.006695, -0.859531, -0.511040,
		-0.978673, 0.099297, -0.179831,
		34.924416, 42.597034, 19.293720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656567, 42.649387, 18.759155>,  <35.609486, 42.527527, 19.419601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656567, 42.649387, 18.759155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.267876, 42.741413, 18.780369>,  <35.034660, 42.796631, 18.793097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.267876, 42.741413, 18.780369>,  <35.656567, 42.649387, 18.759155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267876, 42.741413, 18.780369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108261, 0.633812, -0.765873,
		-0.209816, -0.738479, -0.640801,
		-0.971729, 0.230066, 0.053036,
		34.976357, 42.810432, 18.796280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176434, 42.384163, 18.181635>,  <35.656567, 42.649387, 18.759155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176434, 42.384163, 18.181635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036896, 42.721493, 18.345154>,  <34.953175, 42.923889, 18.443264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036896, 42.721493, 18.345154>,  <35.176434, 42.384163, 18.181635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036896, 42.721493, 18.345154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065035, 0.456928, -0.887123,
		-0.934922, -0.282879, -0.214241,
		-0.348842, 0.843325, 0.408795,
		34.932243, 42.974491, 18.467793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019699, 42.815201, 17.601587>,  <35.176434, 42.384163, 18.181635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019699, 42.815201, 17.601587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953865, 43.084072, 17.890333>,  <34.914364, 43.245396, 18.063581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953865, 43.084072, 17.890333>,  <35.019699, 42.815201, 17.601587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953865, 43.084072, 17.890333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066946, 0.737772, -0.671722,
		-0.984088, -0.062232, -0.166429,
		-0.164589, 0.672175, 0.721867,
		34.904488, 43.285725, 18.106894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400894, 43.186733, 17.421316>,  <35.019699, 42.815201, 17.601587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400894, 43.186733, 17.421316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630409, 43.395523, 17.673765>,  <34.768116, 43.520798, 17.825235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.630409, 43.395523, 17.673765>,  <34.400894, 43.186733, 17.421316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630409, 43.395523, 17.673765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148813, 0.691323, -0.707055,
		-0.805374, 0.499616, 0.318994,
		0.573784, 0.521974, 0.631123,
		34.802544, 43.552116, 17.863102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235573, 43.896847, 17.384993>,  <34.400894, 43.186733, 17.421316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235573, 43.896847, 17.384993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.604237, 43.892006, 17.540115>,  <34.825436, 43.889103, 17.633190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.604237, 43.892006, 17.540115>,  <34.235573, 43.896847, 17.384993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604237, 43.892006, 17.540115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287884, 0.691426, -0.662610,
		-0.260124, 0.722346, 0.640744,
		0.921661, -0.012099, 0.387808,
		34.880733, 43.888374, 17.656458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.410728, 32.904606, 29.015055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744339, 33.112755, 29.088390>,  <35.944504, 33.237644, 29.132391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744339, 33.112755, 29.088390>,  <35.410728, 32.904606, 29.015055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744339, 33.112755, 29.088390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446497, 0.831803, -0.329765,
		-0.324103, 0.193172, 0.926090,
		0.834025, 0.520374, 0.183339,
		35.994545, 33.268867, 29.143393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200462, 33.511169, 29.335546>,  <35.410728, 32.904606, 29.015055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200462, 33.511169, 29.335546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563210, 33.612244, 29.200647>,  <35.780857, 33.672886, 29.119707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563210, 33.612244, 29.200647>,  <35.200462, 33.511169, 29.335546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563210, 33.612244, 29.200647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339921, 0.911641, -0.231007,
		0.249079, 0.324132, 0.912632,
		0.906870, 0.252684, -0.337250,
		35.835270, 33.688049, 29.099472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335587, 34.231018, 29.602158>,  <35.200462, 33.511169, 29.335546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335587, 34.231018, 29.602158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579056, 34.143970, 29.296961>,  <35.725140, 34.091743, 29.113844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579056, 34.143970, 29.296961>,  <35.335587, 34.231018, 29.602158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579056, 34.143970, 29.296961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150939, 0.912327, -0.380626,
		0.778928, 0.346843, 0.522466,
		0.608677, -0.217620, -0.762990,
		35.761658, 34.078686, 29.068064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540012, 34.871559, 29.510706>,  <35.335587, 34.231018, 29.602158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540012, 34.871559, 29.510706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625053, 34.672161, 29.174538>,  <35.676079, 34.552525, 28.972837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625053, 34.672161, 29.174538>,  <35.540012, 34.871559, 29.510706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625053, 34.672161, 29.174538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323193, 0.775801, -0.541922,
		0.922143, 0.386830, 0.003825,
		0.212599, -0.498493, -0.840420,
		35.688831, 34.522614, 28.922411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788143, 35.327221, 29.029987>,  <35.540012, 34.871559, 29.510706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788143, 35.327221, 29.029987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652954, 35.029667, 28.799368>,  <35.571842, 34.851135, 28.660995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652954, 35.029667, 28.799368>,  <35.788143, 35.327221, 29.029987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652954, 35.029667, 28.799368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365994, 0.668262, -0.647668,
		0.867077, -0.007880, -0.498111,
		-0.337972, -0.743884, -0.576551,
		35.551563, 34.806503, 28.626402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013931, 35.571686, 28.294149>,  <35.788143, 35.327221, 29.029987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013931, 35.571686, 28.294149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741013, 35.281601, 28.257175>,  <35.577263, 35.107552, 28.234991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741013, 35.281601, 28.257175>,  <36.013931, 35.571686, 28.294149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741013, 35.281601, 28.257175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509104, 0.562060, -0.651845,
		0.524681, -0.397689, -0.752698,
		-0.682292, -0.725212, -0.092437,
		35.536324, 35.064037, 28.229445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839703, 35.498928, 27.523380>,  <36.013931, 35.571686, 28.294149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839703, 35.498928, 27.523380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537834, 35.345570, 27.736349>,  <35.356712, 35.253555, 27.864130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537834, 35.345570, 27.736349>,  <35.839703, 35.498928, 27.523380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537834, 35.345570, 27.736349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648327, 0.560335, -0.515458,
		-0.100708, -0.734186, -0.671438,
		-0.754672, -0.383400, 0.532423,
		35.311432, 35.230549, 27.896076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446068, 35.260975, 27.022722>,  <35.839703, 35.498928, 27.523380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446068, 35.260975, 27.022722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238506, 35.303104, 27.362049>,  <35.113968, 35.328384, 27.565645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238506, 35.303104, 27.362049>,  <35.446068, 35.260975, 27.022722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238506, 35.303104, 27.362049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740967, 0.439436, -0.507803,
		-0.426266, -0.892078, -0.149982,
		-0.518907, 0.105327, 0.848317,
		35.082832, 35.334702, 27.616545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823864, 34.973850, 26.951969>,  <35.446068, 35.260975, 27.022722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823864, 34.973850, 26.951969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796928, 35.264729, 27.225218>,  <34.780766, 35.439255, 27.389168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796928, 35.264729, 27.225218>,  <34.823864, 34.973850, 26.951969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796928, 35.264729, 27.225218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612717, 0.510221, -0.603534,
		-0.787428, -0.459203, 0.411204,
		-0.067339, 0.727191, 0.683124,
		34.776726, 35.482887, 27.430155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126289, 35.068913, 27.029278>,  <34.823864, 34.973850, 26.951969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126289, 35.068913, 27.029278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296692, 35.407082, 27.158138>,  <34.398933, 35.609982, 27.235455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296692, 35.407082, 27.158138>,  <34.126289, 35.068913, 27.029278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296692, 35.407082, 27.158138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549837, 0.524702, -0.649898,
		-0.718472, 0.099728, 0.688370,
		0.426002, 0.845424, 0.322149,
		34.424492, 35.660709, 27.254784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618973, 35.527451, 26.855200>,  <34.126289, 35.068913, 27.029278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618973, 35.527451, 26.855200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918385, 35.779251, 26.938570>,  <34.098030, 35.930332, 26.988592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918385, 35.779251, 26.938570>,  <33.618973, 35.527451, 26.855200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918385, 35.779251, 26.938570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388130, 0.670771, -0.631998,
		-0.537647, 0.392170, 0.746417,
		0.748526, 0.629499, 0.208425,
		34.142941, 35.968102, 27.001097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295189, 36.304058, 26.887524>,  <33.618973, 35.527451, 26.855200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295189, 36.304058, 26.887524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683754, 36.398396, 26.876709>,  <33.916893, 36.454998, 26.870220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683754, 36.398396, 26.876709>,  <33.295189, 36.304058, 26.887524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683754, 36.398396, 26.876709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202903, 0.765767, -0.610271,
		-0.123228, 0.598311, 0.791731,
		0.971414, 0.235847, -0.027035,
		33.975178, 36.469151, 26.868599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054115, 36.666500, 27.509304>,  <33.295189, 36.304058, 26.887524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054115, 36.666500, 27.509304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699299, 36.849697, 27.532619>,  <32.486408, 36.959614, 27.546610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699299, 36.849697, 27.532619>,  <33.054115, 36.666500, 27.509304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699299, 36.849697, 27.532619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341668, -0.736110, 0.584299,
		0.310512, 0.498382, 0.809443,
		-0.887043, 0.457992, 0.058290,
		32.433186, 36.987095, 27.550106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903473, 36.830666, 28.234268>,  <33.054115, 36.666500, 27.509304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903473, 36.830666, 28.234268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536839, 36.818577, 28.074791>,  <32.316856, 36.811321, 27.979105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536839, 36.818577, 28.074791>,  <32.903473, 36.830666, 28.234268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536839, 36.818577, 28.074791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348527, -0.428297, 0.833721,
		-0.195958, 0.903132, 0.382038,
		-0.916586, -0.030224, -0.398694,
		32.261864, 36.809509, 27.955183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404076, 36.932247, 28.752197>,  <32.903473, 36.830666, 28.234268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404076, 36.932247, 28.752197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199936, 36.763981, 28.452175>,  <32.077454, 36.663021, 28.272161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199936, 36.763981, 28.452175>,  <32.404076, 36.932247, 28.752197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199936, 36.763981, 28.452175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497294, -0.567211, 0.656483,
		-0.701600, 0.708034, 0.080282,
		-0.510349, -0.420665, -0.750057,
		32.046833, 36.637783, 28.227158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681864, 37.194344, 28.917059>,  <32.404076, 36.932247, 28.752197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681864, 37.194344, 28.917059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724545, 36.875099, 28.679865>,  <31.750153, 36.683552, 28.537548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724545, 36.875099, 28.679865>,  <31.681864, 37.194344, 28.917059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724545, 36.875099, 28.679865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454810, -0.569517, 0.684689,
		-0.884174, 0.196640, -0.423757,
		0.106700, -0.798113, -0.592985,
		31.756554, 36.635666, 28.501970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146238, 36.839363, 29.103104>,  <31.681864, 37.194344, 28.917059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146238, 36.839363, 29.103104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343222, 36.559883, 28.895523>,  <31.461411, 36.392197, 28.770975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343222, 36.559883, 28.895523>,  <31.146238, 36.839363, 29.103104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343222, 36.559883, 28.895523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296286, -0.695233, 0.654879,
		-0.818352, -0.168742, -0.549387,
		0.492457, -0.698697, -0.518949,
		31.490959, 36.350273, 28.739838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715147, 36.254761, 29.085188>,  <31.146238, 36.839363, 29.103104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715147, 36.254761, 29.085188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087446, 36.125912, 29.015966>,  <31.310825, 36.048603, 28.974434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087446, 36.125912, 29.015966>,  <30.715147, 36.254761, 29.085188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087446, 36.125912, 29.015966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154242, -0.774952, 0.612910,
		-0.331537, -0.543773, -0.770970,
		0.930748, -0.322118, -0.173053,
		31.366671, 36.029278, 28.964050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634834, 35.517384, 29.056440>,  <30.715147, 36.254761, 29.085188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634834, 35.517384, 29.056440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028366, 35.560596, 29.113581>,  <31.264486, 35.586525, 29.147865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028366, 35.560596, 29.113581>,  <30.634834, 35.517384, 29.056440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028366, 35.560596, 29.113581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031650, -0.680186, 0.732356,
		0.176283, -0.725035, -0.665769,
		0.983831, 0.108031, 0.142853,
		31.323515, 35.593006, 29.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926994, 34.787987, 29.287838>,  <30.634834, 35.517384, 29.056440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926994, 34.787987, 29.287838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190945, 35.066841, 29.399954>,  <31.349314, 35.234154, 29.467224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190945, 35.066841, 29.399954>,  <30.926994, 34.787987, 29.287838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190945, 35.066841, 29.399954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332351, -0.605368, 0.723237,
		0.673876, -0.384090, -0.631162,
		0.659874, 0.697140, 0.280290,
		31.388906, 35.275982, 29.484041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662846, 34.423672, 29.440453>,  <30.926994, 34.787987, 29.287838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662846, 34.423672, 29.440453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657856, 34.773563, 29.634232>,  <31.654861, 34.983498, 29.750498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657856, 34.773563, 29.634232>,  <31.662846, 34.423672, 29.440453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657856, 34.773563, 29.634232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389155, -0.442039, 0.808183,
		0.921088, 0.198607, -0.334892,
		-0.012475, 0.874732, 0.484446,
		31.654114, 35.035984, 29.779566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128662, 34.269974, 29.876047>,  <31.662846, 34.423672, 29.440453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128662, 34.269974, 29.876047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966007, 34.597729, 30.037664>,  <31.868414, 34.794380, 30.134634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.966007, 34.597729, 30.037664>,  <32.128662, 34.269974, 29.876047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966007, 34.597729, 30.037664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230524, -0.335923, 0.913244,
		0.884027, 0.464502, -0.052289,
		-0.406638, 0.819386, 0.404043,
		31.844015, 34.843544, 30.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555634, 34.481804, 30.416866>,  <32.128662, 34.269974, 29.876047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555634, 34.481804, 30.416866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225075, 34.683666, 30.516781>,  <32.026741, 34.804783, 30.576729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225075, 34.683666, 30.516781>,  <32.555634, 34.481804, 30.416866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225075, 34.683666, 30.516781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145979, -0.236425, 0.960621,
		0.543838, 0.830317, 0.121711,
		-0.826396, 0.504655, 0.249785,
		31.977156, 34.835064, 30.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695763, 34.851860, 30.992178>,  <32.555634, 34.481804, 30.416866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695763, 34.851860, 30.992178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296593, 34.827148, 30.999376>,  <32.057091, 34.812321, 31.003696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296593, 34.827148, 30.999376>,  <32.695763, 34.851860, 30.992178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296593, 34.827148, 30.999376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023587, -0.090989, 0.995573,
		-0.059869, 0.993934, 0.092258,
		-0.997927, -0.061780, 0.017997,
		31.997215, 34.808613, 31.004776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494686, 35.272861, 31.529865>,  <32.695763, 34.851860, 30.992178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494686, 35.272861, 31.529865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189415, 35.024616, 31.457857>,  <32.006252, 34.875671, 31.414652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189415, 35.024616, 31.457857>,  <32.494686, 35.272861, 31.529865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189415, 35.024616, 31.457857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032271, -0.241636, 0.969830,
		-0.645387, 0.745958, 0.164382,
		-0.763173, -0.620611, -0.180022,
		31.960463, 34.838432, 31.403851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855911, 35.485847, 31.944206>,  <32.494686, 35.272861, 31.529865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855911, 35.485847, 31.944206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824053, 35.096272, 31.859259>,  <31.804937, 34.862526, 31.808290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824053, 35.096272, 31.859259>,  <31.855911, 35.485847, 31.944206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824053, 35.096272, 31.859259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142600, -0.199722, 0.969421,
		-0.986571, 0.107492, -0.122977,
		-0.079644, -0.973939, -0.212368,
		31.800159, 34.804089, 31.795547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843487, 36.264984, 32.154263>,  <31.855911, 35.485847, 31.944206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843487, 36.264984, 32.154263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480942, 36.358604, 32.013565>,  <31.263414, 36.414776, 31.929146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480942, 36.358604, 32.013565>,  <31.843487, 36.264984, 32.154263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480942, 36.358604, 32.013565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216606, -0.457386, -0.862485,
		-0.362745, -0.857917, 0.363862,
		-0.906366, 0.234047, -0.351744,
		31.209032, 36.428818, 31.908041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934715, 36.028893, 32.873463>,  <31.843487, 36.264984, 32.154263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934715, 36.028893, 32.873463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276424, 36.174721, 33.021683>,  <32.481449, 36.262218, 33.110615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276424, 36.174721, 33.021683>,  <31.934715, 36.028893, 32.873463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276424, 36.174721, 33.021683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115430, 0.828082, -0.548595,
		-0.506850, 0.425876, 0.749488,
		0.854271, 0.364569, 0.370554,
		32.532707, 36.284092, 33.132851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858246, 36.743534, 33.118893>,  <31.934715, 36.028893, 32.873463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858246, 36.743534, 33.118893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222038, 36.661728, 32.974106>,  <32.440315, 36.612644, 32.887234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222038, 36.661728, 32.974106>,  <31.858246, 36.743534, 33.118893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222038, 36.661728, 32.974106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009108, 0.860633, -0.509145,
		0.415647, 0.466354, 0.780866,
		0.909480, -0.204513, -0.361967,
		32.494881, 36.600372, 32.865517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337845, 37.267090, 33.253563>,  <31.858246, 36.743534, 33.118893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337845, 37.267090, 33.253563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480263, 37.078705, 32.930717>,  <32.565712, 36.965675, 32.737011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480263, 37.078705, 32.930717>,  <32.337845, 37.267090, 33.253563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480263, 37.078705, 32.930717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003152, 0.864313, -0.502945,
		0.934465, 0.176526, 0.309216,
		0.356042, -0.470958, -0.807114,
		32.587074, 36.937416, 32.688583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755726, 37.881870, 32.916523>,  <32.337845, 37.267090, 33.253563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755726, 37.881870, 32.916523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682442, 37.596386, 32.646099>,  <32.638474, 37.425095, 32.483845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682442, 37.596386, 32.646099>,  <32.755726, 37.881870, 32.916523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682442, 37.596386, 32.646099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129792, 0.664115, -0.736278,
		0.974469, -0.222638, -0.029037,
		-0.183207, -0.713711, -0.676056,
		32.627480, 37.382271, 32.443283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090759, 38.156563, 32.388676>,  <32.755726, 37.881870, 32.916523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090759, 38.156563, 32.388676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849091, 37.887001, 32.218575>,  <32.704090, 37.725266, 32.116512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849091, 37.887001, 32.218575>,  <33.090759, 38.156563, 32.388676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849091, 37.887001, 32.218575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179109, 0.634852, -0.751587,
		0.776467, -0.377918, -0.504259,
		-0.604168, -0.673900, -0.425254,
		32.667839, 37.684830, 32.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341396, 38.182789, 31.716429>,  <33.090759, 38.156563, 32.388676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341396, 38.182789, 31.716429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987228, 37.996944, 31.711369>,  <32.774727, 37.885437, 31.708332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987228, 37.996944, 31.711369>,  <33.341396, 38.182789, 31.716429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987228, 37.996944, 31.711369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220261, 0.443412, -0.868833,
		0.409275, -0.766502, -0.494943,
		-0.885426, -0.464608, -0.012647,
		32.721600, 37.857559, 31.707573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323765, 37.740242, 31.093489>,  <33.341396, 38.182789, 31.716429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323765, 37.740242, 31.093489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945858, 37.824291, 31.194092>,  <32.719112, 37.874722, 31.254454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945858, 37.824291, 31.194092>,  <33.323765, 37.740242, 31.093489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945858, 37.824291, 31.194092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143777, 0.423898, -0.894225,
		-0.294510, -0.880999, -0.370276,
		-0.944771, 0.210121, 0.251510,
		32.662426, 37.887329, 31.269545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076942, 37.745449, 30.416702>,  <33.323765, 37.740242, 31.093489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076942, 37.745449, 30.416702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798210, 37.917969, 30.645931>,  <32.630970, 38.021481, 30.783468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798210, 37.917969, 30.645931>,  <33.076942, 37.745449, 30.416702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798210, 37.917969, 30.645931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324250, 0.523255, -0.788078,
		-0.639760, -0.734973, -0.224770,
		-0.696828, 0.431298, 0.573073,
		32.589161, 38.047359, 30.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406761, 37.712986, 30.011131>,  <33.076942, 37.745449, 30.416702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406761, 37.712986, 30.011131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390991, 38.010208, 30.278358>,  <32.381531, 38.188541, 30.438694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390991, 38.010208, 30.278358>,  <32.406761, 37.712986, 30.011131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390991, 38.010208, 30.278358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435465, 0.588980, -0.680789,
		-0.899342, -0.317757, 0.300356,
		-0.039422, 0.743056, 0.668067,
		32.379166, 38.233124, 30.478779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897507, 38.130260, 29.643864>,  <32.406761, 37.712986, 30.011131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897507, 38.130260, 29.643864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015434, 38.362392, 29.947519>,  <32.086189, 38.501671, 30.129713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015434, 38.362392, 29.947519>,  <31.897507, 38.130260, 29.643864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015434, 38.362392, 29.947519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239632, 0.813967, -0.529183,
		-0.925018, -0.025901, 0.379039,
		0.294819, 0.580334, 0.759140,
		32.103882, 38.536491, 30.175261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268873, 38.618279, 29.876972>,  <31.897507, 38.130260, 29.643864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268873, 38.618279, 29.876972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.619057, 38.792175, 29.961412>,  <31.829166, 38.896515, 30.012077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.619057, 38.792175, 29.961412>,  <31.268873, 38.618279, 29.876972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619057, 38.792175, 29.961412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263522, 0.795567, -0.545554,
		-0.405124, 0.421981, 0.811053,
		0.875461, 0.434747, 0.211102,
		31.881695, 38.922600, 30.024742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099651, 39.304230, 29.803698>,  <31.268873, 38.618279, 29.876972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099651, 39.304230, 29.803698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497568, 39.293293, 29.764431>,  <31.736319, 39.286732, 29.740871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497568, 39.293293, 29.764431>,  <31.099651, 39.304230, 29.803698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497568, 39.293293, 29.764431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036366, 0.804628, -0.592665,
		0.095194, 0.593150, 0.799444,
		0.994794, -0.027346, -0.098166,
		31.796007, 39.285088, 29.734982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328215, 39.966545, 29.845322>,  <31.099651, 39.304230, 29.803698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328215, 39.966545, 29.845322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633028, 39.787800, 29.657867>,  <31.815916, 39.680553, 29.545395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633028, 39.787800, 29.657867>,  <31.328215, 39.966545, 29.845322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633028, 39.787800, 29.657867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001957, 0.725307, -0.688423,
		0.647534, 0.523685, 0.553583,
		0.762034, -0.446861, -0.468636,
		31.861639, 39.653740, 29.517277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827728, 40.487736, 29.839415>,  <31.328215, 39.966545, 29.845322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827728, 40.487736, 29.839415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898251, 40.220741, 29.550035>,  <31.940563, 40.060543, 29.376408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898251, 40.220741, 29.550035>,  <31.827728, 40.487736, 29.839415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898251, 40.220741, 29.550035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274900, 0.739107, -0.614940,
		0.945170, -0.090460, 0.313799,
		0.176303, -0.667486, -0.723450,
		31.951141, 40.020496, 29.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348518, 40.704006, 29.610380>,  <31.827728, 40.487736, 29.839415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348518, 40.704006, 29.610380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254055, 40.462193, 29.306072>,  <32.197376, 40.317104, 29.123487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254055, 40.462193, 29.306072>,  <32.348518, 40.704006, 29.610380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254055, 40.462193, 29.306072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433054, 0.635391, -0.639329,
		0.869882, -0.480435, 0.111745,
		-0.236154, -0.604533, -0.760770,
		32.183208, 40.280834, 29.077841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032230, 40.656719, 29.199623>,  <32.348518, 40.704006, 29.610380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032230, 40.656719, 29.199623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701488, 40.569790, 28.992130>,  <32.503044, 40.517632, 28.867634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701488, 40.569790, 28.992130>,  <33.032230, 40.656719, 29.199623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701488, 40.569790, 28.992130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382517, 0.458851, -0.801958,
		0.412305, -0.861526, -0.296273,
		-0.826853, -0.217322, -0.518735,
		32.453434, 40.504593, 28.836510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327610, 40.540527, 28.586473>,  <33.032230, 40.656719, 29.199623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327610, 40.540527, 28.586473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945465, 40.601761, 28.485403>,  <32.716179, 40.638500, 28.424761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945465, 40.601761, 28.485403>,  <33.327610, 40.540527, 28.586473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945465, 40.601761, 28.485403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295392, 0.508348, -0.808904,
		0.004619, -0.847437, -0.530876,
		-0.955365, 0.153080, -0.252674,
		32.658855, 40.647686, 28.409601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245789, 40.340351, 27.869524>,  <33.327610, 40.540527, 28.586473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245789, 40.340351, 27.869524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939041, 40.588436, 27.935556>,  <32.754993, 40.737286, 27.975176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939041, 40.588436, 27.935556>,  <33.245789, 40.340351, 27.869524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939041, 40.588436, 27.935556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394733, 0.658599, -0.640650,
		-0.506059, -0.426133, -0.749877,
		-0.766870, 0.620208, 0.165082,
		32.708981, 40.774498, 27.985081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050610, 40.687008, 27.269669>,  <33.245789, 40.340351, 27.869524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050610, 40.687008, 27.269669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896919, 40.944019, 27.534855>,  <32.804703, 41.098225, 27.693966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896919, 40.944019, 27.534855>,  <33.050610, 40.687008, 27.269669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896919, 40.944019, 27.534855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299796, 0.766007, -0.568644,
		-0.873207, -0.019736, -0.486950,
		-0.384230, 0.642529, 0.662966,
		32.781651, 41.136780, 27.733744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541912, 41.072544, 26.927343>,  <33.050610, 40.687008, 27.269669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541912, 41.072544, 26.927343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674065, 41.295414, 27.232080>,  <32.753357, 41.429138, 27.414923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674065, 41.295414, 27.232080>,  <32.541912, 41.072544, 26.927343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674065, 41.295414, 27.232080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224761, 0.737502, -0.636846,
		-0.916696, 0.381634, 0.118424,
		0.330380, 0.557177, 0.761842,
		32.773178, 41.462566, 27.460632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349525, 41.755894, 26.866041>,  <32.541912, 41.072544, 26.927343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349525, 41.755894, 26.866041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640049, 41.798855, 27.137613>,  <32.814362, 41.824631, 27.300556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640049, 41.798855, 27.137613>,  <32.349525, 41.755894, 26.866041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640049, 41.798855, 27.137613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381526, 0.758612, -0.528153,
		-0.571766, 0.642630, 0.510010,
		0.726307, 0.107399, 0.678929,
		32.857941, 41.831074, 27.341291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329994, 42.452976, 27.004976>,  <32.349525, 41.755894, 26.866041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329994, 42.452976, 27.004976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696045, 42.309090, 27.077797>,  <32.915676, 42.222759, 27.121490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696045, 42.309090, 27.077797>,  <32.329994, 42.452976, 27.004976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696045, 42.309090, 27.077797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394197, 0.703677, -0.591141,
		0.084534, 0.612736, 0.785754,
		0.915130, -0.359713, 0.182054,
		32.970585, 42.201176, 27.132414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784939, 43.021282, 27.008743>,  <32.329994, 42.452976, 27.004976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784939, 43.021282, 27.008743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035618, 42.712822, 26.963882>,  <33.186024, 42.527744, 26.936966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035618, 42.712822, 26.963882>,  <32.784939, 43.021282, 27.008743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035618, 42.712822, 26.963882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568976, 0.551158, -0.610320,
		0.532463, 0.318673, 0.784175,
		0.626697, -0.771150, -0.112154,
		33.223625, 42.481476, 26.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363613, 43.324432, 26.966352>,  <32.784939, 43.021282, 27.008743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363613, 43.324432, 26.966352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499294, 42.971725, 26.835253>,  <33.580704, 42.760101, 26.756592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499294, 42.971725, 26.835253>,  <33.363613, 43.324432, 26.966352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499294, 42.971725, 26.835253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566714, 0.469633, -0.676963,
		0.750849, 0.043888, 0.659014,
		0.339206, -0.881770, -0.327751,
		33.601055, 42.707195, 26.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174427, 43.309128, 26.982351>,  <33.363613, 43.324432, 26.966352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174427, 43.309128, 26.982351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020924, 43.045937, 26.723185>,  <33.928822, 42.888023, 26.567684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020924, 43.045937, 26.723185>,  <34.174427, 43.309128, 26.982351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020924, 43.045937, 26.723185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569942, 0.383289, -0.726812,
		0.726566, -0.648193, 0.227920,
		-0.383755, -0.657978, -0.647917,
		33.905796, 42.848541, 26.528809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735146, 43.175838, 26.599207>,  <34.174427, 43.309128, 26.982351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735146, 43.175838, 26.599207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427959, 43.039352, 26.382393>,  <34.243649, 42.957458, 26.252304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427959, 43.039352, 26.382393>,  <34.735146, 43.175838, 26.599207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427959, 43.039352, 26.382393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428830, 0.354674, -0.830849,
		0.475747, -0.870503, -0.126052,
		-0.767965, -0.341219, -0.542033,
		34.197571, 42.936989, 26.219784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023624, 42.813400, 26.033831>,  <34.735146, 43.175838, 26.599207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023624, 42.813400, 26.033831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654308, 42.927135, 25.930531>,  <34.432720, 42.995377, 25.868551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654308, 42.927135, 25.930531>,  <35.023624, 42.813400, 26.033831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654308, 42.927135, 25.930531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313145, 0.167842, -0.934756,
		-0.222441, -0.943918, -0.244006,
		-0.923288, 0.284337, -0.258248,
		34.377323, 43.012436, 25.853056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703014, 42.848213, 25.692776>,  <35.023624, 42.813400, 26.033831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703014, 42.848213, 25.692776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962017, 43.134724, 25.796843>,  <36.117420, 43.306629, 25.859283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962017, 43.134724, 25.796843>,  <35.703014, 42.848213, 25.692776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962017, 43.134724, 25.796843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022658, -0.359345, 0.932930,
		0.761721, -0.598186, -0.248908,
		0.647509, 0.716272, 0.260167,
		36.156269, 43.349606, 25.874893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160213, 42.524792, 26.090065>,  <35.703014, 42.848213, 25.692776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160213, 42.524792, 26.090065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232208, 42.903652, 26.196278>,  <36.275406, 43.130970, 26.260006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232208, 42.903652, 26.196278>,  <36.160213, 42.524792, 26.090065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232208, 42.903652, 26.196278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009034, -0.271520, 0.962391,
		0.983628, -0.170816, -0.057426,
		0.179983, 0.947153, 0.265532,
		36.286201, 43.187798, 26.275936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705364, 42.577309, 26.600574>,  <36.160213, 42.524792, 26.090065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705364, 42.577309, 26.600574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515472, 42.923824, 26.662769>,  <36.401535, 43.131733, 26.700087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515472, 42.923824, 26.662769>,  <36.705364, 42.577309, 26.600574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515472, 42.923824, 26.662769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063815, -0.210076, 0.975600,
		0.877813, 0.453228, 0.155012,
		-0.474734, 0.866287, 0.155485,
		36.373051, 43.183712, 26.709415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089127, 42.680573, 27.125582>,  <36.705364, 42.577309, 26.600574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089127, 42.680573, 27.125582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782131, 42.934555, 27.160902>,  <36.597935, 43.086945, 27.182095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782131, 42.934555, 27.160902>,  <37.089127, 42.680573, 27.125582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782131, 42.934555, 27.160902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055738, -0.203315, 0.977526,
		0.638636, 0.745317, 0.191433,
		-0.767487, 0.634953, 0.088302,
		36.551884, 43.125042, 27.187393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150135, 43.160164, 27.707619>,  <37.089127, 42.680573, 27.125582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150135, 43.160164, 27.707619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758629, 43.134174, 27.629850>,  <36.523724, 43.118580, 27.583189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758629, 43.134174, 27.629850>,  <37.150135, 43.160164, 27.707619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758629, 43.134174, 27.629850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175705, -0.222609, 0.958944,
		-0.105587, 0.972740, 0.206465,
		-0.978764, -0.064975, -0.194420,
		36.465000, 43.114681, 27.571524>
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
