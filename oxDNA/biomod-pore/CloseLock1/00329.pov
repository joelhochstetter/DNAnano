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
	<24.229752, 34.823265, 34.725185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285843, 34.953590, 35.099178>,  <24.319498, 35.031784, 35.323574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285843, 34.953590, 35.099178>,  <24.229752, 34.823265, 34.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285843, 34.953590, 35.099178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898871, 0.354070, -0.258195,
		-0.415170, 0.876631, -0.243212,
		0.140228, 0.325811, 0.934978,
		24.327911, 35.051334, 35.379673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522833, 35.522121, 34.743145>,  <24.229752, 34.823265, 34.725185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522833, 35.522121, 34.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637646, 35.307274, 35.060413>,  <24.706533, 35.178368, 35.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637646, 35.307274, 35.060413>,  <24.522833, 35.522121, 34.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637646, 35.307274, 35.060413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954972, 0.225375, -0.192964,
		-0.075118, 0.812843, 0.577619,
		0.287031, -0.537115, 0.793172,
		24.723755, 35.146141, 35.298367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872847, 36.166008, 34.684673>,  <24.522833, 35.522121, 34.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872847, 36.166008, 34.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229740, 35.985455, 34.679367>,  <25.443876, 35.877125, 34.676186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229740, 35.985455, 34.679367>,  <24.872847, 36.166008, 34.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229740, 35.985455, 34.679367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190995, 0.403820, -0.894679,
		0.409196, 0.795730, 0.446513,
		0.892233, -0.451380, -0.013261,
		25.497410, 35.850040, 34.675388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354935, 36.583965, 34.632786>,  <24.872847, 36.166008, 34.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354935, 36.583965, 34.632786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496237, 36.240150, 34.485054>,  <25.581018, 36.033863, 34.396416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496237, 36.240150, 34.485054>,  <25.354935, 36.583965, 34.632786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496237, 36.240150, 34.485054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081436, 0.421541, -0.903145,
		0.931975, 0.288965, 0.218910,
		0.353257, -0.859536, -0.369333,
		25.602215, 35.982288, 34.374252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061684, 36.625496, 34.279209>,  <25.354935, 36.583965, 34.632786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061684, 36.625496, 34.279209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862410, 36.322002, 34.111340>,  <25.742846, 36.139904, 34.010616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862410, 36.322002, 34.111340>,  <26.061684, 36.625496, 34.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862410, 36.322002, 34.111340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054827, 0.510614, -0.858060,
		0.865336, -0.404463, -0.295980,
		-0.498185, -0.758738, -0.419677,
		25.712954, 36.094379, 33.985435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431730, 36.434208, 33.558968>,  <26.061684, 36.625496, 34.279209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431730, 36.434208, 33.558968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073000, 36.262226, 33.517319>,  <25.857761, 36.159039, 33.492329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073000, 36.262226, 33.517319>,  <26.431730, 36.434208, 33.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073000, 36.262226, 33.517319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022545, 0.279479, -0.959887,
		0.441807, -0.858505, -0.260338,
		-0.896827, -0.429954, -0.104121,
		25.803951, 36.133240, 33.486084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343225, 36.010838, 32.875732>,  <26.431730, 36.434208, 33.558968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343225, 36.010838, 32.875732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988165, 36.140118, 33.006954>,  <25.775129, 36.217686, 33.085686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988165, 36.140118, 33.006954>,  <26.343225, 36.010838, 32.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988165, 36.140118, 33.006954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194779, 0.382013, -0.903398,
		-0.417299, -0.865799, -0.276141,
		-0.887650, 0.323201, 0.328053,
		25.721870, 36.237080, 33.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845392, 35.801010, 32.389542>,  <26.343225, 36.010838, 32.875732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845392, 35.801010, 32.389542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606930, 36.065380, 32.571873>,  <25.463852, 36.224003, 32.681271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606930, 36.065380, 32.571873>,  <25.845392, 35.801010, 32.389542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606930, 36.065380, 32.571873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258284, 0.379691, -0.888327,
		-0.760189, -0.647315, -0.055649,
		-0.596156, 0.660923, 0.455828,
		25.428083, 36.263657, 32.708622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148991, 35.878349, 32.044880>,  <25.845392, 35.801010, 32.389542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148991, 35.878349, 32.044880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197975, 36.227455, 32.233894>,  <25.227365, 36.436916, 32.347301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197975, 36.227455, 32.233894>,  <25.148991, 35.878349, 32.044880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197975, 36.227455, 32.233894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381339, 0.480948, -0.789474,
		-0.916288, -0.083516, 0.391716,
		0.122462, 0.872763, 0.472535,
		25.234715, 36.489285, 32.375656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626139, 36.208080, 31.735102>,  <25.148991, 35.878349, 32.044880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626139, 36.208080, 31.735102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825598, 36.503780, 31.916149>,  <24.945272, 36.681198, 32.024776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825598, 36.503780, 31.916149>,  <24.626139, 36.208080, 31.735102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825598, 36.503780, 31.916149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232042, 0.616955, -0.752013,
		-0.835170, 0.269961, 0.479178,
		0.498646, 0.739248, 0.452620,
		24.975191, 36.725555, 32.051937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188002, 36.891731, 31.788967>,  <24.626139, 36.208080, 31.735102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188002, 36.891731, 31.788967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572420, 37.000965, 31.806007>,  <24.803072, 37.066505, 31.816231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572420, 37.000965, 31.806007>,  <24.188002, 36.891731, 31.788967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572420, 37.000965, 31.806007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125540, 0.568629, -0.812958,
		-0.246226, 0.775943, 0.580762,
		0.961048, 0.273080, 0.042600,
		24.860735, 37.082890, 31.818787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139128, 37.547245, 31.589247>,  <24.188002, 36.891731, 31.788967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139128, 37.547245, 31.589247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529558, 37.462833, 31.568306>,  <24.763817, 37.412186, 31.555740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529558, 37.462833, 31.568306>,  <24.139128, 37.547245, 31.589247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529558, 37.462833, 31.568306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126803, 0.748099, -0.651359,
		0.176621, 0.629138, 0.756961,
		0.976077, -0.211028, -0.052354,
		24.822382, 37.399525, 31.552599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551020, 38.151539, 31.604599>,  <24.139128, 37.547245, 31.589247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551020, 38.151539, 31.604599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764275, 37.886440, 31.394255>,  <24.892227, 37.727383, 31.268047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764275, 37.886440, 31.394255>,  <24.551020, 38.151539, 31.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764275, 37.886440, 31.394255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220407, 0.708906, -0.669981,
		0.816813, 0.241289, 0.524019,
		0.533139, -0.662746, -0.525862,
		24.924215, 37.687618, 31.236496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815649, 38.606247, 31.191534>,  <24.551020, 38.151539, 31.604599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815649, 38.606247, 31.191534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905115, 38.251450, 31.029930>,  <24.958796, 38.038570, 30.932968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905115, 38.251450, 31.029930>,  <24.815649, 38.606247, 31.191534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905115, 38.251450, 31.029930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214463, 0.449139, -0.867340,
		0.950778, 0.107349, 0.290684,
		0.223666, -0.886989, -0.404009,
		24.972216, 37.985352, 30.908728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517160, 38.664898, 30.899040>,  <24.815649, 38.606247, 31.191534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517160, 38.664898, 30.899040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306925, 38.383511, 30.707670>,  <25.180782, 38.214680, 30.592848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306925, 38.383511, 30.707670>,  <25.517160, 38.664898, 30.899040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306925, 38.383511, 30.707670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139169, 0.483693, -0.864102,
		0.839278, -0.520746, -0.156324,
		-0.525590, -0.703466, -0.478424,
		25.149248, 38.172470, 30.564142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835732, 38.517963, 30.318150>,  <25.517160, 38.664898, 30.899040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835732, 38.517963, 30.318150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496893, 38.336025, 30.208206>,  <25.293591, 38.226864, 30.142241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496893, 38.336025, 30.208206>,  <25.835732, 38.517963, 30.318150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496893, 38.336025, 30.208206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134057, 0.317583, -0.938706,
		0.514253, -0.832021, -0.208049,
		-0.847097, -0.454842, -0.274857,
		25.242764, 38.199574, 30.125750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961903, 38.232964, 29.640482>,  <25.835732, 38.517963, 30.318150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961903, 38.232964, 29.640482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563742, 38.220760, 29.676798>,  <25.324844, 38.213440, 29.698587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563742, 38.220760, 29.676798>,  <25.961903, 38.232964, 29.640482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563742, 38.220760, 29.676798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095492, 0.242512, -0.965437,
		0.007435, -0.969669, -0.244310,
		-0.995403, -0.030508, 0.090792,
		25.265121, 38.211609, 29.704035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681774, 37.883854, 29.024660>,  <25.961903, 38.232964, 29.640482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681774, 37.883854, 29.024660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391811, 38.131809, 29.144823>,  <25.217833, 38.280582, 29.216921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391811, 38.131809, 29.144823>,  <25.681774, 37.883854, 29.024660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391811, 38.131809, 29.144823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097163, 0.523756, -0.846309,
		-0.681958, -0.584308, -0.439906,
		-0.724909, 0.619890, 0.300406,
		25.174339, 38.317776, 29.234945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355225, 38.077446, 28.438643>,  <25.681774, 37.883854, 29.024660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355225, 38.077446, 28.438643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228470, 38.364777, 28.686382>,  <25.152416, 38.537174, 28.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228470, 38.364777, 28.686382>,  <25.355225, 38.077446, 28.438643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228470, 38.364777, 28.686382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144947, 0.682008, -0.716837,
		-0.937322, -0.137384, -0.320239,
		-0.316887, 0.718325, 0.619348,
		25.133404, 38.580273, 28.872187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738459, 38.416256, 28.139626>,  <25.355225, 38.077446, 28.438643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738459, 38.416256, 28.139626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863361, 38.698166, 28.394432>,  <24.938303, 38.867313, 28.547316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863361, 38.698166, 28.394432>,  <24.738459, 38.416256, 28.139626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863361, 38.698166, 28.394432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080245, 0.687716, -0.721531,
		-0.946603, 0.174185, 0.271298,
		0.312256, 0.704774, 0.637016,
		24.957039, 38.909599, 28.585537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271740, 39.033733, 28.080788>,  <24.738459, 38.416256, 28.139626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271740, 39.033733, 28.080788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617659, 39.174973, 28.223585>,  <24.825211, 39.259716, 28.309263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617659, 39.174973, 28.223585>,  <24.271740, 39.033733, 28.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617659, 39.174973, 28.223585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027296, 0.676865, -0.735601,
		-0.501379, 0.645890, 0.575713,
		0.864797, 0.353100, 0.356996,
		24.877098, 39.280903, 28.330685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147833, 39.663158, 28.022034>,  <24.271740, 39.033733, 28.080788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147833, 39.663158, 28.022034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545673, 39.626663, 28.041800>,  <24.784378, 39.604767, 28.053659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545673, 39.626663, 28.041800>,  <24.147833, 39.663158, 28.022034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545673, 39.626663, 28.041800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102691, 0.797524, -0.594482,
		0.014829, 0.596348, 0.802589,
		0.994603, -0.091234, 0.049413,
		24.844055, 39.599293, 28.056623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297638, 40.404266, 27.917784>,  <24.147833, 39.663158, 28.022034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297638, 40.404266, 27.917784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621498, 40.175819, 27.863680>,  <24.815815, 40.038754, 27.831217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621498, 40.175819, 27.863680>,  <24.297638, 40.404266, 27.917784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621498, 40.175819, 27.863680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330974, 0.634613, -0.698371,
		0.484688, 0.520669, 0.702838,
		0.809650, -0.571113, -0.135261,
		24.864393, 40.004486, 27.823101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926765, 40.857452, 27.904337>,  <24.297638, 40.404266, 27.917784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926765, 40.857452, 27.904337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033583, 40.527866, 27.704430>,  <25.097673, 40.330116, 27.584486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033583, 40.527866, 27.704430>,  <24.926765, 40.857452, 27.904337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033583, 40.527866, 27.704430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408362, 0.566492, -0.715771,
		0.872886, -0.012945, 0.487753,
		0.267042, -0.823966, -0.499769,
		25.113695, 40.280678, 27.554499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596254, 40.955193, 27.688862>,  <24.926765, 40.857452, 27.904337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596254, 40.955193, 27.688862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435654, 40.670753, 27.457993>,  <25.339293, 40.500088, 27.319471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435654, 40.670753, 27.457993>,  <25.596254, 40.955193, 27.688862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435654, 40.670753, 27.457993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296518, 0.495329, -0.816533,
		0.866529, -0.498983, 0.011979,
		-0.401503, -0.711102, -0.577174,
		25.315203, 40.457424, 27.284840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030390, 40.757313, 27.231997>,  <25.596254, 40.955193, 27.688862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030390, 40.757313, 27.231997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686985, 40.663948, 27.049360>,  <25.480942, 40.607929, 26.939779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686985, 40.663948, 27.049360>,  <26.030390, 40.757313, 27.231997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686985, 40.663948, 27.049360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282361, 0.528085, -0.800874,
		0.428049, -0.816484, -0.387463,
		-0.858514, -0.233409, -0.456589,
		25.429432, 40.593925, 26.912384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079073, 40.358555, 26.579384>,  <26.030390, 40.757313, 27.231997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079073, 40.358555, 26.579384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757027, 40.595360, 26.564917>,  <25.563799, 40.737442, 26.556236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757027, 40.595360, 26.564917>,  <26.079073, 40.358555, 26.579384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757027, 40.595360, 26.564917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406549, 0.506435, -0.760421,
		-0.431862, -0.626932, -0.648422,
		-0.805117, 0.592013, -0.036169,
		25.515491, 40.772964, 26.554066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810837, 40.346558, 26.924761>,  <26.079073, 40.358555, 26.579384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810837, 40.346558, 26.924761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733587, 39.989113, 26.762691>,  <26.687237, 39.774647, 26.665449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733587, 39.989113, 26.762691>,  <26.810837, 40.346558, 26.924761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733587, 39.989113, 26.762691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844192, 0.361786, -0.395539,
		0.500044, 0.265658, -0.824246,
		-0.193123, -0.893609, -0.405176,
		26.675650, 39.721031, 26.641138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876848, 41.026920, 26.900990>,  <26.810837, 40.346558, 26.924761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876848, 41.026920, 26.900990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786539, 41.087021, 27.285999>,  <26.732353, 41.123081, 27.517004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786539, 41.087021, 27.285999>,  <26.876848, 41.026920, 26.900990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786539, 41.087021, 27.285999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956438, 0.221896, 0.189708,
		-0.185076, 0.963425, -0.193803,
		-0.225773, 0.150250, 0.962523,
		26.718807, 41.132095, 27.574757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547932, 40.679482, 26.855803>,  <26.876848, 41.026920, 26.900990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547932, 40.679482, 26.855803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759670, 40.555061, 27.171534>,  <27.886713, 40.480408, 27.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759670, 40.555061, 27.171534>,  <27.547932, 40.679482, 26.855803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759670, 40.555061, 27.171534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747805, -0.610499, 0.260920,
		0.400725, -0.728381, -0.555770,
		0.529346, -0.311050, 0.789329,
		27.918474, 40.461746, 27.408333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411442, 39.989693, 26.780920>,  <27.547932, 40.679482, 26.855803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411442, 39.989693, 26.780920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551512, 40.053371, 27.150143>,  <27.635553, 40.091579, 27.371677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551512, 40.053371, 27.150143>,  <27.411442, 39.989693, 26.780920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551512, 40.053371, 27.150143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731728, -0.568720, 0.375676,
		0.584768, -0.806978, -0.082660,
		0.350172, 0.159198, 0.923057,
		27.656563, 40.101131, 27.427059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401014, 39.259022, 27.102022>,  <27.411442, 39.989693, 26.780920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401014, 39.259022, 27.102022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438660, 39.540607, 27.383614>,  <27.461246, 39.709557, 27.552568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438660, 39.540607, 27.383614>,  <27.401014, 39.259022, 27.102022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438660, 39.540607, 27.383614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822490, -0.343438, 0.453389,
		0.560940, -0.621683, 0.546678,
		0.094114, 0.703960, 0.703976,
		27.466894, 39.751797, 27.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985090, 39.298294, 27.662621>,  <27.401014, 39.259022, 27.102022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985090, 39.298294, 27.662621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374193, 39.265430, 27.575909>,  <28.607655, 39.245712, 27.523882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374193, 39.265430, 27.575909>,  <27.985090, 39.298294, 27.662621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374193, 39.265430, 27.575909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025742, -0.967589, 0.251216,
		-0.230392, -0.238792, -0.943344,
		0.972757, -0.082161, -0.216778,
		28.666021, 39.240784, 27.510876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241297, 38.755589, 27.203810>,  <27.985090, 39.298294, 27.662621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241297, 38.755589, 27.203810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516380, 38.830460, 27.484386>,  <28.681431, 38.875381, 27.652733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516380, 38.830460, 27.484386>,  <28.241297, 38.755589, 27.203810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516380, 38.830460, 27.484386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075365, -0.942563, 0.325415,
		0.722064, -0.276655, -0.634102,
		0.687709, 0.187182, 0.701441,
		28.722692, 38.886616, 27.694818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676504, 38.216175, 27.230539>,  <28.241297, 38.755589, 27.203810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676504, 38.216175, 27.230539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716890, 38.370201, 27.597479>,  <28.741121, 38.462616, 27.817642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716890, 38.370201, 27.597479>,  <28.676504, 38.216175, 27.230539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716890, 38.370201, 27.597479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131973, -0.908730, 0.395970,
		0.986098, -0.161044, -0.040931,
		0.100963, 0.385063, 0.917351,
		28.747179, 38.485722, 27.872684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086908, 37.760399, 27.734741>,  <28.676504, 38.216175, 27.230539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086908, 37.760399, 27.734741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829514, 37.999630, 27.925837>,  <28.675077, 38.143169, 28.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829514, 37.999630, 27.925837>,  <29.086908, 37.760399, 27.734741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829514, 37.999630, 27.925837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286578, -0.766961, 0.574147,
		0.709789, 0.232546, 0.664923,
		-0.643485, 0.598075, 0.477737,
		28.636469, 38.179054, 28.069159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175371, 37.707386, 28.349895>,  <29.086908, 37.760399, 27.734741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175371, 37.707386, 28.349895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794773, 37.830452, 28.350338>,  <28.566414, 37.904293, 28.350603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794773, 37.830452, 28.350338>,  <29.175371, 37.707386, 28.349895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794773, 37.830452, 28.350338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231451, -0.718147, 0.656273,
		0.202707, 0.624184, 0.754523,
		-0.951494, 0.307666, 0.001105,
		28.509325, 37.922752, 28.350670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842974, 37.729378, 29.127678>,  <29.175371, 37.707386, 28.349895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842974, 37.729378, 29.127678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545282, 37.716549, 28.860817>,  <28.366667, 37.708851, 28.700701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545282, 37.716549, 28.860817>,  <28.842974, 37.729378, 29.127678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545282, 37.716549, 28.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524160, -0.591039, 0.613130,
		-0.413979, 0.806005, 0.423057,
		-0.744230, -0.032073, -0.667153,
		28.322014, 37.706928, 28.660671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302053, 37.748375, 29.621313>,  <28.842974, 37.729378, 29.127678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302053, 37.748375, 29.621313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180353, 37.599846, 29.270416>,  <28.107332, 37.510731, 29.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180353, 37.599846, 29.270416>,  <28.302053, 37.748375, 29.621313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180353, 37.599846, 29.270416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268842, -0.849993, 0.453029,
		-0.913868, 0.373674, 0.158786,
		-0.304253, -0.371321, -0.877241,
		28.089077, 37.488449, 29.007244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717173, 37.455524, 29.880323>,  <28.302053, 37.748375, 29.621313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717173, 37.455524, 29.880323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794943, 37.270493, 29.534325>,  <27.841604, 37.159473, 29.326725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794943, 37.270493, 29.534325>,  <27.717173, 37.455524, 29.880323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794943, 37.270493, 29.534325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341620, -0.858549, 0.382346,
		-0.919508, 0.221163, -0.324948,
		0.194423, -0.462580, -0.864997,
		27.853270, 37.131718, 29.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139454, 37.021996, 29.772345>,  <27.717173, 37.455524, 29.880323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139454, 37.021996, 29.772345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424660, 36.881336, 29.529709>,  <27.595783, 36.796940, 29.384127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424660, 36.881336, 29.529709>,  <27.139454, 37.021996, 29.772345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424660, 36.881336, 29.529709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126611, -0.915491, 0.381898,
		-0.689621, -0.195498, -0.697283,
		0.713017, -0.351649, -0.606590,
		27.638565, 36.775841, 29.347733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801104, 36.413624, 29.371229>,  <27.139454, 37.021996, 29.772345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801104, 36.413624, 29.371229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200216, 36.390621, 29.384665>,  <27.439684, 36.376820, 29.392725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200216, 36.390621, 29.384665>,  <26.801104, 36.413624, 29.371229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200216, 36.390621, 29.384665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066199, -0.911687, 0.405517,
		0.007302, -0.406840, -0.913470,
		0.997780, -0.057510, 0.033589,
		27.499550, 36.373367, 29.394741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995745, 35.762749, 29.013748>,  <26.801104, 36.413624, 29.371229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995745, 35.762749, 29.013748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254478, 35.891300, 29.290390>,  <27.409719, 35.968430, 29.456375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254478, 35.891300, 29.290390>,  <26.995745, 35.762749, 29.013748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254478, 35.891300, 29.290390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005625, -0.904837, 0.425720,
		0.762608, -0.279261, -0.583474,
		0.646836, 0.321376, 0.691607,
		27.448530, 35.987713, 29.497871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426374, 35.136906, 29.270897>,  <26.995745, 35.762749, 29.013748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426374, 35.136906, 29.270897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554638, 35.393784, 29.549397>,  <27.631596, 35.547913, 29.716496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554638, 35.393784, 29.549397>,  <27.426374, 35.136906, 29.270897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554638, 35.393784, 29.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116757, -0.756256, 0.643774,
		0.939971, -0.125140, -0.317481,
		0.320659, 0.642197, 0.696248,
		27.650835, 35.586441, 29.758270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880865, 34.724857, 29.714186>,  <27.426374, 35.136906, 29.270897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880865, 34.724857, 29.714186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792309, 35.051151, 29.927938>,  <27.739176, 35.246925, 30.056190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792309, 35.051151, 29.927938>,  <27.880865, 34.724857, 29.714186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792309, 35.051151, 29.927938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001891, -0.548340, 0.836253,
		0.975183, 0.184129, 0.122941,
		-0.221392, 0.815733, 0.534384,
		27.725891, 35.295872, 30.088253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343763, 34.699711, 30.208042>,  <27.880865, 34.724857, 29.714186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343763, 34.699711, 30.208042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033407, 34.921150, 30.329060>,  <27.847195, 35.054012, 30.401670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033407, 34.921150, 30.329060>,  <28.343763, 34.699711, 30.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033407, 34.921150, 30.329060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092497, -0.574203, 0.813471,
		0.624053, 0.603178, 0.496723,
		-0.775888, 0.553594, 0.302541,
		27.800640, 35.087227, 30.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370014, 34.632851, 30.913197>,  <28.343763, 34.699711, 30.208042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370014, 34.632851, 30.913197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010685, 34.807453, 30.893316>,  <27.795086, 34.912216, 30.881388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010685, 34.807453, 30.893316>,  <28.370014, 34.632851, 30.913197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010685, 34.807453, 30.893316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250319, -0.415591, 0.874428,
		0.361043, 0.797962, 0.482603,
		-0.898326, 0.436511, -0.049699,
		27.741188, 34.938408, 30.878407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205467, 34.952000, 31.555347>,  <28.370014, 34.632851, 30.913197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205467, 34.952000, 31.555347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853102, 34.913494, 31.369993>,  <27.641684, 34.890388, 31.258780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853102, 34.913494, 31.369993>,  <28.205467, 34.952000, 31.555347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853102, 34.913494, 31.369993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421995, -0.283520, 0.861125,
		-0.214277, 0.954122, 0.209132,
		-0.880911, -0.096267, -0.463387,
		27.588829, 34.884613, 31.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773735, 35.154404, 32.105762>,  <28.205467, 34.952000, 31.555347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773735, 35.154404, 32.105762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553925, 34.940147, 31.849293>,  <27.422037, 34.811592, 31.695412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553925, 34.940147, 31.849293>,  <27.773735, 35.154404, 32.105762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553925, 34.940147, 31.849293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537985, -0.360289, 0.762079,
		-0.639211, 0.763725, -0.090179,
		-0.549528, -0.535645, -0.641174,
		27.389067, 34.779453, 31.656940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041149, 35.300171, 32.251202>,  <27.773735, 35.154404, 32.105762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041149, 35.300171, 32.251202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042786, 34.943245, 32.070644>,  <27.043768, 34.729088, 31.962311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042786, 34.943245, 32.070644>,  <27.041149, 35.300171, 32.251202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042786, 34.943245, 32.070644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555284, -0.377431, 0.741084,
		-0.831651, 0.247618, -0.497034,
		0.004090, -0.892318, -0.451389,
		27.044012, 34.675549, 31.935228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237402, 35.198559, 32.052032>,  <27.041149, 35.300171, 32.251202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237402, 35.198559, 32.052032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429468, 34.847687, 32.051338>,  <26.544708, 34.637165, 32.050922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429468, 34.847687, 32.051338>,  <26.237402, 35.198559, 32.052032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429468, 34.847687, 32.051338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650969, -0.357663, 0.669564,
		-0.587946, -0.320374, -0.742752,
		0.480166, -0.877176, -0.001733,
		26.573519, 34.584534, 32.050819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653872, 34.697590, 32.067833>,  <26.237402, 35.198559, 32.052032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653872, 34.697590, 32.067833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974953, 34.484661, 32.175392>,  <26.167601, 34.356903, 32.239929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974953, 34.484661, 32.175392>,  <25.653872, 34.697590, 32.067833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974953, 34.484661, 32.175392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492212, -0.336743, 0.802702,
		-0.336743, -0.776686, -0.532318,
		-0.802702, 0.532318, -0.268899,
		26.215763, 34.324966, 32.256062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353037, 34.105026, 32.331757>,  <25.653872, 34.697590, 32.067833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353037, 34.105026, 32.331757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720984, 34.095310, 32.488346>,  <25.941751, 34.089481, 32.582298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720984, 34.095310, 32.488346>,  <25.353037, 34.105026, 32.331757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720984, 34.095310, 32.488346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360200, -0.447325, 0.818630,
		0.155234, -0.894041, -0.420229,
		0.919869, -0.024288, 0.391474,
		25.996944, 34.088024, 32.605789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355413, 33.467144, 32.690529>,  <25.353037, 34.105026, 32.331757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355413, 33.467144, 32.690529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653975, 33.678871, 32.851875>,  <25.833111, 33.805908, 32.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653975, 33.678871, 32.851875>,  <25.355413, 33.467144, 32.690529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653975, 33.678871, 32.851875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258485, -0.327932, 0.908651,
		0.613245, -0.782482, -0.107948,
		0.746402, 0.529323, 0.403362,
		25.877895, 33.837669, 32.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733080, 32.987522, 33.119896>,  <25.355413, 33.467144, 32.690529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733080, 32.987522, 33.119896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799637, 33.366154, 33.230392>,  <25.839571, 33.593330, 33.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799637, 33.366154, 33.230392>,  <25.733080, 32.987522, 33.119896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799637, 33.366154, 33.230392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061838, -0.269578, 0.960991,
		0.984119, -0.176984, 0.013679,
		0.166392, 0.946575, 0.276241,
		25.849554, 33.650127, 33.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093761, 32.906765, 33.712265>,  <25.733080, 32.987522, 33.119896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093761, 32.906765, 33.712265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986877, 33.291847, 33.729237>,  <25.922747, 33.522896, 33.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986877, 33.291847, 33.729237>,  <26.093761, 32.906765, 33.712265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986877, 33.291847, 33.729237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128961, -0.007910, 0.991618,
		0.954970, 0.270443, -0.122038,
		-0.267211, 0.962703, 0.042431,
		25.906713, 33.580658, 33.741966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678148, 33.276821, 33.800320>,  <26.093761, 32.906765, 33.712265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678148, 33.276821, 33.800320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344395, 33.433559, 33.955376>,  <26.144142, 33.527603, 34.048409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344395, 33.433559, 33.955376>,  <26.678148, 33.276821, 33.800320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344395, 33.433559, 33.955376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462277, 0.114488, 0.879314,
		0.300171, 0.912882, -0.276666,
		-0.834384, 0.391841, 0.387638,
		26.094080, 33.551113, 34.071667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215385, 32.955650, 34.332726>,  <26.678148, 33.276821, 33.800320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215385, 32.955650, 34.332726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490707, 32.703125, 34.475655>,  <27.655901, 32.551609, 34.561413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490707, 32.703125, 34.475655>,  <27.215385, 32.955650, 34.332726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490707, 32.703125, 34.475655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245513, 0.666241, 0.704164,
		-0.682611, -0.396952, 0.613573,
		0.688306, -0.631310, 0.357327,
		27.697199, 32.513733, 34.582851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149851, 32.859100, 35.120426>,  <27.215385, 32.955650, 34.332726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149851, 32.859100, 35.120426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525309, 32.790863, 35.000526>,  <27.750584, 32.749920, 34.928585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525309, 32.790863, 35.000526>,  <27.149851, 32.859100, 35.120426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525309, 32.790863, 35.000526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335170, 0.656074, 0.676187,
		0.081307, -0.735165, 0.672995,
		0.938643, -0.170589, -0.299749,
		27.806902, 32.739685, 34.910603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566481, 32.570484, 35.678654>,  <27.149851, 32.859100, 35.120426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566481, 32.570484, 35.678654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768335, 32.799194, 35.419914>,  <27.889448, 32.936420, 35.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768335, 32.799194, 35.419914>,  <27.566481, 32.570484, 35.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768335, 32.799194, 35.419914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171099, 0.668149, 0.724087,
		0.846208, -0.476076, 0.239342,
		0.504636, 0.571776, -0.646849,
		27.919727, 32.970726, 35.225861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350822, 32.734699, 35.810627>,  <27.566481, 32.570484, 35.678654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350822, 32.734699, 35.810627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169701, 33.035751, 35.619415>,  <28.061028, 33.216381, 35.504688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169701, 33.035751, 35.619415>,  <28.350822, 32.734699, 35.810627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169701, 33.035751, 35.619415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322311, 0.638059, 0.699283,
		0.831313, 0.162566, -0.531499,
		-0.452807, 0.752631, -0.478030,
		28.033859, 33.261539, 35.476006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756245, 33.356995, 36.016209>,  <28.350822, 32.734699, 35.810627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756245, 33.356995, 36.016209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368851, 33.411049, 35.932518>,  <28.136414, 33.443481, 35.882301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368851, 33.411049, 35.932518>,  <28.756245, 33.356995, 36.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368851, 33.411049, 35.932518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065835, 0.671264, 0.738289,
		0.240217, 0.728796, -0.641212,
		-0.968484, 0.135136, -0.209229,
		28.078306, 33.451588, 35.869751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645094, 34.105038, 35.922050>,  <28.756245, 33.356995, 36.016209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645094, 34.105038, 35.922050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376007, 33.873337, 36.106186>,  <28.214556, 33.734314, 36.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376007, 33.873337, 36.106186>,  <28.645094, 34.105038, 35.922050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376007, 33.873337, 36.106186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203653, 0.453177, 0.867846,
		-0.711322, 0.677564, -0.186892,
		-0.672716, -0.579257, 0.460342,
		28.174192, 33.699558, 36.244289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998322, 34.455967, 36.290287>,  <28.645094, 34.105038, 35.922050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998322, 34.455967, 36.290287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153011, 34.137585, 36.476574>,  <28.245825, 33.946556, 36.588345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153011, 34.137585, 36.476574>,  <27.998322, 34.455967, 36.290287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153011, 34.137585, 36.476574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217535, 0.569497, 0.792687,
		-0.896170, -0.205243, 0.393389,
		0.386727, -0.795958, 0.465718,
		28.269030, 33.898796, 36.616291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750769, 34.438297, 37.057804>,  <27.998322, 34.455967, 36.290287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750769, 34.438297, 37.057804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099850, 34.252502, 36.997612>,  <28.309299, 34.141026, 36.961498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099850, 34.252502, 36.997612>,  <27.750769, 34.438297, 37.057804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099850, 34.252502, 36.997612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418363, 0.552496, 0.720917,
		-0.251715, -0.692102, 0.676487,
		0.872704, -0.464483, -0.150479,
		28.361660, 34.113159, 36.952469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942062, 34.153629, 37.779186>,  <27.750769, 34.438297, 37.057804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942062, 34.153629, 37.779186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264332, 34.229103, 37.554585>,  <28.457695, 34.274387, 37.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264332, 34.229103, 37.554585>,  <27.942062, 34.153629, 37.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264332, 34.229103, 37.554585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414389, 0.497827, 0.761873,
		0.423280, -0.846504, 0.322902,
		0.805677, 0.188678, -0.561502,
		28.506035, 34.285706, 37.386135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411106, 34.116138, 38.225601>,  <27.942062, 34.153629, 37.779186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411106, 34.116138, 38.225601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627604, 34.264881, 37.923931>,  <28.757502, 34.354126, 37.742931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627604, 34.264881, 37.923931>,  <28.411106, 34.116138, 38.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627604, 34.264881, 37.923931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620172, 0.429143, 0.656676,
		0.567838, -0.823139, 0.001655,
		0.541246, 0.371859, -0.754171,
		28.789978, 34.376438, 37.697681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114880, 34.006229, 38.332752>,  <28.411106, 34.116138, 38.225601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114880, 34.006229, 38.332752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155273, 34.275627, 38.039848>,  <29.179510, 34.437267, 37.864105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155273, 34.275627, 38.039848>,  <29.114880, 34.006229, 38.332752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155273, 34.275627, 38.039848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788744, 0.394401, 0.471520,
		0.606371, -0.625184, -0.491386,
		0.100984, 0.673494, -0.732263,
		29.185568, 34.477676, 37.820171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869097, 33.994419, 38.030499>,  <29.114880, 34.006229, 38.332752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869097, 33.994419, 38.030499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705696, 34.348610, 37.941910>,  <29.607655, 34.561127, 37.888756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705696, 34.348610, 37.941910>,  <29.869097, 33.994419, 38.030499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705696, 34.348610, 37.941910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726390, 0.462305, 0.508559,
		0.552705, 0.046877, -0.832058,
		-0.408504, 0.885481, -0.221467,
		29.583145, 34.614254, 37.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406633, 34.346012, 37.710190>,  <29.869097, 33.994419, 38.030499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406633, 34.346012, 37.710190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142931, 34.603855, 37.865036>,  <29.984711, 34.758560, 37.957943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142931, 34.603855, 37.865036>,  <30.406633, 34.346012, 37.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142931, 34.603855, 37.865036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722879, 0.401643, 0.562253,
		0.206950, 0.650509, -0.730760,
		-0.659255, 0.644609, 0.387120,
		29.945154, 34.797237, 37.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827744, 34.841545, 37.929695>,  <30.406633, 34.346012, 37.710190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827744, 34.841545, 37.929695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496592, 34.964523, 38.117348>,  <30.297899, 35.038311, 38.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496592, 34.964523, 38.117348>,  <30.827744, 34.841545, 37.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496592, 34.964523, 38.117348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547161, 0.626678, 0.554878,
		-0.123401, 0.716066, -0.687039,
		-0.827881, 0.307448, 0.469136,
		30.248228, 35.056759, 38.258087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008085, 35.475796, 37.965076>,  <30.827744, 34.841545, 37.929695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008085, 35.475796, 37.965076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715969, 35.421658, 38.232914>,  <30.540699, 35.389175, 38.393616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715969, 35.421658, 38.232914>,  <31.008085, 35.475796, 37.965076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715969, 35.421658, 38.232914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455608, 0.633850, 0.625025,
		-0.509016, 0.761523, -0.401231,
		-0.730291, -0.135343, 0.669595,
		30.496881, 35.381054, 38.433792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777355, 36.131824, 38.243496>,  <31.008085, 35.475796, 37.965076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777355, 36.131824, 38.243496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675257, 35.879436, 38.536541>,  <30.613997, 35.728004, 38.712368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675257, 35.879436, 38.536541>,  <30.777355, 36.131824, 38.243496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675257, 35.879436, 38.536541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217622, 0.700778, 0.679375,
		-0.942066, 0.332842, -0.041558,
		-0.255248, -0.630972, 0.732614,
		30.598682, 35.690144, 38.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425667, 36.518612, 38.772476>,  <30.777355, 36.131824, 38.243496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425667, 36.518612, 38.772476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522875, 36.190929, 38.980267>,  <30.581200, 35.994320, 39.104939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522875, 36.190929, 38.980267>,  <30.425667, 36.518612, 38.772476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522875, 36.190929, 38.980267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346845, 0.573506, 0.742152,
		-0.905892, -0.000181, 0.423508,
		0.243018, -0.819202, 0.519472,
		30.595781, 35.945168, 39.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176220, 36.674721, 39.364311>,  <30.425667, 36.518612, 38.772476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176220, 36.674721, 39.364311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438086, 36.380405, 39.433628>,  <30.595205, 36.203815, 39.475220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438086, 36.380405, 39.433628>,  <30.176220, 36.674721, 39.364311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438086, 36.380405, 39.433628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269645, 0.441475, 0.855799,
		-0.706194, -0.513530, 0.487418,
		0.654662, -0.735790, 0.173296,
		30.634483, 36.159668, 39.485619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136261, 36.728664, 40.078022>,  <30.176220, 36.674721, 39.364311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136261, 36.728664, 40.078022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456692, 36.510590, 39.979191>,  <30.648951, 36.379745, 39.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456692, 36.510590, 39.979191>,  <30.136261, 36.728664, 40.078022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456692, 36.510590, 39.979191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496821, 0.375392, 0.782464,
		-0.333839, -0.749567, 0.571578,
		0.801075, -0.545189, -0.247080,
		30.697014, 36.347034, 39.905067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442818, 36.426868, 40.722099>,  <30.136261, 36.728664, 40.078022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442818, 36.426868, 40.722099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714943, 36.455612, 40.430344>,  <30.878218, 36.472858, 40.255291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714943, 36.455612, 40.430344>,  <30.442818, 36.426868, 40.722099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714943, 36.455612, 40.430344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631383, 0.447922, 0.633026,
		0.372195, -0.891180, 0.259361,
		0.680313, 0.071853, -0.729390,
		30.919037, 36.477169, 40.211525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002844, 36.112431, 41.016861>,  <30.442818, 36.426868, 40.722099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002844, 36.112431, 41.016861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115158, 36.348576, 40.714172>,  <31.182547, 36.490265, 40.532558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115158, 36.348576, 40.714172>,  <31.002844, 36.112431, 41.016861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115158, 36.348576, 40.714172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774943, 0.325701, 0.541647,
		0.566235, -0.738504, -0.366047,
		0.280787, 0.590366, -0.756721,
		31.199394, 36.525684, 40.487156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809582, 36.178898, 40.923683>,  <31.002844, 36.112431, 41.016861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809582, 36.178898, 40.923683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661880, 36.514351, 40.763512>,  <31.573259, 36.715622, 40.667408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661880, 36.514351, 40.763512>,  <31.809582, 36.178898, 40.923683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661880, 36.514351, 40.763512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608922, 0.543832, 0.577461,
		0.702045, -0.030600, -0.711475,
		-0.369253, 0.838636, -0.400428,
		31.551105, 36.765942, 40.643383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384922, 36.543011, 41.085499>,  <31.809582, 36.178898, 40.923683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384922, 36.543011, 41.085499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097851, 36.797825, 40.972984>,  <31.925608, 36.950714, 40.905476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097851, 36.797825, 40.972984>,  <32.384922, 36.543011, 41.085499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097851, 36.797825, 40.972984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433849, 0.724979, 0.534959,
		0.544716, 0.261893, -0.796679,
		-0.717677, 0.637039, -0.281285,
		31.882547, 36.988937, 40.888599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686909, 37.133202, 40.769760>,  <32.384922, 36.543011, 41.085499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686909, 37.133202, 40.769760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329193, 37.243889, 40.910431>,  <32.114563, 37.310303, 40.994835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329193, 37.243889, 40.910431>,  <32.686909, 37.133202, 40.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329193, 37.243889, 40.910431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439510, 0.690927, 0.573978,
		-0.084153, 0.667867, -0.739508,
		-0.894287, 0.276719, 0.351678,
		32.060905, 37.326904, 41.015934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783119, 37.772938, 40.896954>,  <32.686909, 37.133202, 40.769760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783119, 37.772938, 40.896954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454826, 37.703350, 41.114624>,  <32.257851, 37.661598, 41.245228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454826, 37.703350, 41.114624>,  <32.783119, 37.772938, 40.896954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454826, 37.703350, 41.114624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294859, 0.686859, 0.664292,
		-0.489341, 0.705662, -0.512432,
		-0.820734, -0.173970, 0.544179,
		32.208607, 37.651157, 41.277878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459305, 38.354065, 41.031548>,  <32.783119, 37.772938, 40.896954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459305, 38.354065, 41.031548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324528, 38.110367, 41.318684>,  <32.243664, 37.964146, 41.490963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324528, 38.110367, 41.318684>,  <32.459305, 38.354065, 41.031548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324528, 38.110367, 41.318684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313536, 0.646298, 0.695697,
		-0.887788, 0.459474, -0.026742,
		-0.336938, -0.609247, 0.717838,
		32.223446, 37.927593, 41.534035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249321, 38.836746, 41.471321>,  <32.459305, 38.354065, 41.031548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249321, 38.836746, 41.471321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211117, 38.514160, 41.704727>,  <32.188194, 38.320610, 41.844772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211117, 38.514160, 41.704727>,  <32.249321, 38.836746, 41.471321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211117, 38.514160, 41.704727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149848, 0.567866, 0.809366,
		-0.984085, 0.164744, 0.066608,
		-0.095513, -0.806466, 0.583515,
		32.182465, 38.272221, 41.879780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755428, 39.086117, 41.994938>,  <32.249321, 38.836746, 41.471321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755428, 39.086117, 41.994938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955935, 38.766922, 42.128777>,  <32.076237, 38.575405, 42.209080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955935, 38.766922, 42.128777>,  <31.755428, 39.086117, 41.994938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955935, 38.766922, 42.128777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261089, 0.508143, 0.820746,
		-0.824964, -0.324053, 0.463060,
		0.501265, -0.797985, 0.334593,
		32.106316, 38.527527, 42.229153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491884, 38.875294, 42.607296>,  <31.755428, 39.086117, 41.994938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491884, 38.875294, 42.607296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858936, 38.718468, 42.633339>,  <32.079166, 38.624374, 42.648964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858936, 38.718468, 42.633339>,  <31.491884, 38.875294, 42.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858936, 38.718468, 42.633339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126693, 0.443837, 0.887106,
		-0.376698, -0.805788, 0.456951,
		0.917632, -0.392063, 0.065104,
		32.134224, 38.600849, 42.652870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434050, 38.372719, 43.144375>,  <31.491884, 38.875294, 42.607296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434050, 38.372719, 43.144375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818029, 38.475250, 43.099125>,  <32.048416, 38.536770, 43.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818029, 38.475250, 43.099125>,  <31.434050, 38.372719, 43.144375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818029, 38.475250, 43.099125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027095, 0.316919, 0.948066,
		0.278866, -0.913158, 0.297280,
		0.959948, 0.256328, -0.113120,
		32.106014, 38.552147, 43.065189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802200, 38.148190, 43.777760>,  <31.434050, 38.372719, 43.144375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802200, 38.148190, 43.777760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052532, 38.416855, 43.619160>,  <32.202732, 38.578053, 43.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052532, 38.416855, 43.619160>,  <31.802200, 38.148190, 43.777760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052532, 38.416855, 43.619160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184114, 0.366770, 0.911911,
		0.757919, -0.643700, 0.105873,
		0.625828, 0.671662, -0.396496,
		32.240280, 38.618355, 43.500210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274254, 38.179699, 44.238350>,  <31.802200, 38.148190, 43.777760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274254, 38.179699, 44.238350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382507, 38.511105, 44.042263>,  <32.447460, 38.709949, 43.924610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382507, 38.511105, 44.042263>,  <32.274254, 38.179699, 44.238350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382507, 38.511105, 44.042263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167757, 0.460842, 0.871483,
		0.947953, -0.318090, -0.014271,
		0.270634, 0.828519, -0.490219,
		32.463699, 38.759659, 43.895199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956493, 38.485992, 44.477299>,  <32.274254, 38.179699, 44.238350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956493, 38.485992, 44.477299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747116, 38.782406, 44.309074>,  <32.621490, 38.960255, 44.208141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747116, 38.782406, 44.309074>,  <32.956493, 38.485992, 44.477299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747116, 38.782406, 44.309074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216169, 0.592927, 0.775699,
		0.824181, 0.315125, -0.470555,
		-0.523447, 0.741036, -0.420559,
		32.590080, 39.004715, 44.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398705, 39.115448, 44.653709>,  <32.956493, 38.485992, 44.477299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398705, 39.115448, 44.653709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026329, 39.220036, 44.551739>,  <32.802902, 39.282787, 44.490559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026329, 39.220036, 44.551739>,  <33.398705, 39.115448, 44.653709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026329, 39.220036, 44.551739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007056, 0.685082, 0.728432,
		0.365101, 0.679926, -0.635926,
		-0.930941, 0.261464, -0.254922,
		32.747047, 39.298473, 44.475262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356396, 39.835926, 44.713421>,  <33.398705, 39.115448, 44.653709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356396, 39.835926, 44.713421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983864, 39.696888, 44.756874>,  <32.760345, 39.613464, 44.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983864, 39.696888, 44.756874>,  <33.356396, 39.835926, 44.713421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983864, 39.696888, 44.756874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146882, 0.631488, 0.761347,
		-0.333235, 0.693111, -0.639180,
		-0.931332, -0.347592, 0.108629,
		32.704464, 39.592609, 44.789463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036678, 40.426491, 44.870560>,  <33.356396, 39.835926, 44.713421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036678, 40.426491, 44.870560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755032, 40.155277, 44.954929>,  <32.586044, 39.992550, 45.005550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755032, 40.155277, 44.954929>,  <33.036678, 40.426491, 44.870560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755032, 40.155277, 44.954929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404319, 0.627014, 0.665868,
		-0.583732, 0.383570, -0.715634,
		-0.704119, -0.678032, 0.210924,
		32.543797, 39.951866, 45.018208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470360, 40.894123, 44.781532>,  <33.036678, 40.426491, 44.870560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470360, 40.894123, 44.781532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376804, 40.577660, 45.007580>,  <32.320671, 40.387779, 45.143208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376804, 40.577660, 45.007580>,  <32.470360, 40.894123, 44.781532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376804, 40.577660, 45.007580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424379, 0.606022, 0.672785,
		-0.874757, -0.082470, -0.477493,
		-0.233887, -0.791161, 0.565121,
		32.306637, 40.340313, 45.177116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804962, 41.008789, 44.897831>,  <32.470360, 40.894123, 44.781532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804962, 41.008789, 44.897831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927553, 40.756401, 45.182911>,  <32.001106, 40.604969, 45.353958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927553, 40.756401, 45.182911>,  <31.804962, 41.008789, 44.897831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927553, 40.756401, 45.182911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498329, 0.531571, 0.684909,
		-0.811011, -0.565069, -0.151517,
		0.306479, -0.630974, 0.712701,
		32.019497, 40.567108, 45.396721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192736, 40.823090, 45.332481>,  <31.804962, 41.008789, 44.897831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192736, 40.823090, 45.332481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534187, 40.784954, 45.537315>,  <31.739058, 40.762074, 45.660217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534187, 40.784954, 45.537315>,  <31.192736, 40.823090, 45.332481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534187, 40.784954, 45.537315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295147, 0.721523, 0.626333,
		-0.429196, -0.685795, 0.587772,
		0.853627, -0.095341, 0.512085,
		31.790276, 40.756351, 45.690941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961353, 40.954731, 45.902084>,  <31.192736, 40.823090, 45.332481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961353, 40.954731, 45.902084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349535, 40.942440, 45.997810>,  <31.582445, 40.935066, 46.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349535, 40.942440, 45.997810>,  <30.961353, 40.954731, 45.902084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349535, 40.942440, 45.997810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189546, 0.516619, 0.834971,
		-0.149295, -0.855664, 0.495531,
		0.970455, -0.030731, 0.239316,
		31.640671, 40.933220, 46.069607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993368, 40.892536, 46.596813>,  <30.961353, 40.954731, 45.902084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993368, 40.892536, 46.596813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376427, 40.984604, 46.527611>,  <31.606262, 41.039845, 46.486088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376427, 40.984604, 46.527611>,  <30.993368, 40.892536, 46.596813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376427, 40.984604, 46.527611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035104, 0.503045, 0.863547,
		0.285793, -0.833047, 0.473661,
		0.957648, 0.230168, -0.173010,
		31.663721, 41.053654, 46.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540930, 40.641685, 47.119339>,  <30.993368, 40.892536, 46.596813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540930, 40.641685, 47.119339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675081, 40.982304, 46.958149>,  <31.755573, 41.186676, 46.861435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675081, 40.982304, 46.958149>,  <31.540930, 40.641685, 47.119339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675081, 40.982304, 46.958149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029012, 0.418211, 0.907887,
		0.941636, -0.316177, 0.115555,
		0.335379, 0.851547, -0.402975,
		31.775696, 41.237766, 46.837257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082001, 40.820995, 47.481178>,  <31.540930, 40.641685, 47.119339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082001, 40.820995, 47.481178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937975, 41.144196, 47.294636>,  <31.851561, 41.338116, 47.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937975, 41.144196, 47.294636>,  <32.082001, 40.820995, 47.481178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937975, 41.144196, 47.294636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008156, 0.502591, 0.864486,
		0.932892, 0.307466, -0.187555,
		-0.360063, 0.808001, -0.466356,
		31.829956, 41.386597, 47.154728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538395, 41.335865, 47.645195>,  <32.082001, 40.820995, 47.481178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538395, 41.335865, 47.645195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195362, 41.509724, 47.535187>,  <31.989542, 41.614037, 47.469181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195362, 41.509724, 47.535187>,  <32.538395, 41.335865, 47.645195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195362, 41.509724, 47.535187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099522, 0.384379, 0.917795,
		0.504627, 0.814456, -0.286380,
		-0.857582, 0.434643, -0.275025,
		31.938087, 41.640118, 47.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538338, 41.954536, 48.036457>,  <32.538395, 41.335865, 47.645195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538338, 41.954536, 48.036457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158134, 41.900261, 47.924656>,  <31.930012, 41.867695, 47.857574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158134, 41.900261, 47.924656>,  <32.538338, 41.954536, 48.036457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158134, 41.900261, 47.924656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307285, 0.277554, 0.910242,
		-0.045932, 0.951080, -0.305513,
		-0.950508, -0.135689, -0.279504,
		31.872982, 41.859554, 47.840805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262344, 42.503960, 48.197613>,  <32.538338, 41.954536, 48.036457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262344, 42.503960, 48.197613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945826, 42.259907, 48.181713>,  <31.755913, 42.113476, 48.172173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945826, 42.259907, 48.181713>,  <32.262344, 42.503960, 48.197613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945826, 42.259907, 48.181713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308231, 0.341913, 0.887744,
		-0.528049, 0.714726, -0.458618,
		-0.791301, -0.610133, -0.039754,
		31.708435, 42.076866, 48.169788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718397, 42.920456, 48.432045>,  <32.262344, 42.503960, 48.197613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718397, 42.920456, 48.432045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567463, 42.550156, 48.441845>,  <31.476902, 42.327976, 48.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567463, 42.550156, 48.441845>,  <31.718397, 42.920456, 48.432045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567463, 42.550156, 48.441845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495910, 0.224339, 0.838895,
		-0.782106, 0.304395, -0.543741,
		-0.377338, -0.925752, 0.024504,
		31.454262, 42.272430, 48.449196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973917, 42.956871, 48.610916>,  <31.718397, 42.920456, 48.432045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973917, 42.956871, 48.610916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059704, 42.582134, 48.721424>,  <31.111176, 42.357292, 48.787727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059704, 42.582134, 48.721424>,  <30.973917, 42.956871, 48.610916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059704, 42.582134, 48.721424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399895, 0.173832, 0.899926,
		-0.891116, -0.303482, -0.337359,
		0.214467, -0.936846, 0.276265,
		31.124044, 42.301079, 48.804302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387678, 42.528179, 48.815830>,  <30.973917, 42.956871, 48.610916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387678, 42.528179, 48.815830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695610, 42.365707, 49.012760>,  <30.880369, 42.268223, 49.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695610, 42.365707, 49.012760>,  <30.387678, 42.528179, 48.815830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695610, 42.365707, 49.012760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531279, 0.019666, 0.846969,
		-0.353703, -0.913582, -0.200655,
		0.769829, -0.406179, 0.492322,
		30.926559, 42.243855, 49.160458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420347, 41.829426, 48.893761>,  <30.387678, 42.528179, 48.815830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420347, 41.829426, 48.893761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550039, 41.991516, 49.235676>,  <30.627855, 42.088772, 49.440826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550039, 41.991516, 49.235676>,  <30.420347, 41.829426, 48.893761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550039, 41.991516, 49.235676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728677, -0.469236, 0.498846,
		0.603245, -0.784606, 0.143140,
		0.324231, 0.405229, 0.854789,
		30.647308, 42.113087, 49.492111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511150, 41.296192, 49.374313>,  <30.420347, 41.829426, 48.893761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511150, 41.296192, 49.374313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403502, 41.632992, 49.561340>,  <30.338911, 41.835072, 49.673557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403502, 41.632992, 49.561340>,  <30.511150, 41.296192, 49.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403502, 41.632992, 49.561340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624628, -0.522122, 0.580714,
		0.733084, -0.135770, 0.666449,
		-0.269124, 0.841995, 0.467564,
		30.322763, 41.885590, 49.701611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585564, 41.216450, 50.011211>,  <30.511150, 41.296192, 49.374313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585564, 41.216450, 50.011211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293983, 41.486649, 49.966785>,  <30.119036, 41.648769, 49.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293983, 41.486649, 49.966785>,  <30.585564, 41.216450, 50.011211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293983, 41.486649, 49.966785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647383, -0.627477, 0.432629,
		0.222553, 0.387263, 0.894705,
		-0.728948, 0.675499, -0.111061,
		30.075298, 41.689297, 49.933468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473824, 41.641888, 50.694820>,  <30.585564, 41.216450, 50.011211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473824, 41.641888, 50.694820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679375, 41.695709, 51.033718>,  <30.802706, 41.728001, 51.237057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679375, 41.695709, 51.033718>,  <30.473824, 41.641888, 50.694820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679375, 41.695709, 51.033718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569909, -0.791729, -0.219931,
		0.641196, 0.595870, -0.483536,
		0.513879, 0.134553, 0.847245,
		30.833538, 41.736076, 51.287891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220535, 41.763996, 50.443665>,  <30.473824, 41.641888, 50.694820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220535, 41.763996, 50.443665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171724, 41.605721, 50.807762>,  <31.142437, 41.510757, 51.026222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171724, 41.605721, 50.807762>,  <31.220535, 41.763996, 50.443665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171724, 41.605721, 50.807762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727279, -0.659725, -0.189285,
		0.675407, 0.638902, 0.368278,
		-0.122027, -0.395686, 0.910243,
		31.135117, 41.487015, 51.080833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903404, 41.836655, 50.806545>,  <31.220535, 41.763996, 50.443665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903404, 41.836655, 50.806545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666267, 41.529682, 50.904186>,  <31.523985, 41.345497, 50.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666267, 41.529682, 50.904186>,  <31.903404, 41.836655, 50.806545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666267, 41.529682, 50.904186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746524, -0.637397, -0.190860,
		0.302065, 0.069082, 0.950781,
		-0.592840, -0.767433, 0.244106,
		31.488415, 41.299454, 50.977417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629341, 42.192249, 50.710381>,  <31.903404, 41.836655, 50.806545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629341, 42.192249, 50.710381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742737, 42.028427, 51.057228>,  <32.810776, 41.930134, 51.265339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742737, 42.028427, 51.057228>,  <32.629341, 42.192249, 50.710381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742737, 42.028427, 51.057228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118904, -0.912252, -0.391993,
		0.951575, 0.008023, -0.307313,
		0.283491, -0.409552, 0.867122,
		32.827785, 41.905563, 51.317364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303631, 41.804111, 50.553242>,  <32.629341, 42.192249, 50.710381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303631, 41.804111, 50.553242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027168, 41.688271, 50.818100>,  <32.861290, 41.618767, 50.977013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027168, 41.688271, 50.818100>,  <33.303631, 41.804111, 50.553242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027168, 41.688271, 50.818100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129730, -0.851604, -0.507878,
		0.710965, -0.436924, 0.551023,
		-0.691157, -0.289600, 0.662143,
		32.819820, 41.601391, 51.016743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498329, 41.122070, 50.988388>,  <33.303631, 41.804111, 50.553242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498329, 41.122070, 50.988388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118008, 41.176033, 50.876839>,  <32.889816, 41.208412, 50.809910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118008, 41.176033, 50.876839>,  <33.498329, 41.122070, 50.988388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118008, 41.176033, 50.876839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055619, -0.811237, -0.582066,
		-0.304757, -0.568941, 0.763825,
		-0.950805, 0.134906, -0.278875,
		32.832767, 41.216503, 50.793175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137794, 40.507317, 51.076809>,  <33.498329, 41.122070, 50.988388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137794, 40.507317, 51.076809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899994, 40.687256, 50.810215>,  <32.757313, 40.795219, 50.650257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899994, 40.687256, 50.810215>,  <33.137794, 40.507317, 51.076809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899994, 40.687256, 50.810215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077699, -0.857126, -0.509213,
		-0.800330, -0.250943, 0.544517,
		-0.594504, 0.449847, -0.666486,
		32.721645, 40.822208, 50.610268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483597, 40.084084, 50.930748>,  <33.137794, 40.507317, 51.076809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483597, 40.084084, 50.930748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497437, 40.314983, 50.604412>,  <32.505741, 40.453522, 50.408611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497437, 40.314983, 50.604412>,  <32.483597, 40.084084, 50.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497437, 40.314983, 50.604412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131970, -0.806538, -0.576264,
		-0.990650, 0.127604, 0.048275,
		0.034598, 0.577246, -0.815837,
		32.507816, 40.488155, 50.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953417, 39.749241, 50.349522>,  <32.483597, 40.084084, 50.930748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953417, 39.749241, 50.349522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218971, 39.983654, 50.163696>,  <32.378304, 40.124302, 50.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218971, 39.983654, 50.163696>,  <31.953417, 39.749241, 50.349522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218971, 39.983654, 50.163696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052691, -0.583016, -0.810751,
		-0.745977, 0.562723, -0.356176,
		0.663884, 0.586034, -0.464567,
		32.418137, 40.159466, 50.024326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804632, 39.764690, 49.631603>,  <31.953417, 39.749241, 50.349522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804632, 39.764690, 49.631603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183922, 39.890663, 49.648067>,  <32.411495, 39.966248, 49.657948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183922, 39.890663, 49.648067>,  <31.804632, 39.764690, 49.631603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183922, 39.890663, 49.648067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218253, -0.551956, -0.804804,
		-0.230736, 0.772117, -0.592111,
		0.948223, 0.314928, 0.041161,
		32.468388, 39.985142, 49.660416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086926, 39.906418, 49.065212>,  <31.804632, 39.764690, 49.631603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086926, 39.906418, 49.065212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450390, 39.866234, 49.227318>,  <32.668468, 39.842125, 49.324581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450390, 39.866234, 49.227318>,  <32.086926, 39.906418, 49.065212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450390, 39.866234, 49.227318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235819, -0.677505, -0.696690,
		0.344558, 0.728625, -0.591933,
		0.908664, -0.100461, 0.405263,
		32.722988, 39.836094, 49.348896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515903, 39.815357, 48.543823>,  <32.086926, 39.906418, 49.065212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515903, 39.815357, 48.543823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763950, 39.687096, 48.830215>,  <32.912781, 39.610138, 49.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763950, 39.687096, 48.830215>,  <32.515903, 39.815357, 48.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763950, 39.687096, 48.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369292, -0.685903, -0.627026,
		0.692151, 0.653239, -0.306930,
		0.620121, -0.320650, 0.715984,
		32.949986, 39.590900, 49.045010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177731, 39.790142, 48.307369>,  <32.515903, 39.815357, 48.543823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177731, 39.790142, 48.307369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196434, 39.527981, 48.608902>,  <33.207657, 39.370682, 48.789822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196434, 39.527981, 48.608902>,  <33.177731, 39.790142, 48.307369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196434, 39.527981, 48.608902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210923, -0.731159, -0.648782,
		0.976384, 0.189338, 0.104050,
		0.046762, -0.655406, 0.753828,
		33.210464, 39.331360, 48.835049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707451, 39.351646, 48.077496>,  <33.177731, 39.790142, 48.307369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707451, 39.351646, 48.077496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538773, 39.132004, 48.366123>,  <33.437565, 39.000217, 48.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538773, 39.132004, 48.366123>,  <33.707451, 39.351646, 48.077496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538773, 39.132004, 48.366123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333200, -0.833947, -0.439897,
		0.843297, 0.054923, 0.534635,
		-0.421697, -0.549104, 0.721565,
		33.412262, 38.967274, 48.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168209, 38.818710, 48.172901>,  <33.707451, 39.351646, 48.077496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168209, 38.818710, 48.172901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811398, 38.687527, 48.297306>,  <33.597309, 38.608818, 48.371948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811398, 38.687527, 48.297306>,  <34.168209, 38.818710, 48.172901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811398, 38.687527, 48.297306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118317, -0.833553, -0.539621,
		0.436214, -0.444561, 0.782358,
		-0.892031, -0.327956, 0.311008,
		33.543789, 38.589138, 48.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254757, 38.093292, 48.299934>,  <34.168209, 38.818710, 48.172901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254757, 38.093292, 48.299934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866199, 38.170551, 48.244675>,  <33.633064, 38.216908, 48.211521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866199, 38.170551, 48.244675>,  <34.254757, 38.093292, 48.299934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866199, 38.170551, 48.244675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035662, -0.693812, -0.719272,
		-0.234769, -0.693773, 0.680855,
		-0.971397, 0.193144, -0.138145,
		33.574780, 38.228493, 48.203232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955376, 37.495770, 48.241161>,  <34.254757, 38.093292, 48.299934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955376, 37.495770, 48.241161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667538, 37.713631, 48.068867>,  <33.494835, 37.844349, 47.965492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667538, 37.713631, 48.068867>,  <33.955376, 37.495770, 48.241161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667538, 37.713631, 48.068867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059327, -0.666260, -0.743356,
		-0.691853, -0.509363, 0.511751,
		-0.719597, 0.544654, -0.430735,
		33.451660, 37.877026, 47.939648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408302, 37.091766, 47.990158>,  <33.955376, 37.495770, 48.241161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408302, 37.091766, 47.990158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371422, 37.405796, 47.745159>,  <33.349293, 37.594215, 47.598160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371422, 37.405796, 47.745159>,  <33.408302, 37.091766, 47.990158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371422, 37.405796, 47.745159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274277, -0.611345, -0.742314,
		-0.957221, 0.099555, 0.271693,
		-0.092197, 0.785077, -0.612498,
		33.343761, 37.641319, 47.561409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175030, 36.754608, 47.426792>,  <33.408302, 37.091766, 47.990158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175030, 36.754608, 47.426792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206047, 37.121296, 47.270020>,  <33.224655, 37.341309, 47.175957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206047, 37.121296, 47.270020>,  <33.175030, 36.754608, 47.426792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206047, 37.121296, 47.270020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153479, -0.377453, -0.913222,
		-0.985105, 0.130965, 0.111430,
		0.077540, 0.916721, -0.391931,
		33.229309, 37.396313, 47.152439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618923, 36.838856, 47.036201>,  <33.175030, 36.754608, 47.426792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618923, 36.838856, 47.036201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887138, 37.091549, 46.880611>,  <33.048065, 37.243164, 46.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887138, 37.091549, 46.880611>,  <32.618923, 36.838856, 47.036201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887138, 37.091549, 46.880611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188322, -0.362194, -0.912880,
		-0.717577, 0.685371, -0.123895,
		0.670536, 0.631730, -0.388973,
		33.088299, 37.281067, 46.763920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298401, 37.148037, 46.396053>,  <32.618923, 36.838856, 47.036201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298401, 37.148037, 46.396053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697968, 37.166500, 46.398094>,  <32.937710, 37.177578, 46.399319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697968, 37.166500, 46.398094>,  <32.298401, 37.148037, 46.396053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697968, 37.166500, 46.398094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029202, -0.538939, -0.841838,
		-0.036109, 0.841079, -0.539706,
		0.998921, 0.046159, 0.005101,
		32.997643, 37.180347, 46.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406681, 37.210400, 45.721798>,  <32.298401, 37.148037, 46.396053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406681, 37.210400, 45.721798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756077, 37.083168, 45.869228>,  <32.965714, 37.006828, 45.957687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756077, 37.083168, 45.869228>,  <32.406681, 37.210400, 45.721798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756077, 37.083168, 45.869228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093024, -0.634066, -0.767663,
		0.477880, 0.704829, -0.524258,
		0.873486, -0.318082, 0.368574,
		33.018124, 36.987743, 45.979801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779812, 37.179989, 45.188042>,  <32.406681, 37.210400, 45.721798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779812, 37.179989, 45.188042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974842, 36.958218, 45.457821>,  <33.091858, 36.825153, 45.619690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974842, 36.958218, 45.457821>,  <32.779812, 37.179989, 45.188042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974842, 36.958218, 45.457821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208813, -0.676021, -0.706678,
		0.847744, 0.485390, -0.213836,
		0.487572, -0.554430, 0.674448,
		33.121113, 36.791889, 45.660156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358101, 37.004780, 44.844784>,  <32.779812, 37.179989, 45.188042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358101, 37.004780, 44.844784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319023, 36.734940, 45.137459>,  <33.295578, 36.573036, 45.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319023, 36.734940, 45.137459>,  <33.358101, 37.004780, 44.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319023, 36.734940, 45.137459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231331, -0.730461, -0.642582,
		0.967957, 0.106486, 0.227418,
		-0.097694, -0.674601, 0.731689,
		33.289715, 36.532558, 45.356964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840214, 36.434097, 44.630547>,  <33.358101, 37.004780, 44.844784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840214, 36.434097, 44.630547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598083, 36.278866, 44.908531>,  <33.452805, 36.185730, 45.075321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598083, 36.278866, 44.908531>,  <33.840214, 36.434097, 44.630547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598083, 36.278866, 44.908531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215329, -0.760705, -0.612341,
		0.766296, -0.520314, 0.376913,
		-0.605329, -0.388074, 0.694964,
		33.416485, 36.162445, 45.117020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013023, 35.712048, 44.638931>,  <33.840214, 36.434097, 44.630547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013023, 35.712048, 44.638931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643131, 35.780586, 44.774879>,  <33.421196, 35.821709, 44.856449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643131, 35.780586, 44.774879>,  <34.013023, 35.712048, 44.638931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643131, 35.780586, 44.774879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377143, -0.532868, -0.757506,
		0.051311, -0.828669, 0.557381,
		-0.924733, 0.171344, 0.339869,
		33.365711, 35.831989, 44.876839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765335, 35.073284, 44.824978>,  <34.013023, 35.712048, 44.638931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765335, 35.073284, 44.824978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406044, 35.249081, 44.827293>,  <33.190468, 35.354557, 44.828682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406044, 35.249081, 44.827293>,  <33.765335, 35.073284, 44.824978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406044, 35.249081, 44.827293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323745, -0.652646, -0.685013,
		-0.297279, -0.617172, 0.728508,
		-0.898229, 0.439490, 0.005789,
		33.136574, 35.380928, 44.829029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305614, 34.581436, 44.931278>,  <33.765335, 35.073284, 44.824978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305614, 34.581436, 44.931278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065357, 34.853374, 44.762974>,  <32.921204, 35.016537, 44.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065357, 34.853374, 44.762974>,  <33.305614, 34.581436, 44.931278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065357, 34.853374, 44.762974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317150, -0.685694, -0.655164,
		-0.733928, -0.260069, 0.627466,
		-0.600637, 0.679844, -0.420769,
		32.885166, 35.057327, 44.636745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626736, 34.262623, 44.748566>,  <33.305614, 34.581436, 44.931278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626736, 34.262623, 44.748566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630020, 34.586891, 44.514385>,  <32.631992, 34.781452, 44.373878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630020, 34.586891, 44.514385>,  <32.626736, 34.262623, 44.748566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630020, 34.586891, 44.514385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377782, -0.539565, -0.752429,
		-0.925858, 0.227353, 0.301823,
		0.008214, 0.810666, -0.585451,
		32.632484, 34.830090, 44.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955523, 34.193005, 44.399952>,  <32.626736, 34.262623, 44.748566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955523, 34.193005, 44.399952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177616, 34.448261, 44.186600>,  <32.310871, 34.601414, 44.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177616, 34.448261, 44.186600>,  <31.955523, 34.193005, 44.399952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177616, 34.448261, 44.186600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460551, -0.298104, -0.836078,
		-0.692538, 0.709866, 0.128379,
		0.555234, 0.638141, -0.533378,
		32.344185, 34.639702, 44.026585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568636, 34.421783, 43.893452>,  <31.955523, 34.193005, 44.399952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568636, 34.421783, 43.893452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904505, 34.578087, 43.742584>,  <32.106026, 34.671867, 43.652061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904505, 34.578087, 43.742584>,  <31.568636, 34.421783, 43.893452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904505, 34.578087, 43.742584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338498, -0.166539, -0.926112,
		-0.424698, 0.905304, -0.007568,
		0.839673, 0.390756, -0.377172,
		32.156406, 34.695312, 43.629433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441488, 34.865391, 43.254658>,  <31.568636, 34.421783, 43.893452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441488, 34.865391, 43.254658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828218, 34.765778, 43.231907>,  <32.060257, 34.706009, 43.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828218, 34.765778, 43.231907>,  <31.441488, 34.865391, 43.254658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828218, 34.765778, 43.231907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105294, -0.185679, -0.976953,
		0.232730, 0.950531, -0.205740,
		0.966825, -0.249029, -0.056872,
		32.118267, 34.691071, 43.214844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636562, 35.185917, 42.623814>,  <31.441488, 34.865391, 43.254658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636562, 35.185917, 42.623814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843916, 34.856533, 42.716064>,  <31.968328, 34.658901, 42.771416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843916, 34.856533, 42.716064>,  <31.636562, 35.185917, 42.623814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843916, 34.856533, 42.716064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002796, -0.268064, -0.963397,
		0.855144, 0.500054, -0.136658,
		0.518383, -0.823461, 0.230631,
		31.999432, 34.609493, 42.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237568, 35.143066, 42.136364>,  <31.636562, 35.185917, 42.623814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237568, 35.143066, 42.136364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173439, 34.782078, 42.296288>,  <32.134964, 34.565483, 42.392242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173439, 34.782078, 42.296288>,  <32.237568, 35.143066, 42.136364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173439, 34.782078, 42.296288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235570, -0.358360, -0.903374,
		0.958543, -0.239010, -0.155143,
		-0.160318, -0.902470, 0.399807,
		32.125343, 34.511337, 42.416229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653343, 34.632607, 41.698071>,  <32.237568, 35.143066, 42.136364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653343, 34.632607, 41.698071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403374, 34.388271, 41.892536>,  <32.253391, 34.241673, 42.009216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403374, 34.388271, 41.892536>,  <32.653343, 34.632607, 41.698071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403374, 34.388271, 41.892536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186763, -0.487679, -0.852812,
		0.758018, -0.623738, 0.190680,
		-0.624923, -0.610835, 0.486160,
		32.215897, 34.205021, 42.038383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773460, 34.011734, 41.413227>,  <32.653343, 34.632607, 41.698071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773460, 34.011734, 41.413227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403214, 33.987583, 41.562675>,  <32.181065, 33.973091, 41.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403214, 33.987583, 41.562675>,  <32.773460, 34.011734, 41.413227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403214, 33.987583, 41.562675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339891, -0.301618, -0.890787,
		0.166475, -0.951515, 0.258659,
		-0.925613, -0.060378, 0.373624,
		32.125530, 33.969471, 41.674763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536488, 33.442951, 41.128548>,  <32.773460, 34.011734, 41.413227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536488, 33.442951, 41.128548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193424, 33.603329, 41.257339>,  <31.987587, 33.699554, 41.334614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193424, 33.603329, 41.257339>,  <32.536488, 33.442951, 41.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193424, 33.603329, 41.257339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449179, -0.279323, -0.848656,
		-0.250327, -0.872481, 0.419659,
		-0.857656, 0.400943, 0.321978,
		31.936127, 33.723614, 41.353931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998659, 32.871334, 41.039082>,  <32.536488, 33.442951, 41.128548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998659, 32.871334, 41.039082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813469, 33.224880, 41.065727>,  <31.702354, 33.437008, 41.081715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813469, 33.224880, 41.065727>,  <31.998659, 32.871334, 41.039082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813469, 33.224880, 41.065727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545752, -0.225034, -0.807165,
		-0.698433, -0.410053, 0.586555,
		-0.462975, 0.883864, 0.066616,
		31.674576, 33.490040, 41.085712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236891, 32.678703, 41.051445>,  <31.998659, 32.871334, 41.039082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236891, 32.678703, 41.051445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287754, 33.055447, 40.927036>,  <31.318272, 33.281494, 40.852390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287754, 33.055447, 40.927036>,  <31.236891, 32.678703, 41.051445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287754, 33.055447, 40.927036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371311, -0.245562, -0.895448,
		-0.919760, 0.229349, 0.318497,
		0.127159, 0.941859, -0.311018,
		31.325901, 33.338005, 40.833733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570934, 32.952316, 40.876015>,  <31.236891, 32.678703, 41.051445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570934, 32.952316, 40.876015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827063, 33.186501, 40.677128>,  <30.980740, 33.327011, 40.557796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827063, 33.186501, 40.677128>,  <30.570934, 32.952316, 40.876015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827063, 33.186501, 40.677128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522667, -0.142241, -0.840587,
		-0.562855, 0.798125, 0.214921,
		0.640323, 0.585461, -0.497214,
		31.019159, 33.362137, 40.527962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145187, 33.324753, 40.343620>,  <30.570934, 32.952316, 40.876015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145187, 33.324753, 40.343620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527155, 33.331627, 40.225071>,  <30.756334, 33.335751, 40.153942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527155, 33.331627, 40.225071>,  <30.145187, 33.324753, 40.343620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527155, 33.331627, 40.225071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296663, 0.017740, -0.954818,
		-0.011148, 0.999695, 0.022037,
		0.954917, 0.017182, -0.296375,
		30.813629, 33.336781, 40.136158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239403, 33.971382, 39.900040>,  <30.145187, 33.324753, 40.343620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239403, 33.971382, 39.900040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507574, 33.683777, 39.826775>,  <30.668478, 33.511215, 39.782814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507574, 33.683777, 39.826775>,  <30.239403, 33.971382, 39.900040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507574, 33.683777, 39.826775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267409, -0.003874, -0.963575,
		0.692111, 0.694989, -0.194867,
		0.670429, -0.719010, -0.183165,
		30.708702, 33.468075, 39.771824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431425, 34.055557, 39.146973>,  <30.239403, 33.971382, 39.900040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431425, 34.055557, 39.146973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584892, 33.705803, 39.265804>,  <30.676973, 33.495953, 39.337105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584892, 33.705803, 39.265804>,  <30.431425, 34.055557, 39.146973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584892, 33.705803, 39.265804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208399, -0.395378, -0.894565,
		0.899649, 0.281305, -0.333914,
		0.383668, -0.874382, 0.297078,
		30.699993, 33.443489, 39.354927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516048, 33.836811, 38.487915>,  <30.431425, 34.055557, 39.146973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516048, 33.836811, 38.487915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585550, 33.526814, 38.730961>,  <30.627251, 33.340816, 38.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585550, 33.526814, 38.730961>,  <30.516048, 33.836811, 38.487915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585550, 33.526814, 38.730961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244999, -0.631619, -0.735549,
		0.953826, -0.021059, -0.299619,
		0.173755, -0.774993, 0.607614,
		30.637676, 33.294315, 38.913246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004820, 33.462700, 38.164959>,  <30.516048, 33.836811, 38.487915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004820, 33.462700, 38.164959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766254, 33.237095, 38.393410>,  <30.623116, 33.101730, 38.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766254, 33.237095, 38.393410>,  <31.004820, 33.462700, 38.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766254, 33.237095, 38.393410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467571, -0.334220, -0.818336,
		0.652433, -0.755107, -0.064383,
		-0.596413, -0.564013, 0.571123,
		30.587330, 33.067890, 38.564747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255520, 34.244278, 38.133709>,  <31.004820, 33.462700, 38.164959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255520, 34.244278, 38.133709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495094, 34.001839, 37.924358>,  <31.638838, 33.856373, 37.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495094, 34.001839, 37.924358>,  <31.255520, 34.244278, 38.133709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495094, 34.001839, 37.924358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725542, 0.134108, 0.674984,
		-0.338920, -0.784000, 0.520074,
		0.598934, -0.606101, -0.523373,
		31.674774, 33.820007, 37.767345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533161, 33.732761, 38.580639>,  <31.255520, 34.244278, 38.133709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533161, 33.732761, 38.580639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799591, 33.799213, 38.289780>,  <31.959450, 33.839085, 38.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799591, 33.799213, 38.289780>,  <31.533161, 33.732761, 38.580639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799591, 33.799213, 38.289780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692516, 0.224387, 0.685618,
		0.277063, -0.960235, 0.034411,
		0.666076, 0.166129, -0.727147,
		31.999414, 33.849052, 38.071636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055794, 33.316509, 38.788155>,  <31.533161, 33.732761, 38.580639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055794, 33.316509, 38.788155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 33.586857, 38.540672>,  <32.312119, 33.749065, 38.392185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215996, 33.586857, 38.540672>,  <32.055794, 33.316509, 38.788155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215996, 33.586857, 38.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818949, 0.038827, 0.572551,
		0.410992, -0.735997, -0.537953,
		0.400509, 0.675870, -0.618702,
		32.336147, 33.789619, 38.355061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723080, 33.116539, 38.758808>,  <32.055794, 33.316509, 38.788155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723080, 33.116539, 38.758808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728745, 33.500889, 38.648155>,  <32.732143, 33.731499, 38.581764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728745, 33.500889, 38.648155>,  <32.723080, 33.116539, 38.758808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728745, 33.500889, 38.648155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821017, 0.146738, 0.551724,
		0.570728, -0.234931, -0.786814,
		0.014162, 0.960872, -0.276630,
		32.732994, 33.789150, 38.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427742, 33.338417, 38.752171>,  <32.723080, 33.116539, 38.758808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427742, 33.338417, 38.752171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235199, 33.688778, 38.738907>,  <33.119675, 33.898994, 38.730949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235199, 33.688778, 38.738907>,  <33.427742, 33.338417, 38.752171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235199, 33.688778, 38.738907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771748, 0.441444, 0.457746,
		0.415576, 0.194750, -0.888464,
		-0.481353, 0.875899, -0.033156,
		33.090794, 33.951550, 38.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845070, 33.904522, 38.461014>,  <33.427742, 33.338417, 38.752171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845070, 33.904522, 38.461014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584408, 34.099854, 38.693180>,  <33.428013, 34.217052, 38.832481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584408, 34.099854, 38.693180>,  <33.845070, 33.904522, 38.461014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584408, 34.099854, 38.693180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753402, 0.327990, 0.569919,
		0.087937, 0.808677, -0.581644,
		-0.651653, 0.488328, 0.580416,
		33.388912, 34.246353, 38.867306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176743, 34.474014, 38.555103>,  <33.845070, 33.904522, 38.461014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176743, 34.474014, 38.555103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902794, 34.505306, 38.844883>,  <33.738426, 34.524082, 39.018753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902794, 34.505306, 38.844883>,  <34.176743, 34.474014, 38.555103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902794, 34.505306, 38.844883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574107, 0.670188, 0.470371,
		-0.448720, 0.738057, -0.503906,
		-0.684873, 0.078231, 0.724451,
		33.697330, 34.528774, 39.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258350, 35.168343, 38.774490>,  <34.176743, 34.474014, 38.555103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258350, 35.168343, 38.774490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072739, 35.012386, 39.092651>,  <33.961372, 34.918812, 39.283546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072739, 35.012386, 39.092651>,  <34.258350, 35.168343, 38.774490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072739, 35.012386, 39.092651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664468, 0.440597, 0.603620,
		-0.585797, 0.808615, 0.054621,
		-0.464031, -0.389893, 0.795399,
		33.933529, 34.895420, 39.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102757, 35.705742, 39.300457>,  <34.258350, 35.168343, 38.774490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102757, 35.705742, 39.300457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112408, 35.353107, 39.489021>,  <34.118198, 35.141525, 39.602158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112408, 35.353107, 39.489021>,  <34.102757, 35.705742, 39.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112408, 35.353107, 39.489021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677029, 0.361363, 0.641131,
		-0.735561, 0.303686, 0.605578,
		0.024132, -0.881585, 0.471409,
		34.119648, 35.088631, 39.630444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953308, 35.920082, 39.980614>,  <34.102757, 35.705742, 39.300457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953308, 35.920082, 39.980614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119839, 35.557449, 40.008278>,  <34.219757, 35.339870, 40.024876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119839, 35.557449, 40.008278>,  <33.953308, 35.920082, 39.980614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119839, 35.557449, 40.008278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466059, 0.278105, 0.839909,
		-0.780678, -0.317446, 0.538303,
		0.416330, -0.906579, 0.069162,
		34.244740, 35.285477, 40.029026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744381, 35.585552, 40.589844>,  <33.953308, 35.920082, 39.980614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744381, 35.585552, 40.589844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094101, 35.421898, 40.485378>,  <34.303932, 35.323704, 40.422699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094101, 35.421898, 40.485378>,  <33.744381, 35.585552, 40.589844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094101, 35.421898, 40.485378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375446, 0.229022, 0.898103,
		-0.307638, -0.883263, 0.353844,
		0.874299, -0.409140, -0.261162,
		34.356392, 35.299156, 40.407028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941067, 35.306488, 41.183025>,  <33.744381, 35.585552, 40.589844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941067, 35.306488, 41.183025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274921, 35.305908, 40.962708>,  <34.475235, 35.305561, 40.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274921, 35.305908, 40.962708>,  <33.941067, 35.306488, 41.183025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274921, 35.305908, 40.962708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526868, 0.293666, 0.797603,
		0.160595, -0.955907, 0.245868,
		0.834637, -0.001449, -0.550798,
		34.525314, 35.305473, 40.797466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469650, 34.886375, 41.521168>,  <33.941067, 35.306488, 41.183025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469650, 34.886375, 41.521168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667664, 35.145199, 41.289219>,  <34.786472, 35.300495, 41.150051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667664, 35.145199, 41.289219>,  <34.469650, 34.886375, 41.521168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667664, 35.145199, 41.289219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536802, 0.297018, 0.789699,
		0.683218, -0.702203, -0.200311,
		0.495033, 0.647063, -0.579872,
		34.816174, 35.339317, 41.115257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191967, 34.767242, 41.679737>,  <34.469650, 34.886375, 41.521168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191967, 34.767242, 41.679737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154690, 35.128738, 41.512611>,  <35.132324, 35.345634, 41.412334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154690, 35.128738, 41.512611>,  <35.191967, 34.767242, 41.679737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154690, 35.128738, 41.512611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579215, 0.390535, 0.715537,
		0.809830, -0.175318, -0.559857,
		-0.093197, 0.903740, -0.417813,
		35.126732, 35.399860, 41.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880749, 35.007828, 41.805687>,  <35.191967, 34.767242, 41.679737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880749, 35.007828, 41.805687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654236, 35.334137, 41.758633>,  <35.518330, 35.529922, 41.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654236, 35.334137, 41.758633>,  <35.880749, 35.007828, 41.805687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654236, 35.334137, 41.758633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593198, 0.502479, 0.628992,
		0.572228, 0.286400, -0.768459,
		-0.566278, 0.815776, -0.117640,
		35.484352, 35.578869, 41.723339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370026, 35.570290, 41.806145>,  <35.880749, 35.007828, 41.805687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370026, 35.570290, 41.806145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012314, 35.722218, 41.900803>,  <35.797688, 35.813374, 41.957596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012314, 35.722218, 41.900803>,  <36.370026, 35.570290, 41.806145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012314, 35.722218, 41.900803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427613, 0.569370, 0.702115,
		0.131937, 0.729080, -0.671591,
		-0.894282, 0.379816, 0.236643,
		35.744030, 35.836163, 41.971794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508770, 36.287834, 41.926838>,  <36.370026, 35.570290, 41.806145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508770, 36.287834, 41.926838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164543, 36.195267, 42.108330>,  <35.958008, 36.139729, 42.217224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164543, 36.195267, 42.108330>,  <36.508770, 36.287834, 41.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164543, 36.195267, 42.108330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304020, 0.481340, 0.822121,
		-0.408650, 0.845434, -0.343871,
		-0.860568, -0.231416, 0.453728,
		35.906372, 36.125843, 42.244450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322510, 36.900696, 42.268826>,  <36.508770, 36.287834, 41.926838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322510, 36.900696, 42.268826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120544, 36.629642, 42.482693>,  <35.999363, 36.467010, 42.611015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120544, 36.629642, 42.482693>,  <36.322510, 36.900696, 42.268826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120544, 36.629642, 42.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274894, 0.460941, 0.843781,
		-0.818225, 0.573018, -0.046460,
		-0.504917, -0.677631, 0.534672,
		35.969070, 36.426353, 42.643093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914570, 37.288280, 42.701508>,  <36.322510, 36.900696, 42.268826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914570, 37.288280, 42.701508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964664, 36.927094, 42.865932>,  <35.994720, 36.710381, 42.964588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964664, 36.927094, 42.865932>,  <35.914570, 37.288280, 42.701508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964664, 36.927094, 42.865932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080524, 0.422208, 0.902915,
		-0.988853, -0.079981, 0.125588,
		0.125240, -0.902964, 0.411062,
		36.002235, 36.656204, 42.989250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347485, 37.154613, 43.128620>,  <35.914570, 37.288280, 42.701508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347485, 37.154613, 43.128620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647411, 36.933765, 43.274464>,  <35.827366, 36.801258, 43.361969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647411, 36.933765, 43.274464>,  <35.347485, 37.154613, 43.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647411, 36.933765, 43.274464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116178, 0.432633, 0.894053,
		-0.651365, -0.712736, 0.260251,
		0.749817, -0.552119, 0.364606,
		35.872356, 36.768131, 43.383846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061596, 37.047951, 43.680817>,  <35.347485, 37.154613, 43.128620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061596, 37.047951, 43.680817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444061, 36.952793, 43.749126>,  <35.673538, 36.895699, 43.790112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444061, 36.952793, 43.749126>,  <35.061596, 37.047951, 43.680817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444061, 36.952793, 43.749126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123955, 0.199563, 0.972013,
		-0.265322, -0.950567, 0.161325,
		0.956159, -0.237899, 0.170776,
		35.730907, 36.881424, 43.800358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112228, 36.566502, 44.300285>,  <35.061596, 37.047951, 43.680817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112228, 36.566502, 44.300285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461685, 36.758080, 44.265953>,  <35.671360, 36.873028, 44.245354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461685, 36.758080, 44.265953>,  <35.112228, 36.566502, 44.300285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461685, 36.758080, 44.265953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088357, 0.329613, 0.939973,
		0.478487, -0.813612, 0.330280,
		0.873638, 0.478947, -0.085827,
		35.723778, 36.901764, 44.240204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357689, 36.562462, 45.080452>,  <35.112228, 36.566502, 44.300285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357689, 36.562462, 45.080452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582668, 36.818455, 44.871044>,  <35.717655, 36.972050, 44.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582668, 36.818455, 44.871044>,  <35.357689, 36.562462, 45.080452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582668, 36.818455, 44.871044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036184, 0.613510, 0.788858,
		0.826038, -0.462638, 0.321913,
		0.562452, 0.639978, -0.523522,
		35.751404, 37.010448, 44.713989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101547, 36.710209, 45.435543>,  <35.357689, 36.562462, 45.080452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101547, 36.710209, 45.435543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995293, 37.020790, 45.206963>,  <35.931538, 37.207138, 45.069813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995293, 37.020790, 45.206963>,  <36.101547, 36.710209, 45.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995293, 37.020790, 45.206963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033454, 0.599818, 0.799437,
		0.963492, 0.193244, -0.185311,
		-0.265639, 0.776451, -0.571454,
		35.915600, 37.253727, 45.035526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383049, 37.313625, 45.863052>,  <36.101547, 36.710209, 45.435543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383049, 37.313625, 45.863052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141529, 37.452965, 45.576252>,  <35.996616, 37.536568, 45.404171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141529, 37.452965, 45.576252>,  <36.383049, 37.313625, 45.863052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141529, 37.452965, 45.576252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173799, 0.820298, 0.544890,
		0.777961, 0.453616, -0.434751,
		-0.603797, 0.348344, -0.716998,
		35.960388, 37.557468, 45.361153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585300, 37.928185, 45.907341>,  <36.383049, 37.313625, 45.863052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585300, 37.928185, 45.907341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241196, 37.948551, 45.704422>,  <36.034733, 37.960770, 45.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241196, 37.948551, 45.704422>,  <36.585300, 37.928185, 45.907341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241196, 37.948551, 45.704422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257398, 0.815523, 0.518333,
		0.440106, 0.576481, -0.688459,
		-0.860263, 0.050913, -0.507302,
		35.983116, 37.963825, 45.552231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438492, 38.560352, 45.455582>,  <36.585300, 37.928185, 45.907341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438492, 38.560352, 45.455582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078510, 38.425968, 45.566727>,  <35.862522, 38.345337, 45.633411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078510, 38.425968, 45.566727>,  <36.438492, 38.560352, 45.455582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078510, 38.425968, 45.566727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223648, 0.902834, 0.367249,
		-0.374244, 0.268366, -0.887649,
		-0.899957, -0.335962, 0.277860,
		35.808521, 38.325180, 45.650085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016300, 39.094662, 45.298084>,  <36.438492, 38.560352, 45.455582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016300, 39.094662, 45.298084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765713, 38.868908, 45.513119>,  <35.615360, 38.733456, 45.642139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765713, 38.868908, 45.513119>,  <36.016300, 39.094662, 45.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765713, 38.868908, 45.513119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416402, 0.825375, 0.381267,
		-0.658894, 0.015000, -0.752086,
		-0.626472, -0.564385, 0.537589,
		35.577770, 38.699593, 45.674397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216095, 39.368729, 45.211853>,  <36.016300, 39.094662, 45.298084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216095, 39.368729, 45.211853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246605, 39.157539, 45.550186>,  <35.264912, 39.030827, 45.753185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246605, 39.157539, 45.550186>,  <35.216095, 39.368729, 45.211853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246605, 39.157539, 45.550186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446298, 0.740499, 0.502473,
		-0.891627, -0.415820, -0.179149,
		0.076279, -0.527973, 0.845829,
		35.269489, 38.999149, 45.803936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571079, 39.557560, 45.513466>,  <35.216095, 39.368729, 45.211853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571079, 39.557560, 45.513466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777569, 39.402256, 45.818821>,  <34.901463, 39.309074, 46.002033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777569, 39.402256, 45.818821>,  <34.571079, 39.557560, 45.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777569, 39.402256, 45.818821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321822, 0.738080, 0.593017,
		-0.793689, -0.551805, 0.256064,
		0.516226, -0.388264, 0.763389,
		34.932438, 39.285778, 46.047836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119522, 39.570156, 46.073807>,  <34.571079, 39.557560, 45.513466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119522, 39.570156, 46.073807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471516, 39.518932, 46.256775>,  <34.682713, 39.488197, 46.366558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471516, 39.518932, 46.256775>,  <34.119522, 39.570156, 46.073807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471516, 39.518932, 46.256775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231380, 0.725447, 0.648221,
		-0.414847, -0.676260, 0.608749,
		0.879981, -0.128060, 0.457422,
		34.735508, 39.480515, 46.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936680, 39.546463, 46.775181>,  <34.119522, 39.570156, 46.073807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936680, 39.546463, 46.775181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317642, 39.666199, 46.752121>,  <34.546219, 39.738041, 46.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317642, 39.666199, 46.752121>,  <33.936680, 39.546463, 46.775181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317642, 39.666199, 46.752121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169929, 0.678337, 0.714831,
		0.253081, -0.671012, 0.696917,
		0.952404, 0.299336, -0.057650,
		34.603363, 39.756001, 46.734825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153652, 39.589249, 47.481056>,  <33.936680, 39.546463, 46.775181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153652, 39.589249, 47.481056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384827, 39.812645, 47.243038>,  <34.523533, 39.946682, 47.100227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384827, 39.812645, 47.243038>,  <34.153652, 39.589249, 47.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384827, 39.812645, 47.243038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118723, 0.778931, 0.615769,
		0.807400, -0.285229, 0.516478,
		0.577936, 0.558489, -0.595046,
		34.558208, 39.980190, 47.064526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660492, 39.896358, 47.943584>,  <34.153652, 39.589249, 47.481056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660492, 39.896358, 47.943584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684807, 40.102440, 47.601620>,  <34.699398, 40.226089, 47.396442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684807, 40.102440, 47.601620>,  <34.660492, 39.896358, 47.943584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684807, 40.102440, 47.601620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106348, 0.848274, 0.518769,
		0.992469, -0.122454, -0.003225,
		0.060790, 0.515205, -0.854908,
		34.703045, 40.257000, 47.345146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228394, 40.339371, 47.968910>,  <34.660492, 39.896358, 47.943584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228394, 40.339371, 47.968910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992329, 40.521751, 47.702431>,  <34.850689, 40.631180, 47.542545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992329, 40.521751, 47.702431>,  <35.228394, 40.339371, 47.968910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992329, 40.521751, 47.702431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091835, 0.857793, 0.505724,
		0.802042, 0.237281, -0.548112,
		-0.590165, 0.455948, -0.666196,
		34.815281, 40.658535, 47.502571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565342, 40.917160, 47.759048>,  <35.228394, 40.339371, 47.968910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565342, 40.917160, 47.759048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174641, 40.972565, 47.693611>,  <34.940220, 41.005806, 47.654350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174641, 40.972565, 47.693611>,  <35.565342, 40.917160, 47.759048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174641, 40.972565, 47.693611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042510, 0.873199, 0.485507,
		0.210098, 0.467267, -0.858790,
		-0.976756, 0.138511, -0.163594,
		34.881615, 41.014118, 47.644531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520824, 41.548874, 47.935810>,  <35.565342, 40.917160, 47.759048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520824, 41.548874, 47.935810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127384, 41.493183, 47.889938>,  <34.891319, 41.459770, 47.862415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127384, 41.493183, 47.889938>,  <35.520824, 41.548874, 47.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127384, 41.493183, 47.889938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175960, 0.880408, 0.440362,
		0.039656, 0.453319, -0.890466,
		-0.983598, -0.139223, -0.114680,
		34.832306, 41.451416, 47.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172089, 42.063618, 47.529072>,  <35.520824, 41.548874, 47.935810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172089, 42.063618, 47.529072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876858, 41.911598, 47.752071>,  <34.699718, 41.820389, 47.885872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876858, 41.911598, 47.752071>,  <35.172089, 42.063618, 47.529072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876858, 41.911598, 47.752071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180591, 0.907402, 0.379486,
		-0.650100, 0.179409, -0.738364,
		-0.738076, -0.380045, 0.557503,
		34.655434, 41.797585, 47.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835842, 42.700150, 47.578274>,  <35.172089, 42.063618, 47.529072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835842, 42.700150, 47.578274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682529, 42.446182, 47.846592>,  <34.590542, 42.293800, 48.007584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682529, 42.446182, 47.846592>,  <34.835842, 42.700150, 47.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682529, 42.446182, 47.846592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410087, 0.767735, 0.492352,
		-0.827599, -0.086374, -0.554635,
		-0.383286, -0.634919, 0.670798,
		34.567543, 42.255707, 48.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430725, 43.318775, 47.880836>,  <34.835842, 42.700150, 47.578274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430725, 43.318775, 47.880836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594406, 43.607613, 47.657719>,  <34.692616, 43.780914, 47.523849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594406, 43.607613, 47.657719>,  <34.430725, 43.318775, 47.880836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594406, 43.607613, 47.657719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390349, -0.691089, -0.608295,
		-0.824732, 0.031181, -0.564664,
		0.409201, 0.722097, -0.557792,
		34.717167, 43.824242, 47.490379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289093, 43.122021, 47.125599>,  <34.430725, 43.318775, 47.880836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289093, 43.122021, 47.125599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608662, 43.362534, 47.120186>,  <34.800404, 43.506840, 47.116940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608662, 43.362534, 47.120186>,  <34.289093, 43.122021, 47.125599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608662, 43.362534, 47.120186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463250, -0.629562, -0.623740,
		-0.383561, 0.492052, -0.781515,
		0.798925, 0.601279, -0.013533,
		34.848339, 43.542919, 47.116127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372841, 43.133900, 46.527050>,  <34.289093, 43.122021, 47.125599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372841, 43.133900, 46.527050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723492, 43.261887, 46.670799>,  <34.933880, 43.338680, 46.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723492, 43.261887, 46.670799>,  <34.372841, 43.133900, 46.527050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723492, 43.261887, 46.670799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477035, -0.480128, -0.736149,
		-0.063000, 0.816760, -0.573528,
		0.876623, 0.319970, 0.359375,
		34.986477, 43.357876, 46.778610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696552, 43.360733, 45.962463>,  <34.372841, 43.133900, 46.527050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696552, 43.360733, 45.962463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985897, 43.267139, 46.222309>,  <35.159504, 43.210983, 46.378216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985897, 43.267139, 46.222309>,  <34.696552, 43.360733, 45.962463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985897, 43.267139, 46.222309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384815, -0.644548, -0.660663,
		0.573295, 0.727879, -0.376198,
		0.723360, -0.233988, 0.649615,
		35.202904, 43.196941, 46.417194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247543, 43.396374, 45.541691>,  <34.696552, 43.360733, 45.962463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247543, 43.396374, 45.541691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315563, 43.158539, 45.856030>,  <35.356373, 43.015839, 46.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315563, 43.158539, 45.856030>,  <35.247543, 43.396374, 45.541691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315563, 43.158539, 45.856030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462847, -0.655830, -0.596373,
		0.869975, 0.465136, 0.163681,
		0.170047, -0.594589, 0.785842,
		35.366577, 42.980164, 46.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807747, 43.105362, 45.218231>,  <35.247543, 43.396374, 45.541691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807747, 43.105362, 45.218231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748886, 42.884235, 45.546314>,  <35.713570, 42.751560, 45.743164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748886, 42.884235, 45.546314>,  <35.807747, 43.105362, 45.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748886, 42.884235, 45.546314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404856, -0.790255, -0.459988,
		0.902462, 0.264379, 0.340097,
		-0.147152, -0.552812, 0.820210,
		35.704739, 42.718391, 45.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375847, 42.629738, 45.326324>,  <35.807747, 43.105362, 45.218231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375847, 42.629738, 45.326324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075806, 42.455559, 45.525417>,  <35.895782, 42.351051, 45.644875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075806, 42.455559, 45.525417>,  <36.375847, 42.629738, 45.326324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075806, 42.455559, 45.525417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214548, -0.872154, -0.439678,
		0.625555, -0.223015, 0.747626,
		-0.750100, -0.435444, 0.497733,
		35.850777, 42.324924, 45.674736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633213, 41.987419, 45.527317>,  <36.375847, 42.629738, 45.326324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633213, 41.987419, 45.527317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235497, 41.945461, 45.519421>,  <35.996868, 41.920288, 45.514683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235497, 41.945461, 45.519421>,  <36.633213, 41.987419, 45.527317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235497, 41.945461, 45.519421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093720, -0.769455, -0.631788,
		0.051080, -0.630029, 0.774890,
		-0.994287, -0.104894, -0.019742,
		35.937210, 41.913994, 45.513496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544842, 41.356434, 45.547222>,  <36.633213, 41.987419, 45.527317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544842, 41.356434, 45.547222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177517, 41.458183, 45.425896>,  <35.957123, 41.519234, 45.353100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177517, 41.458183, 45.425896>,  <36.544842, 41.356434, 45.547222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177517, 41.458183, 45.425896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011712, -0.783338, -0.621485,
		-0.395684, -0.567165, 0.722328,
		-0.918312, 0.254371, -0.303312,
		35.902023, 41.534496, 45.334904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164276, 40.714024, 45.513927>,  <36.544842, 41.356434, 45.547222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164276, 40.714024, 45.513927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979294, 40.989265, 45.290268>,  <35.868305, 41.154411, 45.156071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979294, 40.989265, 45.290268>,  <36.164276, 40.714024, 45.513927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979294, 40.989265, 45.290268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141877, -0.679937, -0.719414,
		-0.875220, -0.253364, 0.412065,
		-0.462451, 0.688107, -0.559148,
		35.840557, 41.195698, 45.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475628, 40.383965, 45.277584>,  <36.164276, 40.714024, 45.513927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475628, 40.383965, 45.277584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567154, 40.686150, 45.032009>,  <35.622070, 40.867458, 44.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567154, 40.686150, 45.032009>,  <35.475628, 40.383965, 45.277584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567154, 40.686150, 45.032009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073858, -0.615382, -0.784761,
		-0.970663, 0.224912, -0.085014,
		0.228818, 0.755459, -0.613941,
		35.635799, 40.912788, 44.847828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913780, 40.441944, 44.909004>,  <35.475628, 40.383965, 45.277584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913780, 40.441944, 44.909004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201813, 40.615662, 44.692532>,  <35.374630, 40.719891, 44.562649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201813, 40.615662, 44.692532>,  <34.913780, 40.441944, 44.909004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201813, 40.615662, 44.692532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210555, -0.606393, -0.766781,
		-0.661177, 0.666091, -0.345208,
		0.720078, 0.434293, -0.541182,
		35.417835, 40.745949, 44.530178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624489, 40.537857, 44.234470>,  <34.913780, 40.441944, 44.909004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624489, 40.537857, 44.234470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014927, 40.577358, 44.157032>,  <35.249191, 40.601059, 44.110569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014927, 40.577358, 44.157032>,  <34.624489, 40.537857, 44.234470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014927, 40.577358, 44.157032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123606, -0.480452, -0.868267,
		-0.178758, 0.871444, -0.456763,
		0.976098, 0.098751, -0.193600,
		35.307755, 40.606983, 44.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592613, 40.738827, 43.570431>,  <34.624489, 40.537857, 44.234470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592613, 40.738827, 43.570431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952354, 40.570976, 43.619545>,  <35.168201, 40.470268, 43.649014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952354, 40.570976, 43.619545>,  <34.592613, 40.738827, 43.570431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952354, 40.570976, 43.619545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135773, -0.534993, -0.833875,
		0.415600, 0.733280, -0.538123,
		0.899356, -0.419622, 0.122783,
		35.222160, 40.445091, 43.656380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887859, 40.793850, 42.955566>,  <34.592613, 40.738827, 43.570431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887859, 40.793850, 42.955566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109253, 40.502182, 43.116543>,  <35.242088, 40.327179, 43.213127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109253, 40.502182, 43.116543>,  <34.887859, 40.793850, 42.955566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109253, 40.502182, 43.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063177, -0.518573, -0.852696,
		0.830457, 0.446532, -0.333091,
		0.553488, -0.729171, 0.402442,
		35.275299, 40.283432, 43.237274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382164, 40.596222, 42.430325>,  <34.887859, 40.793850, 42.955566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382164, 40.596222, 42.430325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373520, 40.304573, 42.703941>,  <35.368332, 40.129585, 42.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373520, 40.304573, 42.703941>,  <35.382164, 40.596222, 42.430325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373520, 40.304573, 42.703941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097307, -0.682489, -0.724389,
		0.995020, 0.050909, 0.085697,
		-0.021609, -0.729121, 0.684044,
		35.367039, 40.085838, 42.909153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939629, 40.291119, 42.277679>,  <35.382164, 40.596222, 42.430325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939629, 40.291119, 42.277679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737450, 40.017315, 42.487816>,  <35.616142, 39.853035, 42.613895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737450, 40.017315, 42.487816>,  <35.939629, 40.291119, 42.277679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737450, 40.017315, 42.487816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155846, -0.671241, -0.724671,
		0.848668, -0.284409, 0.445953,
		-0.505445, -0.684505, 0.525337,
		35.585815, 39.811962, 42.645416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290733, 39.701683, 42.115688>,  <35.939629, 40.291119, 42.277679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290733, 39.701683, 42.115688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944607, 39.569527, 42.266453>,  <35.736931, 39.490231, 42.356911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944607, 39.569527, 42.266453>,  <36.290733, 39.701683, 42.115688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944607, 39.569527, 42.266453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089166, -0.638517, -0.764425,
		0.493226, -0.695079, 0.523061,
		-0.865319, -0.330395, 0.376911,
		35.685013, 39.470409, 42.379524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436501, 38.924576, 42.153328>,  <36.290733, 39.701683, 42.115688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436501, 38.924576, 42.153328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051689, 39.032642, 42.137802>,  <35.820801, 39.097485, 42.128487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051689, 39.032642, 42.137802>,  <36.436501, 38.924576, 42.153328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051689, 39.032642, 42.137802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146330, -0.630554, -0.762227,
		-0.230401, -0.727607, 0.646146,
		-0.962031, 0.270168, -0.038810,
		35.763081, 39.113693, 42.126160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984261, 38.346947, 42.188171>,  <36.436501, 38.924576, 42.153328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984261, 38.346947, 42.188171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748032, 38.616467, 42.010536>,  <35.606293, 38.778179, 41.903957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748032, 38.616467, 42.010536>,  <35.984261, 38.346947, 42.188171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748032, 38.616467, 42.010536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120320, -0.617674, -0.777176,
		-0.797963, -0.405548, 0.445854,
		-0.590574, 0.673802, -0.444085,
		35.570858, 38.818607, 41.877312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449341, 37.944202, 41.855488>,  <35.984261, 38.346947, 42.188171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449341, 37.944202, 41.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469540, 38.298176, 41.670296>,  <35.481659, 38.510559, 41.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469540, 38.298176, 41.670296>,  <35.449341, 37.944202, 41.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469540, 38.298176, 41.670296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045572, -0.465129, -0.884069,
		-0.997684, 0.023547, -0.063818,
		0.050501, 0.884930, -0.462978,
		35.484692, 38.563656, 41.531403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061211, 37.743233, 41.394302>,  <35.449341, 37.944202, 41.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061211, 37.743233, 41.394302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200886, 38.093243, 41.260204>,  <35.284691, 38.303249, 41.179745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200886, 38.093243, 41.260204>,  <35.061211, 37.743233, 41.394302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200886, 38.093243, 41.260204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034039, -0.345685, -0.937733,
		-0.936433, 0.338860, -0.090926,
		0.349192, 0.875029, -0.335245,
		35.305645, 38.355751, 41.159630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541336, 38.020763, 40.875340>,  <35.061211, 37.743233, 41.394302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541336, 38.020763, 40.875340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879772, 38.225006, 40.814140>,  <35.082836, 38.347553, 40.777420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879772, 38.225006, 40.814140>,  <34.541336, 38.020763, 40.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879772, 38.225006, 40.814140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122986, -0.466287, -0.876042,
		-0.518654, 0.722396, -0.457320,
		0.846092, 0.510607, -0.152997,
		35.133598, 38.378189, 40.768242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542007, 38.382484, 40.100151>,  <34.541336, 38.020763, 40.875340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542007, 38.382484, 40.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907894, 38.315502, 40.247265>,  <35.127426, 38.275314, 40.335533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907894, 38.315502, 40.247265>,  <34.542007, 38.382484, 40.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907894, 38.315502, 40.247265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249605, -0.481623, -0.840082,
		0.317804, 0.860232, -0.398749,
		0.914712, -0.167451, 0.367780,
		35.182308, 38.265266, 40.357597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046658, 38.497723, 39.591125>,  <34.542007, 38.382484, 40.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046658, 38.497723, 39.591125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253563, 38.277378, 39.853115>,  <35.377705, 38.145172, 40.010307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253563, 38.277378, 39.853115>,  <35.046658, 38.497723, 39.591125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253563, 38.277378, 39.853115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505012, -0.421401, -0.753249,
		0.690944, 0.720395, 0.060218,
		0.517261, -0.550864, 0.654973,
		35.408741, 38.112118, 40.049606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770874, 38.482990, 39.342384>,  <35.046658, 38.497723, 39.591125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770874, 38.482990, 39.342384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749432, 38.164635, 39.583607>,  <35.736568, 37.973621, 39.728340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749432, 38.164635, 39.583607>,  <35.770874, 38.482990, 39.342384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749432, 38.164635, 39.583607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598871, -0.508886, -0.618376,
		0.799050, 0.328009, 0.503915,
		-0.053603, -0.795893, 0.603060,
		35.733353, 37.925865, 39.764526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433342, 38.239761, 39.380150>,  <35.770874, 38.482990, 39.342384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433342, 38.239761, 39.380150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237255, 37.915745, 39.508846>,  <36.119602, 37.721333, 39.586063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237255, 37.915745, 39.508846>,  <36.433342, 38.239761, 39.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237255, 37.915745, 39.508846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596222, -0.580912, -0.554131,
		0.635772, -0.079816, 0.767739,
		-0.490217, -0.810044, 0.321739,
		36.090191, 37.672733, 39.605370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981152, 37.703949, 39.505505>,  <36.433342, 38.239761, 39.380150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981152, 37.703949, 39.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638565, 37.503220, 39.457115>,  <36.433014, 37.382782, 39.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638565, 37.503220, 39.457115>,  <36.981152, 37.703949, 39.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638565, 37.503220, 39.457115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459348, -0.633998, -0.622130,
		0.235504, -0.588403, 0.773511,
		-0.856468, -0.501824, -0.120973,
		36.381626, 37.352673, 39.420822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174629, 36.967197, 39.724865>,  <36.981152, 37.703949, 39.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174629, 36.967197, 39.724865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853153, 36.982834, 39.487362>,  <36.660267, 36.992214, 39.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853153, 36.982834, 39.487362>,  <37.174629, 36.967197, 39.724865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853153, 36.982834, 39.487362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359432, -0.763344, -0.536764,
		-0.474225, -0.644809, 0.599443,
		-0.803691, 0.039088, -0.593762,
		36.612045, 36.994560, 39.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936752, 36.331364, 39.634823>,  <37.174629, 36.967197, 39.724865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936752, 36.331364, 39.634823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790367, 36.526997, 39.318123>,  <36.702538, 36.644375, 39.128101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790367, 36.526997, 39.318123>,  <36.936752, 36.331364, 39.634823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790367, 36.526997, 39.318123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274780, -0.756054, -0.594035,
		-0.889140, -0.434951, 0.142295,
		-0.365959, 0.489080, -0.791754,
		36.680580, 36.673721, 39.080597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774509, 35.760342, 39.190102>,  <36.936752, 36.331364, 39.634823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774509, 35.760342, 39.190102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750080, 36.092377, 38.968391>,  <36.735420, 36.291599, 38.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750080, 36.092377, 38.968391>,  <36.774509, 35.760342, 39.190102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750080, 36.092377, 38.968391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430603, -0.479064, -0.764904,
		-0.900472, -0.285390, -0.328180,
		-0.061077, 0.830091, -0.554274,
		36.731758, 36.341404, 38.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446728, 35.631920, 38.563698>,  <36.774509, 35.760342, 39.190102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446728, 35.631920, 38.563698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659027, 35.962910, 38.490376>,  <36.786407, 36.161503, 38.446384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659027, 35.962910, 38.490376>,  <36.446728, 35.631920, 38.563698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659027, 35.962910, 38.490376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455866, -0.461046, -0.761330,
		-0.714491, 0.320509, -0.621914,
		0.530744, 0.827472, -0.183304,
		36.818249, 36.211151, 38.435383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277287, 35.803745, 37.898193>,  <36.446728, 35.631920, 38.563698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277287, 35.803745, 37.898193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620346, 36.003304, 37.948048>,  <36.826183, 36.123039, 37.977962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620346, 36.003304, 37.948048>,  <36.277287, 35.803745, 37.898193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620346, 36.003304, 37.948048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327570, -0.343204, -0.880289,
		-0.396395, 0.795811, -0.457773,
		0.857653, 0.498895, 0.124639,
		36.877644, 36.152973, 37.985439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466785, 36.035294, 37.195961>,  <36.277287, 35.803745, 37.898193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466785, 36.035294, 37.195961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787582, 36.073063, 37.431892>,  <36.980061, 36.095726, 37.573452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787582, 36.073063, 37.431892>,  <36.466785, 36.035294, 37.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787582, 36.073063, 37.431892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594341, -0.224957, -0.772110,
		0.059780, 0.969783, -0.236534,
		0.801988, 0.094424, 0.589829,
		37.028179, 36.101391, 37.608841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877911, 36.557117, 36.925816>,  <36.466785, 36.035294, 37.195961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877911, 36.557117, 36.925816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100510, 36.291443, 37.125481>,  <37.234070, 36.132038, 37.245281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100510, 36.291443, 37.125481>,  <36.877911, 36.557117, 36.925816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100510, 36.291443, 37.125481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556977, -0.147578, -0.817311,
		0.616516, 0.732852, 0.287812,
		0.556493, -0.664190, 0.499167,
		37.267456, 36.092186, 37.275230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354866, 36.456787, 36.460766>,  <36.877911, 36.557117, 36.925816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354866, 36.456787, 36.460766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442730, 36.166702, 36.721783>,  <37.495449, 35.992649, 36.878391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442730, 36.166702, 36.721783>,  <37.354866, 36.456787, 36.460766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442730, 36.166702, 36.721783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606038, -0.422724, -0.673812,
		0.764504, 0.543476, 0.346653,
		0.219662, -0.725216, 0.652541,
		37.508629, 35.949139, 36.917545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054047, 36.494499, 36.619946>,  <37.354866, 36.456787, 36.460766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054047, 36.494499, 36.619946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937080, 36.121002, 36.702522>,  <37.866901, 35.896904, 36.752068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937080, 36.121002, 36.702522>,  <38.054047, 36.494499, 36.619946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937080, 36.121002, 36.702522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685140, -0.355169, -0.635954,
		0.667140, -0.044518, 0.743601,
		-0.292416, -0.933741, 0.206446,
		37.849354, 35.840881, 36.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615372, 36.181980, 36.615604>,  <38.054047, 36.494499, 36.619946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615372, 36.181980, 36.615604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335865, 35.903881, 36.548244>,  <38.168163, 35.737022, 36.507828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335865, 35.903881, 36.548244>,  <38.615372, 36.181980, 36.615604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335865, 35.903881, 36.548244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573047, -0.403118, -0.713521,
		0.428192, -0.595081, 0.680095,
		-0.698762, -0.695251, -0.168397,
		38.126236, 35.695305, 36.497726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958950, 35.744858, 36.388214>,  <38.615372, 36.181980, 36.615604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958950, 35.744858, 36.388214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613586, 35.568470, 36.290173>,  <38.406368, 35.462639, 36.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613586, 35.568470, 36.290173>,  <38.958950, 35.744858, 36.388214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613586, 35.568470, 36.290173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436460, -0.409197, -0.801286,
		0.253043, -0.798815, 0.545768,
		-0.863407, -0.440966, -0.245106,
		38.354565, 35.436180, 36.216640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114620, 35.054176, 36.349171>,  <38.958950, 35.744858, 36.388214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114620, 35.054176, 36.349171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796986, 35.144745, 36.123550>,  <38.606403, 35.199085, 35.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796986, 35.144745, 36.123550>,  <39.114620, 35.054176, 36.349171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796986, 35.144745, 36.123550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485343, -0.322421, -0.812703,
		-0.365876, -0.919118, 0.146139,
		-0.794088, 0.226421, -0.564054,
		38.558758, 35.212669, 35.954334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921799, 34.446335, 36.017166>,  <39.114620, 35.054176, 36.349171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921799, 34.446335, 36.017166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830006, 34.765198, 35.793777>,  <38.774929, 34.956516, 35.659744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830006, 34.765198, 35.793777>,  <38.921799, 34.446335, 36.017166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830006, 34.765198, 35.793777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365930, -0.461024, -0.808426,
		-0.901906, -0.389877, -0.185906,
		-0.229480, 0.797153, -0.558468,
		38.761162, 35.004345, 35.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052155, 34.041904, 35.397930>,  <38.921799, 34.446335, 36.017166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052155, 34.041904, 35.397930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180893, 34.402382, 35.514046>,  <39.258137, 34.618668, 35.583717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180893, 34.402382, 35.514046>,  <39.052155, 34.041904, 35.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180893, 34.402382, 35.514046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436056, 0.131059, -0.890325,
		-0.840397, 0.413135, -0.350788,
		0.321851, 0.901190, 0.290291,
		39.277447, 34.672737, 35.601131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814953, 34.486191, 34.929562>,  <39.052155, 34.041904, 35.397930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814953, 34.486191, 34.929562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143761, 34.627960, 35.107849>,  <39.341045, 34.713020, 35.214821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143761, 34.627960, 35.107849>,  <38.814953, 34.486191, 34.929562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143761, 34.627960, 35.107849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494463, -0.056010, -0.867392,
		-0.282461, 0.933406, -0.221291,
		0.822023, 0.354425, 0.445714,
		39.390369, 34.734287, 35.241562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334740, 34.958477, 34.544056>,  <38.814953, 34.486191, 34.929562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334740, 34.958477, 34.544056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623657, 34.857628, 34.801655>,  <39.797009, 34.797119, 34.956215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623657, 34.857628, 34.801655>,  <39.334740, 34.958477, 34.544056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623657, 34.857628, 34.801655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622092, -0.169973, -0.764271,
		0.302155, 0.952650, 0.034076,
		0.722291, -0.252126, 0.643994,
		39.840343, 34.781990, 34.994854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995281, 35.333218, 34.591797>,  <39.334740, 34.958477, 34.544056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995281, 35.333218, 34.591797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043953, 34.940155, 34.647758>,  <40.073154, 34.704315, 34.681335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043953, 34.940155, 34.647758>,  <39.995281, 35.333218, 34.591797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043953, 34.940155, 34.647758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456905, -0.069680, -0.886782,
		0.881154, 0.171823, 0.440504,
		0.121675, -0.982660, 0.139906,
		40.080456, 34.645355, 34.689732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727970, 35.106422, 34.600895>,  <39.995281, 35.333218, 34.591797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727970, 35.106422, 34.600895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477757, 34.821999, 34.472458>,  <40.327629, 34.651344, 34.395397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477757, 34.821999, 34.472458>,  <40.727970, 35.106422, 34.600895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477757, 34.821999, 34.472458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413805, 0.046519, -0.909176,
		0.661413, -0.701594, 0.265140,
		-0.625538, -0.711058, -0.321091,
		40.290096, 34.608681, 34.376129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445148, 34.920048, 34.535351>,  <40.727970, 35.106422, 34.600895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445148, 34.920048, 34.535351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828728, 35.014034, 34.598858>,  <42.058876, 35.070427, 34.636963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828728, 35.014034, 34.598858>,  <41.445148, 34.920048, 34.535351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828728, 35.014034, 34.598858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277019, -0.656434, -0.701680,
		-0.060651, 0.716857, -0.694577,
		0.958948, 0.234969, 0.158769,
		42.116413, 35.084526, 34.646488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833485, 35.023731, 33.915043>,  <41.445148, 34.920048, 34.535351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833485, 35.023731, 33.915043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101345, 34.914745, 34.191399>,  <42.262062, 34.849354, 34.357212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101345, 34.914745, 34.191399>,  <41.833485, 35.023731, 33.915043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101345, 34.914745, 34.191399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350836, -0.703875, -0.617636,
		0.654587, 0.655989, -0.375759,
		0.669649, -0.272467, 0.690892,
		42.302238, 34.833004, 34.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483521, 34.907421, 33.479172>,  <41.833485, 35.023731, 33.915043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483521, 34.907421, 33.479172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524254, 34.712070, 33.825840>,  <42.548695, 34.594860, 34.033840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524254, 34.712070, 33.825840>,  <42.483521, 34.907421, 33.479172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524254, 34.712070, 33.825840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183456, -0.847039, -0.498868,
		0.977739, 0.209797, 0.003339,
		0.101833, -0.488376, 0.866671,
		42.554802, 34.565559, 34.085842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038956, 34.456532, 33.370148>,  <42.483521, 34.907421, 33.479172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038956, 34.456532, 33.370148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841461, 34.310123, 33.685680>,  <42.722965, 34.222279, 33.875000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841461, 34.310123, 33.685680>,  <43.038956, 34.456532, 33.370148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841461, 34.310123, 33.685680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169746, -0.930222, -0.325381,
		0.852884, -0.026751, 0.521414,
		-0.493736, -0.366021, 0.788831,
		42.693340, 34.200317, 33.922329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436386, 33.849644, 33.471794>,  <43.038956, 34.456532, 33.370148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436386, 33.849644, 33.471794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085056, 33.817184, 33.660244>,  <42.874260, 33.797710, 33.773315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085056, 33.817184, 33.660244>,  <43.436386, 33.849644, 33.471794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085056, 33.817184, 33.660244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007440, -0.987689, -0.156253,
		0.478009, -0.133736, 0.868114,
		-0.878324, -0.081149, 0.471129,
		42.821560, 33.792839, 33.801582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608383, 33.299297, 33.854111>,  <43.436386, 33.849644, 33.471794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608383, 33.299297, 33.854111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210201, 33.335545, 33.842422>,  <42.971291, 33.357292, 33.835411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210201, 33.335545, 33.842422>,  <43.608383, 33.299297, 33.854111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210201, 33.335545, 33.842422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086503, -0.988988, -0.120081,
		-0.039777, -0.117008, 0.992334,
		-0.995457, 0.090616, -0.029217,
		42.911564, 33.362728, 33.833656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339737, 32.809944, 34.410561>,  <43.608383, 33.299297, 33.854111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339737, 32.809944, 34.410561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050579, 32.867470, 34.140232>,  <42.877083, 32.901985, 33.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050579, 32.867470, 34.140232>,  <43.339737, 32.809944, 34.410561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050579, 32.867470, 34.140232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151707, -0.987269, -0.047811,
		-0.674094, 0.067965, 0.735512,
		-0.722899, 0.143811, -0.675823,
		42.833710, 32.910614, 33.937485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809292, 32.282688, 34.553150>,  <43.339737, 32.809944, 34.410561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809292, 32.282688, 34.553150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742641, 32.398823, 34.176228>,  <42.702652, 32.468502, 33.950073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742641, 32.398823, 34.176228>,  <42.809292, 32.282688, 34.553150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742641, 32.398823, 34.176228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357365, -0.908473, -0.216720,
		-0.918981, 0.300635, 0.255134,
		-0.166628, 0.290337, -0.942305,
		42.692654, 32.485924, 33.893536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286755, 31.821640, 34.338364>,  <42.809292, 32.282688, 34.553150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286755, 31.821640, 34.338364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445545, 31.981977, 34.008095>,  <42.540821, 32.078178, 33.809933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445545, 31.981977, 34.008095>,  <42.286755, 31.821640, 34.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445545, 31.981977, 34.008095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225837, -0.829277, -0.511172,
		-0.889610, 0.389391, -0.238679,
		0.396977, 0.400842, -0.825673,
		42.564640, 32.102230, 33.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845501, 31.642815, 33.776012>,  <42.286755, 31.821640, 34.338364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845501, 31.642815, 33.776012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178791, 31.726616, 33.571331>,  <42.378765, 31.776896, 33.448521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178791, 31.726616, 33.571331>,  <41.845501, 31.642815, 33.776012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178791, 31.726616, 33.571331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170555, -0.782932, -0.598272,
		-0.525967, 0.585770, -0.616629,
		0.833228, 0.209502, -0.511703,
		42.428761, 31.789467, 33.417820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754974, 31.650278, 33.053379>,  <41.845501, 31.642815, 33.776012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754974, 31.650278, 33.053379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148563, 31.584192, 33.080193>,  <42.384716, 31.544540, 33.096283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148563, 31.584192, 33.080193>,  <41.754974, 31.650278, 33.053379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148563, 31.584192, 33.080193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051495, -0.623300, -0.780285,
		0.170698, 0.764330, -0.621821,
		0.983977, -0.165213, 0.067037,
		42.443756, 31.534628, 33.100304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055683, 31.796162, 32.482777>,  <41.754974, 31.650278, 33.053379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055683, 31.796162, 32.482777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332050, 31.557713, 32.646366>,  <42.497871, 31.414642, 32.744522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332050, 31.557713, 32.646366>,  <42.055683, 31.796162, 32.482777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332050, 31.557713, 32.646366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072133, -0.619747, -0.781480,
		0.719322, 0.510441, -0.471197,
		0.690922, -0.596124, 0.408978,
		42.539326, 31.378876, 32.769058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413361, 31.495375, 31.897354>,  <42.055683, 31.796162, 32.482777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413361, 31.495375, 31.897354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530178, 31.248316, 32.189442>,  <42.600269, 31.100080, 32.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530178, 31.248316, 32.189442>,  <42.413361, 31.495375, 31.897354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530178, 31.248316, 32.189442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017746, -0.759874, -0.649828,
		0.956240, 0.202737, -0.210956,
		0.292044, -0.617648, 0.730220,
		42.617790, 31.063021, 32.408508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981350, 31.117218, 31.590878>,  <42.413361, 31.495375, 31.897354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981350, 31.117218, 31.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829594, 30.906075, 31.894833>,  <42.738541, 30.779388, 32.077206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829594, 30.906075, 31.894833>,  <42.981350, 31.117218, 31.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829594, 30.906075, 31.894833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130247, -0.782642, -0.608693,
		0.916022, -0.329907, 0.228177,
		-0.379393, -0.527856, 0.759887,
		42.715775, 30.747717, 32.122799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387123, 30.555370, 31.564703>,  <42.981350, 31.117218, 31.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387123, 30.555370, 31.564703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055138, 30.435711, 31.753031>,  <42.855946, 30.363914, 31.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055138, 30.435711, 31.753031>,  <43.387123, 30.555370, 31.564703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055138, 30.435711, 31.753031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072343, -0.894633, -0.440906,
		0.553108, -0.331875, 0.764154,
		-0.829963, -0.299150, 0.470820,
		42.806149, 30.345966, 31.894278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500320, 29.929754, 31.881586>,  <43.387123, 30.555370, 31.564703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500320, 29.929754, 31.881586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101002, 29.934202, 31.904488>,  <42.861412, 29.936871, 31.918228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101002, 29.934202, 31.904488>,  <43.500320, 29.929754, 31.881586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101002, 29.934202, 31.904488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031931, -0.925663, -0.377000,
		0.048806, -0.378187, 0.924442,
		-0.998298, 0.011119, 0.057253,
		42.801514, 29.937538, 31.921663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322243, 29.304602, 32.153915>,  <43.500320, 29.929754, 31.881586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322243, 29.304602, 32.153915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976059, 29.408365, 31.982485>,  <42.768349, 29.470623, 31.879625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976059, 29.408365, 31.982485>,  <43.322243, 29.304602, 32.153915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976059, 29.408365, 31.982485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191444, -0.961822, -0.195571,
		-0.462948, -0.087211, 0.882084,
		-0.865464, 0.259409, -0.428578,
		42.716419, 29.486189, 31.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789516, 28.788115, 32.381290>,  <43.322243, 29.304602, 32.153915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789516, 28.788115, 32.381290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692924, 28.970833, 32.038822>,  <42.634968, 29.080463, 31.833342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692924, 28.970833, 32.038822>,  <42.789516, 28.788115, 32.381290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692924, 28.970833, 32.038822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155611, -0.889091, -0.430469,
		-0.957849, 0.029280, 0.285778,
		-0.241478, 0.456794, -0.856170,
		42.620480, 29.107870, 31.781971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335838, 28.342218, 31.948483>,  <42.789516, 28.788115, 32.381290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335838, 28.342218, 31.948483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411728, 28.593353, 31.646536>,  <42.457260, 28.744034, 31.465368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411728, 28.593353, 31.646536>,  <42.335838, 28.342218, 31.948483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411728, 28.593353, 31.646536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143636, -0.742813, -0.653910,
		-0.971274, 0.232489, -0.050750,
		0.189724, 0.627836, -0.754869,
		42.468647, 28.781704, 31.420074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908649, 28.092575, 31.503727>,  <42.335838, 28.342218, 31.948483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908649, 28.092575, 31.503727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120789, 28.347996, 31.280661>,  <42.248070, 28.501247, 31.146822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120789, 28.347996, 31.280661>,  <41.908649, 28.092575, 31.503727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120789, 28.347996, 31.280661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041607, -0.637395, -0.769413,
		-0.846761, 0.431256, -0.311471,
		0.530344, 0.638550, -0.557665,
		42.279892, 28.539560, 31.113361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501465, 28.266182, 30.846695>,  <41.908649, 28.092575, 31.503727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501465, 28.266182, 30.846695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891964, 28.335760, 30.795040>,  <42.126263, 28.377508, 30.764048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891964, 28.335760, 30.795040>,  <41.501465, 28.266182, 30.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891964, 28.335760, 30.795040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006104, -0.573768, -0.818995,
		-0.216557, 0.800333, -0.559079,
		0.976251, 0.173947, -0.129138,
		42.184837, 28.387943, 30.756298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676300, 28.618229, 30.160427>,  <41.501465, 28.266182, 30.846695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676300, 28.618229, 30.160427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987511, 28.398560, 30.282465>,  <42.174236, 28.266758, 30.355688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987511, 28.398560, 30.282465>,  <41.676300, 28.618229, 30.160427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987511, 28.398560, 30.282465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126091, -0.612264, -0.780535,
		0.615448, 0.568807, -0.545604,
		0.778026, -0.549174, 0.305095,
		42.220917, 28.233807, 30.373993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703426, 28.065224, 29.712954>,  <41.676300, 28.618229, 30.160427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703426, 28.065224, 29.712954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007462, 27.949238, 29.945568>,  <42.189884, 27.879646, 30.085136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007462, 27.949238, 29.945568>,  <41.703426, 28.065224, 29.712954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007462, 27.949238, 29.945568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085719, -0.842361, -0.532053,
		0.644139, 0.454257, -0.615415,
		0.760090, -0.289964, 0.581536,
		42.235489, 27.862249, 30.120029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048416, 28.179184, 29.521795>,  <41.703426, 28.065224, 29.712954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048416, 28.179184, 29.521795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676044, 28.210535, 29.379124>,  <40.452621, 28.229345, 29.293520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676044, 28.210535, 29.379124>,  <41.048416, 28.179184, 29.521795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676044, 28.210535, 29.379124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339673, 0.544515, -0.766894,
		0.134108, -0.835081, -0.533530,
		-0.930933, 0.078379, -0.356679,
		40.396763, 28.234049, 29.272120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126705, 28.009014, 28.707937>,  <41.048416, 28.179184, 29.521795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126705, 28.009014, 28.707937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854542, 28.265486, 28.849884>,  <40.691242, 28.419369, 28.935053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854542, 28.265486, 28.849884>,  <41.126705, 28.009014, 28.707937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854542, 28.265486, 28.849884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323428, 0.697267, -0.639698,
		-0.657598, -0.320483, -0.681803,
		-0.680411, 0.641178, 0.354868,
		40.650417, 28.457840, 28.956345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048885, 28.364367, 28.046244>,  <41.126705, 28.009014, 28.707937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048885, 28.364367, 28.046244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975643, 28.540447, 28.397856>,  <40.931698, 28.646095, 28.608824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975643, 28.540447, 28.397856>,  <41.048885, 28.364367, 28.046244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975643, 28.540447, 28.397856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525926, 0.799302, -0.290721,
		-0.830586, 0.409072, -0.377872,
		-0.183108, 0.440201, 0.879030,
		40.920712, 28.672508, 28.661564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807915, 29.128742, 28.006884>,  <41.048885, 28.364367, 28.046244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807915, 29.128742, 28.006884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025356, 29.079679, 28.339018>,  <41.155819, 29.050241, 28.538298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025356, 29.079679, 28.339018>,  <40.807915, 29.128742, 28.006884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025356, 29.079679, 28.339018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467423, 0.865908, -0.178098,
		-0.697148, 0.484931, 0.528040,
		0.543600, -0.122657, 0.830334,
		41.188435, 29.042883, 28.588118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919830, 29.829748, 28.088932>,  <40.807915, 29.128742, 28.006884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919830, 29.829748, 28.088932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149788, 29.640385, 28.355879>,  <41.287762, 29.526766, 28.516047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149788, 29.640385, 28.355879>,  <40.919830, 29.829748, 28.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149788, 29.640385, 28.355879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598141, 0.799700, 0.052021,
		-0.558322, 0.369274, 0.742909,
		0.574894, -0.473409, 0.667368,
		41.322258, 29.498362, 28.556089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047318, 30.292587, 28.652037>,  <40.919830, 29.829748, 28.088932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047318, 30.292587, 28.652037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363049, 30.055349, 28.588537>,  <41.552486, 29.913006, 28.550438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363049, 30.055349, 28.588537>,  <41.047318, 30.292587, 28.652037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363049, 30.055349, 28.588537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611152, 0.783741, 0.110649,
		0.058791, -0.184356, 0.981100,
		0.789327, -0.593096, -0.158747,
		41.599846, 29.877420, 28.540913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479862, 30.199957, 29.244236>,  <41.047318, 30.292587, 28.652037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479862, 30.199957, 29.244236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661053, 30.205500, 28.887669>,  <41.769768, 30.208826, 28.673729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661053, 30.205500, 28.887669>,  <41.479862, 30.199957, 29.244236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661053, 30.205500, 28.887669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402129, 0.889211, 0.218165,
		0.795680, -0.457287, 0.397217,
		0.452974, 0.013858, -0.891416,
		41.796944, 30.209658, 28.620243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283173, 30.212141, 29.167875>,  <41.479862, 30.199957, 29.244236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283173, 30.212141, 29.167875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081570, 30.407253, 28.882765>,  <41.960609, 30.524321, 28.711699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081570, 30.407253, 28.882765>,  <42.283173, 30.212141, 29.167875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081570, 30.407253, 28.882765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348326, 0.869963, 0.349046,
		0.790348, -0.072359, -0.608370,
		-0.504003, 0.487779, -0.712778,
		41.930370, 30.553587, 28.668932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822723, 30.445166, 28.875217>,  <42.283173, 30.212141, 29.167875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822723, 30.445166, 28.875217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487247, 30.662474, 28.890457>,  <42.285961, 30.792858, 28.899601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487247, 30.662474, 28.890457>,  <42.822723, 30.445166, 28.875217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487247, 30.662474, 28.890457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484647, 0.712614, 0.507246,
		0.248421, 0.443889, -0.860959,
		-0.838692, 0.543271, 0.038101,
		42.235641, 30.825455, 28.901888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039780, 31.089188, 28.533571>,  <42.822723, 30.445166, 28.875217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039780, 31.089188, 28.533571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758430, 31.067934, 28.817104>,  <42.589622, 31.055182, 28.987225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758430, 31.067934, 28.817104>,  <43.039780, 31.089188, 28.533571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758430, 31.067934, 28.817104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471905, 0.710837, 0.521553,
		-0.531577, 0.701347, -0.474909,
		-0.703372, -0.053133, 0.708833,
		42.547421, 31.051994, 29.029755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864048, 31.830778, 28.750755>,  <43.039780, 31.089188, 28.533571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864048, 31.830778, 28.750755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729630, 31.613029, 29.058191>,  <42.648979, 31.482380, 29.242653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729630, 31.613029, 29.058191>,  <42.864048, 31.830778, 28.750755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729630, 31.613029, 29.058191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425758, 0.640110, 0.639524,
		-0.840122, 0.542142, 0.016665,
		-0.336045, -0.544373, 0.768591,
		42.628815, 31.449718, 29.288769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519119, 32.318752, 29.166956>,  <42.864048, 31.830778, 28.750755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519119, 32.318752, 29.166956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605713, 32.015419, 29.412903>,  <42.657669, 31.833418, 29.560471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605713, 32.015419, 29.412903>,  <42.519119, 32.318752, 29.166956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605713, 32.015419, 29.412903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170809, 0.649508, 0.740921,
		-0.961228, -0.055371, 0.270137,
		0.216482, -0.758336, 0.614868,
		42.670658, 31.787918, 29.597363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183601, 32.546547, 29.778809>,  <42.519119, 32.318752, 29.166956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183601, 32.546547, 29.778809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478321, 32.293877, 29.875238>,  <42.655151, 32.142273, 29.933096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478321, 32.293877, 29.875238>,  <42.183601, 32.546547, 29.778809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478321, 32.293877, 29.875238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347939, 0.659966, 0.665871,
		-0.579715, -0.406732, 0.706045,
		0.736796, -0.631676, 0.241074,
		42.699360, 32.104374, 29.947561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280602, 32.735641, 30.524620>,  <42.183601, 32.546547, 29.778809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280602, 32.735641, 30.524620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601101, 32.519066, 30.422756>,  <42.793400, 32.389122, 30.361639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601101, 32.519066, 30.422756>,  <42.280602, 32.735641, 30.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601101, 32.519066, 30.422756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542517, 0.477917, 0.690847,
		-0.252344, -0.691695, 0.676668,
		0.801247, -0.541436, -0.254657,
		42.841476, 32.356636, 30.346359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470890, 32.378746, 31.146198>,  <42.280602, 32.735641, 30.524620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470890, 32.378746, 31.146198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790157, 32.387688, 30.905390>,  <42.981716, 32.393051, 30.760904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790157, 32.387688, 30.905390>,  <42.470890, 32.378746, 31.146198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790157, 32.387688, 30.905390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579895, 0.242285, 0.777830,
		0.163244, -0.969948, 0.180424,
		0.798168, 0.022349, -0.602020,
		43.029606, 32.394394, 30.724783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990025, 32.077789, 31.481609>,  <42.470890, 32.378746, 31.146198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990025, 32.077789, 31.481609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172543, 32.293480, 31.198475>,  <43.282051, 32.422894, 31.028595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172543, 32.293480, 31.198475>,  <42.990025, 32.077789, 31.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172543, 32.293480, 31.198475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581734, 0.421166, 0.695848,
		0.673338, -0.729281, -0.121513,
		0.456292, 0.539229, -0.707835,
		43.309429, 32.455250, 30.986124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676373, 31.897943, 31.608780>,  <42.990025, 32.077789, 31.481609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676373, 31.897943, 31.608780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661701, 32.248798, 31.417244>,  <43.652897, 32.459312, 31.302322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661701, 32.248798, 31.417244>,  <43.676373, 31.897943, 31.608780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661701, 32.248798, 31.417244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483286, 0.434973, 0.759759,
		0.874694, -0.203549, -0.439862,
		-0.036680, 0.877135, -0.478841,
		43.650696, 32.511940, 31.273592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299068, 32.141384, 31.761848>,  <43.676373, 31.897943, 31.608780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299068, 32.141384, 31.761848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078388, 32.455952, 31.650726>,  <43.945980, 32.644691, 31.584053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078388, 32.455952, 31.650726>,  <44.299068, 32.141384, 31.761848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078388, 32.455952, 31.650726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373019, 0.530564, 0.761156,
		0.745981, 0.316301, -0.586060,
		-0.551697, 0.786420, -0.277804,
		43.912880, 32.691879, 31.567385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710155, 32.588337, 31.971394>,  <44.299068, 32.141384, 31.761848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710155, 32.588337, 31.971394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367420, 32.789459, 31.925758>,  <44.161777, 32.910133, 31.898376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367420, 32.789459, 31.925758>,  <44.710155, 32.588337, 31.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367420, 32.789459, 31.925758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293939, 0.658177, 0.693111,
		0.423588, 0.560350, -0.711745,
		-0.856839, 0.502803, -0.114087,
		44.110367, 32.940300, 31.891533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945229, 33.306778, 31.856314>,  <44.710155, 32.588337, 31.971394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945229, 33.306778, 31.856314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566982, 33.333557, 31.983643>,  <44.340034, 33.349625, 32.060040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566982, 33.333557, 31.983643>,  <44.945229, 33.306778, 31.856314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566982, 33.333557, 31.983643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278668, 0.671518, 0.686592,
		-0.167794, 0.737958, -0.653654,
		-0.945616, 0.066946, 0.318322,
		44.283298, 33.353642, 32.079140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920551, 34.013321, 32.115734>,  <44.945229, 33.306778, 31.856314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920551, 34.013321, 32.115734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619305, 33.825668, 32.300224>,  <44.438557, 33.713078, 32.410919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619305, 33.825668, 32.300224>,  <44.920551, 34.013321, 32.115734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619305, 33.825668, 32.300224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070518, 0.639473, 0.765573,
		-0.654098, 0.609090, -0.448515,
		-0.753116, -0.469131, 0.461230,
		44.393372, 33.684929, 32.438595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408718, 34.549770, 32.225842>,  <44.920551, 34.013321, 32.115734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408718, 34.549770, 32.225842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395958, 34.246056, 32.485828>,  <44.388302, 34.063828, 32.641819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395958, 34.246056, 32.485828>,  <44.408718, 34.549770, 32.225842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395958, 34.246056, 32.485828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119318, 0.642756, 0.756722,
		-0.992344, 0.101692, 0.070093,
		-0.031900, -0.759291, 0.649969,
		44.386387, 34.018269, 32.680820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082027, 34.825687, 32.712139>,  <44.408718, 34.549770, 32.225842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082027, 34.825687, 32.712139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213409, 34.491928, 32.889175>,  <44.292240, 34.291672, 32.995399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213409, 34.491928, 32.889175>,  <44.082027, 34.825687, 32.712139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213409, 34.491928, 32.889175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012550, 0.472406, 0.881292,
		-0.944436, -0.283910, 0.165636,
		0.328455, -0.834403, 0.442594,
		44.311947, 34.241608, 33.021954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683029, 34.864708, 33.418583>,  <44.082027, 34.825687, 32.712139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683029, 34.864708, 33.418583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995819, 34.615913, 33.434841>,  <44.183491, 34.466637, 33.444595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995819, 34.615913, 33.434841>,  <43.683029, 34.864708, 33.418583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995819, 34.615913, 33.434841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134785, 0.232400, 0.963236,
		-0.608567, -0.747744, 0.265564,
		0.781971, -0.621988, 0.040646,
		44.230412, 34.429317, 33.447037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556248, 34.579346, 34.040264>,  <43.683029, 34.864708, 33.418583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556248, 34.579346, 34.040264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939240, 34.480511, 33.980694>,  <44.169037, 34.421211, 33.944950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939240, 34.480511, 33.980694>,  <43.556248, 34.579346, 34.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939240, 34.480511, 33.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167270, 0.054869, 0.984383,
		-0.235054, -0.967439, 0.093866,
		0.957481, -0.247084, -0.148926,
		44.226482, 34.406387, 33.936016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705780, 34.103065, 34.593937>,  <43.556248, 34.579346, 34.040264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705780, 34.103065, 34.593937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043110, 34.269482, 34.457874>,  <44.245510, 34.369331, 34.376236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043110, 34.269482, 34.457874>,  <43.705780, 34.103065, 34.593937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043110, 34.269482, 34.457874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192146, 0.357683, 0.913861,
		0.501874, -0.836044, 0.221703,
		0.843328, 0.416044, -0.340155,
		44.296108, 34.394295, 34.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151268, 33.835468, 35.024868>,  <43.705780, 34.103065, 34.593937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151268, 33.835468, 35.024868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344986, 34.139835, 34.852139>,  <44.461216, 34.322456, 34.748501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344986, 34.139835, 34.852139>,  <44.151268, 33.835468, 35.024868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344986, 34.139835, 34.852139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309222, 0.312841, 0.898060,
		0.818438, -0.568454, -0.083784,
		0.484295, 0.760914, -0.431819,
		44.490276, 34.368111, 34.722591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781509, 33.846497, 35.286484>,  <44.151268, 33.835468, 35.024868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781509, 33.846497, 35.286484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700962, 34.224358, 35.182877>,  <44.652634, 34.451073, 35.120712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700962, 34.224358, 35.182877>,  <44.781509, 33.846497, 35.286484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700962, 34.224358, 35.182877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154721, 0.291790, 0.943886,
		0.967219, 0.149991, -0.204914,
		-0.201366, 0.944649, -0.259019,
		44.640553, 34.507751, 35.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330936, 34.458530, 35.436554>,  <44.781509, 33.846497, 35.286484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330936, 34.458530, 35.436554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968983, 34.628048, 35.420670>,  <44.751808, 34.729759, 35.411137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968983, 34.628048, 35.420670>,  <45.330936, 34.458530, 35.436554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968983, 34.628048, 35.420670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160998, 0.427145, 0.889734,
		0.394026, 0.798716, -0.454749,
		-0.904888, 0.423792, -0.039714,
		44.697517, 34.755184, 35.408756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479565, 35.074593, 35.828060>,  <45.330936, 34.458530, 35.436554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479565, 35.074593, 35.828060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085037, 35.010208, 35.813862>,  <44.848320, 34.971577, 35.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085037, 35.010208, 35.813862>,  <45.479565, 35.074593, 35.828060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085037, 35.010208, 35.813862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095107, 0.379898, 0.920126,
		-0.134618, 0.910917, -0.390010,
		-0.986323, -0.160958, -0.035494,
		44.789139, 34.961922, 35.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004387, 34.983662, 35.284286>,  <45.479565, 35.074593, 35.828060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004387, 34.983662, 35.284286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213936, 35.039955, 34.948250>,  <46.339664, 35.073730, 34.746628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213936, 35.039955, 34.948250>,  <46.004387, 34.983662, 35.284286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213936, 35.039955, 34.948250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839060, 0.084650, 0.537414,
		0.146747, -0.986422, -0.073740,
		0.523875, 0.140736, -0.840089,
		46.371098, 35.082176, 34.696224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579971, 34.458687, 35.069443>,  <46.004387, 34.983662, 35.284286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579971, 34.458687, 35.069443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688744, 34.819458, 34.935234>,  <46.754005, 35.035923, 34.854710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688744, 34.819458, 34.935234>,  <46.579971, 34.458687, 35.069443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688744, 34.819458, 34.935234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860220, -0.071533, 0.504880,
		0.431365, -0.425918, -0.795310,
		0.271928, 0.901929, -0.335526,
		46.770321, 35.090038, 34.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158489, 34.511635, 34.650928>,  <46.579971, 34.458687, 35.069443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158489, 34.511635, 34.650928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139610, 34.850765, 34.862194>,  <47.128284, 35.054245, 34.988953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139610, 34.850765, 34.862194>,  <47.158489, 34.511635, 34.650928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139610, 34.850765, 34.862194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967597, -0.092500, 0.234945,
		0.248048, 0.522140, -0.815992,
		-0.047195, 0.847829, 0.528165,
		47.125450, 35.105114, 35.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784794, 34.888355, 34.563702>,  <47.158489, 34.511635, 34.650928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784794, 34.888355, 34.563702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632462, 35.049015, 34.896843>,  <47.541061, 35.145412, 35.096729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632462, 35.049015, 34.896843>,  <47.784794, 34.888355, 34.563702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632462, 35.049015, 34.896843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921762, 0.093826, 0.376234,
		0.072972, 0.910974, -0.405958,
		-0.380829, 0.401651, 0.832854,
		47.518211, 35.169510, 35.146698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.329353, 41.478867, 40.843124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191313, 41.198990, 41.093353>,  <31.108488, 41.031063, 41.243488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191313, 41.198990, 41.093353>,  <31.329353, 41.478867, 40.843124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191313, 41.198990, 41.093353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215119, -0.707739, -0.672926,
		0.913580, -0.097657, 0.394759,
		-0.345102, -0.699692, 0.625568,
		31.087782, 40.989082, 41.281025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858685, 40.928005, 40.886379>,  <31.329353, 41.478867, 40.843124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858685, 40.928005, 40.886379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.518553, 40.754131, 41.005028>,  <31.314474, 40.649807, 41.076218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.518553, 40.754131, 41.005028>,  <31.858685, 40.928005, 40.886379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518553, 40.754131, 41.005028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217934, -0.803922, -0.553366,
		0.479004, -0.405900, 0.778332,
		-0.850329, -0.434689, 0.296622,
		31.263454, 40.623726, 41.094013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072044, 40.268009, 40.983002>,  <31.858685, 40.928005, 40.886379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072044, 40.268009, 40.983002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.673456, 40.243694, 40.959866>,  <31.434303, 40.229107, 40.945984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.673456, 40.243694, 40.959866>,  <32.072044, 40.268009, 40.983002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673456, 40.243694, 40.959866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083303, -0.799299, -0.595132,
		-0.010053, -0.597852, 0.801544,
		-0.996473, -0.060788, -0.057838,
		31.374514, 40.225456, 40.942513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992651, 39.616005, 40.947617>,  <32.072044, 40.268009, 40.983002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992651, 39.616005, 40.947617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.642864, 39.753803, 40.811012>,  <31.432991, 39.836483, 40.729050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.642864, 39.753803, 40.811012>,  <31.992651, 39.616005, 40.947617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642864, 39.753803, 40.811012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039561, -0.752322, -0.657607,
		-0.483466, -0.561546, 0.671511,
		-0.874469, 0.344496, -0.341507,
		31.380524, 39.857151, 40.708561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718130, 39.031010, 40.695805>,  <31.992651, 39.616005, 40.947617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718130, 39.031010, 40.695805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.476068, 39.308422, 40.539444>,  <31.330832, 39.474869, 40.445629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.476068, 39.308422, 40.539444>,  <31.718130, 39.031010, 40.695805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476068, 39.308422, 40.539444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215822, -0.615543, -0.757976,
		-0.766295, -0.374328, 0.522178,
		-0.605155, 0.693531, -0.390900,
		31.294521, 39.516479, 40.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146822, 38.656216, 40.603767>,  <31.718130, 39.031010, 40.695805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146822, 38.656216, 40.603767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.213770, 38.971199, 40.366486>,  <31.253939, 39.160191, 40.224117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.213770, 38.971199, 40.366486>,  <31.146822, 38.656216, 40.603767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213770, 38.971199, 40.366486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101254, -0.584780, -0.804848,
		-0.980681, 0.194771, -0.018140,
		0.167369, 0.787463, -0.593204,
		31.263981, 39.207439, 40.188526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609190, 38.550011, 40.016106>,  <31.146822, 38.656216, 40.603767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609190, 38.550011, 40.016106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.896418, 38.799267, 39.892124>,  <31.068754, 38.948822, 39.817738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.896418, 38.799267, 39.892124>,  <30.609190, 38.550011, 40.016106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896418, 38.799267, 39.892124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056628, -0.496187, -0.866367,
		-0.693664, 0.604559, -0.391584,
		0.718069, 0.623142, -0.309952,
		31.111839, 38.986210, 39.799137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451277, 38.683727, 39.336548>,  <30.609190, 38.550011, 40.016106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451277, 38.683727, 39.336548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838131, 38.781425, 39.364811>,  <31.070244, 38.840046, 39.381767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838131, 38.781425, 39.364811>,  <30.451277, 38.683727, 39.336548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838131, 38.781425, 39.364811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214048, -0.632126, -0.744715,
		-0.137231, 0.735364, -0.663632,
		0.967135, 0.244248, 0.070656,
		31.128271, 38.854698, 39.386009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735937, 38.700169, 38.700729>,  <30.451277, 38.683727, 39.336548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735937, 38.700169, 38.700729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071236, 38.656582, 38.914448>,  <31.272415, 38.630432, 39.042679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.071236, 38.656582, 38.914448>,  <30.735937, 38.700169, 38.700729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071236, 38.656582, 38.914448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387086, -0.571226, -0.723785,
		0.384070, 0.813528, -0.436649,
		0.838245, -0.108964, 0.534296,
		31.322710, 38.623894, 39.074738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303364, 38.809040, 38.256050>,  <30.735937, 38.700169, 38.700729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303364, 38.809040, 38.256050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.452032, 38.574295, 38.543789>,  <31.541233, 38.433449, 38.716431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.452032, 38.574295, 38.543789>,  <31.303364, 38.809040, 38.256050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452032, 38.574295, 38.543789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629414, -0.410284, -0.659928,
		0.682421, 0.698040, 0.216889,
		0.371670, -0.586862, 0.719343,
		31.563534, 38.398235, 38.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111629, 38.696445, 38.100105>,  <31.303364, 38.809040, 38.256050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111629, 38.696445, 38.100105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973455, 38.380943, 38.303490>,  <31.890551, 38.191643, 38.425522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973455, 38.380943, 38.303490>,  <32.111629, 38.696445, 38.100105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973455, 38.380943, 38.303490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476378, -0.614200, -0.629144,
		0.808540, 0.024891, 0.587914,
		-0.345437, -0.788758, 0.508463,
		31.869823, 38.144318, 38.456028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698624, 38.246567, 38.138134>,  <32.111629, 38.696445, 38.100105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698624, 38.246567, 38.138134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403961, 37.990223, 38.224514>,  <32.227165, 37.836418, 38.276340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403961, 37.990223, 38.224514>,  <32.698624, 38.246567, 38.138134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403961, 37.990223, 38.224514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432215, -0.691760, -0.578496,
		0.520121, -0.332816, 0.786580,
		-0.736657, -0.640859, 0.215951,
		32.182964, 37.797966, 38.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057575, 37.637165, 38.340672>,  <32.698624, 38.246567, 38.138134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057575, 37.637165, 38.340672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695446, 37.526363, 38.211884>,  <32.478168, 37.459881, 38.134609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695446, 37.526363, 38.211884>,  <33.057575, 37.637165, 38.340672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695446, 37.526363, 38.211884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400819, -0.807965, -0.431899,
		-0.140506, -0.520060, 0.842494,
		-0.905318, -0.277003, -0.321974,
		32.423851, 37.443264, 38.115292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078827, 36.948559, 38.324577>,  <33.057575, 37.637165, 38.340672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078827, 36.948559, 38.324577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761627, 37.012699, 38.089481>,  <32.571308, 37.051182, 37.948425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761627, 37.012699, 38.089481>,  <33.078827, 36.948559, 38.324577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761627, 37.012699, 38.089481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223821, -0.820590, -0.525867,
		-0.566611, -0.548562, 0.614842,
		-0.793004, 0.160347, -0.587736,
		32.523727, 37.060802, 37.913162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558773, 36.278431, 38.338390>,  <33.078827, 36.948559, 38.324577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558773, 36.278431, 38.338390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.506794, 36.465919, 37.988895>,  <32.475605, 36.578411, 37.779198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.506794, 36.465919, 37.988895>,  <32.558773, 36.278431, 38.338390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506794, 36.465919, 37.988895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100303, -0.870472, -0.481889,
		-0.986434, -0.150261, 0.066105,
		-0.129952, 0.468722, -0.873735,
		32.467808, 36.606537, 37.726776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023487, 35.918419, 37.919231>,  <32.558773, 36.278431, 38.338390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023487, 35.918419, 37.919231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.232681, 36.119904, 37.644203>,  <32.358196, 36.240795, 37.479187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.232681, 36.119904, 37.644203>,  <32.023487, 35.918419, 37.919231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232681, 36.119904, 37.644203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135680, -0.845601, -0.516284,
		-0.841474, 0.176718, -0.510580,
		0.522984, 0.503715, -0.687575,
		32.389576, 36.271019, 37.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055233, 35.461514, 37.344738>,  <32.023487, 35.918419, 37.919231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055233, 35.461514, 37.344738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307625, 35.735649, 37.199314>,  <32.459061, 35.900131, 37.112061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307625, 35.735649, 37.199314>,  <32.055233, 35.461514, 37.344738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307625, 35.735649, 37.199314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162714, -0.575111, -0.801730,
		-0.758541, 0.446723, -0.474399,
		0.630983, 0.685336, -0.363558,
		32.496922, 35.941250, 37.090248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918024, 35.566811, 36.553978>,  <32.055233, 35.461514, 37.344738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918024, 35.566811, 36.553978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.287941, 35.713459, 36.594662>,  <32.509892, 35.801449, 36.619072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.287941, 35.713459, 36.594662>,  <31.918024, 35.566811, 36.553978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287941, 35.713459, 36.594662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233683, -0.336367, -0.912277,
		-0.300246, 0.867437, -0.396743,
		0.924794, 0.366619, 0.101712,
		32.565380, 35.823444, 36.625175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140999, 35.857548, 35.855080>,  <31.918024, 35.566811, 36.553978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140999, 35.857548, 35.855080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480793, 35.749371, 36.036289>,  <32.684669, 35.684464, 36.145016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.480793, 35.749371, 36.036289>,  <32.140999, 35.857548, 35.855080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480793, 35.749371, 36.036289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327005, -0.403953, -0.854336,
		0.414048, 0.873890, -0.254718,
		0.849489, -0.270442, 0.453023,
		32.735641, 35.668240, 36.172195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783524, 36.092781, 35.382301>,  <32.140999, 35.857548, 35.855080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783524, 36.092781, 35.382301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927639, 35.809437, 35.625092>,  <33.014111, 35.639431, 35.770763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927639, 35.809437, 35.625092>,  <32.783524, 36.092781, 35.382301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927639, 35.809437, 35.625092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610986, -0.312487, -0.727357,
		0.704901, 0.632913, 0.320212,
		0.360291, -0.708359, 0.606974,
		33.035725, 35.596928, 35.807182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466621, 35.983795, 35.077915>,  <32.783524, 36.092781, 35.382301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466621, 35.983795, 35.077915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412174, 35.662853, 35.310360>,  <33.379505, 35.470287, 35.449825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.412174, 35.662853, 35.310360>,  <33.466621, 35.983795, 35.077915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412174, 35.662853, 35.310360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275328, -0.594102, -0.755802,
		0.951665, 0.057120, 0.301779,
		-0.136116, -0.802359, 0.581113,
		33.371338, 35.422146, 35.484695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071190, 35.496178, 34.987019>,  <33.466621, 35.983795, 35.077915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071190, 35.496178, 34.987019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.772217, 35.266102, 35.119980>,  <33.592831, 35.128056, 35.199757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.772217, 35.266102, 35.119980>,  <34.071190, 35.496178, 34.987019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772217, 35.266102, 35.119980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156664, -0.638860, -0.753203,
		0.645597, -0.510895, 0.567618,
		-0.747436, -0.575191, 0.332407,
		33.547985, 35.093544, 35.219704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793964, 35.709343, 35.357750>,  <34.071190, 35.496178, 34.987019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793964, 35.709343, 35.357750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055466, 35.959713, 35.187660>,  <35.212368, 36.109936, 35.085606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055466, 35.959713, 35.187660>,  <34.793964, 35.709343, 35.357750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055466, 35.959713, 35.187660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455242, 0.774212, 0.439717,
		0.604447, -0.093886, 0.791094,
		0.653757, 0.625925, -0.425229,
		35.251595, 36.147491, 35.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043346, 36.223343, 35.809521>,  <34.793964, 35.709343, 35.357750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043346, 36.223343, 35.809521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176399, 36.435802, 35.497818>,  <35.256229, 36.563278, 35.310795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176399, 36.435802, 35.497818>,  <35.043346, 36.223343, 35.809521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176399, 36.435802, 35.497818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421652, 0.822878, 0.380896,
		0.843544, 0.201878, 0.497673,
		0.332630, 0.531148, -0.779256,
		35.276188, 36.595146, 35.264042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458370, 36.815453, 36.085522>,  <35.043346, 36.223343, 35.809521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458370, 36.815453, 36.085522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 36.910995, 35.716282>,  <35.265480, 36.968323, 35.494740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 36.910995, 35.716282>,  <35.458370, 36.815453, 36.085522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337814, 36.910995, 35.716282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318324, 0.887365, 0.333547,
		0.898796, 0.394372, -0.191408,
		-0.301390, 0.238860, -0.923098,
		35.247398, 36.982655, 35.439354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764652, 37.427643, 35.784119>,  <35.458370, 36.815453, 36.085522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764652, 37.427643, 35.784119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413895, 37.378536, 35.598221>,  <35.203442, 37.349072, 35.486683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413895, 37.378536, 35.598221>,  <35.764652, 37.427643, 35.784119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413895, 37.378536, 35.598221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302327, 0.892519, 0.334678,
		0.373709, 0.433982, -0.819757,
		-0.876892, -0.122762, -0.464747,
		35.150826, 37.341709, 35.458797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644295, 38.109055, 35.665859>,  <35.764652, 37.427643, 35.784119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644295, 38.109055, 35.665859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304234, 37.917244, 35.578865>,  <35.100197, 37.802158, 35.526669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.304234, 37.917244, 35.578865>,  <35.644295, 38.109055, 35.665859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304234, 37.917244, 35.578865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525386, 0.745278, 0.410524,
		-0.034772, 0.463270, -0.885535,
		-0.850153, -0.479523, -0.217481,
		35.049187, 37.773388, 35.513622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282909, 38.560032, 35.165119>,  <35.644295, 38.109055, 35.665859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282909, 38.560032, 35.165119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021740, 38.317707, 35.346973>,  <34.865040, 38.172314, 35.456085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021740, 38.317707, 35.346973>,  <35.282909, 38.560032, 35.165119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021740, 38.317707, 35.346973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528452, 0.794356, 0.299561,
		-0.542619, -0.044663, -0.838791,
		-0.652919, -0.605808, 0.454635,
		34.825863, 38.135963, 35.483364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649750, 38.809589, 34.949387>,  <35.282909, 38.560032, 35.165119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649750, 38.809589, 34.949387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572124, 38.573578, 35.262871>,  <34.525547, 38.431969, 35.450962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572124, 38.573578, 35.262871>,  <34.649750, 38.809589, 34.949387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572124, 38.573578, 35.262871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613437, 0.696422, 0.372414,
		-0.765528, -0.408483, -0.497099,
		-0.194066, -0.590032, 0.783709,
		34.513905, 38.396568, 35.497982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921726, 38.862728, 35.096596>,  <34.649750, 38.809589, 34.949387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921726, 38.862728, 35.096596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055241, 38.717140, 35.444416>,  <34.135349, 38.629787, 35.653107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055241, 38.717140, 35.444416>,  <33.921726, 38.862728, 35.096596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055241, 38.717140, 35.444416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556943, 0.668090, 0.493427,
		-0.760528, -0.648988, 0.020288,
		0.333782, -0.363966, 0.869551,
		34.155376, 38.607952, 35.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315430, 38.853668, 35.499630>,  <33.921726, 38.862728, 35.096596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315430, 38.853668, 35.499630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630318, 38.852676, 35.746296>,  <33.819252, 38.852081, 35.894295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630318, 38.852676, 35.746296>,  <33.315430, 38.853668, 35.499630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630318, 38.852676, 35.746296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488601, 0.607593, 0.626178,
		-0.376237, -0.794245, 0.477097,
		0.787219, -0.002481, 0.616668,
		33.866482, 38.851933, 35.931297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958950, 38.842804, 36.164394>,  <33.315430, 38.853668, 35.499630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958950, 38.842804, 36.164394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337189, 38.958458, 36.224064>,  <33.564133, 39.027851, 36.259865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.337189, 38.958458, 36.224064>,  <32.958950, 38.842804, 36.164394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337189, 38.958458, 36.224064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313665, 0.688401, 0.654002,
		0.086405, -0.665210, 0.741640,
		0.945594, 0.289136, 0.149172,
		33.620869, 39.045200, 36.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056732, 38.886776, 36.847805>,  <32.958950, 38.842804, 36.164394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056732, 38.886776, 36.847805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.354633, 39.107647, 36.697903>,  <33.533375, 39.240170, 36.607960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.354633, 39.107647, 36.697903>,  <33.056732, 38.886776, 36.847805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354633, 39.107647, 36.697903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137982, 0.676850, 0.723073,
		0.652914, -0.486804, 0.580280,
		0.744757, 0.552173, -0.374755,
		33.578060, 39.273300, 36.585476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421406, 39.074558, 37.417011>,  <33.056732, 38.886776, 36.847805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421406, 39.074558, 37.417011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525650, 39.344639, 37.140987>,  <33.588196, 39.506687, 36.975372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525650, 39.344639, 37.140987>,  <33.421406, 39.074558, 37.417011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525650, 39.344639, 37.140987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174499, 0.735931, 0.654183,
		0.949542, -0.050074, 0.309616,
		0.260613, 0.675202, -0.690060,
		33.603836, 39.547199, 36.933968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022636, 39.429001, 37.709503>,  <33.421406, 39.074558, 37.417011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022636, 39.429001, 37.709503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847610, 39.655937, 37.430458>,  <33.742596, 39.792099, 37.263031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847610, 39.655937, 37.430458>,  <34.022636, 39.429001, 37.709503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847610, 39.655937, 37.430458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292692, 0.643707, 0.707087,
		0.850218, 0.513580, -0.115605,
		-0.437561, 0.567342, -0.697612,
		33.716343, 39.826141, 37.221176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304356, 40.049198, 37.882767>,  <34.022636, 39.429001, 37.709503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304356, 40.049198, 37.882767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978092, 40.111267, 37.659832>,  <33.782333, 40.148510, 37.526070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978092, 40.111267, 37.659832>,  <34.304356, 40.049198, 37.882767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978092, 40.111267, 37.659832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264198, 0.757131, 0.597455,
		0.514689, 0.634565, -0.576561,
		-0.815656, 0.155177, -0.557338,
		33.733395, 40.157822, 37.492630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198071, 40.812386, 37.750759>,  <34.304356, 40.049198, 37.882767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198071, 40.812386, 37.750759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841846, 40.663532, 37.646133>,  <33.628113, 40.574219, 37.583359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841846, 40.663532, 37.646133>,  <34.198071, 40.812386, 37.750759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841846, 40.663532, 37.646133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454514, 0.705582, 0.543664,
		-0.017760, 0.603052, -0.797504,
		-0.890562, -0.372133, -0.261564,
		33.574677, 40.551891, 37.567665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769737, 41.356438, 37.625973>,  <34.198071, 40.812386, 37.750759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769737, 41.356438, 37.625973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507145, 41.065769, 37.706940>,  <33.349590, 40.891369, 37.755520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507145, 41.065769, 37.706940>,  <33.769737, 41.356438, 37.625973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507145, 41.065769, 37.706940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541247, 0.640672, 0.544602,
		-0.525434, 0.247963, -0.813900,
		-0.656484, -0.726674, 0.202422,
		33.310200, 40.847767, 37.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185543, 41.751446, 37.664066>,  <33.769737, 41.356438, 37.625973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185543, 41.751446, 37.664066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113316, 41.400562, 37.842010>,  <33.069977, 41.190033, 37.948776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113316, 41.400562, 37.842010>,  <33.185543, 41.751446, 37.664066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113316, 41.400562, 37.842010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502633, 0.471077, 0.724877,
		-0.845431, -0.092712, -0.525976,
		-0.180571, -0.877206, 0.444864,
		33.059143, 41.137402, 37.975468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632450, 42.012669, 38.073250>,  <33.185543, 41.751446, 37.664066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632450, 42.012669, 38.073250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719898, 41.659019, 38.238430>,  <32.772366, 41.446831, 38.337540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719898, 41.659019, 38.238430>,  <32.632450, 42.012669, 38.073250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719898, 41.659019, 38.238430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222850, 0.366773, 0.903225,
		-0.950023, -0.289487, -0.116845,
		0.218616, -0.884124, 0.412955,
		32.785484, 41.393784, 38.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.848072, 41.560886, 38.622337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203030, 41.401661, 38.715355>,  <32.416004, 41.306126, 38.771164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203030, 41.401661, 38.715355>,  <31.848072, 41.560886, 38.622337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203030, 41.401661, 38.715355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013541, 0.526710, 0.849937,
		-0.460810, -0.751082, 0.472790,
		0.887395, -0.398062, 0.232543,
		32.469250, 41.282242, 38.785118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817633, 41.309635, 39.259129>,  <31.848072, 41.560886, 38.622337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817633, 41.309635, 39.259129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211735, 41.359627, 39.212399>,  <32.448196, 41.389622, 39.184361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211735, 41.359627, 39.212399>,  <31.817633, 41.309635, 39.259129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211735, 41.359627, 39.212399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053367, 0.424291, 0.903952,
		0.162544, -0.896860, 0.411366,
		0.985257, 0.124979, -0.116828,
		32.507313, 41.397121, 39.177349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022297, 41.083824, 39.909477>,  <31.817633, 41.309635, 39.259129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022297, 41.083824, 39.909477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324009, 41.292290, 39.749752>,  <32.505035, 41.417370, 39.653915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.324009, 41.292290, 39.749752>,  <32.022297, 41.083824, 39.909477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324009, 41.292290, 39.749752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138045, 0.468717, 0.872495,
		0.641877, -0.713228, 0.281600,
		0.754280, 0.521161, -0.399317,
		32.550293, 41.448639, 39.629955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607235, 41.037296, 40.390930>,  <32.022297, 41.083824, 39.909477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607235, 41.037296, 40.390930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673908, 41.372524, 40.183140>,  <32.713913, 41.573662, 40.058468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673908, 41.372524, 40.183140>,  <32.607235, 41.037296, 40.390930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673908, 41.372524, 40.183140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104285, 0.508905, 0.854483,
		0.980480, -0.196602, -0.002572,
		0.166684, 0.838071, -0.519474,
		32.723915, 41.623947, 40.027298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213364, 41.292919, 40.632187>,  <32.607235, 41.037296, 40.390930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213364, 41.292919, 40.632187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032528, 41.612518, 40.473587>,  <32.924026, 41.804279, 40.378426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032528, 41.612518, 40.473587>,  <33.213364, 41.292919, 40.632187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032528, 41.612518, 40.473587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250698, 0.540424, 0.803176,
		0.856017, 0.263705, -0.444628,
		-0.452089, 0.799000, -0.396502,
		32.896900, 41.852219, 40.354637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692169, 41.821274, 40.788685>,  <33.213364, 41.292919, 40.632187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692169, 41.821274, 40.788685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334934, 41.996597, 40.748116>,  <33.120594, 42.101791, 40.723774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334934, 41.996597, 40.748116>,  <33.692169, 41.821274, 40.788685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334934, 41.996597, 40.748116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223766, 0.628352, 0.745052,
		0.390293, 0.642699, -0.659249,
		-0.893085, 0.438306, -0.101427,
		33.067009, 42.128090, 40.717686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848450, 42.455925, 40.805981>,  <33.692169, 41.821274, 40.788685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848450, 42.455925, 40.805981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461235, 42.482197, 40.902805>,  <33.228905, 42.497959, 40.960899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461235, 42.482197, 40.902805>,  <33.848450, 42.455925, 40.805981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461235, 42.482197, 40.902805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215041, 0.714074, 0.666225,
		-0.129087, 0.696982, -0.705374,
		-0.968036, 0.065684, 0.242057,
		33.170826, 42.501904, 40.975422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564003, 43.096943, 40.604061>,  <33.848450, 42.455925, 40.805981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564003, 43.096943, 40.604061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315823, 42.991909, 40.899654>,  <33.166916, 42.928890, 41.077011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315823, 42.991909, 40.899654>,  <33.564003, 43.096943, 40.604061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315823, 42.991909, 40.899654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184780, 0.866807, 0.463143,
		-0.762165, 0.423907, -0.489292,
		-0.620451, -0.262580, 0.738980,
		33.129688, 42.913136, 41.121349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246162, 43.672535, 40.692234>,  <33.564003, 43.096943, 40.604061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246162, 43.672535, 40.692234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151352, 43.474644, 41.026672>,  <33.094467, 43.355907, 41.227337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151352, 43.474644, 41.026672>,  <33.246162, 43.672535, 40.692234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151352, 43.474644, 41.026672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007648, 0.861547, 0.507621,
		-0.971473, 0.113925, -0.207993,
		-0.237026, -0.494731, 0.836098,
		33.080242, 43.326225, 41.277500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865055, 44.186211, 41.105736>,  <33.246162, 43.672535, 40.692234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865055, 44.186211, 41.105736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966793, 43.907234, 41.373730>,  <33.027836, 43.739849, 41.534527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966793, 43.907234, 41.373730>,  <32.865055, 44.186211, 41.105736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966793, 43.907234, 41.373730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058884, 0.702653, 0.709092,
		-0.965318, -0.140905, 0.219788,
		0.254349, -0.697441, 0.669987,
		33.043098, 43.698002, 41.574726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424377, 44.320335, 41.722099>,  <32.865055, 44.186211, 41.105736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424377, 44.320335, 41.722099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724117, 44.096836, 41.864243>,  <32.903961, 43.962738, 41.949528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724117, 44.096836, 41.864243>,  <32.424377, 44.320335, 41.722099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724117, 44.096836, 41.864243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084056, 0.612575, 0.785931,
		-0.656817, -0.559067, 0.505999,
		0.749350, -0.558745, 0.355356,
		32.948921, 43.929214, 41.970848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272152, 44.208988, 42.424316>,  <32.424377, 44.320335, 41.722099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272152, 44.208988, 42.424316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659203, 44.119030, 42.378498>,  <32.891434, 44.065056, 42.351009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.659203, 44.119030, 42.378498>,  <32.272152, 44.208988, 42.424316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659203, 44.119030, 42.378498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228440, 0.587500, 0.776311,
		-0.107294, -0.777346, 0.619856,
		0.967628, -0.224894, -0.114542,
		32.949490, 44.051563, 42.344135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504219, 43.844097, 43.024174>,  <32.272152, 44.208988, 42.424316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504219, 43.844097, 43.024174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842129, 43.994343, 42.871716>,  <33.044872, 44.084492, 42.780239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842129, 43.994343, 42.871716>,  <32.504219, 43.844097, 43.024174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842129, 43.994343, 42.871716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242528, 0.366169, 0.898388,
		0.477015, -0.851371, 0.218231,
		0.844770, 0.375618, -0.381149,
		33.095562, 44.107029, 42.757370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039005, 43.662643, 43.448017>,  <32.504219, 43.844097, 43.024174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039005, 43.662643, 43.448017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179119, 43.966602, 43.228977>,  <33.263187, 44.148975, 43.097553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179119, 43.966602, 43.228977>,  <33.039005, 43.662643, 43.448017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179119, 43.966602, 43.228977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115477, 0.545144, 0.830351,
		0.929499, -0.354091, 0.103203,
		0.350281, 0.759893, -0.547600,
		33.284203, 44.194569, 43.064697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668396, 43.983150, 43.790558>,  <33.039005, 43.662643, 43.448017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668396, 43.983150, 43.790558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523804, 44.267830, 43.549622>,  <33.437050, 44.438637, 43.405060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523804, 44.267830, 43.549622>,  <33.668396, 43.983150, 43.790558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523804, 44.267830, 43.549622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190417, 0.688761, 0.699535,
		0.912728, 0.138173, -0.384494,
		-0.361482, 0.711700, -0.602341,
		33.415359, 44.481339, 43.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169170, 44.481586, 43.885643>,  <33.668396, 43.983150, 43.790558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169170, 44.481586, 43.885643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841858, 44.674133, 43.759972>,  <33.645470, 44.789661, 43.684566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841858, 44.674133, 43.759972>,  <34.169170, 44.481586, 43.885643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841858, 44.674133, 43.759972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181281, 0.734779, 0.653634,
		0.545490, 0.477898, -0.688515,
		-0.818277, 0.481366, -0.314181,
		33.596375, 44.818542, 43.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424011, 45.174549, 43.883263>,  <34.169170, 44.481586, 43.885643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424011, 45.174549, 43.883263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025318, 45.206062, 43.890388>,  <33.786102, 45.224972, 43.894665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025318, 45.206062, 43.890388>,  <34.424011, 45.174549, 43.883263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025318, 45.206062, 43.890388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065529, 0.659744, 0.748628,
		0.047227, 0.747349, -0.662751,
		-0.996732, 0.078784, 0.017815,
		33.726299, 45.229698, 43.895733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341835, 45.805592, 44.048470>,  <34.424011, 45.174549, 43.883263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341835, 45.805592, 44.048470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986404, 45.638538, 44.124371>,  <33.773144, 45.538307, 44.169910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986404, 45.638538, 44.124371>,  <34.341835, 45.805592, 44.048470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986404, 45.638538, 44.124371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191929, 0.714187, 0.673127,
		-0.416642, 0.561707, -0.714769,
		-0.888579, -0.417638, 0.189753,
		33.719830, 45.513248, 44.181297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966846, 46.331123, 44.320484>,  <34.341835, 45.805592, 44.048470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966846, 46.331123, 44.320484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758198, 46.010506, 44.437401>,  <33.633007, 45.818134, 44.507549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758198, 46.010506, 44.437401>,  <33.966846, 46.331123, 44.320484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758198, 46.010506, 44.437401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197914, 0.446922, 0.872405,
		-0.829904, 0.397218, -0.391762,
		-0.521623, -0.801547, 0.292287,
		33.601711, 45.770042, 44.525085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365803, 46.585331, 44.493275>,  <33.966846, 46.331123, 44.320484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365803, 46.585331, 44.493275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408871, 46.244431, 44.698044>,  <33.434711, 46.039890, 44.820908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408871, 46.244431, 44.698044>,  <33.365803, 46.585331, 44.493275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408871, 46.244431, 44.698044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, 0.498144, 0.857023,
		-0.985415, -0.159732, -0.058674,
		0.107666, -0.852255, 0.511927,
		33.441170, 45.988754, 44.851624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908852, 46.664066, 44.910831>,  <33.365803, 46.585331, 44.493275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908852, 46.664066, 44.910831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076431, 46.366779, 45.119488>,  <33.176979, 46.188408, 45.244682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076431, 46.366779, 45.119488>,  <32.908852, 46.664066, 44.910831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076431, 46.366779, 45.119488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337475, 0.405881, 0.849335,
		-0.842965, -0.531869, -0.080774,
		0.418951, -0.743219, 0.521637,
		33.202118, 46.143814, 45.275978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420284, 46.463100, 45.487503>,  <32.908852, 46.664066, 44.910831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420284, 46.463100, 45.487503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788490, 46.359104, 45.604160>,  <33.009415, 46.296707, 45.674156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788490, 46.359104, 45.604160>,  <32.420284, 46.463100, 45.487503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788490, 46.359104, 45.604160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234027, 0.230822, 0.944432,
		-0.312857, -0.937618, 0.151632,
		0.920517, -0.259986, 0.291642,
		33.064644, 46.281109, 45.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947206, 46.367847, 46.024452>,  <32.420284, 46.463100, 45.487503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947206, 46.367847, 46.024452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597994, 46.269436, 46.192871>,  <31.388466, 46.210388, 46.293922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597994, 46.269436, 46.192871>,  <31.947206, 46.367847, 46.024452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597994, 46.269436, 46.192871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318231, -0.941656, 0.109603,
		0.369516, 0.229677, 0.900392,
		-0.873033, -0.246033, 0.421047,
		31.336084, 46.195625, 46.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732050, 46.578560, 46.782829>,  <31.947206, 46.367847, 46.024452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732050, 46.578560, 46.782829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839760, 46.378750, 47.112186>,  <31.904387, 46.258865, 47.309799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.839760, 46.378750, 47.112186>,  <31.732050, 46.578560, 46.782829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839760, 46.378750, 47.112186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131002, -0.828024, -0.545174,
		0.954112, 0.254667, -0.157528,
		0.269275, -0.499521, 0.823389,
		31.920542, 46.228893, 47.359203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345371, 46.148796, 46.573044>,  <31.732050, 46.578560, 46.782829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345371, 46.148796, 46.573044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135574, 45.993458, 46.876122>,  <32.009697, 45.900253, 47.057968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135574, 45.993458, 46.876122>,  <32.345371, 46.148796, 46.573044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135574, 45.993458, 46.876122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047453, -0.901868, -0.429398,
		0.850093, -0.189260, 0.491450,
		-0.524490, -0.388349, 0.757690,
		31.978228, 45.876953, 47.103428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742401, 45.540905, 46.749729>,  <32.345371, 46.148796, 46.573044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742401, 45.540905, 46.749729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367935, 45.501102, 46.884605>,  <32.143257, 45.477219, 46.965530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367935, 45.501102, 46.884605>,  <32.742401, 45.540905, 46.749729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367935, 45.501102, 46.884605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017767, -0.944491, -0.328058,
		0.351118, -0.313107, 0.882429,
		-0.936163, -0.099509, 0.337191,
		32.087086, 45.471249, 46.985764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687851, 44.819134, 47.019375>,  <32.742401, 45.540905, 46.749729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687851, 44.819134, 47.019375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317066, 44.941925, 46.933121>,  <32.094593, 45.015598, 46.881367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317066, 44.941925, 46.933121>,  <32.687851, 44.819134, 47.019375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317066, 44.941925, 46.933121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220385, -0.910770, -0.349183,
		-0.303589, -0.276157, 0.911905,
		-0.926965, 0.306979, -0.215639,
		32.038979, 45.034019, 46.868427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451820, 44.241203, 47.283813>,  <32.687851, 44.819134, 47.019375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451820, 44.241203, 47.283813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165989, 44.402142, 47.054905>,  <31.994490, 44.498707, 46.917561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165989, 44.402142, 47.054905>,  <32.451820, 44.241203, 47.283813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165989, 44.402142, 47.054905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088070, -0.863281, -0.496981,
		-0.693989, -0.304733, 0.652317,
		-0.714579, 0.402349, -0.572269,
		31.951614, 44.522846, 46.883224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842367, 43.748802, 47.261795>,  <32.451820, 44.241203, 47.283813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842367, 43.748802, 47.261795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813229, 43.994747, 46.947689>,  <31.795746, 44.142315, 46.759228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813229, 43.994747, 46.947689>,  <31.842367, 43.748802, 47.261795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813229, 43.994747, 46.947689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105765, -0.787675, -0.606945,
		-0.991719, 0.038838, 0.122412,
		-0.072848, 0.614865, -0.785260,
		31.791374, 44.179207, 46.712112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282579, 43.438210, 46.865734>,  <31.842367, 43.748802, 47.261795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282579, 43.438210, 46.865734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467283, 43.668957, 46.596214>,  <31.578106, 43.807404, 46.434502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467283, 43.668957, 46.596214>,  <31.282579, 43.438210, 46.865734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467283, 43.668957, 46.596214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030601, -0.769542, -0.637862,
		-0.886476, 0.273921, -0.372998,
		0.461762, 0.576864, -0.673799,
		31.605812, 43.842014, 46.394073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952406, 43.227428, 46.315536>,  <31.282579, 43.438210, 46.865734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952406, 43.227428, 46.315536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288647, 43.398342, 46.182377>,  <31.490391, 43.500889, 46.102482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288647, 43.398342, 46.182377>,  <30.952406, 43.227428, 46.315536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288647, 43.398342, 46.182377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027947, -0.647987, -0.761139,
		-0.540935, 0.630509, -0.556639,
		0.840600, 0.427283, -0.332898,
		31.540827, 43.526527, 46.082508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774803, 43.434860, 45.640743>,  <30.952406, 43.227428, 46.315536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774803, 43.434860, 45.640743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172354, 43.396149, 45.662071>,  <31.410885, 43.372921, 45.674866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172354, 43.396149, 45.662071>,  <30.774803, 43.434860, 45.640743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172354, 43.396149, 45.662071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006016, -0.529215, -0.848466,
		0.110330, 0.842950, -0.526557,
		0.993877, -0.096779, 0.053317,
		31.470516, 43.367115, 45.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053928, 43.650944, 45.004368>,  <30.774803, 43.434860, 45.640743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053928, 43.650944, 45.004368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358822, 43.445137, 45.161476>,  <31.541758, 43.321651, 45.255741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358822, 43.445137, 45.161476>,  <31.053928, 43.650944, 45.004368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358822, 43.445137, 45.161476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171416, -0.424670, -0.888972,
		0.624193, 0.744932, -0.235500,
		0.762233, -0.514522, 0.392769,
		31.587492, 43.290779, 45.279308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501797, 43.645931, 44.487843>,  <31.053928, 43.650944, 45.004368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501797, 43.645931, 44.487843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617804, 43.344822, 44.724224>,  <31.687407, 43.164158, 44.866055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617804, 43.344822, 44.724224>,  <31.501797, 43.645931, 44.487843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617804, 43.344822, 44.724224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036241, -0.608413, -0.792793,
		0.956336, 0.251339, -0.149168,
		0.290015, -0.752770, 0.590956,
		31.704807, 43.118992, 44.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076809, 43.350193, 44.027210>,  <31.501797, 43.645931, 44.487843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076809, 43.350193, 44.027210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944431, 43.067078, 44.276855>,  <31.865005, 42.897209, 44.426643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944431, 43.067078, 44.276855>,  <32.076809, 43.350193, 44.027210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944431, 43.067078, 44.276855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111210, -0.686021, -0.719033,
		0.937075, -0.168551, 0.305746,
		-0.330942, -0.707790, 0.624108,
		31.845148, 42.854740, 44.464088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587494, 42.862659, 43.986679>,  <32.076809, 43.350193, 44.027210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587494, 42.862659, 43.986679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276897, 42.662113, 44.139359>,  <32.090538, 42.541786, 44.230965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276897, 42.662113, 44.139359>,  <32.587494, 42.862659, 43.986679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276897, 42.662113, 44.139359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050123, -0.652973, -0.755720,
		0.628127, -0.567681, 0.532160,
		-0.776495, -0.501362, 0.381696,
		32.043949, 42.511703, 44.253868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795601, 42.140327, 43.876541>,  <32.587494, 42.862659, 43.986679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795601, 42.140327, 43.876541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400608, 42.154423, 43.938042>,  <32.163612, 42.162880, 43.974941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400608, 42.154423, 43.938042>,  <32.795601, 42.140327, 43.876541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400608, 42.154423, 43.938042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, -0.626470, -0.766459,
		0.069312, -0.778649, 0.623620,
		-0.987481, 0.035238, 0.153752,
		32.104362, 42.164993, 43.984169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597031, 41.427391, 43.763416>,  <32.795601, 42.140327, 43.876541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597031, 41.427391, 43.763416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263767, 41.646587, 43.733631>,  <32.063808, 41.778107, 43.715759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263767, 41.646587, 43.733631>,  <32.597031, 41.427391, 43.763416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263767, 41.646587, 43.733631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236848, -0.475248, -0.847374,
		-0.499754, -0.688357, 0.525748,
		-0.833156, 0.548001, -0.074471,
		32.013821, 41.810986, 43.711292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035233, 41.000992, 43.581005>,  <32.597031, 41.427391, 43.763416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035233, 41.000992, 43.581005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906528, 41.365837, 43.479397>,  <31.829306, 41.584743, 43.418430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906528, 41.365837, 43.479397>,  <32.035233, 41.000992, 43.581005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906528, 41.365837, 43.479397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344168, -0.362608, -0.866063,
		-0.882053, -0.191240, 0.430592,
		-0.321762, 0.912109, -0.254021,
		31.809999, 41.639469, 43.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293968, 40.865044, 43.389580>,  <32.035233, 41.000992, 43.581005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293968, 40.865044, 43.389580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418890, 41.210567, 43.231438>,  <31.493843, 41.417881, 43.136555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418890, 41.210567, 43.231438>,  <31.293968, 40.865044, 43.389580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418890, 41.210567, 43.231438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327034, -0.292970, -0.898452,
		-0.891916, 0.409884, 0.190998,
		0.312304, 0.863807, -0.395351,
		31.512581, 41.469711, 43.112831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634125, 41.149899, 43.133396>,  <31.293968, 40.865044, 43.389580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634125, 41.149899, 43.133396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960947, 41.296619, 42.955467>,  <31.157042, 41.384651, 42.848709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960947, 41.296619, 42.955467>,  <30.634125, 41.149899, 43.133396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960947, 41.296619, 42.955467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341466, -0.313799, -0.885963,
		-0.464561, 0.875777, -0.131141,
		0.817058, 0.366804, -0.444827,
		31.206064, 41.406662, 42.822018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353405, 41.628265, 42.574661>,  <30.634125, 41.149899, 43.133396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353405, 41.628265, 42.574661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738476, 41.552437, 42.497395>,  <30.969519, 41.506939, 42.451035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738476, 41.552437, 42.497395>,  <30.353405, 41.628265, 42.574661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738476, 41.552437, 42.497395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215674, -0.106130, -0.970681,
		0.163511, 0.976114, -0.143054,
		0.962678, -0.189570, -0.193169,
		31.027279, 41.495567, 42.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371048, 41.759548, 41.887859>,  <30.353405, 41.628265, 42.574661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371048, 41.759548, 41.887859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702049, 41.546158, 41.957882>,  <30.900650, 41.418125, 41.999897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702049, 41.546158, 41.957882>,  <30.371048, 41.759548, 41.887859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702049, 41.546158, 41.957882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115358, -0.466679, -0.876871,
		0.549481, 0.705421, -0.447719,
		0.827504, -0.533472, 0.175055,
		30.950300, 41.386116, 42.010399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732191, 41.795341, 41.301460>,  <30.371048, 41.759548, 41.887859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732191, 41.795341, 41.301460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862511, 41.471855, 41.497349>,  <30.940702, 41.277763, 41.614883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862511, 41.471855, 41.497349>,  <30.732191, 41.795341, 41.301460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862511, 41.471855, 41.497349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038559, -0.528921, -0.847795,
		0.944652, 0.257329, -0.203507,
		0.325801, -0.808718, 0.489723,
		30.960251, 41.229240, 41.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.395210, 27.776785, 30.755539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020237, 27.865046, 30.647812>,  <42.795254, 27.918003, 30.583176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020237, 27.865046, 30.647812>,  <43.395210, 27.776785, 30.755539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020237, 27.865046, 30.647812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026408, 0.816365, 0.576932,
		0.347165, 0.533723, -0.771114,
		-0.937432, 0.220654, -0.269319,
		42.739006, 27.931242, 30.567017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528183, 28.457870, 30.564777>,  <43.395210, 27.776785, 30.755539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528183, 28.457870, 30.564777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131641, 28.442755, 30.615030>,  <42.893715, 28.433685, 30.645182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131641, 28.442755, 30.615030>,  <43.528183, 28.457870, 30.564777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131641, 28.442755, 30.615030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033872, 0.851433, 0.523368,
		-0.126746, 0.523100, -0.842794,
		-0.991357, -0.037788, 0.125634,
		42.834236, 28.431417, 30.652721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270382, 29.121138, 30.455217>,  <43.528183, 28.457870, 30.564777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270382, 29.121138, 30.455217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990334, 28.930664, 30.668037>,  <42.822304, 28.816380, 30.795731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990334, 28.930664, 30.668037>,  <43.270382, 29.121138, 30.455217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990334, 28.930664, 30.668037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156234, 0.829252, 0.536593,
		-0.696723, 0.292555, -0.654973,
		-0.700120, -0.476186, 0.532052,
		42.780296, 28.787807, 30.827652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736500, 29.592358, 30.402554>,  <43.270382, 29.121138, 30.455217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736500, 29.592358, 30.402554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658863, 29.349911, 30.711086>,  <42.612282, 29.204443, 30.896206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658863, 29.349911, 30.711086>,  <42.736500, 29.592358, 30.402554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658863, 29.349911, 30.711086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215408, 0.793424, 0.569278,
		-0.957042, -0.055659, -0.284559,
		-0.194090, -0.606119, 0.771330,
		42.600636, 29.168076, 30.942486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043438, 29.712069, 30.696413>,  <42.736500, 29.592358, 30.402554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043438, 29.712069, 30.696413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261002, 29.565262, 30.998262>,  <42.391541, 29.477177, 31.179373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261002, 29.565262, 30.998262>,  <42.043438, 29.712069, 30.696413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261002, 29.565262, 30.998262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202807, 0.815126, 0.542623,
		-0.814265, -0.448182, 0.368924,
		0.543913, -0.367019, 0.754623,
		42.424175, 29.455156, 31.224649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697613, 29.968138, 31.193617>,  <42.043438, 29.712069, 30.696413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697613, 29.968138, 31.193617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003639, 29.808594, 31.395838>,  <42.187256, 29.712868, 31.517170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003639, 29.808594, 31.395838>,  <41.697613, 29.968138, 31.193617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003639, 29.808594, 31.395838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001198, 0.784195, 0.620513,
		-0.643949, -0.475340, 0.599485,
		0.765067, -0.398861, 0.505551,
		42.233158, 29.688936, 31.547503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499695, 30.056412, 31.935575>,  <41.697613, 29.968138, 31.193617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499695, 30.056412, 31.935575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897182, 30.011923, 31.930750>,  <42.135677, 29.985229, 31.927855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.897182, 30.011923, 31.930750>,  <41.499695, 30.056412, 31.935575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897182, 30.011923, 31.930750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075230, 0.584532, 0.807875,
		-0.082803, -0.803711, 0.589230,
		0.993722, -0.111223, -0.012062,
		42.195301, 29.978556, 31.927132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717293, 29.940136, 32.608932>,  <41.499695, 30.056412, 31.935575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717293, 29.940136, 32.608932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036785, 30.075876, 32.410187>,  <42.228481, 30.157320, 32.290939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036785, 30.075876, 32.410187>,  <41.717293, 29.940136, 32.608932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036785, 30.075876, 32.410187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195909, 0.634103, 0.748019,
		0.568902, -0.694805, 0.439996,
		0.798730, 0.339350, -0.496862,
		42.276405, 30.177681, 32.261127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212597, 30.083710, 33.078323>,  <41.717293, 29.940136, 32.608932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212597, 30.083710, 33.078323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384670, 30.285646, 32.778973>,  <42.487915, 30.406809, 32.599361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384670, 30.285646, 32.778973>,  <42.212597, 30.083710, 33.078323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384670, 30.285646, 32.778973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357668, 0.665849, 0.654766,
		0.828862, -0.549344, 0.105873,
		0.430188, 0.504843, -0.748380,
		42.513725, 30.437099, 32.554459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979984, 30.210527, 33.286465>,  <42.212597, 30.083710, 33.078323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979984, 30.210527, 33.286465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871010, 30.472559, 33.004570>,  <42.805626, 30.629778, 32.835434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871010, 30.472559, 33.004570>,  <42.979984, 30.210527, 33.286465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871010, 30.472559, 33.004570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346218, 0.750121, 0.563428,
		0.897726, -0.090495, -0.431159,
		-0.272434, 0.655079, -0.704734,
		42.789280, 30.669083, 32.793148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494884, 30.643389, 33.219074>,  <42.979984, 30.210527, 33.286465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494884, 30.643389, 33.219074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.180847, 30.856213, 33.092243>,  <42.992424, 30.983906, 33.016144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.180847, 30.856213, 33.092243>,  <43.494884, 30.643389, 33.219074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180847, 30.856213, 33.092243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279617, 0.761263, 0.585059,
		0.552666, 0.370666, -0.746436,
		-0.785095, 0.532058, -0.317080,
		42.945320, 31.015831, 32.997120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721310, 31.339462, 33.261169>,  <43.494884, 30.643389, 33.219074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721310, 31.339462, 33.261169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332047, 31.410408, 33.202507>,  <43.098488, 31.452976, 33.167309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.332047, 31.410408, 33.202507>,  <43.721310, 31.339462, 33.261169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332047, 31.410408, 33.202507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060356, 0.811620, 0.581059,
		0.222087, 0.556610, -0.800539,
		-0.973157, 0.177364, -0.146656,
		43.040100, 31.463617, 33.158512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593651, 32.083103, 32.935326>,  <43.721310, 31.339462, 33.261169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593651, 32.083103, 32.935326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249664, 31.959766, 33.097992>,  <43.043270, 31.885765, 33.195591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249664, 31.959766, 33.097992>,  <43.593651, 32.083103, 32.935326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249664, 31.959766, 33.097992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145860, 0.912107, 0.383125,
		-0.489059, 0.270158, -0.829358,
		-0.859968, -0.308341, 0.406669,
		42.991673, 31.867264, 33.219994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120609, 32.602039, 32.662121>,  <43.593651, 32.083103, 32.935326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120609, 32.602039, 32.662121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941193, 32.450436, 32.985889>,  <42.833542, 32.359474, 33.180149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941193, 32.450436, 32.985889>,  <43.120609, 32.602039, 32.662121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941193, 32.450436, 32.985889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195520, 0.925307, 0.324929,
		-0.872112, -0.012511, -0.489146,
		-0.448545, -0.379012, 0.809417,
		42.806629, 32.336731, 33.228714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507908, 33.003956, 32.758911>,  <43.120609, 32.602039, 32.662121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507908, 33.003956, 32.758911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539055, 32.822342, 33.113941>,  <42.557743, 32.713375, 33.326962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539055, 32.822342, 33.113941>,  <42.507908, 33.003956, 32.758911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539055, 32.822342, 33.113941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347298, 0.822162, 0.451036,
		-0.934516, -0.343373, -0.093669,
		0.077863, -0.454031, 0.887577,
		42.562412, 32.686134, 33.380215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925358, 33.198624, 33.090511>,  <42.507908, 33.003956, 32.758911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925358, 33.198624, 33.090511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212151, 33.095329, 33.349510>,  <42.384228, 33.033352, 33.504910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212151, 33.095329, 33.349510>,  <41.925358, 33.198624, 33.090511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212151, 33.095329, 33.349510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125496, 0.865864, 0.484283,
		-0.685703, -0.428480, 0.588401,
		0.716981, -0.258232, 0.647498,
		42.427246, 33.017860, 33.543758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624508, 33.330936, 33.770424>,  <41.925358, 33.198624, 33.090511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624508, 33.330936, 33.770424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024025, 33.341145, 33.787231>,  <42.263733, 33.347271, 33.797314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.024025, 33.341145, 33.787231>,  <41.624508, 33.330936, 33.770424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024025, 33.341145, 33.787231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044018, 0.844800, 0.533269,
		-0.021885, -0.534473, 0.844902,
		0.998791, 0.025521, 0.042015,
		42.323662, 33.348801, 33.799835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797932, 33.358551, 34.451073>,  <41.624508, 33.330936, 33.770424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797932, 33.358551, 34.451073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101959, 33.510128, 34.239906>,  <42.284378, 33.601074, 34.113209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101959, 33.510128, 34.239906>,  <41.797932, 33.358551, 34.451073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101959, 33.510128, 34.239906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083091, 0.862379, 0.499397,
		0.644504, -0.335713, 0.686958,
		0.760072, 0.378944, -0.527912,
		42.329979, 33.623810, 34.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085205, 33.675789, 34.916176>,  <41.797932, 33.358551, 34.451073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085205, 33.675789, 34.916176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304115, 33.841415, 34.625237>,  <42.435463, 33.940792, 34.450672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304115, 33.841415, 34.625237>,  <42.085205, 33.675789, 34.916176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304115, 33.841415, 34.625237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254741, 0.745405, 0.616019,
		0.797241, -0.522419, 0.302465,
		0.547278, 0.414065, -0.727349,
		42.468300, 33.965633, 34.407032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751404, 33.930683, 35.205940>,  <42.085205, 33.675789, 34.916176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751404, 33.930683, 35.205940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677574, 34.132805, 34.868752>,  <42.633274, 34.254078, 34.666439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677574, 34.132805, 34.868752>,  <42.751404, 33.930683, 35.205940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677574, 34.132805, 34.868752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061831, 0.861979, 0.503160,
		0.980871, 0.040751, -0.190345,
		-0.184578, 0.505304, -0.842970,
		42.622200, 34.284397, 34.615860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250637, 34.513618, 35.179043>,  <42.751404, 33.930683, 35.205940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250637, 34.513618, 35.179043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951920, 34.623402, 34.936729>,  <42.772690, 34.689270, 34.791344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951920, 34.623402, 34.936729>,  <43.250637, 34.513618, 35.179043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951920, 34.623402, 34.936729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029350, 0.896387, 0.442300,
		0.664404, 0.348088, -0.661364,
		-0.746797, 0.274455, -0.605779,
		42.727879, 34.705738, 34.754997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325748, 35.188942, 34.687626>,  <43.250637, 34.513618, 35.179043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325748, 35.188942, 34.687626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935040, 35.139603, 34.757702>,  <42.700615, 35.110001, 34.799747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935040, 35.139603, 34.757702>,  <43.325748, 35.188942, 34.687626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935040, 35.139603, 34.757702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057886, 0.939184, 0.338501,
		-0.206291, 0.320499, -0.924513,
		-0.976777, -0.123346, 0.175193,
		42.642006, 35.102600, 34.810261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923378, 35.479404, 35.013062>,  <43.325748, 35.188942, 34.687626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923378, 35.479404, 35.013062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267605, 35.330753, 35.152378>,  <44.474140, 35.241562, 35.235970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267605, 35.330753, 35.152378>,  <43.923378, 35.479404, 35.013062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267605, 35.330753, 35.152378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099700, -0.547691, -0.830719,
		0.499476, 0.749619, -0.434276,
		0.860572, -0.371627, 0.348296,
		44.525776, 35.219265, 35.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507797, 35.686626, 34.719635>,  <43.923378, 35.479404, 35.013062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507797, 35.686626, 34.719635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589020, 35.310402, 34.828533>,  <44.637753, 35.084667, 34.893871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589020, 35.310402, 34.828533>,  <44.507797, 35.686626, 34.719635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589020, 35.310402, 34.828533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011028, -0.275824, -0.961145,
		0.979105, 0.198172, -0.045636,
		0.203059, -0.940558, 0.272246,
		44.649937, 35.028236, 34.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889362, 35.461327, 34.195679>,  <44.507797, 35.686626, 34.719635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889362, 35.461327, 34.195679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792019, 35.116913, 34.374294>,  <44.733612, 34.910263, 34.481464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792019, 35.116913, 34.374294>,  <44.889362, 35.461327, 34.195679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792019, 35.116913, 34.374294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136848, -0.425293, -0.894650,
		0.960234, -0.278827, -0.014333,
		-0.243356, -0.861035, 0.446537,
		44.719013, 34.858601, 34.508255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417305, 35.002522, 34.003517>,  <44.889362, 35.461327, 34.195679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417305, 35.002522, 34.003517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081936, 34.815258, 34.115139>,  <44.880714, 34.702900, 34.182114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081936, 34.815258, 34.115139>,  <45.417305, 35.002522, 34.003517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081936, 34.815258, 34.115139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066034, -0.420985, -0.904661,
		0.541000, -0.776919, 0.322051,
		-0.838426, -0.468155, 0.279055,
		44.830406, 34.674812, 34.198856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497375, 34.375767, 33.626293>,  <45.417305, 35.002522, 34.003517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497375, 34.375767, 33.626293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124523, 34.375042, 33.771137>,  <44.900810, 34.374607, 33.858044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124523, 34.375042, 33.771137>,  <45.497375, 34.375767, 33.626293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124523, 34.375042, 33.771137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317122, -0.478669, -0.818724,
		0.174818, -0.877993, 0.445608,
		-0.932133, -0.001816, 0.362111,
		44.844883, 34.374496, 33.879772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312382, 33.751877, 33.593082>,  <45.497375, 34.375767, 33.626293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312382, 33.751877, 33.593082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942722, 33.904644, 33.589439>,  <44.720928, 33.996304, 33.587254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.942722, 33.904644, 33.589439>,  <45.312382, 33.751877, 33.593082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942722, 33.904644, 33.589439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269068, -0.667620, -0.694180,
		-0.271200, -0.639077, 0.719744,
		-0.924150, 0.381922, -0.009103,
		44.665478, 34.019222, 33.586708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801411, 33.156651, 33.503761>,  <45.312382, 33.751877, 33.593082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801411, 33.156651, 33.503761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623508, 33.498734, 33.397312>,  <44.516769, 33.703983, 33.333443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623508, 33.498734, 33.397312>,  <44.801411, 33.156651, 33.503761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623508, 33.498734, 33.397312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506763, -0.485273, -0.712532,
		-0.738504, -0.182037, 0.649211,
		-0.444752, 0.855203, -0.266127,
		44.490082, 33.755295, 33.317474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159492, 33.048946, 33.479515>,  <44.801411, 33.156651, 33.503761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159492, 33.048946, 33.479515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222111, 33.355774, 33.230644>,  <44.259682, 33.539871, 33.081322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222111, 33.355774, 33.230644>,  <44.159492, 33.048946, 33.479515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222111, 33.355774, 33.230644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474348, -0.494144, -0.728571,
		-0.866307, 0.409182, 0.286500,
		0.156546, 0.767067, -0.622175,
		44.269073, 33.585896, 33.043991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470749, 33.149078, 33.159153>,  <44.159492, 33.048946, 33.479515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470749, 33.149078, 33.159153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752865, 33.316486, 32.930271>,  <43.922134, 33.416931, 32.792942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752865, 33.316486, 32.930271>,  <43.470749, 33.149078, 33.159153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752865, 33.316486, 32.930271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440487, -0.373715, -0.816277,
		-0.555467, 0.827756, -0.079224,
		0.705285, 0.418518, -0.572202,
		43.964451, 33.442043, 32.758610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099186, 33.349796, 32.546501>,  <43.470749, 33.149078, 33.159153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099186, 33.349796, 32.546501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472076, 33.346699, 32.401779>,  <43.695808, 33.344841, 32.314945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472076, 33.346699, 32.401779>,  <43.099186, 33.349796, 32.546501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472076, 33.346699, 32.401779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339762, -0.362928, -0.867667,
		-0.124592, 0.931785, -0.340959,
		0.932222, -0.007741, -0.361803,
		43.751743, 33.344376, 32.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999714, 33.569740, 31.895016>,  <43.099186, 33.349796, 32.546501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999714, 33.569740, 31.895016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352634, 33.382263, 31.877714>,  <43.564388, 33.269775, 31.867332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352634, 33.382263, 31.877714>,  <42.999714, 33.569740, 31.895016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352634, 33.382263, 31.877714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230963, -0.351037, -0.907430,
		0.410122, 0.810617, -0.417972,
		0.882301, -0.468693, -0.043255,
		43.617325, 33.241653, 31.864738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247803, 33.728580, 31.257402>,  <42.999714, 33.569740, 31.895016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247803, 33.728580, 31.257402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456757, 33.404251, 31.362997>,  <43.582127, 33.209656, 31.426353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456757, 33.404251, 31.362997>,  <43.247803, 33.728580, 31.257402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456757, 33.404251, 31.362997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152811, -0.393586, -0.906498,
		0.838908, 0.433198, -0.329504,
		0.522381, -0.810820, 0.263985,
		43.613472, 33.161003, 31.442192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510895, 33.620529, 30.595886>,  <43.247803, 33.728580, 31.257402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510895, 33.620529, 30.595886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550320, 33.287060, 30.813246>,  <43.573975, 33.086979, 30.943661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550320, 33.287060, 30.813246>,  <43.510895, 33.620529, 30.595886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550320, 33.287060, 30.813246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270045, -0.547974, -0.791707,
		0.957790, -0.068708, -0.279138,
		0.098564, -0.833669, 0.543398,
		43.579887, 33.036961, 30.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984352, 33.151802, 30.143776>,  <43.510895, 33.620529, 30.595886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984352, 33.151802, 30.143776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761230, 32.936005, 30.396061>,  <43.627357, 32.806526, 30.547432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761230, 32.936005, 30.396061>,  <43.984352, 33.151802, 30.143776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761230, 32.936005, 30.396061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337720, -0.546628, -0.766253,
		0.758154, -0.640425, 0.122715,
		-0.557807, -0.539495, 0.630712,
		43.593887, 32.774155, 30.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040619, 32.413811, 29.976244>,  <43.984352, 33.151802, 30.143776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040619, 32.413811, 29.976244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723904, 32.396473, 30.219946>,  <43.533875, 32.386070, 30.366167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723904, 32.396473, 30.219946>,  <44.040619, 32.413811, 29.976244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723904, 32.396473, 30.219946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420766, -0.684334, -0.595520,
		0.442747, -0.727879, 0.523609,
		-0.791790, -0.043348, 0.609254,
		43.486366, 32.383469, 30.402721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941536, 31.663033, 29.996260>,  <44.040619, 32.413811, 29.976244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941536, 31.663033, 29.996260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609859, 31.851240, 30.116966>,  <43.410854, 31.964165, 30.189390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609859, 31.851240, 30.116966>,  <43.941536, 31.663033, 29.996260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609859, 31.851240, 30.116966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558437, -0.720908, -0.410414,
		0.024439, -0.508828, 0.860521,
		-0.829186, 0.470517, 0.301767,
		43.361103, 31.992395, 30.207497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524471, 31.225149, 30.269323>,  <43.941536, 31.663033, 29.996260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524471, 31.225149, 30.269323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276325, 31.516335, 30.152559>,  <43.127438, 31.691046, 30.082500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276325, 31.516335, 30.152559>,  <43.524471, 31.225149, 30.269323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276325, 31.516335, 30.152559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621701, -0.683323, -0.382828,
		-0.478155, -0.056014, 0.876488,
		-0.620368, 0.727964, -0.291910,
		43.090214, 31.734724, 30.064985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896534, 30.852964, 30.396273>,  <43.524471, 31.225149, 30.269323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896534, 30.852964, 30.396273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833618, 31.153234, 30.139603>,  <42.795868, 31.333397, 29.985601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833618, 31.153234, 30.139603>,  <42.896534, 30.852964, 30.396273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833618, 31.153234, 30.139603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736568, -0.521992, -0.430106,
		-0.657819, 0.404985, 0.635028,
		-0.157293, 0.750674, -0.641675,
		42.786430, 31.378437, 29.947100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265804, 30.710550, 30.280405>,  <42.896534, 30.852964, 30.396273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265804, 30.710550, 30.280405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359543, 30.949186, 29.973377>,  <42.415787, 31.092367, 29.789160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359543, 30.949186, 29.973377>,  <42.265804, 30.710550, 30.280405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359543, 30.949186, 29.973377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602595, -0.530433, -0.596255,
		-0.762864, 0.602263, 0.235198,
		0.234346, 0.596590, -0.767569,
		42.429848, 31.128164, 29.743107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619232, 30.935642, 29.943335>,  <42.265804, 30.710550, 30.280405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619232, 30.935642, 29.943335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923775, 30.939735, 29.684034>,  <42.106503, 30.942190, 29.528454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923775, 30.939735, 29.684034>,  <41.619232, 30.935642, 29.943335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923775, 30.939735, 29.684034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526311, -0.574117, -0.627206,
		-0.378588, 0.818710, -0.431724,
		0.761360, 0.010231, -0.648249,
		42.152184, 30.942804, 29.489559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.098209, 40.449295, 36.114323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969257, 40.165192, 36.364635>,  <33.891884, 39.994728, 36.514824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969257, 40.165192, 36.364635>,  <34.098209, 40.449295, 36.114323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969257, 40.165192, 36.364635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465502, -0.694571, -0.548525,
		0.824244, 0.114467, 0.554544,
		-0.322382, -0.710259, 0.625781,
		33.872543, 39.952114, 36.552368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561504, 40.001686, 36.213097>,  <34.098209, 40.449295, 36.114323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561504, 40.001686, 36.213097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248463, 39.784248, 36.334450>,  <34.060638, 39.653786, 36.407261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248463, 39.784248, 36.334450>,  <34.561504, 40.001686, 36.213097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248463, 39.784248, 36.334450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372426, -0.799341, -0.471543,
		0.498834, -0.256043, 0.828014,
		-0.782601, -0.543596, 0.303381,
		34.013683, 39.621170, 36.425465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860390, 39.407513, 36.488094>,  <34.561504, 40.001686, 36.213097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860390, 39.407513, 36.488094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476421, 39.314064, 36.426163>,  <34.246040, 39.257996, 36.389004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476421, 39.314064, 36.426163>,  <34.860390, 39.407513, 36.488094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476421, 39.314064, 36.426163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266901, -0.930563, -0.250631,
		-0.085529, -0.281911, 0.955620,
		-0.959921, -0.233620, -0.154833,
		34.188446, 39.243977, 36.379711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761627, 38.810612, 36.866070>,  <34.860390, 39.407513, 36.488094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761627, 38.810612, 36.866070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497112, 38.811600, 36.566017>,  <34.338406, 38.812191, 36.385986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497112, 38.811600, 36.566017>,  <34.761627, 38.810612, 36.866070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497112, 38.811600, 36.566017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301884, -0.914567, -0.269136,
		-0.686708, -0.404428, 0.604045,
		-0.661286, 0.002467, -0.750130,
		34.298725, 38.812340, 36.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572872, 38.171711, 36.847729>,  <34.761627, 38.810612, 36.866070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572872, 38.171711, 36.847729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455158, 38.318027, 36.494549>,  <34.384529, 38.405815, 36.282642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455158, 38.318027, 36.494549>,  <34.572872, 38.171711, 36.847729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455158, 38.318027, 36.494549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216035, -0.874485, -0.434287,
		-0.930982, -0.318550, 0.178322,
		-0.294282, 0.365790, -0.882947,
		34.366875, 38.427765, 36.229664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170010, 37.707169, 36.531181>,  <34.572872, 38.171711, 36.847729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170010, 37.707169, 36.531181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271557, 37.915398, 36.205101>,  <34.332485, 38.040337, 36.009453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271557, 37.915398, 36.205101>,  <34.170010, 37.707169, 36.531181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271557, 37.915398, 36.205101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488631, -0.796385, -0.356385,
		-0.834738, -0.307857, -0.456548,
		0.253872, 0.520571, -0.815202,
		34.347717, 38.071568, 35.960541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934246, 37.248585, 36.040123>,  <34.170010, 37.707169, 36.531181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934246, 37.248585, 36.040123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204063, 37.507610, 35.898331>,  <34.365952, 37.663025, 35.813255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204063, 37.507610, 35.898331>,  <33.934246, 37.248585, 36.040123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204063, 37.507610, 35.898331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373958, -0.713728, -0.592240,
		-0.636516, 0.266929, -0.723600,
		0.674539, 0.647566, -0.354479,
		34.406425, 37.701881, 35.791988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926338, 37.157074, 35.301449>,  <33.934246, 37.248585, 36.040123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926338, 37.157074, 35.301449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271420, 37.355423, 35.341167>,  <34.478466, 37.474434, 35.364998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271420, 37.355423, 35.341167>,  <33.926338, 37.157074, 35.301449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271420, 37.355423, 35.341167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462428, -0.694012, -0.551823,
		-0.204722, 0.521974, -0.828029,
		0.862699, 0.495874, 0.099296,
		34.530228, 37.504185, 35.370956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156837, 37.169979, 34.650581>,  <33.926338, 37.157074, 35.301449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156837, 37.169979, 34.650581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482628, 37.247753, 34.869240>,  <34.678101, 37.294418, 35.000435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482628, 37.247753, 34.869240>,  <34.156837, 37.169979, 34.650581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482628, 37.247753, 34.869240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500624, -0.711750, -0.492735,
		0.293272, 0.674986, -0.677041,
		0.814474, 0.194437, 0.546651,
		34.726971, 37.306084, 35.033234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816402, 37.134148, 34.212326>,  <34.156837, 37.169979, 34.650581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816402, 37.134148, 34.212326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948521, 37.096134, 34.587959>,  <35.027790, 37.073326, 34.813339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948521, 37.096134, 34.587959>,  <34.816402, 37.134148, 34.212326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948521, 37.096134, 34.587959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677031, -0.669383, -0.305867,
		0.657673, 0.736814, -0.156753,
		0.330295, -0.095034, 0.939081,
		35.047607, 37.067623, 34.869682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600510, 37.150383, 34.192383>,  <34.816402, 37.134148, 34.212326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600510, 37.150383, 34.192383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480209, 36.954510, 34.519737>,  <35.408028, 36.836987, 34.716148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480209, 36.954510, 34.519737>,  <35.600510, 37.150383, 34.192383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480209, 36.954510, 34.519737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473483, -0.821557, -0.317581,
		0.827867, 0.291980, 0.478941,
		-0.300750, -0.489685, 0.818387,
		35.389984, 36.807606, 34.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215675, 36.821426, 34.435295>,  <35.600510, 37.150383, 34.192383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215675, 36.821426, 34.435295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913670, 36.627445, 34.611828>,  <35.732468, 36.511055, 34.717747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913670, 36.627445, 34.611828>,  <36.215675, 36.821426, 34.435295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913670, 36.627445, 34.611828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484617, -0.866089, -0.122623,
		0.441700, 0.121296, 0.888925,
		-0.755014, -0.484951, 0.441334,
		35.687164, 36.481960, 34.744228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497288, 36.165546, 34.367558>,  <36.215675, 36.821426, 34.435295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497288, 36.165546, 34.367558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166374, 36.080109, 34.575397>,  <35.967827, 36.028847, 34.700100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166374, 36.080109, 34.575397>,  <36.497288, 36.165546, 34.367558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166374, 36.080109, 34.575397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296786, -0.951467, 0.081415,
		0.476989, 0.221562, 0.850524,
		-0.827284, -0.213590, 0.519596,
		35.918190, 36.016033, 34.731277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045017, 36.009991, 34.805305>,  <36.497288, 36.165546, 34.367558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045017, 36.009991, 34.805305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308273, 36.000740, 34.504292>,  <37.466228, 35.995190, 34.323681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308273, 36.000740, 34.504292>,  <37.045017, 36.009991, 34.805305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308273, 36.000740, 34.504292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751931, -0.070681, -0.655442,
		-0.038034, 0.997231, -0.063906,
		0.658144, -0.023124, -0.752537,
		37.505718, 35.993801, 34.278530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592026, 35.423286, 35.160698>,  <37.045017, 36.009991, 34.805305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592026, 35.423286, 35.160698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888382, 35.323627, 35.410183>,  <38.066196, 35.263832, 35.559872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888382, 35.323627, 35.410183>,  <37.592026, 35.423286, 35.160698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888382, 35.323627, 35.410183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670323, -0.216411, 0.709812,
		-0.041867, -0.943978, -0.327342,
		0.740887, -0.249143, 0.623710,
		38.110649, 35.248886, 35.597298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328655, 34.829124, 35.663994>,  <37.592026, 35.423286, 35.160698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328655, 34.829124, 35.663994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607166, 35.042126, 35.856506>,  <37.774273, 35.169926, 35.972015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607166, 35.042126, 35.856506>,  <37.328655, 34.829124, 35.663994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607166, 35.042126, 35.856506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521356, -0.085663, 0.849029,
		0.493339, -0.842082, 0.217979,
		0.696279, 0.532504, 0.481285,
		37.816051, 35.201878, 36.000893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380981, 34.680653, 36.342983>,  <37.328655, 34.829124, 35.663994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380981, 34.680653, 36.342983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625027, 34.990993, 36.407257>,  <37.771454, 35.177197, 36.445824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625027, 34.990993, 36.407257>,  <37.380981, 34.680653, 36.342983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625027, 34.990993, 36.407257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450552, 0.172906, 0.875846,
		0.651742, -0.606762, 0.455052,
		0.610111, 0.775850, 0.160688,
		37.808060, 35.223747, 36.455463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510475, 34.596729, 37.073826>,  <37.380981, 34.680653, 36.342983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510475, 34.596729, 37.073826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609764, 34.964798, 36.952717>,  <37.669338, 35.185638, 36.880051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609764, 34.964798, 36.952717>,  <37.510475, 34.596729, 37.073826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609764, 34.964798, 36.952717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329082, 0.374061, 0.867054,
		0.911094, -0.115582, 0.395661,
		0.248217, 0.920173, -0.302769,
		37.684231, 35.240849, 36.861885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757149, 34.942554, 37.685791>,  <37.510475, 34.596729, 37.073826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757149, 34.942554, 37.685791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681938, 35.251976, 37.443710>,  <37.636810, 35.437630, 37.298462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681938, 35.251976, 37.443710>,  <37.757149, 34.942554, 37.685791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681938, 35.251976, 37.443710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301292, 0.541051, 0.785167,
		0.934809, 0.329975, 0.131332,
		-0.188029, 0.773551, -0.605198,
		37.625530, 35.484039, 37.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116367, 35.465012, 37.955910>,  <37.757149, 34.942554, 37.685791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116367, 35.465012, 37.955910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823551, 35.635136, 37.743034>,  <37.647861, 35.737209, 37.615311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823551, 35.635136, 37.743034>,  <38.116367, 35.465012, 37.955910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823551, 35.635136, 37.743034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236287, 0.574178, 0.783893,
		0.638972, 0.699590, -0.319825,
		-0.732041, 0.425315, -0.532188,
		37.603939, 35.762730, 37.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142464, 36.117565, 38.245716>,  <38.116367, 35.465012, 37.955910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142464, 36.117565, 38.245716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788494, 36.111675, 38.059517>,  <37.576111, 36.108143, 37.947796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788494, 36.111675, 38.059517>,  <38.142464, 36.117565, 38.245716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788494, 36.111675, 38.059517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351712, 0.676309, 0.647229,
		0.305294, 0.736471, -0.603661,
		-0.884926, -0.014720, -0.465498,
		37.523018, 36.107258, 37.919868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947350, 36.767834, 38.108765>,  <38.142464, 36.117565, 38.245716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947350, 36.767834, 38.108765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609051, 36.554562, 38.117065>,  <37.406071, 36.426598, 38.122047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609051, 36.554562, 38.117065>,  <37.947350, 36.767834, 38.108765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609051, 36.554562, 38.117065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447297, 0.729647, 0.517244,
		-0.290927, 0.428174, -0.855587,
		-0.845746, -0.533181, 0.020753,
		37.355328, 36.394608, 38.123291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484150, 37.281860, 38.195980>,  <37.947350, 36.767834, 38.108765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484150, 37.281860, 38.195980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288620, 36.942284, 38.276329>,  <37.171303, 36.738537, 38.324539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288620, 36.942284, 38.276329>,  <37.484150, 37.281860, 38.195980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288620, 36.942284, 38.276329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665613, 0.511782, 0.543174,
		-0.563925, 0.131816, -0.815238,
		-0.488824, -0.848943, 0.200868,
		37.141972, 36.687599, 38.336590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845535, 37.447968, 38.096313>,  <37.484150, 37.281860, 38.195980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845535, 37.447968, 38.096313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832336, 37.120506, 38.325649>,  <36.824417, 36.924030, 38.463253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832336, 37.120506, 38.325649>,  <36.845535, 37.447968, 38.096313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832336, 37.120506, 38.325649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703639, 0.426426, 0.568377,
		-0.709791, -0.384672, -0.590105,
		-0.032997, -0.818650, 0.573344,
		36.822437, 36.874912, 38.497654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094250, 37.183540, 38.068832>,  <36.845535, 37.447968, 38.096313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094250, 37.183540, 38.068832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307716, 37.050701, 38.379936>,  <36.435795, 36.970997, 38.566597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307716, 37.050701, 38.379936>,  <36.094250, 37.183540, 38.068832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307716, 37.050701, 38.379936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649172, 0.428555, 0.628424,
		-0.542011, -0.840269, 0.013117,
		0.533666, -0.332097, 0.777761,
		36.467815, 36.951073, 38.613266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570400, 37.227482, 38.513111>,  <36.094250, 37.183540, 38.068832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570400, 37.227482, 38.513111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875938, 37.142262, 38.756802>,  <36.059261, 37.091129, 38.903015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875938, 37.142262, 38.756802>,  <35.570400, 37.227482, 38.513111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875938, 37.142262, 38.756802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485567, 0.432133, 0.759925,
		-0.425169, -0.876282, 0.226631,
		0.763843, -0.213052, 0.609223,
		36.105091, 37.078346, 38.939568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300667, 36.792187, 39.193882>,  <35.570400, 37.227482, 38.513111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300667, 36.792187, 39.193882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645458, 36.988247, 39.245632>,  <35.852333, 37.105885, 39.276684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645458, 36.988247, 39.245632>,  <35.300667, 36.792187, 39.193882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645458, 36.988247, 39.245632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390864, 0.480075, 0.785336,
		0.322824, -0.727514, 0.605399,
		0.861981, 0.490154, 0.129380,
		35.904053, 37.135292, 39.284447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426472, 36.594501, 39.902668>,  <35.300667, 36.792187, 39.193882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426472, 36.594501, 39.902668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590569, 36.948006, 39.812630>,  <35.689026, 37.160107, 39.758606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590569, 36.948006, 39.812630>,  <35.426472, 36.594501, 39.902668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590569, 36.948006, 39.812630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332331, 0.374721, 0.865529,
		0.849268, -0.280271, 0.447427,
		0.410243, 0.883760, -0.225096,
		35.713642, 37.213135, 39.745102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626575, 35.973469, 40.339176>,  <35.426472, 36.594501, 39.902668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626575, 35.973469, 40.339176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390800, 35.761406, 40.582977>,  <35.249336, 35.634167, 40.729259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390800, 35.761406, 40.582977>,  <35.626575, 35.973469, 40.339176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390800, 35.761406, 40.582977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334004, -0.527049, -0.781448,
		0.735529, -0.664192, 0.133588,
		-0.589439, -0.530159, 0.609503,
		35.213970, 35.602360, 40.765827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597900, 35.307755, 40.037739>,  <35.626575, 35.973469, 40.339176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597900, 35.307755, 40.037739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279190, 35.295437, 40.279133>,  <35.087963, 35.288044, 40.423969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279190, 35.295437, 40.279133>,  <35.597900, 35.307755, 40.037739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279190, 35.295437, 40.279133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477825, -0.579240, -0.660427,
		0.369902, -0.814575, 0.446810,
		-0.796778, -0.030796, 0.603487,
		35.040157, 35.286198, 40.460178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363609, 34.564777, 40.070328>,  <35.597900, 35.307755, 40.037739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363609, 34.564777, 40.070328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049236, 34.776600, 40.198002>,  <34.860611, 34.903694, 40.274609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049236, 34.776600, 40.198002>,  <35.363609, 34.564777, 40.070328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049236, 34.776600, 40.198002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596743, -0.514473, -0.615804,
		-0.161887, -0.674455, 0.720349,
		-0.785933, 0.529554, 0.319190,
		34.813457, 34.935467, 40.293758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829483, 34.122917, 40.038811>,  <35.363609, 34.564777, 40.070328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829483, 34.122917, 40.038811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646198, 34.478050, 40.055756>,  <34.536228, 34.691132, 40.065922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646198, 34.478050, 40.055756>,  <34.829483, 34.122917, 40.038811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646198, 34.478050, 40.055756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681879, -0.320548, -0.657488,
		-0.570161, -0.330153, 0.752274,
		-0.458211, 0.887833, 0.042360,
		34.508736, 34.744400, 40.068462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111149, 34.018803, 40.278305>,  <34.829483, 34.122917, 40.038811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111149, 34.018803, 40.278305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121159, 34.372166, 40.091125>,  <34.127167, 34.584183, 39.978817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121159, 34.372166, 40.091125>,  <34.111149, 34.018803, 40.278305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121159, 34.372166, 40.091125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810389, -0.256159, -0.526928,
		-0.585358, 0.392405, 0.709489,
		0.025027, 0.883403, -0.467945,
		34.128666, 34.637188, 39.950741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381123, 34.279732, 40.341488>,  <34.111149, 34.018803, 40.278305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381123, 34.279732, 40.341488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562881, 34.445484, 40.026066>,  <33.671936, 34.544937, 39.836811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562881, 34.445484, 40.026066>,  <33.381123, 34.279732, 40.341488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562881, 34.445484, 40.026066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820835, -0.149121, -0.551356,
		-0.346060, 0.897804, 0.272378,
		0.454393, 0.414379, -0.788554,
		33.699200, 34.569798, 39.789501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890270, 34.633015, 40.073944>,  <33.381123, 34.279732, 40.341488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890270, 34.633015, 40.073944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132935, 34.597034, 39.757999>,  <33.278534, 34.575447, 39.568432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132935, 34.597034, 39.757999>,  <32.890270, 34.633015, 40.073944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132935, 34.597034, 39.757999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791810, -0.156775, -0.590304,
		-0.070734, 0.983530, -0.166330,
		0.606658, -0.089947, -0.789858,
		33.314934, 34.570049, 39.521042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590389, 35.009117, 39.605110>,  <32.890270, 34.633015, 40.073944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590389, 35.009117, 39.605110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818085, 34.767838, 39.381641>,  <32.954700, 34.623070, 39.247559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818085, 34.767838, 39.381641>,  <32.590389, 35.009117, 39.605110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818085, 34.767838, 39.381641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796134, -0.234736, -0.557737,
		0.205286, 0.762265, -0.613848,
		0.569236, -0.603201, -0.558677,
		32.988853, 34.586876, 39.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545601, 35.119267, 38.871517>,  <32.590389, 35.009117, 39.605110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545601, 35.119267, 38.871517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674530, 34.741428, 38.846718>,  <32.751888, 34.514725, 38.831837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674530, 34.741428, 38.846718>,  <32.545601, 35.119267, 38.871517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674530, 34.741428, 38.846718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669014, -0.180968, -0.720882,
		0.669724, 0.273831, -0.690279,
		0.322318, -0.944599, -0.061998,
		32.771225, 34.458050, 38.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777206, 35.043987, 38.210342>,  <32.545601, 35.119267, 38.871517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777206, 35.043987, 38.210342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763943, 34.656109, 38.307159>,  <32.755985, 34.423382, 38.365250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763943, 34.656109, 38.307159>,  <32.777206, 35.043987, 38.210342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763943, 34.656109, 38.307159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477889, -0.197315, -0.855972,
		0.877794, -0.144058, -0.456865,
		-0.033163, -0.969698, 0.242045,
		32.753994, 34.365200, 38.379772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767517, 34.739891, 37.592777>,  <32.777206, 35.043987, 38.210342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767517, 34.739891, 37.592777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648033, 34.444241, 37.834259>,  <32.576344, 34.266850, 37.979149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648033, 34.444241, 37.834259>,  <32.767517, 34.739891, 37.592777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648033, 34.444241, 37.834259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531843, -0.396318, -0.748382,
		0.792409, -0.544627, -0.274716,
		-0.298714, -0.739130, 0.603702,
		32.558418, 34.222500, 38.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851864, 34.077427, 37.123848>,  <32.767517, 34.739891, 37.592777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851864, 34.077427, 37.123848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604397, 34.000820, 37.428631>,  <32.455917, 33.954857, 37.611500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604397, 34.000820, 37.428631>,  <32.851864, 34.077427, 37.123848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604397, 34.000820, 37.428631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638080, -0.443345, -0.629523,
		0.458373, -0.875652, 0.152080,
		-0.618667, -0.191517, 0.761953,
		32.418797, 33.943367, 37.657215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.951897, 37.180218, 44.310833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559170, 37.115345, 44.271385>,  <36.323532, 37.076420, 44.247715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559170, 37.115345, 44.271385>,  <36.951897, 37.180218, 44.310833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559170, 37.115345, 44.271385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178044, -0.606774, -0.774678,
		0.065799, -0.778153, 0.624618,
		-0.981820, -0.162182, -0.098620,
		36.264626, 37.066689, 44.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035538, 36.634964, 44.035610>,  <36.951897, 37.180218, 44.310833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035538, 36.634964, 44.035610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647865, 36.704041, 43.965336>,  <36.415260, 36.745487, 43.923172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.647865, 36.704041, 43.965336>,  <37.035538, 36.634964, 44.035610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647865, 36.704041, 43.965336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033106, -0.615374, -0.787540,
		-0.244114, -0.769085, 0.590691,
		-0.969181, 0.172694, -0.175683,
		36.357109, 36.755848, 43.912632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786934, 35.949657, 43.780025>,  <37.035538, 36.634964, 44.035610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786934, 35.949657, 43.780025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518188, 36.223381, 43.666668>,  <36.356941, 36.387615, 43.598652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518188, 36.223381, 43.666668>,  <36.786934, 35.949657, 43.780025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518188, 36.223381, 43.666668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233329, -0.558683, -0.795884,
		-0.702960, -0.468604, 0.535030,
		-0.671867, 0.684313, -0.283392,
		36.316628, 36.428677, 43.581650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139439, 35.538792, 43.627968>,  <36.786934, 35.949657, 43.780025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139439, 35.538792, 43.627968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095348, 35.880886, 43.425415>,  <36.068893, 36.086143, 43.303883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095348, 35.880886, 43.425415>,  <36.139439, 35.538792, 43.627968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095348, 35.880886, 43.425415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448419, -0.497481, -0.742585,
		-0.887001, 0.145221, 0.438338,
		-0.110226, 0.855232, -0.506386,
		36.062279, 36.137455, 43.273499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356739, 35.668640, 43.437145>,  <36.139439, 35.538792, 43.627968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356739, 35.668640, 43.437145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557114, 35.883438, 43.165646>,  <35.677338, 36.012318, 43.002747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557114, 35.883438, 43.165646>,  <35.356739, 35.668640, 43.437145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557114, 35.883438, 43.165646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629295, -0.312412, -0.711608,
		-0.594177, 0.783606, 0.181427,
		0.500940, 0.536992, -0.678748,
		35.707397, 36.044537, 42.962021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763554, 35.899437, 42.928833>,  <35.356739, 35.668640, 43.437145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763554, 35.899437, 42.928833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106167, 35.954529, 42.729881>,  <35.311733, 35.987583, 42.610512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106167, 35.954529, 42.729881>,  <34.763554, 35.899437, 42.928833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106167, 35.954529, 42.729881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437405, -0.317780, -0.841245,
		-0.273921, 0.938108, -0.211945,
		0.856530, 0.137729, -0.497380,
		35.363125, 35.995846, 42.580666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581894, 36.257542, 42.342403>,  <34.763554, 35.899437, 42.928833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581894, 36.257542, 42.342403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937984, 36.117607, 42.225708>,  <35.151638, 36.033646, 42.155689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937984, 36.117607, 42.225708>,  <34.581894, 36.257542, 42.342403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937984, 36.117607, 42.225708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378552, -0.211939, -0.900988,
		0.253368, 0.912522, -0.321105,
		0.890226, -0.349836, -0.291739,
		35.205051, 36.012657, 42.138187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701843, 36.580063, 41.678143>,  <34.581894, 36.257542, 42.342403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701843, 36.580063, 41.678143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933449, 36.254505, 41.697411>,  <35.072411, 36.059170, 41.708973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933449, 36.254505, 41.697411>,  <34.701843, 36.580063, 41.678143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933449, 36.254505, 41.697411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109527, -0.136195, -0.984609,
		0.807928, 0.564825, -0.168002,
		0.579013, -0.813894, 0.048172,
		35.107151, 36.010338, 41.711861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043312, 36.592106, 41.110733>,  <34.701843, 36.580063, 41.678143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043312, 36.592106, 41.110733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083916, 36.203789, 41.197685>,  <35.108280, 35.970798, 41.249859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083916, 36.203789, 41.197685>,  <35.043312, 36.592106, 41.110733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083916, 36.203789, 41.197685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257167, -0.236692, -0.936932,
		0.961021, 0.039207, -0.273683,
		0.101513, -0.970793, 0.217383,
		35.114368, 35.912552, 41.262901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488838, 37.010288, 40.664711>,  <35.043312, 36.592106, 41.110733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488838, 37.010288, 40.664711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605408, 37.282410, 40.395710>,  <35.675350, 37.445683, 40.234310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605408, 37.282410, 40.395710>,  <35.488838, 37.010288, 40.664711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605408, 37.282410, 40.395710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039465, 0.710972, 0.702112,
		0.955778, -0.178075, 0.234045,
		0.291428, 0.680300, -0.672504,
		35.692837, 37.486500, 40.193958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067387, 37.481300, 40.900566>,  <35.488838, 37.010288, 40.664711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067387, 37.481300, 40.900566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897453, 37.679779, 40.597698>,  <35.795494, 37.798866, 40.415977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897453, 37.679779, 40.597698>,  <36.067387, 37.481300, 40.900566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897453, 37.679779, 40.597698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011514, 0.833373, 0.552591,
		0.905197, 0.243478, -0.348333,
		-0.424835, 0.496194, -0.757170,
		35.770004, 37.828636, 40.370548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398918, 38.179836, 40.627151>,  <36.067387, 37.481300, 40.900566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398918, 38.179836, 40.627151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017799, 38.243294, 40.523602>,  <35.789127, 38.281368, 40.461472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017799, 38.243294, 40.523602>,  <36.398918, 38.179836, 40.627151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017799, 38.243294, 40.523602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013776, 0.829174, 0.558821,
		0.303306, 0.536007, -0.787846,
		-0.952794, 0.158640, -0.258878,
		35.731960, 38.290886, 40.445938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351379, 38.915974, 40.460739>,  <36.398918, 38.179836, 40.627151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351379, 38.915974, 40.460739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997494, 38.762749, 40.566975>,  <35.785160, 38.670815, 40.630718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997494, 38.762749, 40.566975>,  <36.351379, 38.915974, 40.460739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997494, 38.762749, 40.566975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162822, 0.787855, 0.593947,
		-0.436768, 0.482230, -0.759400,
		-0.884716, -0.383064, 0.265592,
		35.732079, 38.647831, 40.646652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826237, 39.480541, 40.665760>,  <36.351379, 38.915974, 40.460739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826237, 39.480541, 40.665760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651413, 39.148323, 40.803844>,  <35.546520, 38.948990, 40.886696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651413, 39.148323, 40.803844>,  <35.826237, 39.480541, 40.665760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651413, 39.148323, 40.803844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393570, 0.521710, 0.756916,
		-0.808755, 0.194951, -0.554896,
		-0.437056, -0.830550, 0.345208,
		35.520294, 38.899158, 40.907406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241673, 39.740044, 40.913757>,  <35.826237, 39.480541, 40.665760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241673, 39.740044, 40.913757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298389, 39.395336, 41.108589>,  <35.332420, 39.188511, 41.225487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298389, 39.395336, 41.108589>,  <35.241673, 39.740044, 40.913757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298389, 39.395336, 41.108589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115180, 0.474345, 0.872772,
		-0.983173, -0.179854, -0.032000,
		0.141793, -0.861771, 0.487078,
		35.340927, 39.136806, 41.254711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822273, 39.831665, 41.478077>,  <35.241673, 39.740044, 40.913757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822273, 39.831665, 41.478077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030918, 39.509937, 41.591919>,  <35.156105, 39.316902, 41.660225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030918, 39.509937, 41.591919>,  <34.822273, 39.831665, 41.478077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030918, 39.509937, 41.591919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018161, 0.323039, 0.946211,
		-0.852991, -0.498722, 0.153893,
		0.521610, -0.804315, 0.284607,
		35.187401, 39.268642, 41.677299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491310, 39.485725, 42.018429>,  <34.822273, 39.831665, 41.478077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491310, 39.485725, 42.018429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878048, 39.394577, 42.064526>,  <35.110092, 39.339890, 42.092182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878048, 39.394577, 42.064526>,  <34.491310, 39.485725, 42.018429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878048, 39.394577, 42.064526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093997, 0.102020, 0.990332,
		-0.237421, -0.968333, 0.077220,
		0.966848, -0.227867, 0.115242,
		35.168102, 39.326218, 42.099098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480770, 39.053108, 42.624992>,  <34.491310, 39.485725, 42.018429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480770, 39.053108, 42.624992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856022, 39.179226, 42.567726>,  <35.081173, 39.254898, 42.533367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.856022, 39.179226, 42.567726>,  <34.480770, 39.053108, 42.624992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856022, 39.179226, 42.567726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044079, 0.301345, 0.952496,
		0.343466, -0.899875, 0.268803,
		0.938130, 0.315302, -0.143167,
		35.137463, 39.273815, 42.524776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803020, 38.933941, 43.248840>,  <34.480770, 39.053108, 42.624992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803020, 38.933941, 43.248840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023254, 39.212696, 43.065014>,  <35.155396, 39.379951, 42.954720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023254, 39.212696, 43.065014>,  <34.803020, 38.933941, 43.248840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023254, 39.212696, 43.065014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144562, 0.462609, 0.874697,
		0.822169, -0.548028, 0.153960,
		0.550582, 0.696892, -0.459567,
		35.188431, 39.421764, 42.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367119, 38.992676, 43.603489>,  <34.803020, 38.933941, 43.248840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367119, 38.992676, 43.603489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375214, 39.341045, 43.407085>,  <35.380070, 39.550068, 43.289242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375214, 39.341045, 43.407085>,  <35.367119, 38.992676, 43.603489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375214, 39.341045, 43.407085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376081, 0.448409, 0.810859,
		0.926366, -0.201069, -0.318461,
		0.020237, 0.870919, -0.491009,
		35.381287, 39.602322, 43.259781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919716, 39.383877, 43.916908>,  <35.367119, 38.992676, 43.603489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919716, 39.383877, 43.916908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742828, 39.669273, 43.699516>,  <35.636696, 39.840511, 43.569080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742828, 39.669273, 43.699516>,  <35.919716, 39.383877, 43.916908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742828, 39.669273, 43.699516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294197, 0.687812, 0.663598,
		0.847283, 0.133568, -0.514073,
		-0.442221, 0.713494, -0.543476,
		35.610161, 39.883320, 43.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401775, 39.957153, 43.862137>,  <35.919716, 39.383877, 43.916908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401775, 39.957153, 43.862137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046154, 40.124134, 43.786976>,  <35.832779, 40.224323, 43.741879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046154, 40.124134, 43.786976>,  <36.401775, 39.957153, 43.862137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046154, 40.124134, 43.786976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211199, 0.738178, 0.640694,
		0.406167, 0.529929, -0.744449,
		-0.889058, 0.417456, -0.187902,
		35.779438, 40.249371, 43.730606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532322, 40.581013, 43.704666>,  <36.401775, 39.957153, 43.862137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532322, 40.581013, 43.704666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154903, 40.604065, 43.835136>,  <35.928452, 40.617897, 43.913418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154903, 40.604065, 43.835136>,  <36.532322, 40.581013, 43.704666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154903, 40.604065, 43.835136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295924, 0.589073, 0.751945,
		-0.148806, 0.806022, -0.572875,
		-0.943549, 0.057634, 0.326179,
		35.871838, 40.621353, 43.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.536566, 39.711411, 44.214882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.903706, 39.575882, 44.297588>,  <32.123989, 39.494564, 44.347214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.903706, 39.575882, 44.297588>,  <31.536566, 39.711411, 44.214882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903706, 39.575882, 44.297588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154567, -0.174711, -0.972412,
		0.365596, 0.924488, -0.107989,
		0.917850, -0.338818, 0.206769,
		32.179062, 39.474236, 44.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986992, 39.983585, 43.629932>,  <31.536566, 39.711411, 44.214882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986992, 39.983585, 43.629932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158920, 39.670258, 43.809559>,  <32.262077, 39.482262, 43.917336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158920, 39.670258, 43.809559>,  <31.986992, 39.983585, 43.629932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158920, 39.670258, 43.809559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238503, -0.381193, -0.893202,
		0.870845, 0.491020, 0.022980,
		0.429820, -0.783321, 0.449069,
		32.287865, 39.435261, 43.944279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451450, 39.828777, 43.157078>,  <31.986992, 39.983585, 43.629932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451450, 39.828777, 43.157078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456047, 39.493576, 43.375294>,  <32.458805, 39.292454, 43.506226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456047, 39.493576, 43.375294>,  <32.451450, 39.828777, 43.157078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456047, 39.493576, 43.375294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288048, -0.519678, -0.804340,
		0.957547, 0.166387, 0.235412,
		0.011493, -0.838004, 0.545543,
		32.459496, 39.242176, 43.538956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153904, 39.507862, 43.149467>,  <32.451450, 39.828777, 43.157078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153904, 39.507862, 43.149467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872498, 39.235397, 43.230553>,  <32.703655, 39.071918, 43.279205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872498, 39.235397, 43.230553>,  <33.153904, 39.507862, 43.149467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872498, 39.235397, 43.230553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287290, -0.533472, -0.795532,
		0.650028, -0.501428, 0.570994,
		-0.703511, -0.681159, 0.202716,
		32.661446, 39.031048, 43.291367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377815, 38.782448, 42.898842>,  <33.153904, 39.507862, 43.149467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377815, 38.782448, 42.898842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980171, 38.764240, 42.938187>,  <32.741585, 38.753315, 42.961796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980171, 38.764240, 42.938187>,  <33.377815, 38.782448, 42.898842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980171, 38.764240, 42.938187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041601, -0.677791, -0.734077,
		0.100087, -0.733844, 0.671904,
		-0.994108, -0.045520, 0.098367,
		32.681938, 38.750584, 42.967697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273655, 38.071945, 42.752312>,  <33.377815, 38.782448, 42.898842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273655, 38.071945, 42.752312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903976, 38.222252, 42.725033>,  <32.682167, 38.312435, 42.708664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.903976, 38.222252, 42.725033>,  <33.273655, 38.071945, 42.752312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903976, 38.222252, 42.725033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207176, -0.643312, -0.737040,
		-0.320830, -0.667044, 0.672399,
		-0.924200, 0.375769, -0.068199,
		32.626717, 38.334984, 42.704575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872051, 37.498783, 42.638050>,  <33.273655, 38.071945, 42.752312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872051, 37.498783, 42.638050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647083, 37.808121, 42.521008>,  <32.512104, 37.993725, 42.450783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647083, 37.808121, 42.521008>,  <32.872051, 37.498783, 42.638050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647083, 37.808121, 42.521008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462444, -0.587558, -0.664019,
		-0.685442, -0.238142, 0.688083,
		-0.562419, 0.773347, -0.292609,
		32.478355, 38.040123, 42.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281620, 37.176743, 42.646973>,  <32.872051, 37.498783, 42.638050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281620, 37.176743, 42.646973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271172, 37.491638, 42.400536>,  <32.264904, 37.680576, 42.252674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271172, 37.491638, 42.400536>,  <32.281620, 37.176743, 42.646973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271172, 37.491638, 42.400536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628061, -0.492399, -0.602563,
		-0.777725, 0.371203, 0.507299,
		-0.026120, 0.787243, -0.616089,
		32.263336, 37.727810, 42.215710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647688, 37.106464, 42.413334>,  <32.281620, 37.176743, 42.646973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647688, 37.106464, 42.413334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820333, 37.358482, 42.155106>,  <31.923922, 37.509693, 42.000168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820333, 37.358482, 42.155106>,  <31.647688, 37.106464, 42.413334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820333, 37.358482, 42.155106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526887, -0.404809, -0.747342,
		-0.732187, 0.662705, 0.157239,
		0.431615, 0.630041, -0.645566,
		31.949818, 37.547493, 41.961437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123247, 37.360985, 41.981304>,  <31.647688, 37.106464, 42.413334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123247, 37.360985, 41.981304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456879, 37.440697, 41.775547>,  <31.657057, 37.488525, 41.652092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456879, 37.440697, 41.775547>,  <31.123247, 37.360985, 41.981304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456879, 37.440697, 41.775547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461899, -0.257518, -0.848725,
		-0.301602, 0.945501, -0.122741,
		0.834078, 0.199283, -0.514394,
		31.707102, 37.500481, 41.621227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888689, 37.704132, 41.417118>,  <31.123247, 37.360985, 41.981304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888689, 37.704132, 41.417118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254223, 37.592541, 41.299084>,  <31.473543, 37.525585, 41.228264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254223, 37.592541, 41.299084>,  <30.888689, 37.704132, 41.417118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254223, 37.592541, 41.299084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391237, -0.410137, -0.823845,
		0.108811, 0.868307, -0.483945,
		0.913835, -0.278980, -0.295086,
		31.528374, 37.508846, 41.210556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942472, 37.864525, 40.759178>,  <30.888689, 37.704132, 41.417118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942472, 37.864525, 40.759178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225288, 37.582985, 40.786556>,  <31.394978, 37.414059, 40.802982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225288, 37.582985, 40.786556>,  <30.942472, 37.864525, 40.759178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225288, 37.582985, 40.786556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323447, -0.407936, -0.853798,
		0.628868, 0.581532, -0.516086,
		0.707041, -0.703853, 0.068443,
		31.437401, 37.371830, 40.807091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234968, 37.860039, 40.083954>,  <30.942472, 37.864525, 40.759178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234968, 37.860039, 40.083954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312405, 37.506355, 40.253990>,  <31.358866, 37.294144, 40.356010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312405, 37.506355, 40.253990>,  <31.234968, 37.860039, 40.083954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312405, 37.506355, 40.253990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311880, -0.466272, -0.827842,
		0.930191, 0.027685, -0.366032,
		0.193589, -0.884208, 0.425087,
		31.370481, 37.241093, 40.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558865, 37.410789, 39.621357>,  <31.234968, 37.860039, 40.083954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558865, 37.410789, 39.621357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432186, 37.139523, 39.886623>,  <31.356178, 36.976761, 40.045784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432186, 37.139523, 39.886623>,  <31.558865, 37.410789, 39.621357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432186, 37.139523, 39.886623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261892, -0.609462, -0.748310,
		0.911656, -0.410666, 0.015409,
		-0.316697, -0.678166, 0.663170,
		31.337177, 36.936073, 40.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089725, 38.012825, 39.861404>,  <31.558865, 37.410789, 39.621357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089725, 38.012825, 39.861404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935085, 38.132664, 39.512512>,  <31.842302, 38.204567, 39.303177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935085, 38.132664, 39.512512>,  <32.089725, 38.012825, 39.861404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935085, 38.132664, 39.512512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434933, 0.774760, 0.458890,
		0.813250, 0.556767, -0.169217,
		-0.386598, 0.299595, -0.872230,
		31.819105, 38.222542, 39.250843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469208, 38.582970, 39.769802>,  <32.089725, 38.012825, 39.861404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469208, 38.582970, 39.769802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126656, 38.593319, 39.563522>,  <31.921125, 38.599529, 39.439754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126656, 38.593319, 39.563522>,  <32.469208, 38.582970, 39.769802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126656, 38.593319, 39.563522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217804, 0.887443, 0.406210,
		0.468164, 0.460191, -0.754351,
		-0.856378, 0.025873, -0.515701,
		31.869741, 38.601082, 39.408813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316780, 39.275230, 39.417801>,  <32.469208, 38.582970, 39.769802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316780, 39.275230, 39.417801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951742, 39.117413, 39.460720>,  <31.732721, 39.022720, 39.486473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951742, 39.117413, 39.460720>,  <32.316780, 39.275230, 39.417801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951742, 39.117413, 39.460720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320551, 0.853287, 0.411276,
		-0.253822, 0.340932, -0.905174,
		-0.912591, -0.394546, 0.107297,
		31.677965, 38.999050, 39.492908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031975, 39.794701, 39.419113>,  <32.316780, 39.275230, 39.417801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031975, 39.794701, 39.419113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724871, 39.554859, 39.509457>,  <31.540607, 39.410954, 39.563663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724871, 39.554859, 39.509457>,  <32.031975, 39.794701, 39.419113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724871, 39.554859, 39.509457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372806, 0.704729, 0.603632,
		-0.521110, 0.379246, -0.764603,
		-0.767763, -0.599608, 0.225856,
		31.494541, 39.374977, 39.577213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292791, 40.228107, 39.350632>,  <32.031975, 39.794701, 39.419113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292791, 40.228107, 39.350632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270641, 39.926563, 39.612511>,  <31.257351, 39.745636, 39.769638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270641, 39.926563, 39.612511>,  <31.292791, 40.228107, 39.350632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270641, 39.926563, 39.612511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338801, 0.630990, 0.697901,
		-0.939227, -0.183168, -0.290348,
		-0.055374, -0.753858, 0.654701,
		31.254030, 39.700405, 39.808922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629925, 40.288094, 39.671616>,  <31.292791, 40.228107, 39.350632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629925, 40.288094, 39.671616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835434, 40.063091, 39.930729>,  <30.958740, 39.928089, 40.086197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.835434, 40.063091, 39.930729>,  <30.629925, 40.288094, 39.671616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835434, 40.063091, 39.930729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306207, 0.585100, 0.750929,
		-0.801420, -0.584165, 0.128367,
		0.513774, -0.562503, 0.647786,
		30.989567, 39.894341, 40.125065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310284, 40.414310, 40.217728>,  <30.629925, 40.288094, 39.671616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310284, 40.414310, 40.217728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.623909, 40.228527, 40.382420>,  <30.812084, 40.117058, 40.481236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.623909, 40.228527, 40.382420>,  <30.310284, 40.414310, 40.217728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623909, 40.228527, 40.382420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034013, 0.630205, 0.775683,
		-0.619747, -0.622190, 0.478323,
		0.784064, -0.464458, 0.411730,
		30.859129, 40.089191, 40.505939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088322, 40.155750, 40.927456>,  <30.310284, 40.414310, 40.217728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088322, 40.155750, 40.927456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485842, 40.195225, 40.906982>,  <30.724354, 40.218910, 40.894699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485842, 40.195225, 40.906982>,  <30.088322, 40.155750, 40.927456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485842, 40.195225, 40.906982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024818, 0.645767, 0.763131,
		0.108364, -0.757130, 0.644213,
		0.993801, 0.098684, -0.051188,
		30.783981, 40.224831, 40.891624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192352, 40.001884, 41.565918>,  <30.088322, 40.155750, 40.927456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192352, 40.001884, 41.565918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517366, 40.193371, 41.432880>,  <30.712376, 40.308262, 41.353058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517366, 40.193371, 41.432880>,  <30.192352, 40.001884, 41.565918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517366, 40.193371, 41.432880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043328, 0.519397, 0.853434,
		0.581301, -0.707855, 0.401286,
		0.812534, 0.478715, -0.332596,
		30.761127, 40.336987, 41.333103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679205, 40.063206, 42.121170>,  <30.192352, 40.001884, 41.565918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679205, 40.063206, 42.121170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812954, 40.342373, 41.867840>,  <30.893204, 40.509872, 41.715843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812954, 40.342373, 41.867840>,  <30.679205, 40.063206, 42.121170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812954, 40.342373, 41.867840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239575, 0.586985, 0.773339,
		0.911482, -0.410313, 0.029068,
		0.334373, 0.697920, -0.633326,
		30.913265, 40.551750, 41.677841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423056, 40.183804, 42.351494>,  <30.679205, 40.063206, 42.121170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423056, 40.183804, 42.351494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270725, 40.492290, 42.147457>,  <31.179327, 40.677383, 42.025036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.270725, 40.492290, 42.147457>,  <31.423056, 40.183804, 42.351494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270725, 40.492290, 42.147457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315474, 0.626932, 0.712343,
		0.869165, 0.110357, -0.482051,
		-0.380825, 0.771218, -0.510092,
		31.156477, 40.723656, 41.994431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994314, 40.620403, 42.278095>,  <31.423056, 40.183804, 42.351494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994314, 40.620403, 42.278095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679350, 40.848389, 42.184177>,  <31.490372, 40.985180, 42.127827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.679350, 40.848389, 42.184177>,  <31.994314, 40.620403, 42.278095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679350, 40.848389, 42.184177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390999, 0.756269, 0.524572,
		0.476557, 0.321247, -0.818348,
		-0.787409, 0.569962, -0.234798,
		31.443127, 41.019379, 42.113739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264957, 41.217571, 42.080383>,  <31.994314, 40.620403, 42.278095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264957, 41.217571, 42.080383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895931, 41.306164, 42.206757>,  <31.674515, 41.359318, 42.282581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895931, 41.306164, 42.206757>,  <32.264957, 41.217571, 42.080383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895931, 41.306164, 42.206757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372643, 0.723769, 0.580771,
		-0.100037, 0.653532, -0.750259,
		-0.922567, 0.221480, 0.315938,
		31.619162, 41.372608, 42.301537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270706, 41.986671, 42.225807>,  <32.264957, 41.217571, 42.080383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270706, 41.986671, 42.225807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961031, 41.813557, 42.410561>,  <31.775227, 41.709690, 42.521412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961031, 41.813557, 42.410561>,  <32.270706, 41.986671, 42.225807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961031, 41.813557, 42.410561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176784, 0.552835, 0.814322,
		-0.607772, 0.712089, -0.351486,
		-0.774184, -0.432785, 0.461884,
		31.728775, 41.683720, 42.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138672, 42.663937, 41.928158>,  <32.270706, 41.986671, 42.225807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138672, 42.663937, 41.928158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446064, 42.728088, 41.680378>,  <32.630497, 42.766579, 41.531708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446064, 42.728088, 41.680378>,  <32.138672, 42.663937, 41.928158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446064, 42.728088, 41.680378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329874, -0.730228, -0.598290,
		-0.548294, 0.664113, -0.508258,
		0.768476, 0.160377, -0.619454,
		32.676605, 42.776203, 41.494541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900150, 42.518368, 41.214306>,  <32.138672, 42.663937, 41.928158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900150, 42.518368, 41.214306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288124, 42.542057, 41.119884>,  <32.520908, 42.556271, 41.063232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288124, 42.542057, 41.119884>,  <31.900150, 42.518368, 41.214306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288124, 42.542057, 41.119884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173065, -0.514065, -0.840110,
		-0.171102, 0.855704, -0.488359,
		0.969934, 0.059226, -0.236050,
		32.579105, 42.559826, 41.049068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961020, 42.801796, 40.515202>,  <31.900150, 42.518368, 41.214306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961020, 42.801796, 40.515202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304050, 42.604900, 40.574886>,  <32.509869, 42.486763, 40.610699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304050, 42.604900, 40.574886>,  <31.961020, 42.801796, 40.515202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304050, 42.604900, 40.574886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017373, -0.262208, -0.964855,
		0.514062, 0.830030, -0.216312,
		0.857577, -0.492237, 0.149211,
		32.561325, 42.457230, 40.619648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407219, 42.926834, 39.943745>,  <31.961020, 42.801796, 40.515202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407219, 42.926834, 39.943745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541927, 42.570408, 40.065460>,  <32.622753, 42.356552, 40.138489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541927, 42.570408, 40.065460>,  <32.407219, 42.926834, 39.943745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541927, 42.570408, 40.065460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083118, -0.293769, -0.952256,
		0.937910, 0.345987, -0.024870,
		0.336774, -0.891063, 0.304287,
		32.642960, 42.303089, 40.156746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869728, 42.731636, 39.331581>,  <32.407219, 42.926834, 39.943745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869728, 42.731636, 39.331581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848660, 42.389881, 39.538368>,  <32.836018, 42.184830, 39.662441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848660, 42.389881, 39.538368>,  <32.869728, 42.731636, 39.331581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848660, 42.389881, 39.538368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258480, -0.511706, -0.819356,
		0.964580, 0.090468, 0.247794,
		-0.052672, -0.854384, 0.516966,
		32.832859, 42.133564, 39.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385326, 42.263718, 39.047817>,  <32.869728, 42.731636, 39.331581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385326, 42.263718, 39.047817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152958, 41.997177, 39.234798>,  <33.013538, 41.837254, 39.346985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152958, 41.997177, 39.234798>,  <33.385326, 42.263718, 39.047817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152958, 41.997177, 39.234798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142331, -0.648602, -0.747701,
		0.801418, -0.367824, 0.471630,
		-0.580922, -0.666348, 0.467449,
		32.978680, 41.797272, 39.375034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749641, 41.565639, 38.901691>,  <33.385326, 42.263718, 39.047817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749641, 41.565639, 38.901691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361034, 41.520935, 38.985283>,  <33.127872, 41.494114, 39.035439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361034, 41.520935, 38.985283>,  <33.749641, 41.565639, 38.901691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361034, 41.520935, 38.985283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050462, -0.764044, -0.643188,
		0.231553, -0.635411, 0.736639,
		-0.971513, -0.111760, 0.208981,
		33.069580, 41.487408, 39.047977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672142, 40.842945, 38.991348>,  <33.749641, 41.565639, 38.901691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672142, 40.842945, 38.991348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299168, 40.974354, 38.931164>,  <33.075382, 41.053200, 38.895054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299168, 40.974354, 38.931164>,  <33.672142, 40.842945, 38.991348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299168, 40.974354, 38.931164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148256, -0.727567, -0.669826,
		-0.329522, -0.602263, 0.727114,
		-0.932435, 0.328521, -0.150461,
		33.019436, 41.072910, 38.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207775, 40.263020, 38.926388>,  <33.672142, 40.842945, 38.991348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207775, 40.263020, 38.926388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037056, 40.576878, 38.746529>,  <32.934624, 40.765190, 38.638615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037056, 40.576878, 38.746529>,  <33.207775, 40.263020, 38.926388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037056, 40.576878, 38.746529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007493, -0.500255, -0.865846,
		-0.904316, -0.366172, 0.219387,
		-0.426798, 0.784642, -0.449645,
		32.909016, 40.812271, 38.611633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575867, 40.101341, 38.540905>,  <33.207775, 40.263020, 38.926388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575867, 40.101341, 38.540905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744835, 40.420822, 38.369492>,  <32.846214, 40.612511, 38.266644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744835, 40.420822, 38.369492>,  <32.575867, 40.101341, 38.540905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744835, 40.420822, 38.369492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085955, -0.505955, -0.858267,
		-0.902317, 0.325712, -0.282376,
		0.422417, 0.798700, -0.428535,
		32.871559, 40.660431, 38.240932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318398, 40.049751, 37.900730>,  <32.575867, 40.101341, 38.540905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318398, 40.049751, 37.900730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640350, 40.284794, 37.867542>,  <32.833523, 40.425819, 37.847630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640350, 40.284794, 37.867542>,  <32.318398, 40.049751, 37.900730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640350, 40.284794, 37.867542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229029, -0.436566, -0.870032,
		-0.547462, 0.681268, -0.485962,
		0.804879, 0.587609, -0.082973,
		32.881813, 40.461075, 37.842651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574535, 39.758343, 37.370934>,  <32.318398, 40.049751, 37.900730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574535, 39.758343, 37.370934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832645, 40.061306, 37.410828>,  <32.987511, 40.243084, 37.434765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832645, 40.061306, 37.410828>,  <32.574535, 39.758343, 37.370934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832645, 40.061306, 37.410828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475842, -0.296352, -0.828100,
		-0.597658, 0.581809, -0.551638,
		0.645275, 0.757413, 0.099732,
		33.026226, 40.288528, 37.440746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558395, 40.107639, 36.733006>,  <32.574535, 39.758343, 37.370934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558395, 40.107639, 36.733006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901840, 40.162708, 36.930523>,  <33.107906, 40.195747, 37.049034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901840, 40.162708, 36.930523>,  <32.558395, 40.107639, 36.733006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901840, 40.162708, 36.930523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511624, -0.290306, -0.808680,
		0.032020, 0.946979, -0.319696,
		0.858613, 0.137670, 0.493793,
		33.159424, 40.204010, 37.078659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104778, 40.371803, 36.216900>,  <32.558395, 40.107639, 36.733006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104778, 40.371803, 36.216900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304047, 40.225716, 36.531464>,  <33.423607, 40.138065, 36.720203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304047, 40.225716, 36.531464>,  <33.104778, 40.371803, 36.216900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304047, 40.225716, 36.531464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589493, -0.522455, -0.616067,
		0.635861, 0.770492, -0.044982,
		0.498175, -0.365216, 0.786408,
		33.453499, 40.116150, 36.767387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.852293, 39.426582, 26.586580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.007816, 39.714149, 26.817055>,  <25.101130, 39.886688, 26.955339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.007816, 39.714149, 26.817055>,  <24.852293, 39.426582, 26.586580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007816, 39.714149, 26.817055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241544, -0.523978, 0.816764,
		0.889092, -0.456738, -0.030078,
		0.388808, 0.718914, 0.576188,
		25.124458, 39.929825, 26.989910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420885, 39.120338, 27.053457>,  <24.852293, 39.426582, 26.586580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420885, 39.120338, 27.053457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309654, 39.471172, 27.210119>,  <25.242916, 39.681675, 27.304115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309654, 39.471172, 27.210119>,  <25.420885, 39.120338, 27.053457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309654, 39.471172, 27.210119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037512, -0.397508, 0.916831,
		0.959826, 0.269641, 0.077637,
		-0.278077, 0.877086, 0.391653,
		25.226231, 39.734299, 27.327616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831753, 39.095478, 27.671124>,  <25.420885, 39.120338, 27.053457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831753, 39.095478, 27.671124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551815, 39.378311, 27.711628>,  <25.383852, 39.548012, 27.735931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551815, 39.378311, 27.711628>,  <25.831753, 39.095478, 27.671124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551815, 39.378311, 27.711628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079704, -0.218180, 0.972648,
		0.709836, 0.672630, 0.209049,
		-0.699843, 0.707083, 0.101261,
		25.341862, 39.590435, 27.742006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167255, 39.480297, 28.200104>,  <25.831753, 39.095478, 27.671124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167255, 39.480297, 28.200104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768759, 39.495834, 28.169146>,  <25.529661, 39.505157, 28.150572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768759, 39.495834, 28.169146>,  <26.167255, 39.480297, 28.200104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768759, 39.495834, 28.169146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085209, -0.280426, 0.956086,
		0.015439, 0.959089, 0.282683,
		-0.996243, 0.038848, -0.077394,
		25.469885, 39.507488, 28.145927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025200, 39.739479, 28.758615>,  <26.167255, 39.480297, 28.200104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025200, 39.739479, 28.758615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.679825, 39.575165, 28.641499>,  <25.472599, 39.476578, 28.571228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.679825, 39.575165, 28.641499>,  <26.025200, 39.739479, 28.758615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679825, 39.575165, 28.641499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105242, -0.420958, 0.900954,
		-0.493354, 0.808732, 0.320239,
		-0.863438, -0.410787, -0.292794,
		25.420794, 39.451927, 28.553659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547913, 39.831512, 29.384071>,  <26.025200, 39.739479, 28.758615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547913, 39.831512, 29.384071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.383835, 39.546925, 29.155846>,  <25.285387, 39.376171, 29.018909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.383835, 39.546925, 29.155846>,  <25.547913, 39.831512, 29.384071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383835, 39.546925, 29.155846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316431, -0.475728, 0.820704,
		-0.855343, 0.517193, -0.029991,
		-0.410195, -0.711473, -0.570566,
		25.260777, 39.333481, 28.984676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914360, 39.488312, 29.736660>,  <25.547913, 39.831512, 29.384071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914360, 39.488312, 29.736660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.957752, 39.230640, 29.433802>,  <24.983788, 39.076038, 29.252087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.957752, 39.230640, 29.433802>,  <24.914360, 39.488312, 29.736660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957752, 39.230640, 29.433802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457136, -0.708661, 0.537426,
		-0.882756, 0.287818, -0.371352,
		0.108482, -0.644175, -0.757146,
		24.990297, 39.037388, 29.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351650, 39.093357, 29.796595>,  <24.914360, 39.488312, 29.736660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351650, 39.093357, 29.796595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.591373, 38.835255, 29.607079>,  <24.735207, 38.680393, 29.493370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.591373, 38.835255, 29.607079>,  <24.351650, 39.093357, 29.796595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591373, 38.835255, 29.607079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118583, -0.656879, 0.744612,
		-0.791688, -0.390067, -0.470188,
		0.599306, -0.645257, -0.473788,
		24.771166, 38.641678, 29.464943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020409, 38.410034, 29.718035>,  <24.351650, 39.093357, 29.796595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020409, 38.410034, 29.718035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.412924, 38.334797, 29.734501>,  <24.648434, 38.289654, 29.744381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.412924, 38.334797, 29.734501>,  <24.020409, 38.410034, 29.718035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412924, 38.334797, 29.734501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160795, -0.682939, 0.712559,
		-0.105911, -0.705845, -0.700404,
		0.981289, -0.188089, 0.041165,
		24.707310, 38.278370, 29.746851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066921, 37.751686, 29.872122>,  <24.020409, 38.410034, 29.718035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066921, 37.751686, 29.872122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.440338, 37.875462, 29.944510>,  <24.664389, 37.949726, 29.987942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.440338, 37.875462, 29.944510>,  <24.066921, 37.751686, 29.872122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440338, 37.875462, 29.944510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150723, -0.796863, 0.585057,
		0.325247, -0.518898, -0.790544,
		0.933540, 0.309441, 0.180967,
		24.720400, 37.968292, 29.998800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513567, 37.179893, 30.005640>,  <24.066921, 37.751686, 29.872122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513567, 37.179893, 30.005640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.725941, 37.476273, 30.170132>,  <24.853365, 37.654099, 30.268827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.725941, 37.476273, 30.170132>,  <24.513567, 37.179893, 30.005640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725941, 37.476273, 30.170132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230854, -0.593388, 0.771102,
		0.815362, -0.314471, -0.486100,
		0.530935, 0.740945, 0.411229,
		24.885221, 37.698555, 30.293501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076155, 36.878757, 30.287361>,  <24.513567, 37.179893, 30.005640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076155, 36.878757, 30.287361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.068983, 37.220406, 30.495268>,  <25.064680, 37.425396, 30.620012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.068983, 37.220406, 30.495268>,  <25.076155, 36.878757, 30.287361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068983, 37.220406, 30.495268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219728, -0.503776, 0.835422,
		0.975397, 0.129184, -0.178642,
		-0.017927, 0.854120, 0.519766,
		25.063604, 37.476643, 30.651197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662624, 36.747261, 30.690014>,  <25.076155, 36.878757, 30.287361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662624, 36.747261, 30.690014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.426935, 37.029247, 30.847918>,  <25.285521, 37.198441, 30.942659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.426935, 37.029247, 30.847918>,  <25.662624, 36.747261, 30.690014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426935, 37.029247, 30.847918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000117, -0.488654, 0.872478,
		0.807969, 0.514039, 0.288009,
		-0.589225, 0.704969, 0.394757,
		25.250168, 37.240738, 30.966345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023544, 37.016544, 31.266039>,  <25.662624, 36.747261, 30.690014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023544, 37.016544, 31.266039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670475, 37.171310, 31.372761>,  <25.458633, 37.264172, 31.436794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670475, 37.171310, 31.372761>,  <26.023544, 37.016544, 31.266039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670475, 37.171310, 31.372761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093238, -0.412237, 0.906293,
		0.460648, 0.824836, 0.327794,
		-0.882672, 0.386919, 0.266802,
		25.405674, 37.287388, 31.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080881, 37.496506, 31.834465>,  <26.023544, 37.016544, 31.266039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080881, 37.496506, 31.834465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.704155, 37.362125, 31.830120>,  <25.478119, 37.281498, 31.827513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.704155, 37.362125, 31.830120>,  <26.080881, 37.496506, 31.834465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704155, 37.362125, 31.830120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182357, -0.537838, 0.823089,
		-0.282360, 0.773219, 0.567808,
		-0.941817, -0.335951, -0.010862,
		25.421610, 37.261341, 31.826860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776161, 37.663372, 32.417156>,  <26.080881, 37.496506, 31.834465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776161, 37.663372, 32.417156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.578266, 37.339401, 32.291134>,  <25.459530, 37.145020, 32.215519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.578266, 37.339401, 32.291134>,  <25.776161, 37.663372, 32.417156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578266, 37.339401, 32.291134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158448, -0.440521, 0.883649,
		-0.854476, 0.387255, 0.346273,
		-0.494738, -0.809923, -0.315055,
		25.429846, 37.096424, 32.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314507, 37.587593, 32.986683>,  <25.776161, 37.663372, 32.417156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314507, 37.587593, 32.986683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.308580, 37.247002, 32.777012>,  <25.305025, 37.042648, 32.651207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.308580, 37.247002, 32.777012>,  <25.314507, 37.587593, 32.986683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308580, 37.247002, 32.777012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069071, -0.523857, 0.849001,
		-0.997502, -0.023630, 0.066573,
		-0.014813, -0.851478, -0.524180,
		25.304136, 36.991558, 32.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836838, 37.232960, 33.347912>,  <25.314507, 37.587593, 32.986683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836838, 37.232960, 33.347912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024637, 36.944809, 33.143703>,  <25.137316, 36.771919, 33.021179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024637, 36.944809, 33.143703>,  <24.836838, 37.232960, 33.347912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024637, 36.944809, 33.143703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073356, -0.544383, 0.835623,
		-0.879882, -0.429772, -0.202742,
		0.469497, -0.720377, -0.510519,
		25.165487, 36.728695, 32.990547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499762, 36.535492, 33.430946>,  <24.836838, 37.232960, 33.347912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499762, 36.535492, 33.430946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884378, 36.450928, 33.360817>,  <25.115149, 36.400188, 33.318737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884378, 36.450928, 33.360817>,  <24.499762, 36.535492, 33.430946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884378, 36.450928, 33.360817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056433, -0.472665, 0.879433,
		-0.268790, -0.855508, -0.442558,
		0.961544, -0.211408, -0.175326,
		25.172842, 36.387505, 33.308220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.525703, 35.798492, 33.656216>,  <24.499762, 36.535492, 33.430946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.525703, 35.798492, 33.656216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.900345, 35.916885, 33.581207>,  <25.125130, 35.987923, 33.536201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.900345, 35.916885, 33.581207>,  <24.525703, 35.798492, 33.656216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900345, 35.916885, 33.581207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340933, -0.646362, 0.682627,
		0.080841, -0.703284, -0.706297,
		0.936605, 0.295985, -0.187520,
		25.181326, 36.005680, 33.524952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919426, 35.296383, 33.438728>,  <24.525703, 35.798492, 33.656216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919426, 35.296383, 33.438728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.174234, 35.554451, 33.607471>,  <25.327120, 35.709290, 33.708717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.174234, 35.554451, 33.607471>,  <24.919426, 35.296383, 33.438728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174234, 35.554451, 33.607471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312952, -0.716588, 0.623347,
		0.704460, -0.265065, -0.658389,
		0.637022, 0.645168, 0.421855,
		25.365341, 35.748001, 33.734028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410967, 34.751587, 33.836658>,  <24.919426, 35.296383, 33.438728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410967, 34.751587, 33.836658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592669, 34.396240, 33.809929>,  <25.701689, 34.183033, 33.793892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.592669, 34.396240, 33.809929>,  <25.410967, 34.751587, 33.836658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592669, 34.396240, 33.809929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565880, 0.345664, -0.748529,
		0.688065, 0.302205, 0.659726,
		0.454253, -0.888363, -0.066827,
		25.728945, 34.129730, 33.789879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092913, 34.883575, 33.724751>,  <25.410967, 34.751587, 33.836658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092913, 34.883575, 33.724751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.047337, 34.505699, 33.601738>,  <26.019991, 34.278973, 33.527931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.047337, 34.505699, 33.601738>,  <26.092913, 34.883575, 33.724751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047337, 34.505699, 33.601738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536599, 0.201993, -0.819305,
		0.836109, -0.258374, 0.483905,
		-0.113942, -0.944691, -0.307532,
		26.013155, 34.222290, 33.509480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710320, 34.693935, 33.455002>,  <26.092913, 34.883575, 33.724751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710320, 34.693935, 33.455002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494911, 34.388130, 33.313286>,  <26.365665, 34.204647, 33.228256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494911, 34.388130, 33.313286>,  <26.710320, 34.693935, 33.455002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494911, 34.388130, 33.313286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542008, 0.007639, -0.840339,
		0.645153, -0.644568, 0.410256,
		-0.538522, -0.764509, -0.354290,
		26.333355, 34.158779, 33.207001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157042, 34.129692, 33.211937>,  <26.710320, 34.693935, 33.455002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157042, 34.129692, 33.211937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799562, 34.104763, 33.034210>,  <26.585075, 34.089806, 32.927574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799562, 34.104763, 33.034210>,  <27.157042, 34.129692, 33.211937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799562, 34.104763, 33.034210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417782, 0.245469, -0.874759,
		0.163576, -0.967400, -0.193342,
		-0.893701, -0.062315, -0.444315,
		26.531452, 34.086067, 32.900917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338322, 33.754230, 32.591709>,  <27.157042, 34.129692, 33.211937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338322, 33.754230, 32.591709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987661, 33.916294, 32.487915>,  <26.777266, 34.013535, 32.425640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987661, 33.916294, 32.487915>,  <27.338322, 33.754230, 32.591709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987661, 33.916294, 32.487915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382751, 0.260495, -0.886366,
		-0.291528, -0.876348, -0.383439,
		-0.876649, 0.405162, -0.259481,
		26.724667, 34.037842, 32.410072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038504, 33.394890, 31.990366>,  <27.338322, 33.754230, 32.591709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038504, 33.394890, 31.990366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908236, 33.772869, 32.003117>,  <26.830074, 33.999657, 32.010765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908236, 33.772869, 32.003117>,  <27.038504, 33.394890, 31.990366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908236, 33.772869, 32.003117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421224, 0.175191, -0.889876,
		-0.846468, -0.276380, -0.455088,
		-0.325672, 0.944945, 0.031876,
		26.810534, 34.056355, 32.012680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811707, 33.623199, 31.295820>,  <27.038504, 33.394890, 31.990366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811707, 33.623199, 31.295820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.887716, 33.963703, 31.491470>,  <26.933323, 34.168007, 31.608860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.887716, 33.963703, 31.491470>,  <26.811707, 33.623199, 31.295820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887716, 33.963703, 31.491470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407850, 0.384736, -0.828032,
		-0.893056, 0.356837, -0.274077,
		0.190025, 0.851261, 0.489126,
		26.944723, 34.219082, 31.638208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554325, 34.184807, 30.891680>,  <26.811707, 33.623199, 31.295820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554325, 34.184807, 30.891680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825270, 34.364326, 31.124836>,  <26.987837, 34.472038, 31.264730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825270, 34.364326, 31.124836>,  <26.554325, 34.184807, 30.891680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825270, 34.364326, 31.124836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368825, 0.478388, -0.796940,
		-0.636512, 0.754801, 0.158514,
		0.677362, 0.448798, 0.582890,
		27.028479, 34.498966, 31.299704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409611, 34.852146, 30.628962>,  <26.554325, 34.184807, 30.891680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409611, 34.852146, 30.628962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750481, 34.821224, 30.835966>,  <26.955004, 34.802670, 30.960169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750481, 34.821224, 30.835966>,  <26.409611, 34.852146, 30.628962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750481, 34.821224, 30.835966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387796, 0.757312, -0.525445,
		-0.351298, 0.648461, 0.675343,
		0.852176, -0.077307, 0.517513,
		27.006134, 34.798031, 30.991220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525301, 35.525055, 30.905220>,  <26.409611, 34.852146, 30.628962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525301, 35.525055, 30.905220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.887358, 35.355934, 30.887512>,  <27.104591, 35.254463, 30.876886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.887358, 35.355934, 30.887512>,  <26.525301, 35.525055, 30.905220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887358, 35.355934, 30.887512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336934, 0.776996, -0.531745,
		0.259219, 0.466388, 0.845746,
		0.905141, -0.422800, -0.044270,
		27.158899, 35.229095, 30.874231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977228, 36.002903, 30.826715>,  <26.525301, 35.525055, 30.905220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977228, 36.002903, 30.826715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223549, 35.704544, 30.725193>,  <27.371342, 35.525528, 30.664280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223549, 35.704544, 30.725193>,  <26.977228, 36.002903, 30.826715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223549, 35.704544, 30.725193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491802, 0.615562, -0.615804,
		0.615562, 0.254391, 0.745901,
		0.615804, -0.745901, -0.253807,
		27.408291, 35.480774, 30.649052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521767, 36.353634, 30.868509>,  <26.977228, 36.002903, 30.826715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521767, 36.353634, 30.868509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592657, 36.035316, 30.636885>,  <27.635191, 35.844326, 30.497910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592657, 36.035316, 30.636885>,  <27.521767, 36.353634, 30.868509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592657, 36.035316, 30.636885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408626, 0.594760, -0.692304,
		0.895330, -0.113926, 0.430586,
		0.177224, -0.795789, -0.579060,
		27.645824, 35.796581, 30.463167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191675, 36.348003, 30.639372>,  <27.521767, 36.353634, 30.868509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191675, 36.348003, 30.639372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011801, 36.115860, 30.367796>,  <27.903875, 35.976574, 30.204851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011801, 36.115860, 30.367796>,  <28.191675, 36.348003, 30.639372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011801, 36.115860, 30.367796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257555, 0.643590, -0.720734,
		0.855246, -0.498970, -0.139939,
		-0.449688, -0.580363, -0.678940,
		27.876894, 35.941750, 30.164114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602352, 36.315025, 30.161688>,  <28.191675, 36.348003, 30.639372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602352, 36.315025, 30.161688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284502, 36.204117, 29.945654>,  <28.093792, 36.137569, 29.816034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284502, 36.204117, 29.945654>,  <28.602352, 36.315025, 30.161688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284502, 36.204117, 29.945654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269062, 0.636628, -0.722710,
		0.544222, -0.719599, -0.431276,
		-0.794624, -0.277274, -0.540084,
		28.046116, 36.120934, 29.783628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756699, 36.151875, 29.440166>,  <28.602352, 36.315025, 30.161688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756699, 36.151875, 29.440166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368000, 36.244671, 29.457542>,  <28.134781, 36.300346, 29.467968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368000, 36.244671, 29.457542>,  <28.756699, 36.151875, 29.440166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368000, 36.244671, 29.457542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157657, 0.774991, -0.611991,
		-0.175642, -0.587852, -0.789670,
		-0.971748, 0.231989, 0.043442,
		28.076475, 36.314266, 29.470575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616138, 36.199070, 28.756197>,  <28.756699, 36.151875, 29.440166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616138, 36.199070, 28.756197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365953, 36.415207, 28.981346>,  <28.215841, 36.544888, 29.116436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365953, 36.415207, 28.981346>,  <28.616138, 36.199070, 28.756197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365953, 36.415207, 28.981346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126632, 0.782131, -0.610111,
		-0.769908, -0.310326, -0.557620,
		-0.625465, 0.540342, 0.562871,
		28.178314, 36.577309, 29.150208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263586, 36.457302, 28.169920>,  <28.616138, 36.199070, 28.756197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263586, 36.457302, 28.169920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135174, 36.662636, 28.488274>,  <28.058126, 36.785835, 28.679285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135174, 36.662636, 28.488274>,  <28.263586, 36.457302, 28.169920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135174, 36.662636, 28.488274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159979, 0.798894, -0.579806,
		-0.933460, -0.313459, -0.174346,
		-0.321029, 0.513334, 0.795882,
		28.038864, 36.816635, 28.727037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793821, 37.000557, 27.867849>,  <28.263586, 36.457302, 28.169920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793821, 37.000557, 27.867849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840683, 37.155983, 28.233427>,  <27.868801, 37.249237, 28.452774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840683, 37.155983, 28.233427>,  <27.793821, 37.000557, 27.867849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840683, 37.155983, 28.233427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107767, 0.909874, -0.400645,
		-0.987249, 0.145431, 0.064724,
		0.117156, 0.388561, 0.913944,
		27.875830, 37.272552, 28.507610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280788, 37.566917, 27.889029>,  <27.793821, 37.000557, 27.867849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280788, 37.566917, 27.889029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601416, 37.635487, 28.118151>,  <27.793791, 37.676628, 28.255623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601416, 37.635487, 28.118151>,  <27.280788, 37.566917, 27.889029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601416, 37.635487, 28.118151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069299, 0.924923, -0.373784,
		-0.593877, 0.339307, 0.729507,
		0.801566, 0.171427, 0.572804,
		27.841885, 37.686916, 28.289991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238756, 38.194294, 28.213339>,  <27.280788, 37.566917, 27.889029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238756, 38.194294, 28.213339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631250, 38.118706, 28.228676>,  <27.866747, 38.073353, 28.237879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631250, 38.118706, 28.228676>,  <27.238756, 38.194294, 28.213339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631250, 38.118706, 28.228676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184129, 0.859233, -0.477299,
		0.057251, 0.475402, 0.877904,
		0.981233, -0.188973, 0.038344,
		27.925621, 38.062016, 28.240179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536167, 38.844448, 28.448353>,  <27.238756, 38.194294, 28.213339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536167, 38.844448, 28.448353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831963, 38.639442, 28.273773>,  <28.009439, 38.516441, 28.169025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831963, 38.639442, 28.273773>,  <27.536167, 38.844448, 28.448353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831963, 38.639442, 28.273773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406633, 0.856785, -0.317126,
		0.536474, 0.057036, 0.841987,
		0.739490, -0.512509, -0.436450,
		28.053810, 38.485691, 28.142838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.488098, 41.392754, 43.990810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149776, 41.210644, 44.102055>,  <35.946785, 41.101379, 44.168800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149776, 41.210644, 44.102055>,  <36.488098, 41.392754, 43.990810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149776, 41.210644, 44.102055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077380, 0.620471, 0.780403,
		-0.527852, 0.638548, -0.560025,
		-0.845804, -0.455272, 0.278106,
		35.896034, 41.074062, 44.185486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956776, 41.939434, 44.133480>,  <36.488098, 41.392754, 43.990810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956776, 41.939434, 44.133480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840530, 41.619198, 44.343090>,  <35.770782, 41.427055, 44.468857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840530, 41.619198, 44.343090>,  <35.956776, 41.939434, 44.133480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840530, 41.619198, 44.343090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206320, 0.587205, 0.782702,
		-0.934333, 0.119345, -0.335826,
		-0.290610, -0.800592, 0.524022,
		35.753345, 41.379021, 44.500298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300400, 42.040195, 44.334972>,  <35.956776, 41.939434, 44.133480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300400, 42.040195, 44.334972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422951, 41.761501, 44.594414>,  <35.496483, 41.594284, 44.750080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422951, 41.761501, 44.594414>,  <35.300400, 42.040195, 44.334972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422951, 41.761501, 44.594414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135569, 0.642493, 0.754205,
		-0.942206, -0.319005, 0.102392,
		0.306381, -0.696735, 0.648607,
		35.514866, 41.552483, 44.788998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732258, 41.927765, 44.849602>,  <35.300400, 42.040195, 44.334972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732258, 41.927765, 44.849602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084538, 41.815189, 45.002003>,  <35.295906, 41.747643, 45.093441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084538, 41.815189, 45.002003>,  <34.732258, 41.927765, 44.849602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084538, 41.815189, 45.002003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134134, 0.623239, 0.770443,
		-0.454288, -0.729633, 0.511134,
		0.880699, -0.281442, 0.380999,
		35.348747, 41.730759, 45.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587765, 41.836868, 45.585651>,  <34.732258, 41.927765, 44.849602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587765, 41.836868, 45.585651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986416, 41.853886, 45.557579>,  <35.225605, 41.864094, 45.540737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986416, 41.853886, 45.557579>,  <34.587765, 41.836868, 45.585651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986416, 41.853886, 45.557579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046515, 0.411740, 0.910113,
		0.067612, -0.910308, 0.408373,
		0.996627, 0.042539, -0.070181,
		35.285404, 41.866646, 45.536526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928032, 41.623943, 46.241749>,  <34.587765, 41.836868, 45.585651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928032, 41.623943, 46.241749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183994, 41.870804, 46.058601>,  <35.337574, 42.018921, 45.948711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183994, 41.870804, 46.058601>,  <34.928032, 41.623943, 46.241749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183994, 41.870804, 46.058601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028637, 0.576269, 0.816758,
		0.767917, -0.535763, 0.351087,
		0.639909, 0.617148, -0.457869,
		35.375969, 42.055950, 45.921242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290806, 41.830975, 46.732533>,  <34.928032, 41.623943, 46.241749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290806, 41.830975, 46.732533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424656, 42.096046, 46.464539>,  <35.504967, 42.255089, 46.303741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424656, 42.096046, 46.464539>,  <35.290806, 41.830975, 46.732533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424656, 42.096046, 46.464539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048888, 0.697806, 0.714616,
		0.941081, -0.271885, 0.201109,
		0.334629, 0.662680, -0.669984,
		35.525043, 42.294849, 46.263542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702160, 42.391750, 47.185364>,  <35.290806, 41.830975, 46.732533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702160, 42.391750, 47.185364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657185, 42.576241, 46.833313>,  <35.630199, 42.686935, 46.622082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657185, 42.576241, 46.833313>,  <35.702160, 42.391750, 47.185364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657185, 42.576241, 46.833313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184604, 0.860630, 0.474592,
		0.976360, 0.215836, -0.011621,
		-0.112436, 0.461227, -0.880129,
		35.623455, 42.714607, 46.569275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208599, 42.917053, 47.202324>,  <35.702160, 42.391750, 47.185364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208599, 42.917053, 47.202324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904091, 43.020645, 46.964535>,  <35.721386, 43.082798, 46.821861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904091, 43.020645, 46.964535>,  <36.208599, 42.917053, 47.202324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904091, 43.020645, 46.964535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137441, 0.831507, 0.538243,
		0.633701, 0.491454, -0.597408,
		-0.761271, 0.258977, -0.594472,
		35.675709, 43.098339, 46.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145042, 43.617138, 47.353039>,  <36.208599, 42.917053, 47.202324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145042, 43.617138, 47.353039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805408, 43.547276, 47.153622>,  <35.601627, 43.505356, 47.033970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805408, 43.547276, 47.153622>,  <36.145042, 43.617138, 47.353039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805408, 43.547276, 47.153622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449835, 0.733854, 0.509026,
		0.276955, 0.656470, -0.701672,
		-0.849084, -0.174659, -0.498547,
		35.550682, 43.494877, 47.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839302, 44.314190, 47.226105>,  <36.145042, 43.617138, 47.353039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839302, 44.314190, 47.226105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525879, 44.070824, 47.175713>,  <35.337826, 43.924805, 47.145477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525879, 44.070824, 47.175713>,  <35.839302, 44.314190, 47.226105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525879, 44.070824, 47.175713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587108, 0.658673, 0.470589,
		-0.203332, 0.442698, -0.873312,
		-0.783556, -0.608414, -0.125983,
		35.290813, 43.888298, 47.137917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382729, 44.718605, 46.845356>,  <35.839302, 44.314190, 47.226105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382729, 44.718605, 46.845356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164719, 44.440903, 47.033379>,  <35.033913, 44.274281, 47.146194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164719, 44.440903, 47.033379>,  <35.382729, 44.718605, 46.845356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164719, 44.440903, 47.033379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656733, 0.702033, 0.275411,
		-0.521204, -0.158599, -0.838566,
		-0.545021, -0.694259, 0.470059,
		35.001213, 44.232624, 47.174397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690964, 44.864296, 46.883236>,  <35.382729, 44.718605, 46.845356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690964, 44.864296, 46.883236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628944, 44.577095, 47.154655>,  <34.591732, 44.404774, 47.317505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628944, 44.577095, 47.154655>,  <34.690964, 44.864296, 46.883236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628944, 44.577095, 47.154655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731815, 0.544876, 0.409338,
		-0.663630, -0.433101, -0.609933,
		-0.155053, -0.718007, 0.678546,
		34.582428, 44.361694, 47.358219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620331, 45.207027, 46.260941>,  <34.690964, 44.864296, 46.883236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620331, 45.207027, 46.260941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392960, 45.141941, 46.583534>,  <34.256535, 45.102890, 46.777088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392960, 45.141941, 46.583534>,  <34.620331, 45.207027, 46.260941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392960, 45.141941, 46.583534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562562, -0.792153, 0.236680,
		0.600343, 0.588231, 0.541824,
		-0.568430, -0.162720, 0.806480,
		34.222431, 45.093124, 46.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344719, 45.722916, 45.932556>,  <34.620331, 45.207027, 46.260941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344719, 45.722916, 45.932556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976845, 45.871540, 45.881775>,  <33.756119, 45.960712, 45.851307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976845, 45.871540, 45.881775>,  <34.344719, 45.722916, 45.932556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976845, 45.871540, 45.881775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107560, -0.549364, -0.828632,
		-0.377627, -0.748429, 0.545209,
		-0.919689, 0.371556, -0.126953,
		33.700939, 45.983006, 45.843689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829895, 45.186558, 45.893219>,  <34.344719, 45.722916, 45.932556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829895, 45.186558, 45.893219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641701, 45.469524, 45.682236>,  <33.528782, 45.639305, 45.555645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641701, 45.469524, 45.682236>,  <33.829895, 45.186558, 45.893219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641701, 45.469524, 45.682236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107255, -0.547467, -0.829926,
		-0.875864, -0.447042, 0.181702,
		-0.470487, 0.707413, -0.527454,
		33.500553, 45.681747, 45.523998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494186, 44.833019, 45.448872>,  <33.829895, 45.186558, 45.893219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494186, 44.833019, 45.448872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438763, 45.192238, 45.281868>,  <33.405510, 45.407768, 45.181664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438763, 45.192238, 45.281868>,  <33.494186, 44.833019, 45.448872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438763, 45.192238, 45.281868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084121, -0.430727, -0.898553,
		-0.986775, -0.089380, 0.135225,
		-0.138557, 0.898045, -0.417512,
		33.397194, 45.461651, 45.156616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957561, 44.752266, 45.031475>,  <33.494186, 44.833019, 45.448872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957561, 44.752266, 45.031475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.155766, 45.061359, 44.872803>,  <33.274689, 45.246815, 44.777599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.155766, 45.061359, 44.872803>,  <32.957561, 44.752266, 45.031475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155766, 45.061359, 44.872803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008070, -0.452572, -0.891691,
		-0.868563, 0.445046, -0.218019,
		0.495513, 0.772731, -0.396679,
		33.304420, 45.293179, 44.753799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526112, 45.074173, 44.471458>,  <32.957561, 44.752266, 45.031475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526112, 45.074173, 44.471458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896206, 45.188156, 44.371269>,  <33.118263, 45.256546, 44.311153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896206, 45.188156, 44.371269>,  <32.526112, 45.074173, 44.471458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896206, 45.188156, 44.371269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133679, -0.373001, -0.918150,
		-0.355066, 0.882988, -0.307020,
		0.925234, 0.284961, -0.250477,
		33.173775, 45.273643, 44.296127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421894, 45.243904, 43.812050>,  <32.526112, 45.074173, 44.471458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421894, 45.243904, 43.812050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818180, 45.218201, 43.859982>,  <33.055950, 45.202778, 43.888741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818180, 45.218201, 43.859982>,  <32.421894, 45.243904, 43.812050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818180, 45.218201, 43.859982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087650, -0.371912, -0.924121,
		0.103951, 0.926041, -0.362825,
		0.990713, -0.064261, 0.119828,
		33.115395, 45.198921, 43.895931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580627, 45.485973, 43.245129>,  <32.421894, 45.243904, 43.812050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580627, 45.485973, 43.245129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892097, 45.276878, 43.383930>,  <33.078979, 45.151421, 43.467213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892097, 45.276878, 43.383930>,  <32.580627, 45.485973, 43.245129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892097, 45.276878, 43.383930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048286, -0.501495, -0.863812,
		0.625569, 0.689383, -0.365260,
		0.778673, -0.522737, 0.347007,
		33.125698, 45.120056, 43.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083073, 45.539539, 42.698822>,  <32.580627, 45.485973, 43.245129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083073, 45.539539, 42.698822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161053, 45.199337, 42.894226>,  <33.207840, 44.995216, 43.011467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161053, 45.199337, 42.894226>,  <33.083073, 45.539539, 42.698822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161053, 45.199337, 42.894226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164849, -0.462568, -0.871123,
		0.966861, 0.250355, 0.050027,
		0.194949, -0.850502, 0.488510,
		33.219536, 44.944187, 43.040779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606983, 45.256523, 42.328754>,  <33.083073, 45.539539, 42.698822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606983, 45.256523, 42.328754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496517, 44.942516, 42.550560>,  <33.430237, 44.754112, 42.683643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496517, 44.942516, 42.550560>,  <33.606983, 45.256523, 42.328754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496517, 44.942516, 42.550560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002233, -0.577473, -0.816406,
		0.961106, -0.224228, 0.161233,
		-0.276169, -0.785014, 0.554513,
		33.413666, 44.707012, 42.716915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127247, 44.700413, 42.125576>,  <33.606983, 45.256523, 42.328754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127247, 44.700413, 42.125576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840836, 44.500195, 42.320206>,  <33.668991, 44.380062, 42.436985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840836, 44.500195, 42.320206>,  <34.127247, 44.700413, 42.125576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840836, 44.500195, 42.320206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119696, -0.774739, -0.620848,
		0.687736, -0.386301, 0.614647,
		-0.716025, -0.500550, 0.486577,
		33.626026, 44.350029, 42.466179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244568, 43.943935, 42.085838>,  <34.127247, 44.700413, 42.125576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244568, 43.943935, 42.085838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855236, 43.968880, 42.174152>,  <33.621639, 43.983845, 42.227139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855236, 43.968880, 42.174152>,  <34.244568, 43.943935, 42.085838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855236, 43.968880, 42.174152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187817, -0.769239, -0.610734,
		0.131749, -0.635911, 0.760433,
		-0.973328, 0.062359, 0.220782,
		33.563236, 43.987587, 42.240387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991489, 43.256630, 42.423641>,  <34.244568, 43.943935, 42.085838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991489, 43.256630, 42.423641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674606, 43.445339, 42.268806>,  <33.484478, 43.558567, 42.175907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674606, 43.445339, 42.268806>,  <33.991489, 43.256630, 42.423641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674606, 43.445339, 42.268806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265308, -0.837481, -0.477741,
		-0.549561, -0.275775, 0.788626,
		-0.792208, 0.471777, -0.387082,
		33.436943, 43.586872, 42.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254475, 42.897102, 42.542881>,  <33.991489, 43.256630, 42.423641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254475, 42.897102, 42.542881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181828, 43.135555, 42.230053>,  <33.138237, 43.278629, 42.042355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181828, 43.135555, 42.230053>,  <33.254475, 42.897102, 42.542881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181828, 43.135555, 42.230053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368879, -0.778525, -0.507768,
		-0.911560, 0.196268, 0.361298,
		-0.181621, 0.596136, -0.782071,
		33.127342, 43.314396, 41.995430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708012, 42.594540, 42.346336>,  <33.254475, 42.897102, 42.542881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708012, 42.594540, 42.346336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823673, 42.813931, 42.032505>,  <32.893070, 42.945564, 41.844208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823673, 42.813931, 42.032505>,  <32.708012, 42.594540, 42.346336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823673, 42.813931, 42.032505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221821, -0.758892, -0.612274,
		-0.931229, 0.351075, -0.097769,
		0.289150, 0.548480, -0.784578,
		32.910419, 42.978474, 41.797131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003139, 42.628422, 42.664364>,  <32.708012, 42.594540, 42.346336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003139, 42.628422, 42.664364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824451, 42.294842, 42.793957>,  <31.717239, 42.094692, 42.871712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824451, 42.294842, 42.793957>,  <32.003139, 42.628422, 42.664364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824451, 42.294842, 42.793957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016235, 0.354513, 0.934910,
		-0.894526, 0.422903, -0.144829,
		-0.446720, -0.833951, 0.323987,
		31.690435, 42.044655, 42.891151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418789, 42.816486, 43.072334>,  <32.003139, 42.628422, 42.664364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418789, 42.816486, 43.072334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517361, 42.444149, 43.180260>,  <31.576504, 42.220745, 43.245014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517361, 42.444149, 43.180260>,  <31.418789, 42.816486, 43.072334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517361, 42.444149, 43.180260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033932, 0.269942, 0.962279,
		-0.968566, -0.246291, 0.034937,
		0.246431, -0.930845, 0.269814,
		31.591290, 42.164894, 43.261204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977873, 42.626514, 43.650459>,  <31.418789, 42.816486, 43.072334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977873, 42.626514, 43.650459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294407, 42.382137, 43.659760>,  <31.484327, 42.235512, 43.665340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294407, 42.382137, 43.659760>,  <30.977873, 42.626514, 43.650459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294407, 42.382137, 43.659760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107312, 0.176239, 0.978481,
		-0.601891, -0.771811, 0.205025,
		0.791335, -0.610940, 0.023252,
		31.531807, 42.198856, 43.666737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835129, 42.222580, 44.256599>,  <30.977873, 42.626514, 43.650459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835129, 42.222580, 44.256599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223555, 42.204285, 44.162838>,  <31.456610, 42.193306, 44.106583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223555, 42.204285, 44.162838>,  <30.835129, 42.222580, 44.256599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223555, 42.204285, 44.162838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236393, 0.323750, 0.916136,
		0.033983, -0.945036, 0.325194,
		0.971063, -0.045741, -0.234402,
		31.514874, 42.190563, 44.092518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159176, 41.819008, 44.790764>,  <30.835129, 42.222580, 44.256599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159176, 41.819008, 44.790764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411585, 42.071968, 44.611042>,  <31.563030, 42.223743, 44.503208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411585, 42.071968, 44.611042>,  <31.159176, 41.819008, 44.790764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411585, 42.071968, 44.611042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168935, 0.453261, 0.875223,
		0.757147, -0.628190, 0.179183,
		0.631023, 0.632402, -0.449308,
		31.600891, 42.261688, 44.476250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567169, 41.886864, 45.259804>,  <31.159176, 41.819008, 44.790764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567169, 41.886864, 45.259804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669662, 42.191082, 45.021172>,  <31.731159, 42.373615, 44.877991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669662, 42.191082, 45.021172>,  <31.567169, 41.886864, 45.259804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669662, 42.191082, 45.021172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240381, 0.547661, 0.801426,
		0.936249, -0.348759, -0.042493,
		0.256233, 0.760549, -0.596582,
		31.746532, 42.419247, 44.842197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270748, 42.077950, 45.449383>,  <31.567169, 41.886864, 45.259804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270748, 42.077950, 45.449383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079800, 42.400291, 45.309254>,  <31.965231, 42.593697, 45.225178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079800, 42.400291, 45.309254>,  <32.270748, 42.077950, 45.449383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079800, 42.400291, 45.309254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298217, 0.523596, 0.798068,
		0.826551, 0.276500, -0.490267,
		-0.477368, 0.805850, -0.350322,
		31.936588, 42.642048, 45.204159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671249, 41.763489, 46.035828>,  <32.270748, 42.077950, 45.449383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671249, 41.763489, 46.035828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374725, 41.541042, 46.186127>,  <32.196812, 41.407574, 46.276306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374725, 41.541042, 46.186127>,  <32.671249, 41.763489, 46.035828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374725, 41.541042, 46.186127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210617, -0.724329, -0.656497,
		0.637254, -0.407532, 0.654083,
		-0.741315, -0.556117, 0.375748,
		32.152332, 41.374207, 46.298851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943810, 41.086746, 46.030075>,  <32.671249, 41.763489, 46.035828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943810, 41.086746, 46.030075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551785, 41.037308, 46.092300>,  <32.316570, 41.007645, 46.129635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551785, 41.037308, 46.092300>,  <32.943810, 41.086746, 46.030075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551785, 41.037308, 46.092300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018943, -0.837533, -0.546058,
		0.197783, -0.532224, 0.823176,
		-0.980063, -0.123595, 0.155568,
		32.257767, 41.000229, 46.138969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921314, 40.419838, 46.245090>,  <32.943810, 41.086746, 46.030075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921314, 40.419838, 46.245090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571468, 40.531212, 46.086338>,  <32.361561, 40.598038, 45.991085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571468, 40.531212, 46.086338>,  <32.921314, 40.419838, 46.245090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571468, 40.531212, 46.086338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011632, -0.806346, -0.591330,
		-0.484672, -0.521804, 0.702007,
		-0.874618, 0.278435, -0.396883,
		32.309082, 40.614742, 45.967274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404167, 39.856739, 46.453262>,  <32.921314, 40.419838, 46.245090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404167, 39.856739, 46.453262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302689, 40.066097, 46.127884>,  <32.241802, 40.191711, 45.932655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302689, 40.066097, 46.127884>,  <32.404167, 39.856739, 46.453262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302689, 40.066097, 46.127884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042564, -0.834108, -0.549957,
		-0.966348, -0.174143, 0.189329,
		-0.253692, 0.523391, -0.813451,
		32.226582, 40.223114, 45.883850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245804, 39.331680, 45.922379>,  <32.404167, 39.856739, 46.453262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245804, 39.331680, 45.922379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211464, 39.650658, 45.683475>,  <32.190861, 39.842045, 45.540134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211464, 39.650658, 45.683475>,  <32.245804, 39.331680, 45.922379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211464, 39.650658, 45.683475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108306, -0.603390, -0.790058,
		-0.990403, -0.003143, 0.138171,
		-0.085854, 0.797440, -0.597259,
		32.185707, 39.889889, 45.504299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717081, 39.103027, 45.462536>,  <32.245804, 39.331680, 45.922379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717081, 39.103027, 45.462536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972065, 39.365154, 45.300446>,  <32.125057, 39.522430, 45.203190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972065, 39.365154, 45.300446>,  <31.717081, 39.103027, 45.462536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972065, 39.365154, 45.300446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024994, -0.543248, -0.839200,
		-0.770078, 0.524829, -0.362678,
		0.637460, 0.655314, -0.405226,
		32.163303, 39.561749, 45.178879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399368, 39.244061, 44.844124>,  <31.717081, 39.103027, 45.462536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399368, 39.244061, 44.844124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790234, 39.329033, 44.846119>,  <32.024754, 39.380016, 44.847317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790234, 39.329033, 44.846119>,  <31.399368, 39.244061, 44.844124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790234, 39.329033, 44.846119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095715, -0.419078, -0.902891,
		-0.189707, 0.882751, -0.429840,
		0.977164, 0.212427, 0.004991,
		32.083382, 39.392761, 44.847614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.313377, 41.794868, 48.601261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026619, 41.881580, 48.866306>,  <32.854565, 41.933609, 49.025333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026619, 41.881580, 48.866306>,  <33.313377, 41.794868, 48.601261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026619, 41.881580, 48.866306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139828, 0.886409, -0.441280,
		-0.683011, -0.409005, -0.605153,
		-0.716899, 0.216782, 0.662617,
		32.811550, 41.946613, 49.065090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725426, 41.189903, 48.595024>,  <33.313377, 41.794868, 48.601261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725426, 41.189903, 48.595024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.988724, 41.389893, 48.369907>,  <34.146702, 41.509888, 48.234837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.988724, 41.389893, 48.369907>,  <33.725426, 41.189903, 48.595024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988724, 41.389893, 48.369907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008957, -0.752748, -0.658248,
		-0.752748, 0.428250, -0.499973,
		0.658248, 0.499973, -0.562793,
		34.186199, 41.539883, 48.201069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579403, 41.050129, 47.910759>,  <33.725426, 41.189903, 48.595024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579403, 41.050129, 47.910759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955280, 41.182873, 47.877678>,  <34.180809, 41.262520, 47.857830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.955280, 41.182873, 47.877678>,  <33.579403, 41.050129, 47.910759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955280, 41.182873, 47.877678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144658, -0.604781, -0.783144,
		-0.309911, 0.723954, -0.616316,
		0.939696, 0.331860, -0.082703,
		34.237190, 41.282433, 47.852867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643341, 41.164650, 47.257271>,  <33.579403, 41.050129, 47.910759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643341, 41.164650, 47.257271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021984, 41.117367, 47.377247>,  <34.249168, 41.088997, 47.449234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021984, 41.117367, 47.377247>,  <33.643341, 41.164650, 47.257271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021984, 41.117367, 47.377247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172307, -0.600836, -0.780581,
		0.272482, 0.790585, -0.548388,
		0.946606, -0.118204, 0.299940,
		34.305965, 41.081905, 47.467228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010410, 41.155941, 46.678703>,  <33.643341, 41.164650, 47.257271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010410, 41.155941, 46.678703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249405, 40.981201, 46.947678>,  <34.392803, 40.876358, 47.109062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249405, 40.981201, 46.947678>,  <34.010410, 41.155941, 46.678703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249405, 40.981201, 46.947678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205200, -0.727363, -0.654856,
		0.775180, 0.529252, -0.344948,
		0.597486, -0.436848, 0.672439,
		34.428650, 40.850147, 47.149410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639698, 40.963287, 46.314148>,  <34.010410, 41.155941, 46.678703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639698, 40.963287, 46.314148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658489, 40.733471, 46.640999>,  <34.669762, 40.595581, 46.837109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658489, 40.733471, 46.640999>,  <34.639698, 40.963287, 46.314148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658489, 40.733471, 46.640999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371817, -0.749189, -0.548150,
		0.927117, 0.329571, 0.178432,
		0.046975, -0.574543, 0.817125,
		34.672581, 40.561108, 46.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391521, 40.782429, 46.462063>,  <34.639698, 40.963287, 46.314148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391521, 40.782429, 46.462063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.128578, 40.531582, 46.629208>,  <34.970814, 40.381073, 46.729496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.128578, 40.531582, 46.629208>,  <35.391521, 40.782429, 46.462063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128578, 40.531582, 46.629208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453306, -0.772027, -0.445520,
		0.601991, -0.103447, 0.791773,
		-0.657359, -0.627114, 0.417861,
		34.931370, 40.343449, 46.754566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816944, 40.206749, 46.503822>,  <35.391521, 40.782429, 46.462063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816944, 40.206749, 46.503822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.466488, 40.051926, 46.618759>,  <35.256214, 39.959030, 46.687721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.466488, 40.051926, 46.618759>,  <35.816944, 40.206749, 46.503822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466488, 40.051926, 46.618759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210960, -0.843822, -0.493416,
		0.433452, -0.371681, 0.820958,
		-0.876136, -0.387062, 0.287346,
		35.203648, 39.935806, 46.704964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902317, 39.502632, 46.835163>,  <35.816944, 40.206749, 46.503822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902317, 39.502632, 46.835163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528637, 39.484043, 46.693676>,  <35.304428, 39.472889, 46.608784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.528637, 39.484043, 46.693676>,  <35.902317, 39.502632, 46.835163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528637, 39.484043, 46.693676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171119, -0.928354, -0.329965,
		-0.313037, -0.368780, 0.875220,
		-0.934198, -0.046476, -0.353714,
		35.248379, 39.470100, 46.587563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644920, 38.882694, 47.040424>,  <35.902317, 39.502632, 46.835163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644920, 38.882694, 47.040424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424454, 38.993263, 46.725513>,  <35.292171, 39.059605, 46.536568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424454, 38.993263, 46.725513>,  <35.644920, 38.882694, 47.040424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424454, 38.993263, 46.725513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236422, -0.853124, -0.465063,
		-0.800197, -0.442458, 0.404865,
		-0.551171, 0.276423, -0.787274,
		35.259102, 39.076191, 46.489330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309715, 38.252125, 46.880455>,  <35.644920, 38.882694, 47.040424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309715, 38.252125, 46.880455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320332, 38.491154, 46.559902>,  <35.326702, 38.634571, 46.367573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320332, 38.491154, 46.559902>,  <35.309715, 38.252125, 46.880455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320332, 38.491154, 46.559902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272574, -0.775610, -0.569325,
		-0.961769, -0.203324, -0.183468,
		0.026543, 0.597568, -0.801379,
		35.328293, 38.670425, 46.319489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817013, 38.004112, 46.477547>,  <35.309715, 38.252125, 46.880455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817013, 38.004112, 46.477547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.054596, 38.203491, 46.224953>,  <35.197147, 38.323116, 46.073399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.054596, 38.203491, 46.224953>,  <34.817013, 38.004112, 46.477547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054596, 38.203491, 46.224953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157541, -0.841807, -0.516278,
		-0.788921, 0.207162, -0.578522,
		0.593957, 0.498443, -0.631482,
		35.232784, 38.353024, 46.035507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088966, 37.989491, 46.470715>,  <34.817013, 38.004112, 46.477547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088966, 37.989491, 46.470715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.752953, 37.781647, 46.533123>,  <33.551342, 37.656940, 46.570568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.752953, 37.781647, 46.533123>,  <34.088966, 37.989491, 46.470715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752953, 37.781647, 46.533123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172456, 0.528418, 0.831284,
		-0.514389, 0.671402, -0.533501,
		-0.840037, -0.519609, 0.156025,
		33.500942, 37.625763, 46.579929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615784, 38.496624, 46.618820>,  <34.088966, 37.989491, 46.470715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615784, 38.496624, 46.618820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479000, 38.160717, 46.787514>,  <33.396931, 37.959175, 46.888729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479000, 38.160717, 46.787514>,  <33.615784, 38.496624, 46.618820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479000, 38.160717, 46.787514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122360, 0.484757, 0.866048,
		-0.931713, 0.244554, -0.268523,
		-0.341964, -0.839764, 0.421730,
		33.376411, 37.908787, 46.914032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923756, 38.677334, 46.852154>,  <33.615784, 38.496624, 46.618820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923756, 38.677334, 46.852154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038151, 38.360672, 47.068111>,  <33.106789, 38.170673, 47.197685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.038151, 38.360672, 47.068111>,  <32.923756, 38.677334, 46.852154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038151, 38.360672, 47.068111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075283, 0.543127, 0.836269,
		-0.955271, -0.279808, 0.095730,
		0.285988, -0.791657, 0.539898,
		33.123947, 38.123177, 47.230080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629154, 38.757446, 47.449574>,  <32.923756, 38.677334, 46.852154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629154, 38.757446, 47.449574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.890038, 38.491222, 47.594715>,  <33.046566, 38.331490, 47.681801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.890038, 38.491222, 47.594715>,  <32.629154, 38.757446, 47.449574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890038, 38.491222, 47.594715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055070, 0.519009, 0.852993,
		-0.756040, -0.536343, 0.375152,
		0.652205, -0.665556, 0.362855,
		33.085697, 38.291557, 47.703571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336792, 38.607094, 48.152039>,  <32.629154, 38.757446, 47.449574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336792, 38.607094, 48.152039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717564, 38.484871, 48.143383>,  <32.946026, 38.411537, 48.138191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717564, 38.484871, 48.143383>,  <32.336792, 38.607094, 48.152039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717564, 38.484871, 48.143383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183447, 0.512091, 0.839113,
		-0.245314, -0.802745, 0.543527,
		0.951929, -0.305554, -0.021638,
		33.003143, 38.393204, 48.136890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380592, 38.206306, 48.682858>,  <32.336792, 38.607094, 48.152039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380592, 38.206306, 48.682858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.738949, 38.366974, 48.606930>,  <32.953964, 38.463375, 48.561375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.738949, 38.366974, 48.606930>,  <32.380592, 38.206306, 48.682858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738949, 38.366974, 48.606930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058555, 0.530295, 0.845789,
		0.440388, -0.746624, 0.498609,
		0.895896, 0.401671, -0.189817,
		33.007717, 38.487476, 48.549984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726700, 38.248177, 49.361988>,  <32.380592, 38.206306, 48.682858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726700, 38.248177, 49.361988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945724, 38.466881, 49.108616>,  <33.077137, 38.598103, 48.956593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945724, 38.466881, 49.108616>,  <32.726700, 38.248177, 49.361988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945724, 38.466881, 49.108616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082823, 0.788693, 0.609183,
		0.832657, -0.281102, 0.477141,
		0.547560, 0.546759, -0.633429,
		33.109993, 38.630909, 48.918587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247551, 38.512260, 49.806496>,  <32.726700, 38.248177, 49.361988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247551, 38.512260, 49.806496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253052, 38.775333, 49.505230>,  <33.256351, 38.933178, 49.324471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253052, 38.775333, 49.505230>,  <33.247551, 38.512260, 49.806496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253052, 38.775333, 49.505230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072184, 0.751926, 0.655284,
		0.997296, 0.045357, 0.057813,
		0.013750, 0.657685, -0.753167,
		33.257175, 38.972637, 49.279282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659256, 39.042789, 50.050091>,  <33.247551, 38.512260, 49.806496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659256, 39.042789, 50.050091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459530, 39.212498, 49.747917>,  <33.339695, 39.314323, 49.566612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.459530, 39.212498, 49.747917>,  <33.659256, 39.042789, 50.050091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459530, 39.212498, 49.747917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171226, 0.806388, 0.566057,
		0.849334, 0.411989, -0.329994,
		-0.499312, 0.424268, -0.755436,
		33.309738, 39.339779, 49.521286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799259, 39.699036, 50.093765>,  <33.659256, 39.042789, 50.050091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799259, 39.699036, 50.093765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485104, 39.745068, 49.850479>,  <33.296612, 39.772686, 49.704506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485104, 39.745068, 49.850479>,  <33.799259, 39.699036, 50.093765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485104, 39.745068, 49.850479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324145, 0.760623, 0.562479,
		0.527350, 0.638914, -0.560082,
		-0.785387, 0.115075, -0.608215,
		33.249489, 39.779591, 49.668015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698093, 40.327232, 49.825783>,  <33.799259, 39.699036, 50.093765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698093, 40.327232, 49.825783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320019, 40.210335, 49.767525>,  <33.093174, 40.140198, 49.732571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320019, 40.210335, 49.767525>,  <33.698093, 40.327232, 49.825783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320019, 40.210335, 49.767525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326094, 0.867760, 0.375041,
		0.016783, 0.401978, -0.915495,
		-0.945188, -0.292243, -0.145647,
		33.036461, 40.122662, 49.723831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302124, 40.900967, 49.469345>,  <33.698093, 40.327232, 49.825783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302124, 40.900967, 49.469345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034855, 40.668877, 49.655632>,  <32.874493, 40.529625, 49.767403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034855, 40.668877, 49.655632>,  <33.302124, 40.900967, 49.469345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034855, 40.668877, 49.655632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409085, 0.809351, 0.421427,
		-0.621448, 0.091069, -0.778144,
		-0.668171, -0.580222, 0.465715,
		32.834404, 40.494808, 49.795345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670452, 41.219688, 49.297321>,  <33.302124, 40.900967, 49.469345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670452, 41.219688, 49.297321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614326, 41.003731, 49.629303>,  <32.580650, 40.874157, 49.828491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614326, 41.003731, 49.629303>,  <32.670452, 41.219688, 49.297321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614326, 41.003731, 49.629303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218820, 0.834429, 0.505813,
		-0.965624, -0.110638, -0.235222,
		-0.140314, -0.539896, 0.829954,
		32.572231, 40.841763, 49.878288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147869, 41.475960, 49.601246>,  <32.670452, 41.219688, 49.297321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147869, 41.475960, 49.601246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303669, 41.288929, 49.918652>,  <32.397148, 41.176712, 50.109097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.303669, 41.288929, 49.918652>,  <32.147869, 41.475960, 49.601246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303669, 41.288929, 49.918652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135021, 0.823258, 0.551376,
		-0.911076, -0.321901, 0.257525,
		0.389498, -0.467575, 0.793514,
		32.420517, 41.148655, 50.156704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684414, 41.187191, 49.144688>,  <32.147869, 41.475960, 49.601246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684414, 41.187191, 49.144688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490484, 41.521645, 49.042061>,  <31.374126, 41.722317, 48.980484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490484, 41.521645, 49.042061>,  <31.684414, 41.187191, 49.144688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490484, 41.521645, 49.042061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194315, -0.183045, -0.963710,
		-0.852752, -0.517086, -0.073728,
		-0.484825, 0.836132, -0.256569,
		31.345037, 41.772484, 48.965092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078417, 41.020042, 48.587425>,  <31.684414, 41.187191, 49.144688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078417, 41.020042, 48.587425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173840, 41.407494, 48.559563>,  <31.231092, 41.639965, 48.542843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173840, 41.407494, 48.559563>,  <31.078417, 41.020042, 48.587425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173840, 41.407494, 48.559563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154601, -0.108694, -0.981980,
		-0.958744, 0.223488, -0.175680,
		0.238556, 0.968627, -0.069658,
		31.245407, 41.698082, 48.538666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706154, 41.276703, 48.006355>,  <31.078417, 41.020042, 48.587425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706154, 41.276703, 48.006355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011404, 41.528336, 48.065548>,  <31.194555, 41.679314, 48.101063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011404, 41.528336, 48.065548>,  <30.706154, 41.276703, 48.006355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011404, 41.528336, 48.065548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227626, -0.047347, -0.972597,
		-0.604833, 0.775899, -0.179326,
		0.763127, 0.629078, 0.147977,
		31.240343, 41.717060, 48.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643625, 41.805069, 47.460449>,  <30.706154, 41.276703, 48.006355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643625, 41.805069, 47.460449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026062, 41.798946, 47.577515>,  <31.255524, 41.795273, 47.647755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026062, 41.798946, 47.577515>,  <30.643625, 41.805069, 47.460449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026062, 41.798946, 47.577515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291742, -0.045183, -0.955429,
		0.027843, 0.998862, -0.038735,
		0.956092, -0.015302, 0.292668,
		31.312889, 41.794357, 47.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015341, 42.294495, 47.019894>,  <30.643625, 41.805069, 47.460449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015341, 42.294495, 47.019894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283043, 42.031509, 47.158363>,  <31.443665, 41.873718, 47.241444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283043, 42.031509, 47.158363>,  <31.015341, 42.294495, 47.019894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283043, 42.031509, 47.158363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392523, -0.082742, -0.916013,
		0.630890, 0.748928, 0.202694,
		0.669256, -0.657465, 0.346173,
		31.483820, 41.834270, 47.262215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437559, 42.362392, 46.445450>,  <31.015341, 42.294495, 47.019894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437559, 42.362392, 46.445450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572023, 42.069454, 46.682320>,  <31.652702, 41.893692, 46.824440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572023, 42.069454, 46.682320>,  <31.437559, 42.362392, 46.445450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572023, 42.069454, 46.682320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549782, -0.357921, -0.754740,
		0.764681, 0.579279, 0.282310,
		0.336160, -0.732344, 0.592173,
		31.672871, 41.849751, 46.859970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175083, 42.288048, 46.255882>,  <31.437559, 42.362392, 46.445450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175083, 42.288048, 46.255882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047146, 41.955982, 46.438541>,  <31.970383, 41.756744, 46.548138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047146, 41.955982, 46.438541>,  <32.175083, 42.288048, 46.255882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047146, 41.955982, 46.438541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468186, -0.557495, -0.685566,
		0.823711, -0.005478, 0.566983,
		-0.319846, -0.830162, 0.456650,
		31.951193, 41.706932, 46.575535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599861, 42.648399, 45.759266>,  <32.175083, 42.288048, 46.255882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599861, 42.648399, 45.759266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272846, 42.819546, 45.605091>,  <32.076637, 42.922234, 45.512589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272846, 42.819546, 45.605091>,  <32.599861, 42.648399, 45.759266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272846, 42.819546, 45.605091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034734, 0.704721, 0.708633,
		0.574826, 0.565947, -0.590998,
		-0.817538, 0.427869, -0.385435,
		32.027584, 42.947906, 45.489460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745239, 43.295471, 45.825733>,  <32.599861, 42.648399, 45.759266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745239, 43.295471, 45.825733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353916, 43.346558, 45.760490>,  <32.119122, 43.377209, 45.721344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353916, 43.346558, 45.760490>,  <32.745239, 43.295471, 45.825733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353916, 43.346558, 45.760490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008464, 0.762040, 0.647475,
		0.206983, 0.634810, -0.744429,
		-0.978308, 0.127716, -0.163102,
		32.060425, 43.384872, 45.711559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709587, 43.966434, 45.764446>,  <32.745239, 43.295471, 45.825733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709587, 43.966434, 45.764446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.342098, 43.827969, 45.840477>,  <32.121605, 43.744888, 45.886093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.342098, 43.827969, 45.840477>,  <32.709587, 43.966434, 45.764446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342098, 43.827969, 45.840477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150466, 0.751830, 0.641959,
		-0.365124, 0.561181, -0.742806,
		-0.918719, -0.346161, 0.190072,
		32.066483, 43.724121, 45.897499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401520, 44.531498, 45.704094>,  <32.709587, 43.966434, 45.764446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401520, 44.531498, 45.704094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125908, 44.317875, 45.900063>,  <31.960541, 44.189701, 46.017643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125908, 44.317875, 45.900063>,  <32.401520, 44.531498, 45.704094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125908, 44.317875, 45.900063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301599, 0.825983, 0.476225,
		-0.658996, 0.180374, -0.730198,
		-0.689030, -0.534057, 0.489919,
		31.919199, 44.157658, 46.047039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763035, 44.931511, 45.643097>,  <32.401520, 44.531498, 45.704094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763035, 44.931511, 45.643097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762875, 44.720642, 45.983002>,  <31.762777, 44.594120, 46.186943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762875, 44.720642, 45.983002>,  <31.763035, 44.931511, 45.643097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762875, 44.720642, 45.983002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325650, 0.803508, 0.498324,
		-0.945490, -0.276524, -0.171996,
		-0.000402, -0.527171, 0.849759,
		31.762754, 44.562492, 46.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161192, 45.152576, 46.060688>,  <31.763035, 44.931511, 45.643097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161192, 45.152576, 46.060688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387617, 44.953167, 46.323307>,  <31.523472, 44.833523, 46.480877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387617, 44.953167, 46.323307>,  <31.161192, 45.152576, 46.060688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387617, 44.953167, 46.323307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182409, 0.700938, 0.689502,
		-0.803928, -0.510061, 0.305839,
		0.566062, -0.498523, 0.656543,
		31.557436, 44.803612, 46.520271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769405, 45.148106, 46.749111>,  <31.161192, 45.152576, 46.060688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769405, 45.148106, 46.749111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.166693, 45.131416, 46.792515>,  <31.405066, 45.121403, 46.818558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.166693, 45.131416, 46.792515>,  <30.769405, 45.148106, 46.749111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166693, 45.131416, 46.792515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041439, 0.745015, 0.665759,
		-0.108622, -0.665741, 0.738234,
		0.993219, -0.041724, 0.108512,
		31.464659, 45.118900, 46.825069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899126, 45.334671, 47.481102>,  <30.769405, 45.148106, 46.749111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899126, 45.334671, 47.481102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268465, 45.366787, 47.330910>,  <31.490068, 45.386055, 47.240795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268465, 45.366787, 47.330910>,  <30.899126, 45.334671, 47.481102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268465, 45.366787, 47.330910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193553, 0.747235, 0.635749,
		0.331612, -0.659692, 0.674418,
		0.923348, 0.080286, -0.375477,
		31.545469, 45.390873, 47.218266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289726, 45.369850, 48.076576>,  <30.899126, 45.334671, 47.481102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289726, 45.369850, 48.076576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.486273, 45.522285, 47.763313>,  <31.604200, 45.613747, 47.575356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.486273, 45.522285, 47.763313>,  <31.289726, 45.369850, 48.076576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486273, 45.522285, 47.763313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047695, 0.886072, 0.461088,
		0.869644, -0.263917, 0.417213,
		0.491369, 0.381084, -0.783154,
		31.633682, 45.636612, 47.528366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.818081, 34.136799, 35.661835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070370, 34.435375, 35.576969>,  <33.221745, 34.614521, 35.526051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070370, 34.435375, 35.576969>,  <32.818081, 34.136799, 35.661835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070370, 34.435375, 35.576969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264453, 0.463789, 0.845555,
		0.729559, -0.477202, 0.489921,
		0.630721, 0.746443, -0.212164,
		33.259586, 34.659309, 35.513321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035454, 34.349918, 36.221550>,  <32.818081, 34.136799, 35.661835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035454, 34.349918, 36.221550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129841, 34.661976, 35.989796>,  <33.186474, 34.849213, 35.850742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129841, 34.661976, 35.989796>,  <33.035454, 34.349918, 36.221550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129841, 34.661976, 35.989796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032869, 0.589473, 0.807119,
		0.971204, -0.209501, 0.113455,
		0.235971, 0.780148, -0.579385,
		33.200634, 34.896019, 35.815979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543343, 34.739170, 36.627926>,  <33.035454, 34.349918, 36.221550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543343, 34.739170, 36.627926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393139, 35.000923, 36.365395>,  <33.303017, 35.157974, 36.207874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393139, 35.000923, 36.365395>,  <33.543343, 34.739170, 36.627926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393139, 35.000923, 36.365395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159839, 0.651819, 0.741338,
		0.912931, 0.383287, -0.140168,
		-0.375510, 0.654387, -0.656331,
		33.280487, 35.197239, 36.168495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892620, 35.475887, 36.746223>,  <33.543343, 34.739170, 36.627926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892620, 35.475887, 36.746223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533035, 35.538567, 36.582607>,  <33.317284, 35.576176, 36.484440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533035, 35.538567, 36.582607>,  <33.892620, 35.475887, 36.746223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533035, 35.538567, 36.582607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235395, 0.614694, 0.752822,
		0.369398, 0.773044, -0.515701,
		-0.898963, 0.156697, -0.409037,
		33.263348, 35.585575, 36.459896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782230, 36.206238, 36.828907>,  <33.892620, 35.475887, 36.746223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782230, 36.206238, 36.828907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405548, 36.093925, 36.754776>,  <33.179539, 36.026539, 36.710297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405548, 36.093925, 36.754776>,  <33.782230, 36.206238, 36.828907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405548, 36.093925, 36.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334915, 0.730247, 0.595459,
		-0.031860, 0.622817, -0.781718,
		-0.941709, -0.280781, -0.185326,
		33.123035, 36.009689, 36.699177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329750, 36.783421, 36.633781>,  <33.782230, 36.206238, 36.828907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329750, 36.783421, 36.633781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071045, 36.519550, 36.786896>,  <32.915821, 36.361229, 36.878765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071045, 36.519550, 36.786896>,  <33.329750, 36.783421, 36.633781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071045, 36.519550, 36.786896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346610, 0.701294, 0.622935,
		-0.679381, 0.270214, -0.682221,
		-0.646763, -0.659675, 0.382788,
		32.877014, 36.321648, 36.901733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668907, 37.107796, 36.502216>,  <33.329750, 36.783421, 36.633781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668907, 37.107796, 36.502216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608212, 36.851208, 36.803013>,  <32.571796, 36.697254, 36.983490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608212, 36.851208, 36.803013>,  <32.668907, 37.107796, 36.502216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608212, 36.851208, 36.803013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317296, 0.752148, 0.577579,
		-0.936109, -0.150964, -0.317664,
		-0.151736, -0.641470, 0.751992,
		32.562691, 36.658768, 37.028610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103672, 37.376263, 36.701290>,  <32.668907, 37.107796, 36.502216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103672, 37.376263, 36.701290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206093, 37.142933, 37.009621>,  <32.267544, 37.002934, 37.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206093, 37.142933, 37.009621>,  <32.103672, 37.376263, 36.701290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206093, 37.142933, 37.009621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316859, 0.702704, 0.637030,
		-0.913257, -0.407354, -0.004904,
		0.256051, -0.583326, 0.770823,
		32.282909, 36.967934, 37.240868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560799, 37.415237, 37.163376>,  <32.103672, 37.376263, 36.701290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560799, 37.415237, 37.163376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821825, 37.253456, 37.419678>,  <31.978441, 37.156387, 37.573460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821825, 37.253456, 37.419678>,  <31.560799, 37.415237, 37.163376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821825, 37.253456, 37.419678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393978, 0.541224, 0.742871,
		-0.647253, -0.737218, 0.193838,
		0.652568, -0.404457, 0.640757,
		32.017597, 37.132118, 37.611904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208864, 37.096420, 37.685574>,  <31.560799, 37.415237, 37.163376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208864, 37.096420, 37.685574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567503, 37.208435, 37.822800>,  <31.782686, 37.275642, 37.905136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567503, 37.208435, 37.822800>,  <31.208864, 37.096420, 37.685574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567503, 37.208435, 37.822800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442804, 0.577827, 0.685596,
		-0.006239, -0.766613, 0.642079,
		0.896597, 0.280038, 0.343064,
		31.836483, 37.292446, 37.925720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205214, 36.967514, 38.346306>,  <31.208864, 37.096420, 37.685574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205214, 36.967514, 38.346306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513315, 37.222572, 38.350731>,  <31.698175, 37.375607, 38.353386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513315, 37.222572, 38.350731>,  <31.205214, 36.967514, 38.346306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513315, 37.222572, 38.350731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395447, 0.463935, 0.792708,
		0.500333, -0.614960, 0.609501,
		0.770253, 0.637643, 0.011063,
		31.744390, 37.413864, 38.354050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422636, 37.107994, 39.004414>,  <31.205214, 36.967514, 38.346306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422636, 37.107994, 39.004414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580196, 37.440983, 38.848553>,  <31.674732, 37.640778, 38.755035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580196, 37.440983, 38.848553>,  <31.422636, 37.107994, 39.004414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580196, 37.440983, 38.848553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187644, 0.487824, 0.852536,
		0.899796, -0.262698, 0.348362,
		0.393899, 0.832476, -0.389649,
		31.698366, 37.690727, 38.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938955, 36.563046, 39.423717>,  <31.422636, 37.107994, 39.004414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938955, 36.563046, 39.423717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639977, 36.511974, 39.684494>,  <31.460590, 36.481331, 39.840958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639977, 36.511974, 39.684494>,  <31.938955, 36.563046, 39.423717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639977, 36.511974, 39.684494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337791, -0.771978, -0.538468,
		0.572033, -0.622694, 0.533882,
		-0.747446, -0.127681, 0.651937,
		31.415743, 36.473671, 39.880074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887949, 35.807652, 39.672291>,  <31.938955, 36.563046, 39.423717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887949, 35.807652, 39.672291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536324, 35.996395, 39.699406>,  <31.325348, 36.109642, 39.715675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536324, 35.996395, 39.699406>,  <31.887949, 35.807652, 39.672291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536324, 35.996395, 39.699406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444333, -0.759536, -0.475051,
		-0.172674, -0.447718, 0.877344,
		-0.879063, 0.471862, 0.067783,
		31.272604, 36.137955, 39.719742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503271, 35.273968, 39.800030>,  <31.887949, 35.807652, 39.672291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503271, 35.273968, 39.800030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223906, 35.541447, 39.697998>,  <31.056286, 35.701935, 39.636780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223906, 35.541447, 39.697998>,  <31.503271, 35.273968, 39.800030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223906, 35.541447, 39.697998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300984, -0.597790, -0.743004,
		-0.649329, -0.442147, 0.618771,
		-0.698412, 0.668695, -0.255084,
		31.014381, 35.742054, 39.621475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877501, 34.822937, 39.669006>,  <31.503271, 35.273968, 39.800030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877501, 34.822937, 39.669006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772793, 35.181915, 39.526981>,  <30.709969, 35.397301, 39.441769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772793, 35.181915, 39.526981>,  <30.877501, 34.822937, 39.669006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772793, 35.181915, 39.526981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564869, -0.440758, -0.697607,
		-0.782560, 0.017949, 0.622317,
		-0.261769, 0.897447, -0.355058,
		30.694262, 35.451149, 39.420464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106844, 34.650097, 39.471359>,  <30.877501, 34.822937, 39.669006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106844, 34.650097, 39.471359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253399, 34.982323, 39.303589>,  <30.341331, 35.181660, 39.202927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253399, 34.982323, 39.303589>,  <30.106844, 34.650097, 39.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253399, 34.982323, 39.303589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533879, -0.181536, -0.825844,
		-0.762059, 0.526504, 0.376909,
		0.366387, 0.830565, -0.419430,
		30.363316, 35.231491, 39.177761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648998, 35.161358, 39.418041>,  <30.106844, 34.650097, 39.471359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648998, 35.161358, 39.418041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907839, 35.226288, 39.120071>,  <30.063143, 35.265247, 38.941292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907839, 35.226288, 39.120071>,  <29.648998, 35.161358, 39.418041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907839, 35.226288, 39.120071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711145, -0.223699, -0.666507,
		-0.274830, 0.961046, -0.029318,
		0.647102, 0.162327, -0.744922,
		30.101969, 35.274986, 38.896595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180780, 35.478352, 38.905491>,  <29.648998, 35.161358, 39.418041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180780, 35.478352, 38.905491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505814, 35.373432, 38.697296>,  <29.700834, 35.310482, 38.572380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505814, 35.373432, 38.697296>,  <29.180780, 35.478352, 38.905491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505814, 35.373432, 38.697296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576886, -0.234575, -0.782417,
		0.083134, 0.936041, -0.341929,
		0.812583, -0.262300, -0.520488,
		29.749588, 35.294743, 38.541149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094791, 35.800068, 38.252861>,  <29.180780, 35.478352, 38.905491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094791, 35.800068, 38.252861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339222, 35.491547, 38.181671>,  <29.485880, 35.306435, 38.138958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339222, 35.491547, 38.181671>,  <29.094791, 35.800068, 38.252861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339222, 35.491547, 38.181671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541832, -0.243668, -0.804390,
		0.577062, 0.587977, -0.566818,
		0.611079, -0.771303, -0.177973,
		29.522545, 35.260155, 38.128281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038073, 35.737129, 37.514202>,  <29.094791, 35.800068, 38.252861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038073, 35.737129, 37.514202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234030, 35.407188, 37.627071>,  <29.351604, 35.209225, 37.694794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234030, 35.407188, 37.627071>,  <29.038073, 35.737129, 37.514202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234030, 35.407188, 37.627071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525780, -0.537733, -0.659090,
		0.695385, 0.174524, -0.697123,
		0.489893, -0.824854, 0.282170,
		29.380999, 35.159733, 37.711723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222271, 35.412037, 36.939346>,  <29.038073, 35.737129, 37.514202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222271, 35.412037, 36.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218382, 35.135597, 37.228424>,  <29.216049, 34.969734, 37.401871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218382, 35.135597, 37.228424>,  <29.222271, 35.412037, 36.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218382, 35.135597, 37.228424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386835, -0.663859, -0.640039,
		0.922098, -0.285787, -0.260887,
		-0.009723, -0.691099, 0.722695,
		29.215466, 34.928268, 37.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497574, 34.823002, 36.643536>,  <29.222271, 35.412037, 36.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497574, 34.823002, 36.643536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277536, 34.699150, 36.953766>,  <29.145514, 34.624840, 37.139904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277536, 34.699150, 36.953766>,  <29.497574, 34.823002, 36.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277536, 34.699150, 36.953766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496307, -0.625701, -0.601812,
		0.671621, -0.715980, 0.190523,
		-0.550095, -0.309632, 0.775580,
		29.112509, 34.606262, 37.186440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640856, 34.117294, 36.738720>,  <29.497574, 34.823002, 36.643536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640856, 34.117294, 36.738720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304819, 34.166809, 36.949970>,  <29.103197, 34.196518, 37.076721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304819, 34.166809, 36.949970>,  <29.640856, 34.117294, 36.738720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304819, 34.166809, 36.949970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360994, -0.854290, -0.373995,
		0.404878, -0.504842, 0.762370,
		-0.840093, 0.123789, 0.528129,
		29.052792, 34.203945, 37.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514854, 33.461510, 37.018013>,  <29.640856, 34.117294, 36.738720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514854, 33.461510, 37.018013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159107, 33.643158, 36.996861>,  <28.945658, 33.752148, 36.984169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159107, 33.643158, 36.996861>,  <29.514854, 33.461510, 37.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159107, 33.643158, 36.996861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446072, -0.887272, -0.117333,
		-0.100206, -0.080761, 0.991683,
		-0.889369, 0.454120, -0.052885,
		28.892296, 33.779392, 36.980995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921486, 33.026104, 37.321529>,  <29.514854, 33.461510, 37.018013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921486, 33.026104, 37.321529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716698, 33.278126, 37.087978>,  <28.593824, 33.429340, 36.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716698, 33.278126, 37.087978>,  <28.921486, 33.026104, 37.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716698, 33.278126, 37.087978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529993, -0.766608, -0.362520,
		-0.676012, 0.123849, 0.726408,
		-0.511972, 0.630059, -0.583875,
		28.563107, 33.467144, 36.912815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628939, 33.078800, 37.602024>,  <28.921486, 33.026104, 37.321529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628939, 33.078800, 37.602024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651501, 32.710320, 37.756008>,  <29.665039, 32.489231, 37.848400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651501, 32.710320, 37.756008>,  <29.628939, 33.078800, 37.602024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651501, 32.710320, 37.756008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437366, 0.369413, 0.819905,
		-0.897513, 0.122122, 0.423742,
		0.056407, -0.921206, 0.384965,
		29.668423, 32.433956, 37.871498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355228, 32.995461, 38.297188>,  <29.628939, 33.078800, 37.602024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355228, 32.995461, 38.297188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635174, 32.718315, 38.227749>,  <29.803143, 32.552029, 38.186085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635174, 32.718315, 38.227749>,  <29.355228, 32.995461, 38.297188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635174, 32.718315, 38.227749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505148, 0.308295, 0.806089,
		-0.504988, -0.651844, 0.565762,
		0.699866, -0.692859, -0.173593,
		29.845133, 32.510456, 38.175671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476048, 32.663620, 38.929371>,  <29.355228, 32.995461, 38.297188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476048, 32.663620, 38.929371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817463, 32.641792, 38.722107>,  <30.022312, 32.628696, 38.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817463, 32.641792, 38.722107>,  <29.476048, 32.663620, 38.929371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817463, 32.641792, 38.722107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513074, 0.261142, 0.817655,
		0.090691, -0.963757, 0.250896,
		0.853540, -0.054574, -0.518161,
		30.073524, 32.625420, 38.566658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946753, 32.372673, 39.448936>,  <29.476048, 32.663620, 38.929371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946753, 32.372673, 39.448936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130457, 32.579403, 39.159946>,  <30.240681, 32.703442, 38.986553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130457, 32.579403, 39.159946>,  <29.946753, 32.372673, 39.448936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130457, 32.579403, 39.159946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656188, 0.350819, 0.668089,
		0.598745, -0.780906, -0.178020,
		0.459262, 0.516829, -0.722472,
		30.268236, 32.734451, 38.943203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602007, 32.116932, 39.263687>,  <29.946753, 32.372673, 39.448936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602007, 32.116932, 39.263687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555880, 32.512585, 39.227200>,  <30.528204, 32.749977, 39.205307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555880, 32.512585, 39.227200>,  <30.602007, 32.116932, 39.263687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555880, 32.512585, 39.227200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622454, 0.143524, 0.769384,
		0.774114, 0.031942, -0.632240,
		-0.115317, 0.989131, -0.091222,
		30.521284, 32.809322, 39.199833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236063, 32.319077, 39.601162>,  <30.602007, 32.116932, 39.263687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236063, 32.319077, 39.601162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019161, 32.647587, 39.530197>,  <30.889021, 32.844692, 39.487617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019161, 32.647587, 39.530197>,  <31.236063, 32.319077, 39.601162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019161, 32.647587, 39.530197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443906, 0.459302, 0.769409,
		0.713379, 0.338459, -0.613625,
		-0.542252, 0.821272, -0.177412,
		30.856485, 32.893967, 39.476974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728745, 32.684792, 39.682545>,  <31.236063, 32.319077, 39.601162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728745, 32.684792, 39.682545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408079, 32.923153, 39.701485>,  <31.215681, 33.066170, 39.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408079, 32.923153, 39.701485>,  <31.728745, 32.684792, 39.682545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408079, 32.923153, 39.701485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402694, 0.479802, 0.779505,
		0.441789, 0.643967, -0.624604,
		-0.801661, 0.595900, 0.047350,
		31.167582, 33.101925, 39.715691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071465, 33.375755, 39.883781>,  <31.728745, 32.684792, 39.682545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071465, 33.375755, 39.883781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676971, 33.367741, 39.949448>,  <31.440277, 33.362930, 39.988850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676971, 33.367741, 39.949448>,  <32.071465, 33.375755, 39.883781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676971, 33.367741, 39.949448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128024, 0.535934, 0.834497,
		-0.104703, 0.844022, -0.525988,
		-0.986229, -0.020035, 0.164169,
		31.381104, 33.361729, 39.998699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910103, 34.168961, 40.020321>,  <32.071465, 33.375755, 39.883781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910103, 34.168961, 40.020321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644909, 33.914227, 40.177742>,  <31.485792, 33.761387, 40.272194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644909, 33.914227, 40.177742>,  <31.910103, 34.168961, 40.020321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644909, 33.914227, 40.177742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197933, 0.357882, 0.912548,
		-0.721992, 0.682904, -0.111220,
		-0.662986, -0.636838, 0.393557,
		31.446012, 33.723175, 40.295811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570217, 34.580402, 40.549706>,  <31.910103, 34.168961, 40.020321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570217, 34.580402, 40.549706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504179, 34.194126, 40.629898>,  <31.464556, 33.962360, 40.678013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504179, 34.194126, 40.629898>,  <31.570217, 34.580402, 40.549706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504179, 34.194126, 40.629898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156746, 0.174998, 0.972012,
		-0.973742, 0.191901, 0.122475,
		-0.165097, -0.965686, 0.200483,
		31.454651, 33.904419, 40.690044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016136, 34.579388, 41.096016>,  <31.570217, 34.580402, 40.549706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016136, 34.579388, 41.096016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212835, 34.231094, 41.094830>,  <31.330854, 34.022118, 41.094116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212835, 34.231094, 41.094830>,  <31.016136, 34.579388, 41.096016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212835, 34.231094, 41.094830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166365, 0.090607, 0.981892,
		-0.854697, -0.483337, 0.189415,
		0.491747, -0.870733, -0.002968,
		31.360359, 33.969875, 41.093941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798067, 34.232941, 41.749577>,  <31.016136, 34.579388, 41.096016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798067, 34.232941, 41.749577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145071, 34.074551, 41.629158>,  <31.353273, 33.979515, 41.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145071, 34.074551, 41.629158>,  <30.798067, 34.232941, 41.749577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145071, 34.074551, 41.629158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257163, -0.161035, 0.952856,
		-0.425791, -0.904029, -0.037867,
		0.867508, -0.395980, -0.301050,
		31.405323, 33.955757, 41.538841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983208, 33.796314, 42.252441>,  <30.798067, 34.232941, 41.749577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983208, 33.796314, 42.252441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339661, 33.870377, 42.086746>,  <31.553534, 33.914814, 41.987328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339661, 33.870377, 42.086746>,  <30.983208, 33.796314, 42.252441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339661, 33.870377, 42.086746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376367, 0.208283, 0.902755,
		0.253436, -0.960382, 0.115919,
		0.891133, 0.185162, -0.414242,
		31.607000, 33.925922, 41.962475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375572, 33.476448, 42.689682>,  <30.983208, 33.796314, 42.252441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375572, 33.476448, 42.689682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630285, 33.705345, 42.482979>,  <31.783113, 33.842686, 42.358955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630285, 33.705345, 42.482979>,  <31.375572, 33.476448, 42.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630285, 33.705345, 42.482979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400389, 0.327350, 0.855880,
		0.658936, -0.751915, -0.020670,
		0.636783, 0.572247, -0.516761,
		31.821320, 33.877018, 42.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119560, 33.352013, 43.016483>,  <31.375572, 33.476448, 42.689682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119560, 33.352013, 43.016483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120323, 33.692493, 42.806549>,  <32.120781, 33.896782, 42.680588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120323, 33.692493, 42.806549>,  <32.119560, 33.352013, 43.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120323, 33.692493, 42.806549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443282, 0.469731, 0.763449,
		0.896380, -0.234103, -0.376428,
		0.001906, 0.851204, -0.524831,
		32.120895, 33.947853, 42.649101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859009, 33.636383, 42.965698>,  <32.119560, 33.352013, 43.016483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859009, 33.636383, 42.965698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604172, 33.936584, 42.895439>,  <32.451267, 34.116707, 42.853283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604172, 33.936584, 42.895439>,  <32.859009, 33.636383, 42.965698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604172, 33.936584, 42.895439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319845, 0.464744, 0.825659,
		0.701291, 0.469845, -0.536132,
		-0.637096, 0.750506, -0.175643,
		32.413044, 34.161736, 42.842747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289314, 34.139122, 43.076118>,  <32.859009, 33.636383, 42.965698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289314, 34.139122, 43.076118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949104, 34.347656, 43.103889>,  <32.744980, 34.472775, 43.120552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949104, 34.347656, 43.103889>,  <33.289314, 34.139122, 43.076118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949104, 34.347656, 43.103889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323574, 0.414619, 0.850524,
		0.414619, 0.745857, -0.521333,
		-0.850524, 0.521333, 0.069431,
		32.693947, 34.504055, 43.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392216, 34.868488, 43.194054>,  <33.289314, 34.139122, 43.076118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392216, 34.868488, 43.194054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022972, 34.842663, 43.345680>,  <32.801426, 34.827168, 43.436657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022972, 34.842663, 43.345680>,  <33.392216, 34.868488, 43.194054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022972, 34.842663, 43.345680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306836, 0.470477, 0.827347,
		-0.231761, 0.880047, -0.414493,
		-0.923113, -0.064566, 0.379069,
		32.746037, 34.823292, 43.459400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206676, 35.446022, 43.379269>,  <33.392216, 34.868488, 43.194054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206676, 35.446022, 43.379269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933750, 35.233742, 43.580387>,  <32.769997, 35.106373, 43.701057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933750, 35.233742, 43.580387>,  <33.206676, 35.446022, 43.379269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933750, 35.233742, 43.580387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109783, 0.605586, 0.788171,
		-0.722770, 0.592978, -0.354937,
		-0.682313, -0.530700, 0.502798,
		32.729057, 35.074532, 43.731228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613220, 35.888298, 43.594910>,  <33.206676, 35.446022, 43.379269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613220, 35.888298, 43.594910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623802, 35.563248, 43.827782>,  <32.630150, 35.368217, 43.967506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623802, 35.563248, 43.827782>,  <32.613220, 35.888298, 43.594910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623802, 35.563248, 43.827782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264959, 0.567258, 0.779753,
		-0.963897, 0.133626, 0.230320,
		0.026456, -0.812627, 0.582183,
		32.631741, 35.319458, 44.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269058, 36.083527, 44.190441>,  <32.613220, 35.888298, 43.594910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269058, 36.083527, 44.190441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465603, 35.757488, 44.313198>,  <32.583530, 35.561867, 44.386852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465603, 35.757488, 44.313198>,  <32.269058, 36.083527, 44.190441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465603, 35.757488, 44.313198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231581, 0.461953, 0.856137,
		-0.839601, -0.349605, 0.415748,
		0.491366, -0.815093, 0.306894,
		32.613014, 35.512962, 44.405266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963799, 35.907867, 44.841537>,  <32.269058, 36.083527, 44.190441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963799, 35.907867, 44.841537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332176, 35.753544, 44.819572>,  <32.553204, 35.660950, 44.806393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332176, 35.753544, 44.819572>,  <31.963799, 35.907867, 44.841537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332176, 35.753544, 44.819572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297535, 0.605127, 0.738441,
		-0.251665, -0.696401, 0.672079,
		0.920944, -0.385807, -0.054914,
		32.608459, 35.637802, 44.803097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139210, 35.805111, 45.522476>,  <31.963799, 35.907867, 44.841537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139210, 35.805111, 45.522476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502800, 35.783634, 45.357124>,  <32.720955, 35.770748, 45.257915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502800, 35.783634, 45.357124>,  <32.139210, 35.805111, 45.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502800, 35.783634, 45.357124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389412, 0.463205, 0.796115,
		0.148728, -0.884623, 0.441953,
		0.908976, -0.053697, -0.413375,
		32.775494, 35.767525, 45.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544258, 35.686443, 46.053646>,  <32.139210, 35.805111, 45.522476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544258, 35.686443, 46.053646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811325, 35.807343, 45.781509>,  <32.971565, 35.879883, 45.618229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811325, 35.807343, 45.781509>,  <32.544258, 35.686443, 46.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811325, 35.807343, 45.781509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371418, 0.656772, 0.656277,
		0.645191, -0.690865, 0.326242,
		0.667665, 0.302252, -0.680344,
		33.011627, 35.898018, 45.577408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217045, 35.675632, 46.313766>,  <32.544258, 35.686443, 46.053646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217045, 35.675632, 46.313766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244080, 35.942562, 46.017090>,  <33.260300, 36.102718, 45.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244080, 35.942562, 46.017090>,  <33.217045, 35.675632, 46.313766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244080, 35.942562, 46.017090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254093, 0.707371, 0.659593,
		0.964816, -0.233037, -0.121756,
		0.067583, 0.667323, -0.741696,
		33.264355, 36.142757, 45.794582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806095, 36.021133, 46.460495>,  <33.217045, 35.675632, 46.313766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806095, 36.021133, 46.460495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591774, 36.258892, 46.220627>,  <33.463181, 36.401546, 46.076706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591774, 36.258892, 46.220627>,  <33.806095, 36.021133, 46.460495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591774, 36.258892, 46.220627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220134, 0.784001, 0.580417,
		0.815140, 0.178983, -0.550919,
		-0.535806, 0.594397, -0.599670,
		33.431034, 36.437210, 46.040726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109558, 36.603008, 46.576439>,  <33.806095, 36.021133, 46.460495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109558, 36.603008, 46.576439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786465, 36.732723, 46.379501>,  <33.592609, 36.810551, 46.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786465, 36.732723, 46.379501>,  <34.109558, 36.603008, 46.576439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786465, 36.732723, 46.379501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078936, 0.887097, 0.454783,
		0.584238, 0.328480, -0.742137,
		-0.807735, 0.324283, -0.492346,
		33.544144, 36.830009, 46.231796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282188, 37.249638, 46.301044>,  <34.109558, 36.603008, 46.576439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282188, 37.249638, 46.301044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882622, 37.250370, 46.319679>,  <33.642883, 37.250809, 46.330860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882622, 37.250370, 46.319679>,  <34.282188, 37.249638, 46.301044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882622, 37.250370, 46.319679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024946, 0.865147, 0.500898,
		-0.039392, 0.501515, -0.864251,
		-0.998912, 0.001828, 0.046590,
		33.582947, 37.250919, 46.333656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695812, 37.688309, 45.836136>,  <34.282188, 37.249638, 46.301044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695812, 37.688309, 45.836136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017757, 37.911060, 45.754082>,  <35.210922, 38.044712, 45.704849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017757, 37.911060, 45.754082>,  <34.695812, 37.688309, 45.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017757, 37.911060, 45.754082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157852, -0.534088, -0.830562,
		-0.572086, 0.636106, -0.517771,
		0.804861, 0.556884, -0.205133,
		35.259216, 38.078125, 45.692543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716564, 37.931297, 45.072536>,  <34.695812, 37.688309, 45.836136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716564, 37.931297, 45.072536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094875, 37.952637, 45.200699>,  <35.321861, 37.965439, 45.277596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094875, 37.952637, 45.200699>,  <34.716564, 37.931297, 45.072536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094875, 37.952637, 45.200699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307605, -0.463954, -0.830738,
		0.104338, 0.884252, -0.455206,
		0.945776, 0.053347, 0.320408,
		35.378609, 37.968639, 45.296822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088551, 37.989544, 44.538280>,  <34.716564, 37.931297, 45.072536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088551, 37.989544, 44.538280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373089, 37.875149, 44.795094>,  <35.543812, 37.806511, 44.949181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373089, 37.875149, 44.795094>,  <35.088551, 37.989544, 44.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373089, 37.875149, 44.795094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431979, -0.542675, -0.720346,
		0.554421, 0.789757, -0.262489,
		0.711345, -0.285985, 0.642029,
		35.586491, 37.789352, 44.987701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680756, 38.203182, 44.161518>,  <35.088551, 37.989544, 44.538280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680756, 38.203182, 44.161518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760094, 37.913860, 44.426090>,  <35.807697, 37.740269, 44.584835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760094, 37.913860, 44.426090>,  <35.680756, 38.203182, 44.161518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760094, 37.913860, 44.426090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347132, -0.579258, -0.737537,
		0.916603, 0.375888, 0.136190,
		0.198342, -0.723304, 0.661432,
		35.819595, 37.696869, 44.624519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431755, 37.959728, 44.102379>,  <35.680756, 38.203182, 44.161518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431755, 37.959728, 44.102379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198837, 37.677547, 44.264004>,  <36.059086, 37.508240, 44.360981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198837, 37.677547, 44.264004>,  <36.431755, 37.959728, 44.102379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198837, 37.677547, 44.264004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338635, -0.662315, -0.668330,
		0.739096, -0.252332, 0.624552,
		-0.582291, -0.705455, 0.404067,
		36.024151, 37.465912, 44.385223>
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
