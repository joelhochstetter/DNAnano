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
	<24.605944, 34.729614, 34.852634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355587, 34.992241, 35.021008>,  <24.205374, 35.149815, 35.122032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355587, 34.992241, 35.021008>,  <24.605944, 34.729614, 34.852634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355587, 34.992241, 35.021008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495252, -0.082350, 0.864838,
		0.602484, 0.749763, -0.273622,
		-0.625890, 0.656562, 0.420936,
		24.167820, 35.189209, 35.147289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122351, 35.135345, 35.200562>,  <24.605944, 34.729614, 34.852634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122351, 35.135345, 35.200562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753428, 35.176319, 35.349613>,  <24.532074, 35.200901, 35.439045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753428, 35.176319, 35.349613>,  <25.122351, 35.135345, 35.200562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753428, 35.176319, 35.349613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358617, -0.132487, 0.924035,
		0.144018, 0.985878, 0.085461,
		-0.922309, 0.102429, 0.372633,
		24.476734, 35.207047, 35.461403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251984, 34.937717, 35.856949>,  <25.122351, 35.135345, 35.200562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251984, 34.937717, 35.856949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861256, 34.997215, 35.918526>,  <24.626820, 35.032913, 35.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861256, 34.997215, 35.918526>,  <25.251984, 34.937717, 35.856949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861256, 34.997215, 35.918526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126648, -0.178205, 0.975809,
		0.172583, 0.972685, 0.155235,
		-0.976819, 0.148748, 0.153944,
		24.568211, 35.041840, 35.964710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649004, 35.555302, 36.224236>,  <25.251984, 34.937717, 35.856949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649004, 35.555302, 36.224236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857344, 35.828102, 36.018871>,  <25.982347, 35.991783, 35.895653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857344, 35.828102, 36.018871>,  <25.649004, 35.555302, 36.224236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857344, 35.828102, 36.018871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645011, -0.708379, -0.286635,
		-0.559173, -0.181859, -0.808859,
		0.520851, 0.682002, -0.513407,
		26.013599, 36.032703, 35.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040504, 35.275639, 35.636536>,  <25.649004, 35.555302, 36.224236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040504, 35.275639, 35.636536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279881, 35.595619, 35.654202>,  <26.423506, 35.787605, 35.664799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279881, 35.595619, 35.654202>,  <26.040504, 35.275639, 35.636536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279881, 35.595619, 35.654202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641747, -0.445634, -0.624156,
		-0.479613, 0.401862, -0.780050,
		0.598441, 0.799949, 0.044162,
		26.459414, 35.835606, 35.667450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117887, 35.627792, 34.945938>,  <26.040504, 35.275639, 35.636536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117887, 35.627792, 34.945938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432905, 35.654167, 35.191029>,  <26.621916, 35.669991, 35.338081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432905, 35.654167, 35.191029>,  <26.117887, 35.627792, 34.945938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432905, 35.654167, 35.191029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576571, -0.429880, -0.694816,
		0.217586, 0.900475, -0.376564,
		0.787542, 0.065933, 0.612724,
		26.669168, 35.673946, 35.374847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690680, 35.880260, 34.561436>,  <26.117887, 35.627792, 34.945938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690680, 35.880260, 34.561436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872787, 35.722469, 34.880714>,  <26.982052, 35.627792, 35.072281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872787, 35.722469, 34.880714>,  <26.690680, 35.880260, 34.561436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872787, 35.722469, 34.880714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592721, -0.534683, -0.602325,
		0.664387, 0.747327, -0.009608,
		0.455271, -0.394482, 0.798193,
		27.009369, 35.604126, 35.120171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485645, 35.875362, 34.416203>,  <26.690680, 35.880260, 34.561436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485645, 35.875362, 34.416203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405376, 35.612938, 34.707218>,  <27.357216, 35.455482, 34.881828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405376, 35.612938, 34.707218>,  <27.485645, 35.875362, 34.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405376, 35.612938, 34.707218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561705, -0.685499, -0.463227,
		0.802632, 0.315706, 0.506075,
		-0.200670, -0.656065, 0.727537,
		27.345175, 35.416119, 34.925480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046066, 35.558277, 34.443668>,  <27.485645, 35.875362, 34.416203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046066, 35.558277, 34.443668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794844, 35.296181, 34.611576>,  <27.644110, 35.138924, 34.712322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794844, 35.296181, 34.611576>,  <28.046066, 35.558277, 34.443668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794844, 35.296181, 34.611576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520914, -0.754754, -0.398742,
		0.578095, -0.031768, 0.815351,
		-0.628056, -0.655238, 0.419771,
		27.606426, 35.099609, 34.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473545, 34.965431, 34.792206>,  <28.046066, 35.558277, 34.443668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473545, 34.965431, 34.792206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110966, 34.798332, 34.767403>,  <27.893419, 34.698074, 34.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110966, 34.798332, 34.767403>,  <28.473545, 34.965431, 34.792206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110966, 34.798332, 34.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414303, -0.851122, -0.322404,
		0.081905, -0.317933, 0.944569,
		-0.906446, -0.417744, -0.062009,
		27.839031, 34.673008, 34.748798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523468, 34.272694, 35.159477>,  <28.473545, 34.965431, 34.792206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523468, 34.272694, 35.159477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220421, 34.261421, 34.898643>,  <28.038591, 34.254658, 34.742142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220421, 34.261421, 34.898643>,  <28.523468, 34.272694, 35.159477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220421, 34.261421, 34.898643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374077, -0.837451, -0.398425,
		-0.534864, -0.545786, 0.645010,
		-0.757619, -0.028180, -0.652088,
		27.993135, 34.252968, 34.703018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444353, 33.536907, 34.999123>,  <28.523468, 34.272694, 35.159477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444353, 33.536907, 34.999123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234564, 33.704174, 34.702457>,  <28.108690, 33.804535, 34.524460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234564, 33.704174, 34.702457>,  <28.444353, 33.536907, 34.999123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234564, 33.704174, 34.702457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141623, -0.816100, -0.560289,
		-0.839566, -0.398892, 0.368799,
		-0.524472, 0.418169, -0.741663,
		28.077221, 33.829624, 34.479958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889456, 32.983646, 34.792774>,  <28.444353, 33.536907, 34.999123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889456, 32.983646, 34.792774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991732, 33.245533, 34.508247>,  <28.053097, 33.402664, 34.337532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991732, 33.245533, 34.508247>,  <27.889456, 32.983646, 34.792774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991732, 33.245533, 34.508247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137524, -0.752924, -0.643578,
		-0.956927, 0.066735, -0.282556,
		0.255692, 0.654715, -0.711315,
		28.068439, 33.441948, 34.294853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485058, 32.763222, 34.179249>,  <27.889456, 32.983646, 34.792774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485058, 32.763222, 34.179249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823906, 32.959095, 34.096687>,  <28.027214, 33.076618, 34.047150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823906, 32.959095, 34.096687>,  <27.485058, 32.763222, 34.179249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823906, 32.959095, 34.096687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288289, -0.749769, -0.595597,
		-0.446407, 0.445038, -0.776314,
		0.847119, 0.489681, -0.206403,
		28.078041, 33.105999, 34.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587820, 32.399303, 33.580395>,  <27.485058, 32.763222, 34.179249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587820, 32.399303, 33.580395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928638, 32.602386, 33.631393>,  <28.133129, 32.724236, 33.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928638, 32.602386, 33.631393>,  <27.587820, 32.399303, 33.580395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928638, 32.602386, 33.631393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465523, -0.623522, -0.628100,
		-0.239393, 0.594521, -0.767617,
		0.852044, 0.507706, 0.127496,
		28.184252, 32.754700, 33.669643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818111, 32.566135, 32.863178>,  <27.587820, 32.399303, 33.580395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818111, 32.566135, 32.863178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139997, 32.583134, 33.100033>,  <28.333130, 32.593334, 33.242146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139997, 32.583134, 33.100033>,  <27.818111, 32.566135, 32.863178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139997, 32.583134, 33.100033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523624, -0.520795, -0.674234,
		0.279729, 0.852624, -0.441344,
		0.804717, 0.042495, 0.592136,
		28.381413, 32.595882, 33.277672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454062, 32.631172, 32.428959>,  <27.818111, 32.566135, 32.863178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454062, 32.631172, 32.428959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607224, 32.468800, 32.760887>,  <28.699121, 32.371376, 32.960045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607224, 32.468800, 32.760887>,  <28.454062, 32.631172, 32.428959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607224, 32.468800, 32.760887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522348, -0.645755, -0.556914,
		0.761929, 0.646702, -0.035227,
		0.382906, -0.405928, 0.829823,
		28.722095, 32.347023, 33.009834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189346, 32.421391, 32.374363>,  <28.454062, 32.631172, 32.428959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189346, 32.421391, 32.374363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097092, 32.200233, 32.694641>,  <29.041739, 32.067539, 32.886806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097092, 32.200233, 32.694641>,  <29.189346, 32.421391, 32.374363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097092, 32.200233, 32.694641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533017, -0.760225, -0.371418,
		0.814064, 0.341121, 0.470039,
		-0.230637, -0.552897, 0.800694,
		29.027901, 32.034363, 32.934849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758463, 32.023792, 32.651245>,  <29.189346, 32.421391, 32.374363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758463, 32.023792, 32.651245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464903, 31.826872, 32.838451>,  <29.288767, 31.708721, 32.950775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464903, 31.826872, 32.838451>,  <29.758463, 32.023792, 32.651245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464903, 31.826872, 32.838451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476492, -0.864161, -0.161806,
		0.484096, 0.104256, 0.868782,
		-0.733898, -0.492297, 0.468014,
		29.244734, 31.679182, 32.978855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117895, 31.590519, 33.186466>,  <29.758463, 32.023792, 32.651245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117895, 31.590519, 33.186466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770889, 31.430969, 33.067596>,  <29.562685, 31.335239, 32.996273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770889, 31.430969, 33.067596>,  <30.117895, 31.590519, 33.186466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770889, 31.430969, 33.067596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468654, -0.855641, -0.219639,
		-0.166668, -0.329814, 0.929217,
		-0.867517, -0.398875, -0.297176,
		29.510633, 31.311306, 32.978443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218964, 30.854822, 33.385880>,  <30.117895, 31.590519, 33.186466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218964, 30.854822, 33.385880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913372, 30.805574, 33.132526>,  <29.730017, 30.776026, 32.980515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913372, 30.805574, 33.132526>,  <30.218964, 30.854822, 33.385880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913372, 30.805574, 33.132526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204533, -0.977214, -0.056746,
		-0.611967, -0.172901, 0.771752,
		-0.763978, -0.123122, -0.633386,
		29.684179, 30.768639, 32.942509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810333, 30.290979, 33.643471>,  <30.218964, 30.854822, 33.385880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810333, 30.290979, 33.643471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688183, 30.347385, 33.266777>,  <29.614893, 30.381229, 33.040760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688183, 30.347385, 33.266777>,  <29.810333, 30.290979, 33.643471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688183, 30.347385, 33.266777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033787, -0.989956, -0.137282,
		-0.951632, -0.010104, 0.307074,
		-0.305377, 0.141017, -0.941732,
		29.596569, 30.389690, 32.984257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114618, 29.988522, 33.604004>,  <29.810333, 30.290979, 33.643471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114618, 29.988522, 33.604004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238045, 29.993717, 33.223557>,  <29.312099, 29.996834, 32.995289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238045, 29.993717, 33.223557>,  <29.114618, 29.988522, 33.604004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238045, 29.993717, 33.223557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163816, -0.984241, -0.066586,
		-0.936991, 0.176354, -0.301575,
		0.308565, 0.012988, -0.951115,
		29.330614, 29.997614, 32.938221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720837, 29.571966, 33.149879>,  <29.114618, 29.988522, 33.604004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720837, 29.571966, 33.149879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025312, 29.609695, 32.893227>,  <29.207998, 29.632334, 32.739235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025312, 29.609695, 32.893227>,  <28.720837, 29.571966, 33.149879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025312, 29.609695, 32.893227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038896, -0.980946, -0.190347,
		-0.647361, 0.169848, -0.743018,
		0.761190, 0.094323, -0.641632,
		29.253670, 29.637993, 32.700737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510290, 29.314041, 32.531345>,  <28.720837, 29.571966, 33.149879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510290, 29.314041, 32.531345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910261, 29.313124, 32.536098>,  <29.150244, 29.312574, 32.538952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910261, 29.313124, 32.536098>,  <28.510290, 29.314041, 32.531345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910261, 29.313124, 32.536098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000087, -0.980519, -0.196426,
		0.012105, 0.196413, -0.980447,
		0.999927, -0.002292, 0.011887,
		29.210239, 29.312435, 32.539665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805317, 28.907192, 31.961510>,  <28.510290, 29.314041, 32.531345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805317, 28.907192, 31.961510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060038, 28.921322, 32.269596>,  <29.212870, 28.929800, 32.454449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060038, 28.921322, 32.269596>,  <28.805317, 28.907192, 31.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060038, 28.921322, 32.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213633, -0.967923, -0.132238,
		0.740839, 0.248753, -0.623922,
		0.636803, 0.035324, 0.770217,
		29.251078, 28.931919, 32.500660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635708, 28.825686, 31.783907>,  <28.805317, 28.907192, 31.961510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635708, 28.825686, 31.783907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462610, 28.674250, 32.111176>,  <29.358751, 28.583389, 32.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462610, 28.674250, 32.111176>,  <29.635708, 28.825686, 31.783907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462610, 28.674250, 32.111176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321055, -0.912767, -0.252549,
		0.842410, 0.153389, 0.516543,
		-0.432745, -0.378589, 0.818170,
		29.332787, 28.560673, 32.356628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035269, 28.339550, 31.494930>,  <29.635708, 28.825686, 31.783907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035269, 28.339550, 31.494930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721031, 28.103853, 31.419416>,  <29.532490, 27.962435, 31.374107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721031, 28.103853, 31.419416>,  <30.035269, 28.339550, 31.494930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721031, 28.103853, 31.419416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056312, 0.371932, -0.926550,
		0.616176, -0.717260, -0.325369,
		-0.785593, -0.589240, -0.188785,
		29.485353, 27.927082, 31.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013336, 27.740295, 31.992994>,  <30.035269, 28.339550, 31.494930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013336, 27.740295, 31.992994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728683, 27.858908, 32.247757>,  <29.557892, 27.930075, 32.400616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728683, 27.858908, 32.247757>,  <30.013336, 27.740295, 31.992994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728683, 27.858908, 32.247757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225281, -0.762377, 0.606655,
		0.665455, 0.575198, 0.475729,
		-0.711631, 0.296529, 0.636908,
		29.515194, 27.947866, 32.438828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112247, 27.498432, 32.670761>,  <30.013336, 27.740295, 31.992994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112247, 27.498432, 32.670761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715916, 27.551725, 32.661739>,  <29.478117, 27.583702, 32.656326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715916, 27.551725, 32.661739>,  <30.112247, 27.498432, 32.670761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715916, 27.551725, 32.661739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123245, -0.822583, 0.555129,
		0.055410, 0.552817, 0.831459,
		-0.990828, 0.133233, -0.022553,
		29.418667, 27.591696, 32.654972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863312, 27.524176, 33.409626>,  <30.112247, 27.498432, 32.670761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863312, 27.524176, 33.409626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610319, 27.412876, 33.120476>,  <29.458525, 27.346096, 32.946987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610319, 27.412876, 33.120476>,  <29.863312, 27.524176, 33.409626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610319, 27.412876, 33.120476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307872, -0.766056, 0.564246,
		-0.710762, 0.579427, 0.398850,
		-0.632481, -0.278250, -0.722873,
		29.420574, 27.329401, 32.903614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144896, 27.681471, 33.575272>,  <29.863312, 27.524176, 33.409626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144896, 27.681471, 33.575272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214653, 27.357491, 33.351284>,  <29.256508, 27.163103, 33.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214653, 27.357491, 33.351284>,  <29.144896, 27.681471, 33.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214653, 27.357491, 33.351284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138837, -0.583229, 0.800355,
		-0.974839, -0.061831, -0.214162,
		0.174392, -0.809951, -0.559970,
		29.266972, 27.114506, 33.183292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364038, 27.077610, 33.789757>,  <29.144896, 27.681471, 33.575272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364038, 27.077610, 33.789757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586018, 27.006544, 34.114834>,  <29.719206, 26.963905, 34.309879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586018, 27.006544, 34.114834>,  <29.364038, 27.077610, 33.789757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586018, 27.006544, 34.114834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481870, 0.727691, 0.488127,
		-0.678111, -0.662497, 0.318220,
		0.554948, -0.177664, 0.812692,
		29.752502, 26.953245, 34.358643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925585, 26.954439, 34.459370>,  <29.364038, 27.077610, 33.789757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925585, 26.954439, 34.459370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298340, 27.069067, 34.548328>,  <29.521994, 27.137844, 34.601704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298340, 27.069067, 34.548328>,  <28.925585, 26.954439, 34.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298340, 27.069067, 34.548328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359685, 0.650538, 0.668900,
		0.047007, -0.703334, 0.709303,
		0.931889, 0.286568, 0.222399,
		29.577906, 27.155037, 34.615047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043140, 26.975624, 35.220287>,  <28.925585, 26.954439, 34.459370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043140, 26.975624, 35.220287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263762, 27.227695, 35.001686>,  <29.396133, 27.378939, 34.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263762, 27.227695, 35.001686>,  <29.043140, 26.975624, 35.220287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263762, 27.227695, 35.001686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409457, 0.775343, 0.480821,
		0.726729, -0.041429, 0.685673,
		0.551552, 0.630180, -0.546501,
		29.429228, 27.416750, 34.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382124, 27.293064, 35.742439>,  <29.043140, 26.975624, 35.220287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382124, 27.293064, 35.742439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352907, 27.512272, 35.409130>,  <29.335377, 27.643797, 35.209145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352907, 27.512272, 35.409130>,  <29.382124, 27.293064, 35.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352907, 27.512272, 35.409130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227389, 0.804345, 0.548929,
		0.971061, 0.229572, 0.065862,
		-0.073043, 0.548020, -0.833270,
		29.330994, 27.676678, 35.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826864, 27.986464, 35.690548>,  <29.382124, 27.293064, 35.742439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826864, 27.986464, 35.690548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544432, 28.052134, 35.415012>,  <29.374973, 28.091536, 35.249691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544432, 28.052134, 35.415012>,  <29.826864, 27.986464, 35.690548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544432, 28.052134, 35.415012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032143, 0.964320, 0.262782,
		0.707402, 0.207686, -0.675610,
		-0.706081, 0.164176, -0.688837,
		29.332607, 28.101387, 35.208363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036102, 28.569872, 35.198441>,  <29.826864, 27.986464, 35.690548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036102, 28.569872, 35.198441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637503, 28.539988, 35.183407>,  <29.398344, 28.522057, 35.174385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637503, 28.539988, 35.183407>,  <30.036102, 28.569872, 35.198441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637503, 28.539988, 35.183407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079678, 0.984655, 0.155258,
		0.025407, 0.157709, -0.987159,
		-0.996497, -0.074710, -0.037583,
		29.338554, 28.517574, 35.172131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766151, 29.211123, 34.894341>,  <30.036102, 28.569872, 35.198441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766151, 29.211123, 34.894341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430481, 29.073156, 35.062542>,  <29.229078, 28.990376, 35.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430481, 29.073156, 35.062542>,  <29.766151, 29.211123, 34.894341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430481, 29.073156, 35.062542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274325, 0.936053, 0.220342,
		-0.469609, 0.069552, -0.880131,
		-0.839174, -0.344917, 0.420499,
		29.178728, 28.969681, 35.188690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191250, 29.439905, 34.521751>,  <29.766151, 29.211123, 34.894341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191250, 29.439905, 34.521751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083750, 29.376205, 34.901733>,  <29.019249, 29.337986, 35.129723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083750, 29.376205, 34.901733>,  <29.191250, 29.439905, 34.521751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083750, 29.376205, 34.901733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294748, 0.952525, 0.076292,
		-0.917004, -0.259494, -0.302930,
		-0.268751, -0.159248, 0.949954,
		29.003124, 29.328432, 35.186718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663172, 29.875437, 34.602837>,  <29.191250, 29.439905, 34.521751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663172, 29.875437, 34.602837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736803, 29.776127, 34.983253>,  <28.780983, 29.716541, 35.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736803, 29.776127, 34.983253>,  <28.663172, 29.875437, 34.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736803, 29.776127, 34.983253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321973, 0.898958, 0.296997,
		-0.928681, -0.360880, 0.085542,
		0.184079, -0.248273, 0.951039,
		28.792027, 29.701645, 35.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250999, 30.254494, 34.944317>,  <28.663172, 29.875437, 34.602837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250999, 30.254494, 34.944317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478315, 30.165924, 35.261307>,  <28.614704, 30.112782, 35.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478315, 30.165924, 35.261307>,  <28.250999, 30.254494, 34.944317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478315, 30.165924, 35.261307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069914, 0.946635, 0.314633,
		-0.819853, -0.234207, 0.522482,
		0.568290, -0.221424, 0.792476,
		28.648802, 30.099497, 35.499050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891066, 30.503229, 35.505535>,  <28.250999, 30.254494, 34.944317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891066, 30.503229, 35.505535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234810, 30.430206, 35.696602>,  <28.441057, 30.386393, 35.811241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234810, 30.430206, 35.696602>,  <27.891066, 30.503229, 35.505535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234810, 30.430206, 35.696602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078401, 0.876027, 0.475846,
		-0.505320, -0.446375, 0.738513,
		0.859363, -0.182555, 0.477670,
		28.492619, 30.375441, 35.839905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829155, 30.583273, 36.219196>,  <27.891066, 30.503229, 35.505535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829155, 30.583273, 36.219196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215353, 30.646406, 36.136341>,  <28.447071, 30.684286, 36.086628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215353, 30.646406, 36.136341>,  <27.829155, 30.583273, 36.219196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215353, 30.646406, 36.136341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047713, 0.889152, 0.455117,
		0.256010, -0.429531, 0.866004,
		0.965496, 0.157834, -0.207137,
		28.505001, 30.693756, 36.074200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061438, 30.951828, 36.866329>,  <27.829155, 30.583273, 36.219196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061438, 30.951828, 36.866329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304052, 31.029829, 36.558022>,  <28.449621, 31.076630, 36.373035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304052, 31.029829, 36.558022>,  <28.061438, 30.951828, 36.866329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304052, 31.029829, 36.558022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225667, 0.887359, 0.402080,
		0.762356, -0.417814, 0.494211,
		0.606538, 0.195001, -0.770770,
		28.486013, 31.088329, 36.326790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506111, 31.303345, 37.236362>,  <28.061438, 30.951828, 36.866329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506111, 31.303345, 37.236362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546301, 31.384516, 36.846752>,  <28.570414, 31.433218, 36.612988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546301, 31.384516, 36.846752>,  <28.506111, 31.303345, 37.236362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546301, 31.384516, 36.846752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127556, 0.968273, 0.214886,
		0.986729, -0.145833, 0.071401,
		0.100473, 0.202927, -0.974025,
		28.576443, 31.445395, 36.554546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206827, 31.660183, 37.137222>,  <28.506111, 31.303345, 37.236362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206827, 31.660183, 37.137222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983709, 31.750507, 36.817753>,  <28.849838, 31.804703, 36.626072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983709, 31.750507, 36.817753>,  <29.206827, 31.660183, 37.137222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983709, 31.750507, 36.817753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213887, 0.968885, 0.124557,
		0.801945, -0.101348, -0.588738,
		-0.557796, 0.225812, -0.798670,
		28.816370, 31.818251, 36.578152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545851, 32.164707, 36.786205>,  <29.206827, 31.660183, 37.137222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545851, 32.164707, 36.786205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167355, 32.187592, 36.658859>,  <28.940258, 32.201321, 36.582451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167355, 32.187592, 36.658859>,  <29.545851, 32.164707, 36.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167355, 32.187592, 36.658859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039000, 0.997233, 0.063289,
		0.321109, 0.047470, -0.945852,
		-0.946239, 0.057211, -0.318369,
		28.883484, 32.204754, 36.563347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556612, 32.689026, 36.229763>,  <29.545851, 32.164707, 36.786205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556612, 32.689026, 36.229763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174070, 32.655704, 36.341797>,  <28.944546, 32.635712, 36.409016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174070, 32.655704, 36.341797>,  <29.556612, 32.689026, 36.229763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174070, 32.655704, 36.341797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068552, 0.995714, 0.062077,
		-0.284052, 0.040168, -0.957967,
		-0.956355, -0.083304, 0.280081,
		28.887163, 32.630714, 36.425819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188694, 33.085434, 35.789402>,  <29.556612, 32.689026, 36.229763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188694, 33.085434, 35.789402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977554, 33.054501, 36.127728>,  <28.850870, 33.035942, 36.330723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977554, 33.054501, 36.127728>,  <29.188694, 33.085434, 35.789402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977554, 33.054501, 36.127728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030736, 0.993455, 0.110015,
		-0.848783, 0.084068, -0.522016,
		-0.527848, -0.077334, 0.845811,
		28.819201, 33.031300, 36.381470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627371, 33.517189, 35.685757>,  <29.188694, 33.085434, 35.789402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627371, 33.517189, 35.685757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627596, 33.472549, 36.083260>,  <28.627731, 33.445766, 36.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627596, 33.472549, 36.083260>,  <28.627371, 33.517189, 35.685757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627596, 33.472549, 36.083260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137244, 0.984341, 0.110619,
		-0.990537, -0.136448, -0.014763,
		0.000562, -0.111599, 0.993753,
		28.627764, 33.439072, 36.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993807, 33.842293, 35.837547>,  <28.627371, 33.517189, 35.685757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993807, 33.842293, 35.837547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212570, 33.857155, 36.172092>,  <28.343828, 33.866070, 36.372822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212570, 33.857155, 36.172092>,  <27.993807, 33.842293, 35.837547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212570, 33.857155, 36.172092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280377, 0.949453, 0.141166,
		-0.788846, -0.311703, 0.529682,
		0.546910, 0.037153, 0.836367,
		28.376642, 33.868301, 36.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570095, 34.107288, 36.410847>,  <27.993807, 33.842293, 35.837547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570095, 34.107288, 36.410847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951872, 34.184013, 36.502277>,  <28.180939, 34.230049, 36.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951872, 34.184013, 36.502277>,  <27.570095, 34.107288, 36.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951872, 34.184013, 36.502277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211321, 0.975322, 0.063956,
		-0.210673, -0.109346, 0.971422,
		0.954442, 0.191808, 0.228581,
		28.238205, 34.241554, 36.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579596, 34.667278, 36.942043>,  <27.570095, 34.107288, 36.410847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579596, 34.667278, 36.942043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974613, 34.661419, 36.879375>,  <28.211624, 34.657902, 36.841774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974613, 34.661419, 36.879375>,  <27.579596, 34.667278, 36.942043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974613, 34.661419, 36.879375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018509, 0.999559, 0.023219,
		0.156265, -0.025830, 0.987377,
		0.987542, -0.014647, -0.156674,
		28.270876, 34.657024, 36.832375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777657, 35.078911, 37.325130>,  <27.579596, 34.667278, 36.942043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777657, 35.078911, 37.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111504, 35.077209, 37.104805>,  <28.311811, 35.076187, 36.972610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111504, 35.077209, 37.104805>,  <27.777657, 35.078911, 37.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111504, 35.077209, 37.104805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069679, 0.992753, 0.097915,
		0.546408, -0.120102, 0.828863,
		0.834616, -0.004253, -0.550816,
		28.361889, 35.075935, 36.939560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151390, 35.633686, 37.580643>,  <27.777657, 35.078911, 37.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151390, 35.633686, 37.580643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320238, 35.586555, 37.221104>,  <28.421547, 35.558277, 37.005379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320238, 35.586555, 37.221104>,  <28.151390, 35.633686, 37.580643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320238, 35.586555, 37.221104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237510, 0.971257, -0.015776,
		0.874873, -0.206826, 0.437973,
		0.422121, -0.117825, -0.898850,
		28.446875, 35.551208, 36.951450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929646, 35.871304, 37.581535>,  <28.151390, 35.633686, 37.580643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929646, 35.871304, 37.581535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758633, 35.911171, 37.222141>,  <28.656025, 35.935093, 37.006504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758633, 35.911171, 37.222141>,  <28.929646, 35.871304, 37.581535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758633, 35.911171, 37.222141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243212, 0.969939, -0.008130,
		0.870670, -0.222000, -0.438920,
		-0.427530, 0.099672, -0.898490,
		28.630373, 35.941074, 36.952595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375017, 36.069969, 37.135876>,  <28.929646, 35.871304, 37.581535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375017, 36.069969, 37.135876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040401, 36.200848, 36.960079>,  <28.839632, 36.279373, 36.854603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040401, 36.200848, 36.960079>,  <29.375017, 36.069969, 37.135876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040401, 36.200848, 36.960079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266081, 0.943779, 0.196166,
		0.478963, 0.047161, -0.876567,
		-0.836538, 0.327195, -0.439486,
		28.789440, 36.299007, 36.828232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957254, 36.651279, 37.019398>,  <29.375017, 36.069969, 37.135876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957254, 36.651279, 37.019398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083008, 37.010815, 36.897247>,  <30.158459, 37.226536, 36.823959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083008, 37.010815, 36.897247>,  <29.957254, 36.651279, 37.019398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083008, 37.010815, 36.897247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793764, 0.072463, -0.603894,
		-0.520675, 0.432247, 0.736247,
		0.314382, 0.898839, -0.305372,
		30.177322, 37.280468, 36.805637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004442, 37.153038, 37.558529>,  <29.957254, 36.651279, 37.019398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004442, 37.153038, 37.558529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766827, 36.997856, 37.840412>,  <29.624258, 36.904747, 38.009541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766827, 36.997856, 37.840412>,  <30.004442, 37.153038, 37.558529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766827, 36.997856, 37.840412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758730, 0.020877, 0.651071,
		-0.267298, 0.921443, 0.281950,
		-0.594038, -0.387953, 0.704706,
		29.588615, 36.881470, 38.051823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638334, 37.157799, 37.172897>,  <30.004442, 37.153038, 37.558529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638334, 37.157799, 37.172897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 37.162800, 37.300095>,  <31.245060, 37.165802, 37.376411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 37.162800, 37.300095>,  <30.638334, 37.157799, 37.172897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017538, 37.162800, 37.300095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179500, -0.804094, 0.566756,
		0.262783, -0.594371, -0.760045,
		0.948011, 0.012506, 0.317992,
		31.301941, 37.166550, 37.395493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014296, 36.558079, 36.921158>,  <30.638334, 37.157799, 37.172897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014296, 36.558079, 36.921158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099936, 36.700630, 37.284950>,  <31.151320, 36.786160, 37.503227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099936, 36.700630, 37.284950>,  <31.014296, 36.558079, 36.921158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099936, 36.700630, 37.284950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277698, -0.870448, 0.406453,
		0.936507, -0.339583, -0.087398,
		0.214100, 0.356376, 0.909482,
		31.164165, 36.807545, 37.557796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542044, 36.186474, 37.228657>,  <31.014296, 36.558079, 36.921158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542044, 36.186474, 37.228657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260923, 36.322990, 37.478325>,  <31.092251, 36.404900, 37.628124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260923, 36.322990, 37.478325>,  <31.542044, 36.186474, 37.228657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260923, 36.322990, 37.478325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348860, -0.930004, 0.115713,
		0.619971, -0.136424, 0.772673,
		-0.702803, 0.341294, 0.624169,
		31.050083, 36.425377, 37.665577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277637, 35.973305, 38.043797>,  <31.542044, 36.186474, 37.228657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277637, 35.973305, 38.043797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985142, 36.023540, 37.775612>,  <30.809645, 36.053680, 37.614700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985142, 36.023540, 37.775612>,  <31.277637, 35.973305, 38.043797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985142, 36.023540, 37.775612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110905, -0.991716, -0.064804,
		-0.673045, 0.026970, 0.739109,
		-0.731239, 0.125587, -0.670461,
		30.765770, 36.061218, 37.574474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265739, 35.233711, 37.700092>,  <31.277637, 35.973305, 38.043797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265739, 35.233711, 37.700092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470873, 34.961159, 37.491199>,  <31.593952, 34.797626, 37.365864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470873, 34.961159, 37.491199>,  <31.265739, 35.233711, 37.700092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470873, 34.961159, 37.491199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306337, -0.423021, 0.852767,
		-0.801974, -0.597303, -0.008205,
		0.512831, -0.681383, -0.522228,
		31.624722, 34.756744, 37.334530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089552, 34.470425, 37.899143>,  <31.265739, 35.233711, 37.700092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089552, 34.470425, 37.899143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458683, 34.539772, 37.761547>,  <31.680162, 34.581383, 37.678989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458683, 34.539772, 37.761547>,  <31.089552, 34.470425, 37.899143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458683, 34.539772, 37.761547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383619, -0.332579, 0.861526,
		0.034961, -0.927003, -0.373422,
		0.922830, 0.173371, -0.343989,
		31.735533, 34.591782, 37.658352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373251, 33.858570, 37.882446>,  <31.089552, 34.470425, 37.899143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373251, 33.858570, 37.882446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666969, 34.129520, 37.900204>,  <31.843201, 34.292091, 37.910858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666969, 34.129520, 37.900204>,  <31.373251, 33.858570, 37.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666969, 34.129520, 37.900204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379065, -0.463418, 0.800970,
		0.563131, -0.571321, -0.597056,
		0.734297, 0.677374, 0.044397,
		31.887259, 34.332733, 37.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929611, 33.458569, 38.065426>,  <31.373251, 33.858570, 37.882446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929611, 33.458569, 38.065426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060760, 33.820786, 38.173119>,  <32.139450, 34.038116, 38.237732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060760, 33.820786, 38.173119>,  <31.929611, 33.458569, 38.065426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060760, 33.820786, 38.173119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484610, -0.405846, 0.774882,
		0.810957, -0.123594, -0.571904,
		0.327876, 0.905546, 0.269228,
		32.159122, 34.092449, 38.253887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609913, 33.390713, 38.276970>,  <31.929611, 33.458569, 38.065426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609913, 33.390713, 38.276970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486767, 33.727417, 38.454353>,  <32.412880, 33.929440, 38.560783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486767, 33.727417, 38.454353>,  <32.609913, 33.390713, 38.276970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486767, 33.727417, 38.454353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363649, -0.326604, 0.872404,
		0.879190, 0.429852, -0.205554,
		-0.307870, 0.841758, 0.443462,
		32.394405, 33.979946, 38.587391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194370, 33.502720, 38.649593>,  <32.609913, 33.390713, 38.276970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194370, 33.502720, 38.649593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904209, 33.745754, 38.778976>,  <32.730114, 33.891575, 38.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904209, 33.745754, 38.778976>,  <33.194370, 33.502720, 38.649593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904209, 33.745754, 38.778976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263769, -0.188677, 0.945953,
		0.635779, 0.771516, -0.023395,
		-0.725404, 0.607588, 0.323459,
		32.686588, 33.928032, 38.876015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556557, 33.848076, 39.128307>,  <33.194370, 33.502720, 38.649593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556557, 33.848076, 39.128307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181976, 33.931297, 39.241283>,  <32.957230, 33.981232, 39.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181976, 33.931297, 39.241283>,  <33.556557, 33.848076, 39.128307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181976, 33.931297, 39.241283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216981, -0.289104, 0.932383,
		0.275640, 0.934416, 0.225588,
		-0.936452, 0.208054, 0.282439,
		32.901039, 33.993713, 39.326015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599888, 34.334400, 39.622665>,  <33.556557, 33.848076, 39.128307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599888, 34.334400, 39.622665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237217, 34.175522, 39.679482>,  <33.019615, 34.080196, 39.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237217, 34.175522, 39.679482>,  <33.599888, 34.334400, 39.622665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237217, 34.175522, 39.679482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248719, -0.231417, 0.940524,
		-0.340702, 0.888078, 0.308610,
		-0.906676, -0.397195, 0.142037,
		32.965214, 34.056362, 39.722092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451538, 34.574623, 40.254482>,  <33.599888, 34.334400, 39.622665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451538, 34.574623, 40.254482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213444, 34.259583, 40.190750>,  <33.070587, 34.070560, 40.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213444, 34.259583, 40.190750>,  <33.451538, 34.574623, 40.254482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213444, 34.259583, 40.190750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333820, -0.422734, 0.842532,
		-0.730931, 0.448316, 0.514541,
		-0.595235, -0.787597, -0.159333,
		33.034874, 34.023304, 40.142952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047977, 34.517174, 40.837158>,  <33.451538, 34.574623, 40.254482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047977, 34.517174, 40.837158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042534, 34.153065, 40.671646>,  <33.039268, 33.934597, 40.572338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042534, 34.153065, 40.671646>,  <33.047977, 34.517174, 40.837158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042534, 34.153065, 40.671646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127941, -0.412003, 0.902155,
		-0.991688, -0.040662, 0.122069,
		-0.013609, -0.910274, -0.413781,
		33.038452, 33.879982, 40.547512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641632, 34.095970, 41.323742>,  <33.047977, 34.517174, 40.837158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641632, 34.095970, 41.323742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822823, 33.824268, 41.092770>,  <32.931538, 33.661247, 40.954185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822823, 33.824268, 41.092770>,  <32.641632, 34.095970, 41.323742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822823, 33.824268, 41.092770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170585, -0.569688, 0.803963,
		-0.875052, -0.462675, -0.142183,
		0.452974, -0.679255, -0.577432,
		32.958714, 33.620491, 40.919540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499306, 33.576550, 41.832325>,  <32.641632, 34.095970, 41.323742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499306, 33.576550, 41.832325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758827, 33.411064, 41.576859>,  <32.914539, 33.311771, 41.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758827, 33.411064, 41.576859>,  <32.499306, 33.576550, 41.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758827, 33.411064, 41.576859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300034, -0.632217, 0.714340,
		-0.699307, -0.655088, -0.286057,
		0.648806, -0.413716, -0.638663,
		32.953468, 33.286949, 41.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505219, 32.789082, 41.939541>,  <32.499306, 33.576550, 41.832325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505219, 32.789082, 41.939541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863716, 32.892361, 41.795277>,  <33.078815, 32.954327, 41.708717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863716, 32.892361, 41.795277>,  <32.505219, 32.789082, 41.939541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863716, 32.892361, 41.795277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440577, -0.612277, 0.656512,
		-0.051318, -0.747297, -0.662505,
		0.896247, 0.258194, -0.360663,
		33.132591, 32.969818, 41.687077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861938, 32.212234, 41.748516>,  <32.505219, 32.789082, 41.939541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861938, 32.212234, 41.748516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139584, 32.488804, 41.828667>,  <33.306171, 32.654743, 41.876755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139584, 32.488804, 41.828667>,  <32.861938, 32.212234, 41.748516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139584, 32.488804, 41.828667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425469, -0.618559, 0.660576,
		0.580678, -0.373260, -0.723526,
		0.694110, 0.691420, 0.200373,
		33.347816, 32.696228, 41.888779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473949, 31.866756, 41.720737>,  <32.861938, 32.212234, 41.748516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473949, 31.866756, 41.720737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579075, 32.210934, 41.895355>,  <33.642151, 32.417439, 42.000126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579075, 32.210934, 41.895355>,  <33.473949, 31.866756, 41.720737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579075, 32.210934, 41.895355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453598, -0.509515, 0.731193,
		0.851574, 0.005847, -0.524202,
		0.262814, 0.860442, 0.436541,
		33.657921, 32.469067, 42.026318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195129, 31.761900, 41.796917>,  <33.473949, 31.866756, 41.720737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195129, 31.761900, 41.796917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071499, 32.050564, 42.044685>,  <33.997322, 32.223763, 42.193348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071499, 32.050564, 42.044685>,  <34.195129, 31.761900, 41.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071499, 32.050564, 42.044685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566635, -0.383350, 0.729361,
		0.763805, 0.576411, -0.290434,
		-0.309074, 0.721660, 0.619420,
		33.978775, 32.267063, 42.230511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727978, 31.802404, 42.316650>,  <34.195129, 31.761900, 41.796917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727978, 31.802404, 42.316650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447536, 32.012531, 42.509518>,  <34.279270, 32.138607, 42.625240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447536, 32.012531, 42.509518>,  <34.727978, 31.802404, 42.316650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447536, 32.012531, 42.509518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304889, -0.390422, 0.868685,
		0.644587, 0.756050, 0.113564,
		-0.701107, 0.525318, 0.482172,
		34.237206, 32.170128, 42.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042931, 32.244858, 42.760303>,  <34.727978, 31.802404, 42.316650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042931, 32.244858, 42.760303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679562, 32.173206, 42.911392>,  <34.461540, 32.130215, 43.002045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679562, 32.173206, 42.911392>,  <35.042931, 32.244858, 42.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679562, 32.173206, 42.911392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408111, -0.184177, 0.894161,
		-0.090603, 0.966432, 0.240416,
		-0.908425, -0.179131, 0.377725,
		34.407036, 32.119469, 43.024708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004494, 32.571934, 43.426113>,  <35.042931, 32.244858, 42.760303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004494, 32.571934, 43.426113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754261, 32.260345, 43.408905>,  <34.604122, 32.073391, 43.398582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754261, 32.260345, 43.408905>,  <35.004494, 32.571934, 43.426113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754261, 32.260345, 43.408905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434831, -0.393928, 0.809780,
		-0.647740, 0.487879, 0.585155,
		-0.625584, -0.778970, -0.043018,
		34.566586, 32.026653, 43.396000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921219, 32.379482, 44.114498>,  <35.004494, 32.571934, 43.426113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921219, 32.379482, 44.114498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782928, 32.054813, 43.926178>,  <34.699955, 31.860010, 43.813187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782928, 32.054813, 43.926178>,  <34.921219, 32.379482, 44.114498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782928, 32.054813, 43.926178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501756, -0.583900, 0.638203,
		-0.792915, -0.015585, 0.609133,
		-0.345726, -0.811676, -0.470803,
		34.679211, 31.811310, 43.784939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228107, 32.289196, 44.381985>,  <34.921219, 32.379482, 44.114498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228107, 32.289196, 44.381985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353764, 31.945398, 44.220695>,  <34.429157, 31.739120, 44.123920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353764, 31.945398, 44.220695>,  <34.228107, 32.289196, 44.381985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353764, 31.945398, 44.220695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203139, -0.354034, 0.912905,
		-0.927391, -0.368686, 0.063382,
		0.314136, -0.859495, -0.403222,
		34.448006, 31.687550, 44.099728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098705, 31.868269, 44.971786>,  <34.228107, 32.289196, 44.381985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098705, 31.868269, 44.971786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343269, 31.640379, 44.752113>,  <34.490005, 31.503645, 44.620312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343269, 31.640379, 44.752113>,  <34.098705, 31.868269, 44.971786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343269, 31.640379, 44.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008231, -0.689389, 0.724345,
		-0.791274, -0.447389, -0.416807,
		0.611406, -0.569725, -0.549178,
		34.526691, 31.469461, 44.587360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945068, 31.103218, 45.030762>,  <34.098705, 31.868269, 44.971786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945068, 31.103218, 45.030762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321743, 31.107681, 44.896244>,  <34.547749, 31.110359, 44.815533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321743, 31.107681, 44.896244>,  <33.945068, 31.103218, 45.030762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321743, 31.107681, 44.896244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246212, -0.704065, 0.666087,
		-0.229342, -0.710047, -0.665759,
		0.941691, 0.011156, -0.336294,
		34.604252, 31.111029, 44.795357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223755, 30.462532, 45.097530>,  <33.945068, 31.103218, 45.030762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223755, 30.462532, 45.097530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564529, 30.671877, 45.090675>,  <34.768993, 30.797483, 45.086563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564529, 30.671877, 45.090675>,  <34.223755, 30.462532, 45.097530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564529, 30.671877, 45.090675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422305, -0.667352, 0.613433,
		0.309612, -0.529844, -0.789561,
		0.851938, 0.523362, -0.017136,
		34.820110, 30.828886, 45.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772957, 29.991196, 45.034508>,  <34.223755, 30.462532, 45.097530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772957, 29.991196, 45.034508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918125, 30.323704, 45.202923>,  <35.005226, 30.523209, 45.303974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918125, 30.323704, 45.202923>,  <34.772957, 29.991196, 45.034508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918125, 30.323704, 45.202923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314745, -0.534651, 0.784273,
		0.877053, -0.152112, -0.455676,
		0.362924, 0.831271, 0.421041,
		35.027004, 30.573086, 45.329235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363762, 29.752644, 45.333885>,  <34.772957, 29.991196, 45.034508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363762, 29.752644, 45.333885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291203, 30.111916, 45.494068>,  <35.247665, 30.327478, 45.590176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291203, 30.111916, 45.494068>,  <35.363762, 29.752644, 45.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291203, 30.111916, 45.494068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368379, -0.315500, 0.874504,
		0.911807, 0.306152, -0.273641,
		-0.181398, 0.898182, 0.400455,
		35.236782, 30.381371, 45.614204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922146, 29.894634, 45.658768>,  <35.363762, 29.752644, 45.333885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922146, 29.894634, 45.658768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632374, 30.117514, 45.821117>,  <35.458511, 30.251242, 45.918530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632374, 30.117514, 45.821117>,  <35.922146, 29.894634, 45.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632374, 30.117514, 45.821117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304748, -0.269264, 0.913579,
		0.618331, 0.785512, 0.025258,
		-0.724428, 0.557196, 0.405877,
		35.415047, 30.284672, 45.942879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224583, 30.338898, 46.106964>,  <35.922146, 29.894634, 45.658768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224583, 30.338898, 46.106964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847252, 30.251669, 46.207024>,  <35.620853, 30.199331, 46.267059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847252, 30.251669, 46.207024>,  <36.224583, 30.338898, 46.106964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847252, 30.251669, 46.207024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313036, -0.334460, 0.888901,
		-0.110180, 0.916832, 0.383770,
		-0.943329, -0.218073, 0.250151,
		35.564255, 30.186247, 46.282070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170120, 30.615574, 46.820293>,  <36.224583, 30.338898, 46.106964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170120, 30.615574, 46.820293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889194, 30.334951, 46.772018>,  <35.720638, 30.166578, 46.743053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889194, 30.334951, 46.772018>,  <36.170120, 30.615574, 46.820293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889194, 30.334951, 46.772018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057776, -0.225156, 0.972608,
		-0.709514, 0.676108, 0.198665,
		-0.702319, -0.701557, -0.120688,
		35.678497, 30.124485, 46.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730202, 30.655893, 47.410240>,  <36.170120, 30.615574, 46.820293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730202, 30.655893, 47.410240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706997, 30.285749, 47.260391>,  <35.693073, 30.063663, 47.170483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706997, 30.285749, 47.260391>,  <35.730202, 30.655893, 47.410240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706997, 30.285749, 47.260391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328710, -0.372034, 0.868067,
		-0.942648, -0.072785, 0.325757,
		-0.058010, -0.925361, -0.374622,
		35.689594, 30.008141, 47.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303028, 30.331791, 48.004864>,  <35.730202, 30.655893, 47.410240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303028, 30.331791, 48.004864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417328, 30.015059, 47.788956>,  <35.485909, 29.825020, 47.659412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417328, 30.015059, 47.788956>,  <35.303028, 30.331791, 48.004864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417328, 30.015059, 47.788956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255786, -0.479800, 0.839265,
		-0.923538, -0.377883, 0.065438,
		0.285747, -0.791831, -0.539770,
		35.503052, 29.777510, 47.627026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947926, 29.617647, 48.292446>,  <35.303028, 30.331791, 48.004864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947926, 29.617647, 48.292446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283543, 29.541420, 48.088608>,  <35.484913, 29.495684, 47.966305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283543, 29.541420, 48.088608>,  <34.947926, 29.617647, 48.292446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283543, 29.541420, 48.088608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299842, -0.619602, 0.725388,
		-0.453983, -0.761431, -0.462734,
		0.839044, -0.190567, -0.509598,
		35.535255, 29.484249, 47.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165367, 28.947096, 48.537121>,  <34.947926, 29.617647, 48.292446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165367, 28.947096, 48.537121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490017, 29.092512, 48.354210>,  <35.684807, 29.179762, 48.244461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490017, 29.092512, 48.354210>,  <35.165367, 28.947096, 48.537121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490017, 29.092512, 48.354210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578929, -0.605258, 0.546355,
		-0.078150, -0.708167, -0.701707,
		0.811624, 0.363541, -0.457279,
		35.733505, 29.201574, 48.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473858, 28.362160, 48.273224>,  <35.165367, 28.947096, 48.537121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473858, 28.362160, 48.273224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754314, 28.643991, 48.316975>,  <35.922588, 28.813091, 48.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754314, 28.643991, 48.316975>,  <35.473858, 28.362160, 48.273224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754314, 28.643991, 48.316975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555388, -0.635877, 0.535914,
		0.447145, -0.315006, -0.837157,
		0.701146, 0.704579, 0.109379,
		35.964657, 28.855366, 48.349789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082668, 28.039972, 48.199265>,  <35.473858, 28.362160, 48.273224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082668, 28.039972, 48.199265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190071, 28.380451, 48.379650>,  <36.254513, 28.584738, 48.487881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190071, 28.380451, 48.379650>,  <36.082668, 28.039972, 48.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190071, 28.380451, 48.379650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593267, -0.514959, 0.618750,
		0.758905, 0.101402, -0.643257,
		0.268509, 0.851196, 0.450964,
		36.270622, 28.635811, 48.514938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868706, 28.186420, 48.055935>,  <36.082668, 28.039972, 48.199265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868706, 28.186420, 48.055935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 28.352139, 48.388187>,  <36.630608, 28.451569, 48.587540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 28.352139, 48.388187>,  <36.868706, 28.186420, 48.055935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719894, 28.352139, 48.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661810, -0.509069, 0.550324,
		0.650846, 0.754459, -0.084795,
		-0.372031, 0.414295, 0.830634,
		36.608284, 28.476427, 48.637379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390575, 28.084833, 48.447540>,  <36.868706, 28.186420, 48.055935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390575, 28.084833, 48.447540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122246, 28.203449, 48.719440>,  <36.961250, 28.274620, 48.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122246, 28.203449, 48.719440>,  <37.390575, 28.084833, 48.447540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122246, 28.203449, 48.719440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608376, -0.304137, 0.733062,
		0.424121, 0.905298, 0.023613,
		-0.670821, 0.296541, 0.679752,
		36.921001, 28.292412, 48.923367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819065, 28.504728, 48.946907>,  <37.390575, 28.084833, 48.447540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819065, 28.504728, 48.946907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475426, 28.380138, 49.109352>,  <37.269241, 28.305386, 49.206818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475426, 28.380138, 49.109352>,  <37.819065, 28.504728, 48.946907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475426, 28.380138, 49.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511322, -0.487938, 0.707437,
		-0.022191, 0.815415, 0.578452,
		-0.859103, -0.311473, 0.406112,
		37.217693, 28.286695, 49.231186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779938, 28.569122, 49.763950>,  <37.819065, 28.504728, 48.946907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779938, 28.569122, 49.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517609, 28.287874, 49.654026>,  <37.360210, 28.119125, 49.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517609, 28.287874, 49.654026>,  <37.779938, 28.569122, 49.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517609, 28.287874, 49.654026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448933, -0.655908, 0.606831,
		-0.606927, 0.274599, 0.745812,
		-0.655819, -0.703121, -0.274812,
		37.320862, 28.076939, 49.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516613, 28.242998, 50.410992>,  <37.779938, 28.569122, 49.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516613, 28.242998, 50.410992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475910, 27.961826, 50.129414>,  <37.451488, 27.793123, 49.960468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475910, 27.961826, 50.129414>,  <37.516613, 28.242998, 50.410992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475910, 27.961826, 50.129414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432063, -0.668620, 0.605201,
		-0.896084, -0.242566, 0.371745,
		-0.101755, -0.702929, -0.703944,
		37.445385, 27.750948, 49.918232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183121, 27.724321, 50.728638>,  <37.516613, 28.242998, 50.410992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183121, 27.724321, 50.728638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373112, 27.555834, 50.419582>,  <37.487106, 27.454741, 50.234150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373112, 27.555834, 50.419582>,  <37.183121, 27.724321, 50.728638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373112, 27.555834, 50.419582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336473, -0.724353, 0.601746,
		-0.813129, -0.545789, -0.202324,
		0.474981, -0.421221, -0.772636,
		37.515606, 27.429468, 50.187790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001438, 26.966604, 50.724724>,  <37.183121, 27.724321, 50.728638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001438, 26.966604, 50.724724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355473, 27.074881, 50.573280>,  <37.567894, 27.139847, 50.482414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355473, 27.074881, 50.573280>,  <37.001438, 26.966604, 50.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355473, 27.074881, 50.573280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458942, -0.642870, 0.613262,
		-0.077389, -0.716550, -0.693229,
		0.885090, 0.270692, -0.378606,
		37.620998, 27.156088, 50.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414154, 26.353542, 50.442669>,  <37.001438, 26.966604, 50.724724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414154, 26.353542, 50.442669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661850, 26.643818, 50.562611>,  <37.810467, 26.817984, 50.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661850, 26.643818, 50.562611>,  <37.414154, 26.353542, 50.442669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661850, 26.643818, 50.562611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440904, -0.637361, 0.631961,
		0.649724, -0.259130, -0.714640,
		0.619244, 0.725687, 0.299857,
		37.847622, 26.861525, 50.652569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109024, 26.359348, 50.273006>,  <37.414154, 26.353542, 50.442669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109024, 26.359348, 50.273006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039288, 26.493258, 50.643417>,  <37.997444, 26.573603, 50.865665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039288, 26.493258, 50.643417>,  <38.109024, 26.359348, 50.273006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039288, 26.493258, 50.643417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106304, -0.928538, 0.355692,
		0.978930, 0.160454, 0.126297,
		-0.174344, 0.334772, 0.926030,
		37.986984, 26.593689, 50.921227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610081, 26.093193, 50.704273>,  <38.109024, 26.359348, 50.273006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610081, 26.093193, 50.704273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296913, 26.172434, 50.940166>,  <38.109013, 26.219978, 51.081703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296913, 26.172434, 50.940166>,  <38.610081, 26.093193, 50.704273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296913, 26.172434, 50.940166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089263, -0.902364, 0.421628,
		0.615682, 0.382744, 0.688798,
		-0.782923, 0.198104, 0.589734,
		38.062035, 26.231865, 51.117088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781696, 26.110044, 51.400517>,  <38.610081, 26.093193, 50.704273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781696, 26.110044, 51.400517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404926, 25.987293, 51.345955>,  <38.178864, 25.913643, 51.313217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404926, 25.987293, 51.345955>,  <38.781696, 26.110044, 51.400517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404926, 25.987293, 51.345955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197176, -0.834155, 0.515080,
		-0.271846, 0.458271, 0.846219,
		-0.941924, -0.306876, -0.136401,
		38.122349, 25.895231, 51.305035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610889, 25.812271, 51.907089>,  <38.781696, 26.110044, 51.400517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610889, 25.812271, 51.907089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365925, 25.632149, 51.647186>,  <38.218948, 25.524075, 51.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365925, 25.632149, 51.647186>,  <38.610889, 25.812271, 51.907089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365925, 25.632149, 51.647186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240955, -0.889127, 0.389094,
		-0.752925, 0.081723, 0.653012,
		-0.612408, -0.450305, -0.649755,
		38.182201, 25.497057, 51.452259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086338, 25.302954, 52.245537>,  <38.610889, 25.812271, 51.907089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086338, 25.302954, 52.245537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197392, 25.206434, 51.873581>,  <38.264023, 25.148523, 51.650406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197392, 25.206434, 51.873581>,  <38.086338, 25.302954, 52.245537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197392, 25.206434, 51.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133796, -0.948797, 0.286152,
		-0.951328, -0.203857, -0.231122,
		0.277622, -0.241301, -0.929892,
		38.280682, 25.134045, 51.594612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566357, 24.761681, 51.814217>,  <38.086338, 25.302954, 52.245537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566357, 24.761681, 51.814217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962761, 24.733023, 51.769009>,  <38.200603, 24.715828, 51.741886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962761, 24.733023, 51.769009>,  <37.566357, 24.761681, 51.814217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962761, 24.733023, 51.769009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055709, -0.988818, 0.138330,
		-0.121664, -0.130790, -0.983917,
		0.991007, -0.071643, -0.113018,
		38.260063, 24.711531, 51.735104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752056, 24.340427, 51.219048>,  <37.566357, 24.761681, 51.814217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752056, 24.340427, 51.219048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005325, 24.321817, 51.528091>,  <38.157288, 24.310652, 51.713516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005325, 24.321817, 51.528091>,  <37.752056, 24.340427, 51.219048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005325, 24.321817, 51.528091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019061, -0.998826, -0.044526,
		0.773772, 0.013466, -0.633321,
		0.633177, -0.046525, 0.772607,
		38.195278, 24.307859, 51.759872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781113, 24.520576, 50.461407>,  <37.752056, 24.340427, 51.219048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781113, 24.520576, 50.461407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386070, 24.518660, 50.398666>,  <37.149044, 24.517509, 50.361023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386070, 24.518660, 50.398666>,  <37.781113, 24.520576, 50.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386070, 24.518660, 50.398666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154640, 0.140289, -0.977960,
		0.026693, -0.990099, -0.137810,
		-0.987610, -0.004794, -0.156853,
		37.089787, 24.517221, 50.351612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623680, 23.946386, 49.930977>,  <37.781113, 24.520576, 50.461407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623680, 23.946386, 49.930977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337727, 24.225998, 49.937874>,  <37.166153, 24.393764, 49.942013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337727, 24.225998, 49.937874>,  <37.623680, 23.946386, 49.930977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337727, 24.225998, 49.937874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030465, -0.006506, -0.999515,
		-0.698578, -0.715063, 0.025947,
		-0.714885, 0.699030, 0.017239,
		37.123260, 24.435707, 49.943047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015102, 23.850208, 49.394222>,  <37.623680, 23.946386, 49.930977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015102, 23.850208, 49.394222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088573, 24.242189, 49.425095>,  <37.132656, 24.477377, 49.443619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088573, 24.242189, 49.425095>,  <37.015102, 23.850208, 49.394222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088573, 24.242189, 49.425095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272795, 0.126250, -0.953753,
		-0.944375, 0.154131, 0.290515,
		0.183681, 0.979951, 0.077181,
		37.143677, 24.536175, 49.448250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435886, 24.145853, 49.080311>,  <37.015102, 23.850208, 49.394222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435886, 24.145853, 49.080311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 24.421150, 49.093964>,  <36.899681, 24.586329, 49.102154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 24.421150, 49.093964>,  <36.435886, 24.145853, 49.080311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725758, 24.421150, 49.093964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227492, 0.285699, -0.930926,
		-0.650452, 0.666858, 0.363609,
		0.724679, 0.688241, 0.034129,
		36.943161, 24.627623, 49.104202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238235, 24.702524, 48.720631>,  <36.435886, 24.145853, 49.080311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238235, 24.702524, 48.720631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633667, 24.762625, 48.715961>,  <36.870926, 24.798685, 48.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633667, 24.762625, 48.715961>,  <36.238235, 24.702524, 48.720631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633667, 24.762625, 48.715961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094262, 0.556047, -0.825788,
		-0.117585, 0.817457, 0.563859,
		0.988579, 0.150250, -0.011673,
		36.930241, 24.807699, 48.712460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291294, 25.464520, 48.614670>,  <36.238235, 24.702524, 48.720631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291294, 25.464520, 48.614670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631138, 25.281204, 48.510258>,  <36.835045, 25.171215, 48.447609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631138, 25.281204, 48.510258>,  <36.291294, 25.464520, 48.614670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631138, 25.281204, 48.510258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061540, 0.405403, -0.912064,
		0.523811, 0.790962, 0.316231,
		0.849609, -0.458288, -0.261030,
		36.886021, 25.143717, 48.431950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815975, 25.940050, 48.419678>,  <36.291294, 25.464520, 48.614670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815975, 25.940050, 48.419678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896870, 25.598682, 48.227520>,  <36.945408, 25.393862, 48.112225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896870, 25.598682, 48.227520>,  <36.815975, 25.940050, 48.419678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896870, 25.598682, 48.227520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016653, 0.487460, -0.872986,
		0.979196, 0.184548, 0.084370,
		0.202235, -0.853419, -0.480392,
		36.957539, 25.342657, 48.083401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279041, 26.202129, 47.999706>,  <36.815975, 25.940050, 48.419678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279041, 26.202129, 47.999706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153698, 25.852585, 47.851021>,  <37.078491, 25.642859, 47.761810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153698, 25.852585, 47.851021>,  <37.279041, 26.202129, 47.999706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153698, 25.852585, 47.851021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133368, 0.347056, -0.928313,
		0.940224, -0.340469, 0.007793,
		-0.313357, -0.873861, -0.371718,
		37.059692, 25.590427, 47.739506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680965, 26.125906, 47.386406>,  <37.279041, 26.202129, 47.999706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680965, 26.125906, 47.386406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388397, 25.858515, 47.332500>,  <37.212856, 25.698080, 47.300156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388397, 25.858515, 47.332500>,  <37.680965, 26.125906, 47.386406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388397, 25.858515, 47.332500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053504, 0.253269, -0.965915,
		0.679826, -0.699278, -0.221012,
		-0.731419, -0.668479, -0.134764,
		37.168972, 25.657970, 47.292072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846756, 25.724279, 46.662231>,  <37.680965, 26.125906, 47.386406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846756, 25.724279, 46.662231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465084, 25.656086, 46.760593>,  <37.236080, 25.615170, 46.819611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465084, 25.656086, 46.760593>,  <37.846756, 25.724279, 46.662231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465084, 25.656086, 46.760593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286806, 0.286771, -0.914060,
		0.085311, -0.942708, -0.322527,
		-0.954183, -0.170482, 0.245909,
		37.178829, 25.604940, 46.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601154, 25.352184, 46.134193>,  <37.846756, 25.724279, 46.662231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601154, 25.352184, 46.134193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296219, 25.528309, 46.323917>,  <37.113258, 25.633984, 46.437752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296219, 25.528309, 46.323917>,  <37.601154, 25.352184, 46.134193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296219, 25.528309, 46.323917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413578, 0.232269, -0.880344,
		-0.497793, -0.867281, 0.005036,
		-0.762336, 0.440312, 0.474310,
		37.067516, 25.660402, 46.466209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112545, 25.118328, 45.765480>,  <37.601154, 25.352184, 46.134193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112545, 25.118328, 45.765480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958416, 25.436165, 45.953159>,  <36.865940, 25.626867, 46.065769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958416, 25.436165, 45.953159>,  <37.112545, 25.118328, 45.765480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958416, 25.436165, 45.953159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245647, 0.401794, -0.882167,
		-0.889486, -0.455176, 0.040369,
		-0.385322, 0.794592, 0.469203,
		36.842819, 25.674541, 46.093922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499958, 25.365158, 45.315197>,  <37.112545, 25.118328, 45.765480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499958, 25.365158, 45.315197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579037, 25.680445, 45.548309>,  <36.626484, 25.869617, 45.688175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579037, 25.680445, 45.548309>,  <36.499958, 25.365158, 45.315197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579037, 25.680445, 45.548309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316758, 0.613983, -0.722972,
		-0.927675, -0.041673, 0.371055,
		0.197693, 0.788218, 0.582777,
		36.638344, 25.916910, 45.723141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899086, 25.735294, 45.330536>,  <36.499958, 25.365158, 45.315197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899086, 25.735294, 45.330536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137928, 26.030663, 45.455883>,  <36.281235, 26.207884, 45.531090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137928, 26.030663, 45.455883>,  <35.899086, 25.735294, 45.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137928, 26.030663, 45.455883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492711, 0.645892, -0.583146,
		-0.633008, 0.193802, 0.749495,
		0.597107, 0.738420, 0.313366,
		36.317059, 26.252188, 45.549892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532600, 26.327602, 45.509094>,  <35.899086, 25.735294, 45.330536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532600, 26.327602, 45.509094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889122, 26.493937, 45.436798>,  <36.103035, 26.593737, 45.393421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889122, 26.493937, 45.436798>,  <35.532600, 26.327602, 45.509094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889122, 26.493937, 45.436798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425096, 0.627707, -0.652132,
		-0.157729, 0.658076, 0.736245,
		0.891300, 0.415835, -0.180738,
		36.156513, 26.618687, 45.382576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342152, 26.999409, 45.414066>,  <35.532600, 26.327602, 45.509094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342152, 26.999409, 45.414066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702541, 26.953001, 45.246841>,  <35.918777, 26.925158, 45.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702541, 26.953001, 45.246841>,  <35.342152, 26.999409, 45.414066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702541, 26.953001, 45.246841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251404, 0.645720, -0.721000,
		0.353601, 0.754709, 0.552613,
		0.900979, -0.116017, -0.418064,
		35.972836, 26.918196, 45.121422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446011, 27.611830, 45.163269>,  <35.342152, 26.999409, 45.414066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446011, 27.611830, 45.163269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748348, 27.427271, 44.977444>,  <35.929752, 27.316536, 44.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748348, 27.427271, 44.977444>,  <35.446011, 27.611830, 45.163269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748348, 27.427271, 44.977444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136430, 0.582960, -0.800965,
		0.640381, 0.668784, 0.377678,
		0.755843, -0.461396, -0.464559,
		35.975101, 27.288853, 44.838078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970348, 28.117350, 44.938274>,  <35.446011, 27.611830, 45.163269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970348, 28.117350, 44.938274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982193, 27.796143, 44.700188>,  <35.989300, 27.603418, 44.557335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982193, 27.796143, 44.700188>,  <35.970348, 28.117350, 44.938274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982193, 27.796143, 44.700188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147807, 0.585417, -0.797145,
		0.988573, 0.111580, -0.101359,
		0.029608, -0.803017, -0.595220,
		35.991074, 27.555237, 44.521622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427856, 28.303368, 44.305843>,  <35.970348, 28.117350, 44.938274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427856, 28.303368, 44.305843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200607, 27.986303, 44.217373>,  <36.064259, 27.796064, 44.164291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200607, 27.986303, 44.217373>,  <36.427856, 28.303368, 44.305843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200607, 27.986303, 44.217373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204777, 0.396481, -0.894913,
		0.797058, -0.463130, -0.387570,
		-0.568125, -0.792663, -0.221179,
		36.030170, 27.748505, 44.151020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663269, 28.040733, 43.626091>,  <36.427856, 28.303368, 44.305843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663269, 28.040733, 43.626091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275360, 27.949686, 43.661247>,  <36.042614, 27.895058, 43.682339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275360, 27.949686, 43.661247>,  <36.663269, 28.040733, 43.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275360, 27.949686, 43.661247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170344, 0.373698, -0.911775,
		0.174692, -0.899189, -0.401177,
		-0.969776, -0.227618, 0.087889,
		35.984428, 27.881401, 43.687614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502697, 27.790600, 42.943233>,  <36.663269, 28.040733, 43.626091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502697, 27.790600, 42.943233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134827, 27.843023, 43.091301>,  <35.914104, 27.874477, 43.180141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134827, 27.843023, 43.091301>,  <36.502697, 27.790600, 42.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134827, 27.843023, 43.091301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304728, 0.356370, -0.883256,
		-0.247676, -0.925107, -0.287806,
		-0.919673, 0.131059, 0.370170,
		35.858925, 27.882341, 43.202351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978848, 27.546745, 42.420799>,  <36.502697, 27.790600, 42.943233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978848, 27.546745, 42.420799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776585, 27.799074, 42.656216>,  <35.655228, 27.950472, 42.797466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776585, 27.799074, 42.656216>,  <35.978848, 27.546745, 42.420799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776585, 27.799074, 42.656216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462346, 0.377803, -0.802185,
		-0.728387, -0.677738, 0.100619,
		-0.505657, 0.630822, 0.588536,
		35.624889, 27.988321, 42.832775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293980, 27.411318, 42.258511>,  <35.978848, 27.546745, 42.420799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293980, 27.411318, 42.258511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299809, 27.781298, 42.410435>,  <35.303307, 28.003286, 42.501591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299809, 27.781298, 42.410435>,  <35.293980, 27.411318, 42.258511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299809, 27.781298, 42.410435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365017, 0.358558, -0.859185,
		-0.930887, -0.126117, 0.342847,
		0.014572, 0.924949, 0.379812,
		35.304180, 28.058783, 42.524380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558647, 27.706959, 42.214550>,  <35.293980, 27.411318, 42.258511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558647, 27.706959, 42.214550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820263, 28.008615, 42.238216>,  <34.977234, 28.189610, 42.252415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820263, 28.008615, 42.238216>,  <34.558647, 27.706959, 42.214550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820263, 28.008615, 42.238216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425684, 0.431572, -0.795323,
		-0.625319, 0.494990, 0.603292,
		0.654041, 0.754142, 0.059161,
		35.016476, 28.234858, 42.255966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118374, 28.287794, 42.175941>,  <34.558647, 27.706959, 42.214550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118374, 28.287794, 42.175941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482471, 28.428596, 42.088718>,  <34.700932, 28.513079, 42.036385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482471, 28.428596, 42.088718>,  <34.118374, 28.287794, 42.175941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482471, 28.428596, 42.088718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368906, 0.450234, -0.813141,
		-0.188054, 0.820598, 0.539680,
		0.910244, 0.352005, -0.218055,
		34.755547, 28.534199, 42.023300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004211, 28.972467, 42.077141>,  <34.118374, 28.287794, 42.175941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004211, 28.972467, 42.077141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359768, 28.978491, 41.893990>,  <34.573101, 28.982105, 41.784100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359768, 28.978491, 41.893990>,  <34.004211, 28.972467, 42.077141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359768, 28.978491, 41.893990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326030, 0.722936, -0.609154,
		0.321843, 0.690751, 0.647518,
		0.888888, 0.015059, -0.457877,
		34.626434, 28.983009, 41.756626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189728, 29.604809, 42.065414>,  <34.004211, 28.972467, 42.077141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189728, 29.604809, 42.065414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417049, 29.452417, 41.773693>,  <34.553440, 29.360983, 41.598660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417049, 29.452417, 41.773693>,  <34.189728, 29.604809, 42.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417049, 29.452417, 41.773693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212300, 0.788447, -0.577304,
		0.794960, 0.482915, 0.367195,
		0.568303, -0.380978, -0.729307,
		34.587540, 29.338123, 41.554901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598576, 30.120794, 41.800098>,  <34.189728, 29.604809, 42.065414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598576, 30.120794, 41.800098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588455, 29.869572, 41.488998>,  <34.582382, 29.718838, 41.302338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588455, 29.869572, 41.488998>,  <34.598576, 30.120794, 41.800098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588455, 29.869572, 41.488998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117855, 0.774452, -0.621558,
		0.992709, 0.075936, -0.093614,
		-0.025301, -0.628059, -0.777755,
		34.580864, 29.681154, 41.255672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924534, 30.536777, 41.224522>,  <34.598576, 30.120794, 41.800098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924534, 30.536777, 41.224522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703003, 30.247065, 41.060238>,  <34.570084, 30.073236, 40.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703003, 30.247065, 41.060238>,  <34.924534, 30.536777, 41.224522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703003, 30.247065, 41.060238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172518, 0.582388, -0.794394,
		0.814562, -0.369103, -0.447496,
		-0.553829, -0.724284, -0.410714,
		34.536854, 30.029779, 40.937023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924641, 30.613266, 40.465900>,  <34.924534, 30.536777, 41.224522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924641, 30.613266, 40.465900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617397, 30.361877, 40.514938>,  <34.433052, 30.211044, 40.544361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617397, 30.361877, 40.514938>,  <34.924641, 30.613266, 40.465900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617397, 30.361877, 40.514938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474434, 0.430019, -0.768112,
		0.430019, -0.648158, -0.628470,
		0.768112, 0.628470, -0.122592,
		34.386963, 30.173336, 40.551716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819065, 30.204832, 39.880154>,  <34.924641, 30.613266, 40.465900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819065, 30.204832, 39.880154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467068, 30.233948, 40.067905>,  <34.255871, 30.251417, 40.180557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467068, 30.233948, 40.067905>,  <34.819065, 30.204832, 39.880154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467068, 30.233948, 40.067905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407141, 0.393394, -0.824304,
		-0.244654, -0.916484, -0.316546,
		-0.879989, 0.072791, 0.469384,
		34.203072, 30.255785, 40.208721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381226, 29.967772, 39.374538>,  <34.819065, 30.204832, 39.880154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381226, 29.967772, 39.374538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140633, 30.165030, 39.625942>,  <33.996277, 30.283384, 39.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140633, 30.165030, 39.625942>,  <34.381226, 29.967772, 39.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140633, 30.165030, 39.625942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452604, 0.437943, -0.776760,
		-0.658306, -0.751675, -0.040217,
		-0.601483, 0.493144, 0.628511,
		33.960186, 30.312973, 39.814495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675438, 29.856375, 39.103233>,  <34.381226, 29.967772, 39.374538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675438, 29.856375, 39.103233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562622, 30.155600, 39.343517>,  <33.494934, 30.335135, 39.487690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562622, 30.155600, 39.343517>,  <33.675438, 29.856375, 39.103233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562622, 30.155600, 39.343517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389009, 0.483185, -0.784349,
		-0.876998, -0.454899, 0.154726,
		-0.282039, 0.748063, 0.600713,
		33.478012, 30.380018, 39.523731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031315, 30.094276, 38.797028>,  <33.675438, 29.856375, 39.103233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031315, 30.094276, 38.797028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137959, 30.395821, 39.037231>,  <33.201946, 30.576748, 39.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137959, 30.395821, 39.037231>,  <33.031315, 30.094276, 38.797028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137959, 30.395821, 39.037231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353121, 0.656141, -0.666922,
		-0.896785, -0.034244, 0.441139,
		0.266611, 0.753861, 0.600510,
		33.217941, 30.621979, 39.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480812, 30.602842, 38.749741>,  <33.031315, 30.094276, 38.797028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480812, 30.602842, 38.749741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814445, 30.793091, 38.861523>,  <33.014626, 30.907240, 38.928593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814445, 30.793091, 38.861523>,  <32.480812, 30.602842, 38.749741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814445, 30.793091, 38.861523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143213, 0.675910, -0.722936,
		-0.532729, 0.562965, 0.631878,
		0.834081, 0.475622, 0.279453,
		33.064671, 30.935778, 38.945358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278187, 31.237312, 38.870739>,  <32.480812, 30.602842, 38.749741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278187, 31.237312, 38.870739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666985, 31.236666, 38.776741>,  <32.900265, 31.236277, 38.720345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666985, 31.236666, 38.776741>,  <32.278187, 31.237312, 38.870739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666985, 31.236666, 38.776741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169100, 0.689578, -0.704193,
		0.163185, 0.724210, 0.669993,
		0.971996, -0.001618, -0.234993,
		32.958584, 31.236179, 38.706242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444942, 31.955721, 38.674229>,  <32.278187, 31.237312, 38.870739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444942, 31.955721, 38.674229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754749, 31.752098, 38.524033>,  <32.940632, 31.629925, 38.433914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754749, 31.752098, 38.524033>,  <32.444942, 31.955721, 38.674229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754749, 31.752098, 38.524033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043419, 0.634990, -0.771300,
		0.631067, 0.581078, 0.513910,
		0.774513, -0.509055, -0.375491,
		32.987103, 31.599382, 38.411385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808842, 32.477184, 38.581673>,  <32.444942, 31.955721, 38.674229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808842, 32.477184, 38.581673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959747, 32.177650, 38.363712>,  <33.050289, 31.997931, 38.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959747, 32.177650, 38.363712>,  <32.808842, 32.477184, 38.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959747, 32.177650, 38.363712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135240, 0.626617, -0.767503,
		0.916178, 0.215860, 0.337673,
		0.377265, -0.748836, -0.544900,
		33.072926, 31.952999, 38.200241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336178, 32.785885, 38.117325>,  <32.808842, 32.477184, 38.581673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336178, 32.785885, 38.117325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219700, 32.456432, 37.922665>,  <33.149815, 32.258759, 37.805870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219700, 32.456432, 37.922665>,  <33.336178, 32.785885, 38.117325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219700, 32.456432, 37.922665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129873, 0.469952, -0.873085,
		0.947807, -0.317442, -0.029880,
		-0.291196, -0.823636, -0.486651,
		33.132339, 32.209343, 37.776669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785389, 32.695736, 37.441273>,  <33.336178, 32.785885, 38.117325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785389, 32.695736, 37.441273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481514, 32.449482, 37.357498>,  <33.299187, 32.301731, 37.307232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481514, 32.449482, 37.357498>,  <33.785389, 32.695736, 37.441273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481514, 32.449482, 37.357498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013622, 0.337071, -0.941381,
		0.650141, -0.712306, -0.264456,
		-0.759691, -0.615632, -0.209441,
		33.253605, 32.264793, 37.294666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991116, 32.447720, 36.726742>,  <33.785389, 32.695736, 37.441273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991116, 32.447720, 36.726742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607559, 32.371784, 36.811111>,  <33.377426, 32.326225, 36.861732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607559, 32.371784, 36.811111>,  <33.991116, 32.447720, 36.726742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607559, 32.371784, 36.811111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269008, 0.371516, -0.888600,
		0.090326, -0.908812, -0.407311,
		-0.958893, -0.189833, 0.210921,
		33.319893, 32.314835, 36.874386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519730, 32.041817, 37.025967>,  <33.991116, 32.447720, 36.726742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519730, 32.041817, 37.025967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864910, 32.146103, 36.852833>,  <35.072018, 32.208675, 36.748955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864910, 32.146103, 36.852833>,  <34.519730, 32.041817, 37.025967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864910, 32.146103, 36.852833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453981, -0.776144, 0.437609,
		-0.221849, -0.574132, -0.788134,
		0.862951, 0.260715, -0.432832,
		35.123795, 32.224316, 36.722984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818611, 31.396662, 36.947533>,  <34.519730, 32.041817, 37.025967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818611, 31.396662, 36.947533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129078, 31.630217, 36.852341>,  <35.315357, 31.770350, 36.795223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129078, 31.630217, 36.852341>,  <34.818611, 31.396662, 36.947533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129078, 31.630217, 36.852341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617763, -0.628658, 0.472396,
		0.126216, -0.513677, -0.848649,
		0.776169, 0.583888, -0.237984,
		35.361927, 31.805384, 36.780945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323345, 30.921246, 36.811821>,  <34.818611, 31.396662, 36.947533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323345, 30.921246, 36.811821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518578, 31.260994, 36.892166>,  <35.635715, 31.464844, 36.940372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518578, 31.260994, 36.892166>,  <35.323345, 30.921246, 36.811821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518578, 31.260994, 36.892166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576638, -0.486568, 0.656308,
		0.655185, -0.204503, -0.727263,
		0.488080, 0.849370, 0.200868,
		35.665001, 31.515804, 36.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905434, 30.644279, 37.034714>,  <35.323345, 30.921246, 36.811821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905434, 30.644279, 37.034714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937157, 31.029167, 37.138897>,  <35.956192, 31.260099, 37.201408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937157, 31.029167, 37.138897>,  <35.905434, 30.644279, 37.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937157, 31.029167, 37.138897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583215, -0.256689, 0.770695,
		0.808437, 0.090782, -0.581540,
		0.079310, 0.962221, 0.260462,
		35.960949, 31.317833, 37.217037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649628, 30.873016, 37.006779>,  <35.905434, 30.644279, 37.034714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649628, 30.873016, 37.006779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458118, 31.118322, 37.258076>,  <36.343212, 31.265505, 37.408852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458118, 31.118322, 37.258076>,  <36.649628, 30.873016, 37.006779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458118, 31.118322, 37.258076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570018, -0.327107, 0.753711,
		0.667725, 0.718964, -0.192961,
		-0.478772, 0.613263, 0.628240,
		36.314487, 31.302301, 37.446548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133682, 31.280256, 37.438206>,  <36.649628, 30.873016, 37.006779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133682, 31.280256, 37.438206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800571, 31.273964, 37.659557>,  <36.600704, 31.270189, 37.792370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800571, 31.273964, 37.659557>,  <37.133682, 31.280256, 37.438206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800571, 31.273964, 37.659557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468592, -0.552307, 0.689477,
		0.294792, 0.833493, 0.467320,
		-0.832778, -0.015730, 0.553384,
		36.550739, 31.269245, 37.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267231, 31.541147, 38.159332>,  <37.133682, 31.280256, 37.438206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267231, 31.541147, 38.159332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947865, 31.301651, 38.184761>,  <36.756245, 31.157953, 38.200020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947865, 31.301651, 38.184761>,  <37.267231, 31.541147, 38.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947865, 31.301651, 38.184761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370215, -0.404907, 0.836057,
		-0.474839, 0.691057, 0.544947,
		-0.798416, -0.598740, 0.063574,
		36.708340, 31.122028, 38.203835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051468, 31.546284, 38.844555>,  <37.267231, 31.541147, 38.159332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051468, 31.546284, 38.844555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917244, 31.206171, 38.682362>,  <36.836708, 31.002104, 38.585045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917244, 31.206171, 38.682362>,  <37.051468, 31.546284, 38.844555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917244, 31.206171, 38.682362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304826, -0.505293, 0.807317,
		-0.891336, 0.147303, 0.428745,
		-0.335562, -0.850283, -0.405484,
		36.816574, 30.951086, 38.560715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930611, 31.184343, 39.385365>,  <37.051468, 31.546284, 38.844555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930611, 31.184343, 39.385365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849319, 30.898514, 39.117607>,  <36.800545, 30.727016, 38.956955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849319, 30.898514, 39.117607>,  <36.930611, 31.184343, 39.385365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849319, 30.898514, 39.117607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243386, -0.699065, 0.672362,
		-0.948400, -0.026281, 0.315984,
		-0.203223, -0.714575, -0.669390,
		36.788353, 30.684141, 38.916790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555683, 30.716406, 39.758038>,  <36.930611, 31.184343, 39.385365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555683, 30.716406, 39.758038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720016, 30.538609, 39.439632>,  <36.818619, 30.431931, 39.248589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720016, 30.538609, 39.439632>,  <36.555683, 30.716406, 39.758038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720016, 30.538609, 39.439632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265103, -0.777132, 0.570777,
		-0.872315, -0.445521, -0.201437,
		0.410837, -0.444495, -0.796013,
		36.843269, 30.405260, 39.200829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269466, 29.987040, 39.735035>,  <36.555683, 30.716406, 39.758038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269466, 29.987040, 39.735035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617413, 29.959215, 39.539688>,  <36.826180, 29.942520, 39.422482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617413, 29.959215, 39.539688>,  <36.269466, 29.987040, 39.735035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617413, 29.959215, 39.539688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247327, -0.795081, 0.553782,
		-0.426812, -0.602501, -0.674407,
		0.869862, -0.069562, -0.488365,
		36.878372, 29.938347, 39.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289722, 29.340542, 39.524227>,  <36.269466, 29.987040, 39.735035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289722, 29.340542, 39.524227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664234, 29.478865, 39.548870>,  <36.888943, 29.561859, 39.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664234, 29.478865, 39.548870>,  <36.289722, 29.340542, 39.524227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664234, 29.478865, 39.548870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272910, -0.826595, 0.492200,
		0.221131, -0.444024, -0.868299,
		0.936280, 0.345808, 0.061608,
		36.945118, 29.582607, 39.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756027, 28.737087, 39.359966>,  <36.289722, 29.340542, 39.524227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756027, 28.737087, 39.359966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001083, 29.006395, 39.525558>,  <37.148117, 29.167980, 39.624912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001083, 29.006395, 39.525558>,  <36.756027, 28.737087, 39.359966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001083, 29.006395, 39.525558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339495, -0.697173, 0.631421,
		0.713734, -0.246289, -0.655688,
		0.612640, 0.673270, 0.413982,
		37.184875, 29.208376, 39.649754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446655, 28.390881, 39.392551>,  <36.756027, 28.737087, 39.359966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446655, 28.390881, 39.392551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472519, 28.696703, 39.649075>,  <37.488037, 28.880196, 39.802986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472519, 28.696703, 39.649075>,  <37.446655, 28.390881, 39.392551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472519, 28.696703, 39.649075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531059, -0.570456, 0.626543,
		0.844864, 0.300058, -0.442910,
		0.064662, 0.764555, 0.641306,
		37.491917, 28.926069, 39.841465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188377, 28.466652, 39.606743>,  <37.446655, 28.390881, 39.392551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188377, 28.466652, 39.606743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003868, 28.659258, 39.904839>,  <37.893162, 28.774820, 40.083694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003868, 28.659258, 39.904839>,  <38.188377, 28.466652, 39.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003868, 28.659258, 39.904839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482181, -0.569029, 0.666113,
		0.744803, 0.666596, 0.030299,
		-0.461269, 0.481514, 0.745235,
		37.865486, 28.803713, 40.128410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647163, 28.578606, 40.138988>,  <38.188377, 28.466652, 39.606743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647163, 28.578606, 40.138988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288509, 28.596558, 40.315186>,  <38.073318, 28.607328, 40.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288509, 28.596558, 40.315186>,  <38.647163, 28.578606, 40.138988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288509, 28.596558, 40.315186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305378, -0.657694, 0.688610,
		0.320613, 0.751948, 0.576005,
		-0.896633, 0.044878, 0.440494,
		38.019520, 28.610022, 40.447334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769665, 28.766930, 40.857510>,  <38.647163, 28.578606, 40.138988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769665, 28.766930, 40.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395912, 28.624437, 40.855331>,  <38.171661, 28.538942, 40.854027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395912, 28.624437, 40.855331>,  <38.769665, 28.766930, 40.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395912, 28.624437, 40.855331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195683, -0.525921, 0.827717,
		-0.297720, 0.772339, 0.561119,
		-0.934383, -0.356230, -0.005444,
		38.115597, 28.517569, 40.853699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415237, 28.936172, 41.506367>,  <38.769665, 28.766930, 40.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415237, 28.936172, 41.506367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216473, 28.626707, 41.349125>,  <38.097214, 28.441029, 41.254780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216473, 28.626707, 41.349125>,  <38.415237, 28.936172, 41.506367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216473, 28.626707, 41.349125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054940, -0.480122, 0.875480,
		-0.866063, 0.413435, 0.281081,
		-0.496907, -0.773663, -0.393101,
		38.067402, 28.394608, 41.231194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873463, 28.800800, 42.066772>,  <38.415237, 28.936172, 41.506367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873463, 28.800800, 42.066772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973576, 28.485790, 41.841503>,  <38.033642, 28.296783, 41.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973576, 28.485790, 41.841503>,  <37.873463, 28.800800, 42.066772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973576, 28.485790, 41.841503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130118, -0.549045, 0.825601,
		-0.959390, -0.279911, -0.034944,
		0.250281, -0.787527, -0.563170,
		38.048660, 28.249533, 41.672550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478767, 28.337807, 42.278667>,  <37.873463, 28.800800, 42.066772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478767, 28.337807, 42.278667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780441, 28.133427, 42.113674>,  <37.961445, 28.010799, 42.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780441, 28.133427, 42.113674>,  <37.478767, 28.337807, 42.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780441, 28.133427, 42.113674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075989, -0.556021, 0.827688,
		-0.652256, -0.655570, -0.380513,
		0.754180, -0.510949, -0.412484,
		38.006695, 27.980143, 41.989929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323547, 27.685192, 42.413815>,  <37.478767, 28.337807, 42.278667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323547, 27.685192, 42.413815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721493, 27.684040, 42.373329>,  <37.960258, 27.683350, 42.349037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721493, 27.684040, 42.373329>,  <37.323547, 27.685192, 42.413815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721493, 27.684040, 42.373329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088587, -0.459411, 0.883795,
		-0.049042, -0.888219, -0.456795,
		0.994860, -0.002877, -0.101215,
		38.019951, 27.683176, 42.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481701, 27.091740, 42.632660>,  <37.323547, 27.685192, 42.413815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481701, 27.091740, 42.632660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822041, 27.301208, 42.649712>,  <38.026245, 27.426889, 42.659943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822041, 27.301208, 42.649712>,  <37.481701, 27.091740, 42.632660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822041, 27.301208, 42.649712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156103, -0.329440, 0.931183,
		0.501680, -0.785644, -0.362052,
		0.850852, 0.523673, 0.042632,
		38.077297, 27.458311, 42.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944176, 26.614283, 42.939236>,  <37.481701, 27.091740, 42.632660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944176, 26.614283, 42.939236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137974, 26.955395, 43.017246>,  <38.254253, 27.160061, 43.064053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137974, 26.955395, 43.017246>,  <37.944176, 26.614283, 42.939236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137974, 26.955395, 43.017246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326780, -0.383230, 0.863915,
		0.811470, -0.354827, -0.464343,
		0.484491, 0.852779, 0.195029,
		38.283321, 27.211229, 43.075756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657185, 26.367107, 43.250587>,  <37.944176, 26.614283, 42.939236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657185, 26.367107, 43.250587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575684, 26.753515, 43.314205>,  <38.526783, 26.985359, 43.352375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575684, 26.753515, 43.314205>,  <38.657185, 26.367107, 43.250587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575684, 26.753515, 43.314205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223150, -0.112348, 0.968288,
		0.953252, 0.232778, -0.192676,
		-0.203749, 0.966019, 0.159041,
		38.514561, 27.043322, 43.361916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345089, 26.577904, 43.560383>,  <38.657185, 26.367107, 43.250587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345089, 26.577904, 43.560383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064163, 26.840694, 43.670029>,  <38.895607, 26.998369, 43.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064163, 26.840694, 43.670029>,  <39.345089, 26.577904, 43.560383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064163, 26.840694, 43.670029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389278, 0.032055, 0.920562,
		0.596004, 0.753227, -0.278260,
		-0.702312, 0.656979, 0.274110,
		38.853470, 27.037788, 43.752262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620350, 27.088768, 44.016476>,  <39.345089, 26.577904, 43.560383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620350, 27.088768, 44.016476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238766, 27.153406, 44.117554>,  <39.009815, 27.192188, 44.178200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238766, 27.153406, 44.117554>,  <39.620350, 27.088768, 44.016476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238766, 27.153406, 44.117554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276186, 0.144638, 0.950159,
		0.116992, 0.976200, -0.182609,
		-0.953957, 0.161595, 0.252691,
		38.952579, 27.201885, 44.193359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655369, 27.629158, 44.501480>,  <39.620350, 27.088768, 44.016476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655369, 27.629158, 44.501480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301914, 27.450745, 44.558388>,  <39.089840, 27.343697, 44.592533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301914, 27.450745, 44.558388>,  <39.655369, 27.629158, 44.501480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301914, 27.450745, 44.558388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173615, -0.029965, 0.984358,
		-0.434794, 0.894514, 0.103916,
		-0.883636, -0.446035, 0.142273,
		39.036823, 27.316935, 44.601070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405724, 27.979548, 45.003315>,  <39.655369, 27.629158, 44.501480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405724, 27.979548, 45.003315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226810, 27.622250, 45.021450>,  <39.119465, 27.407871, 45.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226810, 27.622250, 45.021450>,  <39.405724, 27.979548, 45.003315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226810, 27.622250, 45.021450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226282, -0.063974, 0.971959,
		-0.865296, 0.444998, 0.230739,
		-0.447281, -0.893244, 0.045338,
		39.092625, 27.354277, 45.035053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947826, 28.023270, 45.569244>,  <39.405724, 27.979548, 45.003315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947826, 28.023270, 45.569244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929638, 27.623859, 45.557404>,  <38.918724, 27.384212, 45.550297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929638, 27.623859, 45.557404>,  <38.947826, 28.023270, 45.569244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929638, 27.623859, 45.557404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070152, -0.032755, 0.996999,
		-0.996499, 0.043260, 0.071538,
		-0.045473, -0.998527, -0.029606,
		38.915997, 27.324301, 45.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466389, 27.857052, 46.048359>,  <38.947826, 28.023270, 45.569244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466389, 27.857052, 46.048359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683105, 27.529560, 45.972317>,  <38.813137, 27.333065, 45.926693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683105, 27.529560, 45.972317>,  <38.466389, 27.857052, 46.048359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683105, 27.529560, 45.972317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279983, -0.037455, 0.959274,
		-0.792507, -0.572956, 0.208937,
		0.541796, -0.818730, -0.190101,
		38.845646, 27.283941, 45.915287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344067, 27.424246, 46.573196>,  <38.466389, 27.857052, 46.048359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344067, 27.424246, 46.573196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701141, 27.314177, 46.430431>,  <38.915386, 27.248135, 46.344772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701141, 27.314177, 46.430431>,  <38.344067, 27.424246, 46.573196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701141, 27.314177, 46.430431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366097, -0.019090, 0.930381,
		-0.262831, -0.961205, 0.083699,
		0.892688, -0.275175, -0.356912,
		38.968948, 27.231625, 46.323357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696735, 27.128902, 47.141369>,  <38.344067, 27.424246, 46.573196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696735, 27.128902, 47.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009850, 27.176147, 46.896980>,  <39.197720, 27.204494, 46.750347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009850, 27.176147, 46.896980>,  <38.696735, 27.128902, 47.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009850, 27.176147, 46.896980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616813, -0.017335, 0.786919,
		0.082355, -0.992849, -0.086424,
		0.782789, 0.118114, -0.610975,
		39.244686, 27.211580, 46.713688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135509, 26.477343, 47.231209>,  <38.696735, 27.128902, 47.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135509, 26.477343, 47.231209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343121, 26.795866, 47.106949>,  <39.467686, 26.986980, 47.032391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343121, 26.795866, 47.106949>,  <39.135509, 26.477343, 47.231209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343121, 26.795866, 47.106949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606250, -0.086749, 0.790528,
		0.602557, -0.598636, -0.527788,
		0.519024, 0.796310, -0.310652,
		39.498829, 27.034760, 47.013752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800289, 26.245487, 47.348019>,  <39.135509, 26.477343, 47.231209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800289, 26.245487, 47.348019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825237, 26.641195, 47.295174>,  <39.840206, 26.878620, 47.263466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825237, 26.641195, 47.295174>,  <39.800289, 26.245487, 47.348019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825237, 26.641195, 47.295174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681600, 0.054474, 0.729695,
		0.729062, -0.135564, -0.670889,
		0.062374, 0.989270, -0.132115,
		39.843948, 26.937977, 47.255539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550186, 26.408991, 47.366940>,  <39.800289, 26.245487, 47.348019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550186, 26.408991, 47.366940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347111, 26.741259, 47.458370>,  <40.225266, 26.940619, 47.513229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347111, 26.741259, 47.458370>,  <40.550186, 26.408991, 47.366940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347111, 26.741259, 47.458370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571671, 0.126306, 0.810703,
		0.644554, 0.542253, -0.538992,
		-0.507684, 0.830667, 0.228579,
		40.194805, 26.990459, 47.526943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090515, 26.745340, 47.657925>,  <40.550186, 26.408991, 47.366940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090515, 26.745340, 47.657925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768990, 26.964462, 47.750694>,  <40.576073, 27.095936, 47.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768990, 26.964462, 47.750694>,  <41.090515, 26.745340, 47.657925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768990, 26.964462, 47.750694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493517, 0.396407, 0.774146,
		0.332143, 0.736731, -0.588989,
		-0.803817, 0.547804, 0.231925,
		40.527843, 27.128803, 47.820271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326351, 27.471926, 47.784710>,  <41.090515, 26.745340, 47.657925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326351, 27.471926, 47.784710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991985, 27.403833, 47.993423>,  <40.791367, 27.362978, 48.118652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991985, 27.403833, 47.993423>,  <41.326351, 27.471926, 47.784710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991985, 27.403833, 47.993423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422018, 0.408479, 0.809349,
		-0.350917, 0.896753, -0.269614,
		-0.835918, -0.170232, 0.521788,
		40.741211, 27.352764, 48.149960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048798, 28.007912, 48.202599>,  <41.326351, 27.471926, 47.784710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048798, 28.007912, 48.202599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900803, 27.680117, 48.377663>,  <40.812004, 27.483438, 48.482700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900803, 27.680117, 48.377663>,  <41.048798, 28.007912, 48.202599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900803, 27.680117, 48.377663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637941, 0.118363, 0.760934,
		-0.675380, 0.560740, 0.478992,
		-0.369991, -0.819488, 0.437659,
		40.789806, 27.434271, 48.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504505, 28.008913, 48.710720>,  <41.048798, 28.007912, 48.202599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504505, 28.008913, 48.710720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835999, 28.211670, 48.805599>,  <42.034893, 28.333324, 48.862526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835999, 28.211670, 48.805599>,  <41.504505, 28.008913, 48.710720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835999, 28.211670, 48.805599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108962, 0.269577, -0.956794,
		-0.548934, 0.818773, 0.168175,
		0.828733, 0.506892, 0.237195,
		42.084618, 28.363737, 48.876759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427017, 28.763838, 48.574512>,  <41.504505, 28.008913, 48.710720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427017, 28.763838, 48.574512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821476, 28.699829, 48.557087>,  <42.058151, 28.661423, 48.546631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821476, 28.699829, 48.557087>,  <41.427017, 28.763838, 48.574512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821476, 28.699829, 48.557087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009569, 0.317125, -0.948336,
		0.165570, 0.934786, 0.314264,
		0.986152, -0.160023, -0.043562,
		42.117321, 28.651823, 48.544018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688202, 29.311407, 48.243351>,  <41.427017, 28.763838, 48.574512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688202, 29.311407, 48.243351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992405, 29.052269, 48.225777>,  <42.174927, 28.896786, 48.215233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992405, 29.052269, 48.225777>,  <41.688202, 29.311407, 48.243351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992405, 29.052269, 48.225777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118335, 0.204803, -0.971624,
		0.638461, 0.733724, 0.232416,
		0.760503, -0.647847, -0.043933,
		42.220554, 28.857916, 48.212597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088066, 29.665855, 47.809738>,  <41.688202, 29.311407, 48.243351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088066, 29.665855, 47.809738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245396, 29.298677, 47.789047>,  <42.339794, 29.078371, 47.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245396, 29.298677, 47.789047>,  <42.088066, 29.665855, 47.809738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245396, 29.298677, 47.789047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225351, 0.150794, -0.962538,
		0.891356, 0.366930, 0.266170,
		0.393321, -0.917945, -0.051723,
		42.363392, 29.023294, 47.773529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853271, 29.753925, 47.592743>,  <42.088066, 29.665855, 47.809738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853271, 29.753925, 47.592743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727932, 29.384020, 47.506374>,  <42.652729, 29.162077, 47.454556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727932, 29.384020, 47.506374>,  <42.853271, 29.753925, 47.592743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727932, 29.384020, 47.506374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392914, 0.080740, -0.916024,
		0.864540, -0.371874, 0.338053,
		-0.313351, -0.924765, -0.215918,
		42.633926, 29.106590, 47.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240105, 29.574385, 47.005325>,  <42.853271, 29.753925, 47.592743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240105, 29.574385, 47.005325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940022, 29.311863, 46.973206>,  <42.759972, 29.154350, 46.953934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940022, 29.311863, 46.973206>,  <43.240105, 29.574385, 47.005325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940022, 29.311863, 46.973206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115190, -0.010142, -0.993292,
		0.651088, -0.754427, 0.083208,
		-0.750210, -0.656305, -0.080299,
		42.714958, 29.114971, 46.949116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477154, 29.074247, 46.503082>,  <43.240105, 29.574385, 47.005325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477154, 29.074247, 46.503082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082993, 29.009666, 46.524681>,  <42.846497, 28.970919, 46.537640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082993, 29.009666, 46.524681>,  <43.477154, 29.074247, 46.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082993, 29.009666, 46.524681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039635, -0.090892, -0.995072,
		0.165564, -0.982686, 0.083166,
		-0.985402, -0.161452, 0.053998,
		42.787373, 28.961231, 46.540882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220402, 28.429836, 46.067020>,  <43.477154, 29.074247, 46.503082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220402, 28.429836, 46.067020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914005, 28.684448, 46.102985>,  <42.730167, 28.837215, 46.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914005, 28.684448, 46.102985>,  <43.220402, 28.429836, 46.067020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914005, 28.684448, 46.102985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194579, -0.096263, -0.976152,
		-0.612696, -0.765220, 0.197593,
		-0.765991, 0.636531, 0.089916,
		42.684208, 28.875408, 46.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811218, 28.236715, 45.491638>,  <43.220402, 28.429836, 46.067020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811218, 28.236715, 45.491638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666355, 28.587915, 45.616829>,  <42.579437, 28.798635, 45.691944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666355, 28.587915, 45.616829>,  <42.811218, 28.236715, 45.491638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666355, 28.587915, 45.616829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336813, 0.189812, -0.922241,
		-0.869135, -0.439413, 0.226980,
		-0.362162, 0.878002, 0.312972,
		42.557705, 28.851316, 45.710720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102947, 28.118240, 45.362991>,  <42.811218, 28.236715, 45.491638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102947, 28.118240, 45.362991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220558, 28.500237, 45.378700>,  <42.291126, 28.729433, 45.388126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220558, 28.500237, 45.378700>,  <42.102947, 28.118240, 45.362991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220558, 28.500237, 45.378700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399443, 0.160104, -0.902669,
		-0.868326, 0.249727, 0.428539,
		0.294032, 0.954988, 0.039270,
		42.308769, 28.786734, 45.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561691, 28.446655, 45.178047>,  <42.102947, 28.118240, 45.362991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561691, 28.446655, 45.178047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843403, 28.725124, 45.122437>,  <42.012432, 28.892206, 45.089069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843403, 28.725124, 45.122437>,  <41.561691, 28.446655, 45.178047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843403, 28.725124, 45.122437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398013, 0.225042, -0.889349,
		-0.587854, 0.681688, 0.435580,
		0.704282, 0.696174, -0.139029,
		42.054688, 28.933977, 45.080727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164482, 29.009893, 44.928600>,  <41.561691, 28.446655, 45.178047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164482, 29.009893, 44.928600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543812, 29.084379, 44.825836>,  <41.771412, 29.129070, 44.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543812, 29.084379, 44.825836>,  <41.164482, 29.009893, 44.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543812, 29.084379, 44.825836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300628, 0.268341, -0.915214,
		-0.101487, 0.945155, 0.310456,
		0.948326, 0.186214, -0.256907,
		41.828308, 29.140244, 44.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112667, 29.646086, 44.389656>,  <41.164482, 29.009893, 44.928600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112667, 29.646086, 44.389656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488716, 29.513031, 44.359924>,  <41.714344, 29.433199, 44.342083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488716, 29.513031, 44.359924>,  <41.112667, 29.646086, 44.389656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488716, 29.513031, 44.359924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022091, 0.277094, -0.960589,
		0.340123, 0.901428, 0.267850,
		0.940121, -0.332636, -0.074333,
		41.770752, 29.413240, 44.337624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536613, 30.205170, 44.134323>,  <41.112667, 29.646086, 44.389656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536613, 30.205170, 44.134323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691933, 29.850609, 44.033516>,  <41.785126, 29.637873, 43.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691933, 29.850609, 44.033516>,  <41.536613, 30.205170, 44.134323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691933, 29.850609, 44.033516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265281, 0.154378, -0.951732,
		0.882525, 0.436411, -0.175201,
		0.388299, -0.886404, -0.252014,
		41.808422, 29.584688, 43.957912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993813, 30.315777, 43.562515>,  <41.536613, 30.205170, 44.134323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993813, 30.315777, 43.562515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904221, 29.926697, 43.538223>,  <41.850464, 29.693249, 43.523647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904221, 29.926697, 43.538223>,  <41.993813, 30.315777, 43.562515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904221, 29.926697, 43.538223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168247, 0.099967, -0.980663,
		0.959960, -0.209436, -0.186045,
		-0.223984, -0.972699, -0.060727,
		41.837025, 29.634888, 43.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317154, 30.173325, 43.000660>,  <41.993813, 30.315777, 43.562515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317154, 30.173325, 43.000660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042316, 29.891304, 43.070862>,  <41.877415, 29.722092, 43.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042316, 29.891304, 43.070862>,  <42.317154, 30.173325, 43.000660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042316, 29.891304, 43.070862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267573, 0.020965, -0.963309,
		0.675502, -0.708847, -0.203057,
		-0.687096, -0.705050, 0.175507,
		41.836189, 29.679789, 43.123512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331951, 29.698906, 42.428658>,  <42.317154, 30.173325, 43.000660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331951, 29.698906, 42.428658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966797, 29.659689, 42.587166>,  <41.747704, 29.636160, 42.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966797, 29.659689, 42.587166>,  <42.331951, 29.698906, 42.428658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966797, 29.659689, 42.587166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407413, 0.157718, -0.899522,
		0.025688, -0.982605, -0.183921,
		-0.912883, -0.098038, 0.396275,
		41.692932, 29.630278, 42.706047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007500, 29.286684, 41.894680>,  <42.331951, 29.698906, 42.428658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007500, 29.286684, 41.894680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698284, 29.394594, 42.124336>,  <41.512756, 29.459341, 42.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698284, 29.394594, 42.124336>,  <42.007500, 29.286684, 41.894680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698284, 29.394594, 42.124336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567154, 0.111515, -0.816028,
		-0.284172, -0.956444, 0.066801,
		-0.773035, 0.269778, 0.574140,
		41.466373, 29.475527, 42.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500290, 28.947662, 41.630825>,  <42.007500, 29.286684, 41.894680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500290, 28.947662, 41.630825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295540, 29.229372, 41.827591>,  <41.172688, 29.398397, 41.945652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295540, 29.229372, 41.827591>,  <41.500290, 28.947662, 41.630825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295540, 29.229372, 41.827591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628990, 0.082758, -0.772996,
		-0.585110, -0.705090, 0.400618,
		-0.511877, 0.704272, 0.491917,
		41.141975, 29.440653, 41.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715038, 28.748919, 41.618702>,  <41.500290, 28.947662, 41.630825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715038, 28.748919, 41.618702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765026, 29.141392, 41.677570>,  <40.795017, 29.376877, 41.712891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765026, 29.141392, 41.677570>,  <40.715038, 28.748919, 41.618702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765026, 29.141392, 41.677570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684178, 0.192646, -0.703411,
		-0.718529, -0.012791, 0.695380,
		0.124965, 0.981185, 0.147173,
		40.802517, 29.435747, 41.721722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066753, 29.044035, 41.478294>,  <40.715038, 28.748919, 41.618702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066753, 29.044035, 41.478294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287006, 29.377920, 41.475056>,  <40.419159, 29.578251, 41.473114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287006, 29.377920, 41.475056>,  <40.066753, 29.044035, 41.478294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287006, 29.377920, 41.475056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651874, 0.423919, -0.628771,
		-0.521410, 0.351496, 0.777548,
		0.550628, 0.834712, -0.008096,
		40.452194, 29.628334, 41.472626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565830, 29.613728, 41.564880>,  <40.066753, 29.044035, 41.478294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565830, 29.613728, 41.564880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884960, 29.783604, 41.393715>,  <40.076439, 29.885529, 41.291016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884960, 29.783604, 41.393715>,  <39.565830, 29.613728, 41.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884960, 29.783604, 41.393715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586680, 0.383462, -0.713277,
		-0.138835, 0.820119, 0.555095,
		0.797829, 0.424691, -0.427910,
		40.124310, 29.911011, 41.265343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428749, 30.319530, 41.449821>,  <39.565830, 29.613728, 41.564880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428749, 30.319530, 41.449821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721527, 30.240065, 41.189117>,  <39.897194, 30.192385, 41.032696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721527, 30.240065, 41.189117>,  <39.428749, 30.319530, 41.449821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721527, 30.240065, 41.189117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501627, 0.490233, -0.712770,
		0.461115, 0.848648, 0.259169,
		0.731945, -0.198663, -0.651759,
		39.941109, 30.180466, 40.993591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340797, 30.833517, 40.955177>,  <39.428749, 30.319530, 41.449821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340797, 30.833517, 40.955177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567059, 30.563919, 40.765118>,  <39.702816, 30.402161, 40.651081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567059, 30.563919, 40.765118>,  <39.340797, 30.833517, 40.955177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567059, 30.563919, 40.765118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335706, 0.338072, -0.879209,
		0.753216, 0.656840, -0.035031,
		0.565657, -0.673994, -0.475146,
		39.736755, 30.361721, 40.622574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757610, 31.208975, 40.482765>,  <39.340797, 30.833517, 40.955177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757610, 31.208975, 40.482765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718033, 30.835081, 40.346249>,  <39.694286, 30.610744, 40.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718033, 30.835081, 40.346249>,  <39.757610, 31.208975, 40.482765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718033, 30.835081, 40.346249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231156, 0.355180, -0.905767,
		0.967872, -0.010730, -0.251214,
		-0.098945, -0.934736, -0.341288,
		39.688351, 30.554661, 40.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160072, 31.125395, 39.861431>,  <39.757610, 31.208975, 40.482765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160072, 31.125395, 39.861431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861004, 30.860035, 39.873367>,  <39.681564, 30.700819, 39.880527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861004, 30.860035, 39.873367>,  <40.160072, 31.125395, 39.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861004, 30.860035, 39.873367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288803, 0.284375, -0.914179,
		0.597981, -0.692122, -0.404210,
		-0.747671, -0.663399, 0.029836,
		39.636703, 30.661015, 39.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260746, 30.557217, 39.355885>,  <40.160072, 31.125395, 39.861431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260746, 30.557217, 39.355885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863293, 30.587240, 39.389507>,  <39.624821, 30.605255, 39.409679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863293, 30.587240, 39.389507>,  <40.260746, 30.557217, 39.355885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863293, 30.587240, 39.389507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058330, 0.295610, -0.953526,
		-0.096418, -0.952355, -0.289349,
		-0.993631, 0.075059, 0.084053,
		39.565205, 30.609758, 39.414722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871765, 30.059393, 38.910927>,  <40.260746, 30.557217, 39.355885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871765, 30.059393, 38.910927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656208, 30.390503, 38.973385>,  <39.526875, 30.589169, 39.010860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656208, 30.390503, 38.973385>,  <39.871765, 30.059393, 38.910927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656208, 30.390503, 38.973385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038768, 0.209539, -0.977031,
		-0.841479, -0.520466, -0.145010,
		-0.538897, 0.827774, 0.156145,
		39.494537, 30.638836, 39.020229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448318, 30.079334, 38.315060>,  <39.871765, 30.059393, 38.910927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448318, 30.079334, 38.315060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415337, 30.451834, 38.457031>,  <39.395550, 30.675333, 38.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415337, 30.451834, 38.457031>,  <39.448318, 30.079334, 38.315060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415337, 30.451834, 38.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045369, 0.352265, -0.934800,
		-0.995562, -0.093177, 0.013206,
		-0.082450, 0.931250, 0.354929,
		39.390602, 30.731209, 38.563511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978981, 30.458939, 37.851154>,  <39.448318, 30.079334, 38.315060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978981, 30.458939, 37.851154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179722, 30.756548, 38.027596>,  <39.300167, 30.935114, 38.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179722, 30.756548, 38.027596>,  <38.978981, 30.458939, 37.851154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179722, 30.756548, 38.027596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052855, 0.482636, -0.874224,
		-0.863335, 0.462049, 0.202888,
		0.501856, 0.744025, 0.441099,
		39.330280, 30.979755, 38.159924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003716, 30.990822, 37.370113>,  <38.978981, 30.458939, 37.851154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003716, 30.990822, 37.370113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222553, 31.171310, 37.652130>,  <39.353855, 31.279604, 37.821342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222553, 31.171310, 37.652130>,  <39.003716, 30.990822, 37.370113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222553, 31.171310, 37.652130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395749, 0.602772, -0.692856,
		-0.737613, 0.658077, 0.151201,
		0.547092, 0.451222, 0.705045,
		39.386681, 31.306677, 37.863644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949623, 31.765621, 37.188194>,  <39.003716, 30.990822, 37.370113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949623, 31.765621, 37.188194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289692, 31.697615, 37.387516>,  <39.493732, 31.656811, 37.507107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289692, 31.697615, 37.387516>,  <38.949623, 31.765621, 37.188194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289692, 31.697615, 37.387516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460651, 0.698520, -0.547604,
		-0.254973, 0.695100, 0.672179,
		0.850170, -0.170015, 0.498302,
		39.544743, 31.646610, 37.537006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187702, 32.424099, 37.356457>,  <38.949623, 31.765621, 37.188194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187702, 32.424099, 37.356457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489697, 32.162323, 37.339973>,  <39.670895, 32.005257, 37.330082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489697, 32.162323, 37.339973>,  <39.187702, 32.424099, 37.356457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489697, 32.162323, 37.339973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495659, 0.610695, -0.617555,
		0.429323, 0.445818, 0.785447,
		0.754986, -0.654445, -0.041212,
		39.716194, 31.965990, 37.327610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805641, 32.792252, 37.548943>,  <39.187702, 32.424099, 37.356457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805641, 32.792252, 37.548943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914200, 32.483845, 37.318504>,  <39.979336, 32.298801, 37.180241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914200, 32.483845, 37.318504>,  <39.805641, 32.792252, 37.548943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914200, 32.483845, 37.318504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216903, 0.632156, -0.743863,
		0.937710, 0.076922, 0.338798,
		0.271392, -0.771013, -0.576094,
		39.995617, 32.252541, 37.145676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402382, 32.990082, 37.267937>,  <39.805641, 32.792252, 37.548943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402382, 32.990082, 37.267937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327648, 32.668167, 37.042580>,  <40.282810, 32.475018, 36.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327648, 32.668167, 37.042580>,  <40.402382, 32.990082, 37.267937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327648, 32.668167, 37.042580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308925, 0.496272, -0.811345,
		0.932556, -0.325632, 0.155899,
		-0.186831, -0.804785, -0.563396,
		40.271599, 32.426731, 36.873562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976765, 32.745499, 36.777782>,  <40.402382, 32.990082, 37.267937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976765, 32.745499, 36.777782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660130, 32.609917, 36.574409>,  <40.470150, 32.528568, 36.452385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660130, 32.609917, 36.574409>,  <40.976765, 32.745499, 36.777782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660130, 32.609917, 36.574409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293626, 0.518705, -0.802950,
		0.535891, -0.784892, -0.311073,
		-0.791584, -0.338955, -0.508434,
		40.422653, 32.508232, 36.421879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200771, 32.655895, 36.036835>,  <40.976765, 32.745499, 36.777782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200771, 32.655895, 36.036835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803574, 32.615265, 36.012695>,  <40.565254, 32.590885, 35.998211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803574, 32.615265, 36.012695>,  <41.200771, 32.655895, 36.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803574, 32.615265, 36.012695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016908, 0.383370, -0.923440,
		0.116936, -0.917992, -0.378968,
		-0.992996, -0.101576, -0.060351,
		40.505676, 32.584793, 35.994591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006958, 32.299194, 35.308609>,  <41.200771, 32.655895, 36.036835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006958, 32.299194, 35.308609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675087, 32.482033, 35.436794>,  <40.475964, 32.591736, 35.513706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675087, 32.482033, 35.436794>,  <41.006958, 32.299194, 35.308609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675087, 32.482033, 35.436794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032325, 0.533759, -0.845019,
		-0.557310, -0.711450, -0.428071,
		-0.829676, 0.457100, 0.320466,
		40.426186, 32.619164, 35.532932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564091, 32.171165, 34.871593>,  <41.006958, 32.299194, 35.308609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564091, 32.171165, 34.871593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422985, 32.495491, 35.058411>,  <40.338322, 32.690086, 35.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422985, 32.495491, 35.058411>,  <40.564091, 32.171165, 34.871593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422985, 32.495491, 35.058411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095436, 0.465354, -0.879964,
		-0.930832, -0.354995, -0.086780,
		-0.352766, 0.810817, 0.467046,
		40.317154, 32.738735, 35.198524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040375, 32.454407, 34.466988>,  <40.564091, 32.171165, 34.871593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040375, 32.454407, 34.466988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155148, 32.762424, 34.694920>,  <40.224010, 32.947235, 34.831680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155148, 32.762424, 34.694920>,  <40.040375, 32.454407, 34.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155148, 32.762424, 34.694920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018213, 0.590350, -0.806942,
		-0.957778, 0.241915, 0.155364,
		0.286930, 0.770042, 0.569830,
		40.241226, 32.993439, 34.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060768, 33.020668, 33.969227>,  <40.040375, 32.454407, 34.466988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060768, 33.020668, 33.969227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226639, 33.171997, 34.300266>,  <40.326160, 33.262794, 34.498890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226639, 33.171997, 34.300266>,  <40.060768, 33.020668, 33.969227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226639, 33.171997, 34.300266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347833, 0.774510, -0.528343,
		-0.840864, 0.506958, 0.189582,
		0.414681, 0.378322, 0.827594,
		40.351044, 33.285492, 34.548546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906937, 33.746140, 34.029522>,  <40.060768, 33.020668, 33.969227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906937, 33.746140, 34.029522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265255, 33.681541, 34.195152>,  <40.480247, 33.642784, 34.294533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265255, 33.681541, 34.195152>,  <39.906937, 33.746140, 34.029522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265255, 33.681541, 34.195152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339413, 0.850059, -0.402738,
		-0.286950, 0.501317, 0.816297,
		0.895800, -0.161496, 0.414078,
		40.533997, 33.633091, 34.319374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062523, 34.442078, 34.067348>,  <39.906937, 33.746140, 34.029522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062523, 34.442078, 34.067348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402569, 34.255741, 34.165573>,  <40.606594, 34.143940, 34.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402569, 34.255741, 34.165573>,  <40.062523, 34.442078, 34.067348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402569, 34.255741, 34.165573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510451, 0.843562, -0.166858,
		-0.129418, 0.267196, 0.954912,
		0.850112, -0.465842, 0.245563,
		40.657604, 34.115990, 34.239243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379623, 34.765099, 34.673954>,  <40.062523, 34.442078, 34.067348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379623, 34.765099, 34.673954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624279, 34.578697, 34.418224>,  <40.771072, 34.466858, 34.264786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624279, 34.578697, 34.418224>,  <40.379623, 34.765099, 34.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624279, 34.578697, 34.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462905, 0.866140, -0.188466,
		0.641572, -0.180673, 0.745482,
		0.611641, -0.466002, -0.639326,
		40.807770, 34.438896, 34.226425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023422, 35.030132, 34.780743>,  <40.379623, 34.765099, 34.673954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023422, 35.030132, 34.780743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994808, 34.903572, 34.402374>,  <40.977638, 34.827637, 34.175354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994808, 34.903572, 34.402374>,  <41.023422, 35.030132, 34.780743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994808, 34.903572, 34.402374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434738, 0.843645, -0.315064,
		0.897711, -0.433768, 0.077201,
		-0.071535, -0.316399, -0.945925,
		40.973347, 34.808651, 34.118595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380249, 35.587509, 34.402531>,  <41.023422, 35.030132, 34.780743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380249, 35.587509, 34.402531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248493, 35.363712, 34.098301>,  <41.169441, 35.229435, 33.915764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248493, 35.363712, 34.098301>,  <41.380249, 35.587509, 34.402531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248493, 35.363712, 34.098301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189599, 0.749928, -0.633766,
		0.924962, -0.352961, -0.140941,
		-0.329391, -0.559487, -0.760576,
		41.149677, 35.195866, 33.870129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099926, 35.710308, 35.142956>,  <41.380249, 35.587509, 34.402531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099926, 35.710308, 35.142956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355053, 35.661667, 35.447166>,  <41.508129, 35.632481, 35.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355053, 35.661667, 35.447166>,  <41.099926, 35.710308, 35.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355053, 35.661667, 35.447166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337422, 0.931767, -0.133999,
		-0.692338, 0.342086, 0.635332,
		0.637820, -0.121602, 0.760525,
		41.546398, 35.625187, 35.675323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128853, 36.227314, 35.600529>,  <41.099926, 35.710308, 35.142956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128853, 36.227314, 35.600529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498043, 36.073437, 35.595936>,  <41.719555, 35.981110, 35.593182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498043, 36.073437, 35.595936>,  <41.128853, 36.227314, 35.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498043, 36.073437, 35.595936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374978, 0.905581, -0.198279,
		0.086674, 0.178701, 0.980078,
		0.922973, -0.384694, -0.011482,
		41.774937, 35.958027, 35.592491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563507, 36.772469, 35.990623>,  <41.128853, 36.227314, 35.600529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563507, 36.772469, 35.990623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805737, 36.535503, 35.778088>,  <41.951073, 36.393326, 35.650566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805737, 36.535503, 35.778088>,  <41.563507, 36.772469, 35.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805737, 36.535503, 35.778088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630462, 0.764581, -0.133917,
		0.485589, -0.253895, 0.836505,
		0.605575, -0.592414, -0.531343,
		41.987408, 36.357780, 35.618683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196209, 36.837845, 36.297997>,  <41.563507, 36.772469, 35.990623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196209, 36.837845, 36.297997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254833, 36.717739, 35.920982>,  <42.290009, 36.645676, 35.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254833, 36.717739, 35.920982>,  <42.196209, 36.837845, 36.297997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254833, 36.717739, 35.920982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673233, 0.728381, -0.127356,
		0.724761, -0.615877, 0.308895,
		0.146557, -0.300261, -0.942531,
		42.298801, 36.627659, 35.638222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849159, 37.090851, 36.129585>,  <42.196209, 36.837845, 36.297997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849159, 37.090851, 36.129585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732903, 36.986359, 35.761395>,  <42.663147, 36.923664, 35.540478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732903, 36.986359, 35.761395>,  <42.849159, 37.090851, 36.129585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732903, 36.986359, 35.761395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616892, 0.684214, -0.388967,
		0.731416, -0.680888, -0.037712,
		-0.290646, -0.261232, -0.920480,
		42.645710, 36.907990, 35.485252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503975, 37.152840, 35.717533>,  <42.849159, 37.090851, 36.129585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503975, 37.152840, 35.717533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193398, 37.211132, 35.472290>,  <43.007050, 37.246109, 35.325146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193398, 37.211132, 35.472290>,  <43.503975, 37.152840, 35.717533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193398, 37.211132, 35.472290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472880, 0.777822, -0.413977,
		0.416560, -0.611355, -0.672846,
		-0.776442, 0.145730, -0.613107,
		42.960464, 37.254852, 35.288357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773319, 37.324688, 35.101166>,  <43.503975, 37.152840, 35.717533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773319, 37.324688, 35.101166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402878, 37.475468, 35.107388>,  <43.180614, 37.565933, 35.111122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402878, 37.475468, 35.107388>,  <43.773319, 37.324688, 35.101166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402878, 37.475468, 35.107388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346645, 0.866483, -0.359227,
		-0.148890, -0.327289, -0.933120,
		-0.926104, 0.376947, 0.015557,
		43.125046, 37.588551, 35.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791157, 37.871468, 34.572987>,  <43.773319, 37.324688, 35.101166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791157, 37.871468, 34.572987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446095, 37.931824, 34.766087>,  <43.239056, 37.968037, 34.881947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446095, 37.931824, 34.766087>,  <43.791157, 37.871468, 34.572987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446095, 37.931824, 34.766087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046890, 0.974211, -0.220714,
		-0.503607, -0.167765, -0.847487,
		-0.862660, 0.150891, 0.482753,
		43.187298, 37.977093, 34.910912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371094, 38.297375, 34.090603>,  <43.791157, 37.871468, 34.572987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371094, 38.297375, 34.090603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214462, 38.341633, 34.455990>,  <43.120483, 38.368187, 34.675220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214462, 38.341633, 34.455990>,  <43.371094, 38.297375, 34.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214462, 38.341633, 34.455990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104633, 0.991659, -0.075262,
		-0.914175, 0.066108, -0.399893,
		-0.391582, 0.110644, 0.913467,
		43.096989, 38.374825, 34.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859272, 38.757038, 34.085419>,  <43.371094, 38.297375, 34.090603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859272, 38.757038, 34.085419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959629, 38.759640, 34.472614>,  <43.019844, 38.761200, 34.704933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959629, 38.759640, 34.472614>,  <42.859272, 38.757038, 34.085419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959629, 38.759640, 34.472614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041940, 0.999111, 0.004157,
		-0.967106, -0.041641, 0.250941,
		0.250892, 0.006504, 0.967993,
		43.034897, 38.761589, 34.763012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328217, 39.196175, 34.274578>,  <42.859272, 38.757038, 34.085419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328217, 39.196175, 34.274578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619583, 39.170208, 34.547401>,  <42.794403, 39.154629, 34.711094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619583, 39.170208, 34.547401>,  <42.328217, 39.196175, 34.274578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619583, 39.170208, 34.547401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074876, 0.981996, 0.173427,
		-0.681032, -0.177396, 0.710440,
		0.728415, -0.064914, 0.682054,
		42.838108, 39.150734, 34.752018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087090, 39.500324, 34.842690>,  <42.328217, 39.196175, 34.274578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087090, 39.500324, 34.842690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483685, 39.530392, 34.885201>,  <42.721642, 39.548431, 34.910706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483685, 39.530392, 34.885201>,  <42.087090, 39.500324, 34.842690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483685, 39.530392, 34.885201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102738, 0.953229, 0.284252,
		-0.079939, -0.292752, 0.952841,
		0.991491, 0.075170, 0.106277,
		42.781132, 39.552944, 34.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221954, 39.919708, 35.429760>,  <42.087090, 39.500324, 34.842690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221954, 39.919708, 35.429760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585613, 39.919022, 35.263168>,  <42.803806, 39.918610, 35.163212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585613, 39.919022, 35.263168>,  <42.221954, 39.919708, 35.429760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585613, 39.919022, 35.263168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135216, 0.947040, 0.291257,
		0.393920, -0.321110, 0.861229,
		0.909145, -0.001720, -0.416477,
		42.858356, 39.918507, 35.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575474, 40.149471, 35.983746>,  <42.221954, 39.919708, 35.429760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575474, 40.149471, 35.983746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807343, 40.233414, 35.668800>,  <42.946465, 40.283779, 35.479832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807343, 40.233414, 35.668800>,  <42.575474, 40.149471, 35.983746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807343, 40.233414, 35.668800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271674, 0.861211, 0.429545,
		0.768227, -0.462902, 0.442209,
		0.579672, 0.209851, -0.787364,
		42.981243, 40.296368, 35.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112572, 40.415474, 36.250408>,  <42.575474, 40.149471, 35.983746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112572, 40.415474, 36.250408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103325, 40.552471, 35.874714>,  <43.097778, 40.634670, 35.649296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103325, 40.552471, 35.874714>,  <43.112572, 40.415474, 36.250408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103325, 40.552471, 35.874714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218418, 0.918521, 0.329564,
		0.975581, -0.197527, -0.096041,
		-0.023118, 0.342494, -0.939236,
		43.096390, 40.655220, 35.592945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738750, 40.927879, 36.174118>,  <43.112572, 40.415474, 36.250408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738750, 40.927879, 36.174118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490192, 41.028465, 35.877300>,  <43.341057, 41.088818, 35.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490192, 41.028465, 35.877300>,  <43.738750, 40.927879, 36.174118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490192, 41.028465, 35.877300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103216, 0.965115, 0.240624,
		0.776667, 0.072932, -0.625674,
		-0.621397, 0.251465, -0.742045,
		43.303772, 41.103905, 35.654686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129417, 41.371475, 35.753479>,  <43.738750, 40.927879, 36.174118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129417, 41.371475, 35.753479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746861, 41.457436, 35.674351>,  <43.517326, 41.509010, 35.626873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746861, 41.457436, 35.674351>,  <44.129417, 41.371475, 35.753479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746861, 41.457436, 35.674351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146421, 0.938756, 0.311927,
		0.252737, 0.269360, -0.929284,
		-0.956392, 0.214902, -0.197819,
		43.459942, 41.521908, 35.615005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159214, 42.155521, 35.738472>,  <44.129417, 41.371475, 35.753479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159214, 42.155521, 35.738472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767593, 42.076859, 35.717388>,  <43.532619, 42.029659, 35.704739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767593, 42.076859, 35.717388>,  <44.159214, 42.155521, 35.738472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767593, 42.076859, 35.717388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201839, 0.971465, 0.124567,
		0.026709, 0.132596, -0.990810,
		-0.979055, -0.196657, -0.052710,
		43.473877, 42.017860, 35.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831783, 42.712055, 35.282417>,  <44.159214, 42.155521, 35.738472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831783, 42.712055, 35.282417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541813, 42.546947, 35.503002>,  <43.367832, 42.447884, 35.635353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541813, 42.546947, 35.503002>,  <43.831783, 42.712055, 35.282417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541813, 42.546947, 35.503002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382346, 0.907042, 0.176314,
		-0.572974, -0.083034, -0.815356,
		-0.724922, -0.412772, 0.551459,
		43.324337, 42.423115, 35.668442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172421, 43.063862, 35.124268>,  <43.831783, 42.712055, 35.282417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172421, 43.063862, 35.124268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100529, 42.900322, 35.482159>,  <43.057396, 42.802197, 35.696896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100529, 42.900322, 35.482159>,  <43.172421, 43.063862, 35.124268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100529, 42.900322, 35.482159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534088, 0.804367, 0.260275,
		-0.826105, -0.431086, -0.362927,
		-0.179725, -0.408849, 0.894730,
		43.046612, 42.777668, 35.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457016, 43.259041, 35.351212>,  <43.172421, 43.063862, 35.124268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457016, 43.259041, 35.351212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659096, 43.160259, 35.681980>,  <42.780342, 43.100990, 35.880440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659096, 43.160259, 35.681980>,  <42.457016, 43.259041, 35.351212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659096, 43.160259, 35.681980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323814, 0.833934, 0.446876,
		-0.799951, -0.493528, 0.341334,
		0.505196, -0.246950, 0.826917,
		42.810654, 43.086174, 35.930054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987362, 43.345703, 35.888092>,  <42.457016, 43.259041, 35.351212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987362, 43.345703, 35.888092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352356, 43.377754, 36.048569>,  <42.571350, 43.396984, 36.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352356, 43.377754, 36.048569>,  <41.987362, 43.345703, 35.888092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352356, 43.377754, 36.048569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286417, 0.825349, 0.486585,
		-0.292132, -0.558908, 0.776067,
		0.912482, 0.080132, 0.401192,
		42.626102, 43.401794, 36.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942619, 43.527802, 36.593147>,  <41.987362, 43.345703, 35.888092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942619, 43.527802, 36.593147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268127, 43.648048, 36.394184>,  <42.463432, 43.720196, 36.274807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268127, 43.648048, 36.394184>,  <41.942619, 43.527802, 36.593147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268127, 43.648048, 36.394184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286772, 0.952090, 0.106241,
		0.505512, 0.056187, 0.860988,
		0.813768, 0.300613, -0.497406,
		42.512257, 43.738232, 36.244961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438492, 43.764816, 37.088795>,  <41.942619, 43.527802, 36.593147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438492, 43.764816, 37.088795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653450, 43.617516, 37.392265>,  <42.782425, 43.529137, 37.574348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653450, 43.617516, 37.392265>,  <42.438492, 43.764816, 37.088795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653450, 43.617516, 37.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840404, -0.308697, 0.445452,
		0.070167, -0.876984, -0.475369,
		0.537399, -0.368246, 0.758681,
		42.814671, 43.507042, 37.619869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423649, 43.002308, 37.132553>,  <42.438492, 43.764816, 37.088795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423649, 43.002308, 37.132553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462349, 43.194981, 37.480949>,  <42.485569, 43.310585, 37.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462349, 43.194981, 37.480949>,  <42.423649, 43.002308, 37.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462349, 43.194981, 37.480949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962680, -0.176946, 0.204788,
		0.252761, -0.858296, 0.446586,
		0.096746, 0.481682, 0.870989,
		42.491371, 43.339485, 37.742245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793320, 42.834667, 37.184547>,  <42.423649, 43.002308, 37.132553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793320, 42.834667, 37.184547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008656, 42.803333, 37.520180>,  <42.137856, 42.784534, 37.721558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008656, 42.803333, 37.520180>,  <41.793320, 42.834667, 37.184547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008656, 42.803333, 37.520180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775628, -0.435397, 0.456980,
		0.329536, -0.896824, -0.295149,
		0.538338, -0.078334, 0.839081,
		42.170158, 42.779835, 37.771904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241325, 43.294903, 37.316765>,  <41.793320, 42.834667, 37.184547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241325, 43.294903, 37.316765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173218, 43.576244, 37.040707>,  <41.132351, 43.745049, 36.875072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173218, 43.576244, 37.040707>,  <41.241325, 43.294903, 37.316765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173218, 43.576244, 37.040707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010681, 0.701652, 0.712440,
		0.985339, 0.113938, -0.126985,
		-0.170273, 0.703351, -0.690148,
		41.122135, 43.787251, 36.833664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859852, 43.623333, 37.664993>,  <41.241325, 43.294903, 37.316765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859852, 43.623333, 37.664993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468311, 43.692291, 37.709061>,  <41.233387, 43.733665, 37.735500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468311, 43.692291, 37.709061>,  <41.859852, 43.623333, 37.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468311, 43.692291, 37.709061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106256, -0.888533, 0.446339,
		0.174831, 0.425192, 0.888057,
		-0.978848, 0.172395, 0.110164,
		41.174656, 43.744011, 37.742111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624897, 43.337727, 38.314339>,  <41.859852, 43.623333, 37.664993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624897, 43.337727, 38.314339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302986, 43.325062, 38.077248>,  <41.109840, 43.317463, 37.934994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302986, 43.325062, 38.077248>,  <41.624897, 43.337727, 38.314339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302986, 43.325062, 38.077248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146259, -0.957208, 0.249722,
		-0.575274, 0.287663, 0.765709,
		-0.804778, -0.031666, -0.592730,
		41.061554, 43.315563, 37.899429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119781, 43.041977, 38.660007>,  <41.624897, 43.337727, 38.314339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119781, 43.041977, 38.660007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032108, 43.002651, 38.271721>,  <40.979504, 42.979057, 38.038750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032108, 43.002651, 38.271721>,  <41.119781, 43.041977, 38.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032108, 43.002651, 38.271721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005594, -0.994767, 0.102014,
		-0.975667, 0.027790, 0.217488,
		-0.219185, -0.098315, -0.970717,
		40.966354, 42.973156, 37.980507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624680, 42.470314, 38.697117>,  <41.119781, 43.041977, 38.660007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624680, 42.470314, 38.697117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332561, 42.257095, 38.868011>,  <41.157291, 42.129166, 38.970551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332561, 42.257095, 38.868011>,  <41.624680, 42.470314, 38.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332561, 42.257095, 38.868011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586009, -0.810252, -0.009236,
		0.351095, 0.243621, 0.904092,
		-0.730292, -0.533048, 0.427239,
		41.113472, 42.097179, 38.996181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879814, 42.155258, 39.331383>,  <41.624680, 42.470314, 38.697117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879814, 42.155258, 39.331383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588871, 41.912693, 39.202873>,  <41.414307, 41.767155, 39.125767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588871, 41.912693, 39.202873>,  <41.879814, 42.155258, 39.331383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588871, 41.912693, 39.202873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573005, -0.794278, 0.201961,
		-0.377651, -0.037193, 0.925201,
		-0.727355, -0.606416, -0.321271,
		41.370663, 41.730770, 39.106491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762722, 41.612724, 39.830193>,  <41.879814, 42.155258, 39.331383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762722, 41.612724, 39.830193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661922, 41.473499, 39.469006>,  <41.601444, 41.389965, 39.252293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661922, 41.473499, 39.469006>,  <41.762722, 41.612724, 39.830193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661922, 41.473499, 39.469006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687573, -0.721000, 0.086036,
		-0.680985, -0.599173, 0.421012,
		-0.251999, -0.348066, -0.902965,
		41.586323, 41.369080, 39.198116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712971, 40.938038, 39.884449>,  <41.762722, 41.612724, 39.830193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712971, 40.938038, 39.884449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756401, 40.962528, 39.487568>,  <41.782459, 40.977222, 39.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756401, 40.962528, 39.487568>,  <41.712971, 40.938038, 39.884449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756401, 40.962528, 39.487568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741698, -0.669549, 0.039848,
		-0.661888, -0.740241, -0.118102,
		0.108572, 0.061222, -0.992202,
		41.788971, 40.980896, 39.189907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805481, 40.225063, 39.661484>,  <41.712971, 40.938038, 39.884449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805481, 40.225063, 39.661484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954914, 40.439995, 39.359035>,  <42.044575, 40.568954, 39.177567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954914, 40.439995, 39.359035>,  <41.805481, 40.225063, 39.661484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954914, 40.439995, 39.359035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719154, -0.682624, -0.129777,
		-0.585878, -0.495284, -0.641436,
		0.373583, 0.537325, -0.756120,
		42.066990, 40.601192, 39.132198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928368, 39.749874, 39.269272>,  <41.805481, 40.225063, 39.661484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928368, 39.749874, 39.269272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154541, 40.047081, 39.126045>,  <42.290245, 40.225407, 39.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154541, 40.047081, 39.126045>,  <41.928368, 39.749874, 39.269272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154541, 40.047081, 39.126045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698107, -0.662326, -0.271975,
		-0.439240, -0.096186, -0.893206,
		0.565433, 0.743016, -0.358069,
		42.324169, 40.269985, 39.018623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029121, 39.662350, 38.622597>,  <41.928368, 39.749874, 39.269272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029121, 39.662350, 38.622597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338699, 39.902931, 38.701866>,  <42.524445, 40.047279, 38.749428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338699, 39.902931, 38.701866>,  <42.029121, 39.662350, 38.622597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338699, 39.902931, 38.701866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625732, -0.678231, -0.385308,
		-0.097337, 0.422208, -0.901258,
		0.773941, 0.601451, 0.198172,
		42.570881, 40.083366, 38.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413620, 39.813583, 38.017319>,  <42.029121, 39.662350, 38.622597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413620, 39.813583, 38.017319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673313, 39.880749, 38.314049>,  <42.829128, 39.921047, 38.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673313, 39.880749, 38.314049>,  <42.413620, 39.813583, 38.017319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673313, 39.880749, 38.314049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685350, -0.552105, -0.474843,
		0.329833, 0.816692, -0.473523,
		0.649234, 0.167910, 0.741823,
		42.868084, 39.931122, 38.536594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967350, 39.883011, 37.589115>,  <42.413620, 39.813583, 38.017319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967350, 39.883011, 37.589115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090054, 39.805897, 37.961941>,  <43.163677, 39.759628, 38.185635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090054, 39.805897, 37.961941>,  <42.967350, 39.883011, 37.589115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090054, 39.805897, 37.961941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576389, -0.741658, -0.343101,
		0.757413, 0.642478, -0.116392,
		0.306758, -0.192782, 0.932059,
		43.182079, 39.748062, 38.241558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643253, 39.892384, 37.560539>,  <42.967350, 39.883011, 37.589115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643253, 39.892384, 37.560539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556263, 39.682144, 37.889526>,  <43.504066, 39.556000, 38.086918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556263, 39.682144, 37.889526>,  <43.643253, 39.892384, 37.560539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556263, 39.682144, 37.889526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746571, -0.632378, -0.206712,
		0.628756, 0.569073, 0.529926,
		-0.217480, -0.525599, 0.822465,
		43.491020, 39.524464, 38.136265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264473, 39.701855, 37.900856>,  <43.643253, 39.892384, 37.560539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264473, 39.701855, 37.900856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014111, 39.453468, 38.089596>,  <43.863892, 39.304436, 38.202839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014111, 39.453468, 38.089596>,  <44.264473, 39.701855, 37.900856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014111, 39.453468, 38.089596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628331, -0.759904, -0.166570,
		0.461994, 0.192219, 0.865802,
		-0.625909, -0.620965, 0.471848,
		43.826340, 39.267178, 38.231152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731865, 39.252117, 38.276043>,  <44.264473, 39.701855, 37.900856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731865, 39.252117, 38.276043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372883, 39.078529, 38.244442>,  <44.157494, 38.974377, 38.225483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372883, 39.078529, 38.244442>,  <44.731865, 39.252117, 38.276043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372883, 39.078529, 38.244442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428309, -0.814525, -0.391280,
		0.105456, -0.384994, 0.916875,
		-0.897458, -0.433968, -0.079000,
		44.103645, 38.948338, 38.220741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748524, 38.583065, 38.685722>,  <44.731865, 39.252117, 38.276043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748524, 38.583065, 38.685722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439190, 38.530869, 38.437553>,  <44.253590, 38.499550, 38.288651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439190, 38.530869, 38.437553>,  <44.748524, 38.583065, 38.685722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439190, 38.530869, 38.437553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363301, -0.893196, -0.264978,
		-0.519586, -0.430317, 0.738145,
		-0.773332, -0.130490, -0.620427,
		44.207191, 38.491722, 38.251427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531281, 37.923214, 38.840332>,  <44.748524, 38.583065, 38.685722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531281, 37.923214, 38.840332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351570, 37.982948, 38.488003>,  <44.243744, 38.018787, 38.276604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351570, 37.982948, 38.488003>,  <44.531281, 37.923214, 38.840332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351570, 37.982948, 38.488003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224768, -0.935324, -0.273218,
		-0.864654, -0.320732, 0.386658,
		-0.449281, 0.149331, -0.880822,
		44.216785, 38.027748, 38.223755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052109, 37.341934, 38.708328>,  <44.531281, 37.923214, 38.840332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052109, 37.341934, 38.708328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157272, 37.511669, 38.361729>,  <44.220371, 37.613510, 38.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157272, 37.511669, 38.361729>,  <44.052109, 37.341934, 38.708328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157272, 37.511669, 38.361729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101433, -0.905269, -0.412552,
		-0.959474, 0.020572, -0.281045,
		0.262908, 0.424340, -0.866496,
		44.236145, 37.638969, 38.101780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784660, 36.875389, 38.160252>,  <44.052109, 37.341934, 38.708328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784660, 36.875389, 38.160252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060757, 37.081627, 37.957184>,  <44.226414, 37.205372, 37.835342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060757, 37.081627, 37.957184>,  <43.784660, 36.875389, 38.160252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060757, 37.081627, 37.957184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185934, -0.804431, -0.564198,
		-0.699282, 0.295041, -0.651119,
		0.690242, 0.515599, -0.507666,
		44.267830, 37.236305, 37.804886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671135, 36.655739, 37.551983>,  <43.784660, 36.875389, 38.160252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671135, 36.655739, 37.551983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030163, 36.827744, 37.513088>,  <44.245579, 36.930946, 37.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030163, 36.827744, 37.513088>,  <43.671135, 36.655739, 37.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030163, 36.827744, 37.513088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299627, -0.756780, -0.580954,
		-0.323403, 0.492313, -0.808108,
		0.897571, 0.430013, -0.097234,
		44.299435, 36.956749, 37.483917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799728, 36.833107, 36.817081>,  <43.671135, 36.655739, 37.551983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799728, 36.833107, 36.817081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141964, 36.783684, 37.018162>,  <44.347305, 36.754028, 37.138809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141964, 36.783684, 37.018162>,  <43.799728, 36.833107, 36.817081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141964, 36.783684, 37.018162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287351, -0.694383, -0.659743,
		0.430584, 0.708918, -0.558599,
		0.855585, -0.123561, 0.502699,
		44.398640, 36.746616, 37.168972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210526, 36.883121, 36.345306>,  <43.799728, 36.833107, 36.817081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210526, 36.883121, 36.345306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428211, 36.710682, 36.633190>,  <44.558823, 36.607216, 36.805920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428211, 36.710682, 36.633190>,  <44.210526, 36.883121, 36.345306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428211, 36.710682, 36.633190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122817, -0.807693, -0.576670,
		0.829911, 0.402222, -0.386608,
		0.544210, -0.431102, 0.719713,
		44.591473, 36.581352, 36.849106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947510, 36.569477, 36.089649>,  <44.210526, 36.883121, 36.345306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947510, 36.569477, 36.089649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872360, 36.339172, 36.407948>,  <44.827271, 36.200989, 36.598927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872360, 36.339172, 36.407948>,  <44.947510, 36.569477, 36.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872360, 36.339172, 36.407948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233412, -0.813130, -0.533234,
		0.954056, 0.085557, 0.287152,
		-0.187870, -0.575760, 0.795742,
		44.815998, 36.166443, 36.646671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427601, 36.060482, 36.029438>,  <44.947510, 36.569477, 36.089649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427601, 36.060482, 36.029438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164146, 35.910080, 36.290150>,  <45.006073, 35.819839, 36.446575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164146, 35.910080, 36.290150>,  <45.427601, 36.060482, 36.029438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164146, 35.910080, 36.290150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163349, -0.916988, -0.363937,
		0.734515, -0.133236, 0.665384,
		-0.658639, -0.376007, 0.651777,
		44.966557, 35.797279, 36.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726238, 35.331200, 36.196796>,  <45.427601, 36.060482, 36.029438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726238, 35.331200, 36.196796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337959, 35.319370, 36.292183>,  <45.104992, 35.312271, 36.349415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337959, 35.319370, 36.292183>,  <45.726238, 35.331200, 36.196796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337959, 35.319370, 36.292183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132309, -0.762629, -0.633160,
		0.200588, -0.646160, 0.736371,
		-0.970700, -0.029576, 0.238467,
		45.046749, 35.310497, 36.363724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895405, 34.846031, 35.601276>,  <45.726238, 35.331200, 36.196796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895405, 34.846031, 35.601276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189533, 34.987377, 35.832600>,  <46.366009, 35.072186, 35.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189533, 34.987377, 35.832600>,  <45.895405, 34.846031, 35.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189533, 34.987377, 35.832600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629517, -0.040068, -0.775953,
		-0.251024, 0.934627, -0.251913,
		0.735320, 0.353366, 0.578305,
		46.410130, 35.093388, 36.006092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290276, 35.475708, 35.383530>,  <45.895405, 34.846031, 35.601276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290276, 35.475708, 35.383530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518684, 35.219448, 35.588860>,  <46.655731, 35.065693, 35.712055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518684, 35.219448, 35.588860>,  <46.290276, 35.475708, 35.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518684, 35.219448, 35.588860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666099, -0.003907, -0.745853,
		0.479837, 0.767822, 0.424506,
		0.571023, -0.640651, 0.513321,
		46.689991, 35.027252, 35.742855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965084, 35.839676, 35.539795>,  <46.290276, 35.475708, 35.383530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965084, 35.839676, 35.539795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.961758, 35.443760, 35.482880>,  <46.959763, 35.206211, 35.448730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.961758, 35.443760, 35.482880>,  <46.965084, 35.839676, 35.539795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.961758, 35.443760, 35.482880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816078, 0.075514, -0.572987,
		0.577882, -0.120880, 0.807119,
		-0.008314, -0.989791, -0.142286,
		46.959263, 35.146824, 35.440193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.570347, 35.522232, 35.771061>,  <46.965084, 35.839676, 35.539795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.570347, 35.522232, 35.771061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445415, 35.275902, 35.481728>,  <47.370457, 35.128105, 35.308128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445415, 35.275902, 35.481728>,  <47.570347, 35.522232, 35.771061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445415, 35.275902, 35.481728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858763, 0.142524, -0.492151,
		0.406172, -0.774884, 0.484334,
		-0.312331, -0.615826, -0.723331,
		47.351715, 35.091152, 35.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.106548, 35.061455, 35.493095>,  <47.570347, 35.522232, 35.771061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.106548, 35.061455, 35.493095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828445, 35.077854, 35.206059>,  <47.661583, 35.087692, 35.033836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828445, 35.077854, 35.206059>,  <48.106548, 35.061455, 35.493095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828445, 35.077854, 35.206059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718176, -0.000663, -0.695861,
		-0.029005, -0.999159, -0.028983,
		-0.695257, 0.040998, -0.717591,
		47.619869, 35.090153, 34.990780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.705235, 32.710625, 44.685940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338192, 32.735355, 44.842999>,  <37.117966, 32.750195, 44.937233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338192, 32.735355, 44.842999>,  <37.705235, 32.710625, 44.685940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338192, 32.735355, 44.842999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366927, 0.248070, -0.896563,
		-0.152837, -0.966767, -0.204945,
		-0.917608, 0.061828, 0.392647,
		37.062908, 32.753902, 44.960793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240582, 32.467674, 44.151859>,  <37.705235, 32.710625, 44.685940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240582, 32.467674, 44.151859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996731, 32.659111, 44.404621>,  <36.850418, 32.773972, 44.556278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996731, 32.659111, 44.404621>,  <37.240582, 32.467674, 44.151859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996731, 32.659111, 44.404621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548616, 0.320660, -0.772138,
		-0.572163, -0.817392, 0.067077,
		-0.609630, 0.478589, 0.631905,
		36.813843, 32.802689, 44.594193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551861, 32.292053, 43.951809>,  <37.240582, 32.467674, 44.151859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551861, 32.292053, 43.951809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551399, 32.638306, 44.152084>,  <36.551121, 32.846058, 44.272251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551399, 32.638306, 44.152084>,  <36.551861, 32.292053, 43.951809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551399, 32.638306, 44.152084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467340, 0.442178, -0.765553,
		-0.884077, -0.234878, 0.404030,
		-0.001158, 0.865627, 0.500687,
		36.551052, 32.897995, 44.302292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861435, 32.478321, 43.928555>,  <36.551861, 32.292053, 43.951809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861435, 32.478321, 43.928555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067757, 32.805603, 44.030125>,  <36.191551, 33.001972, 44.091068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067757, 32.805603, 44.030125>,  <35.861435, 32.478321, 43.928555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067757, 32.805603, 44.030125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478422, 0.520982, -0.706888,
		-0.710673, 0.243132, 0.660175,
		0.515806, 0.818208, 0.253928,
		36.222500, 33.051064, 44.106304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297668, 33.022163, 43.938698>,  <35.861435, 32.478321, 43.928555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297668, 33.022163, 43.938698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648365, 33.214523, 43.941833>,  <35.858784, 33.329941, 43.943714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648365, 33.214523, 43.941833>,  <35.297668, 33.022163, 43.938698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648365, 33.214523, 43.941833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264020, 0.494840, -0.827905,
		-0.402023, 0.723786, 0.560813,
		0.876739, 0.480903, 0.007843,
		35.911388, 33.358795, 43.944187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123940, 33.691296, 43.897175>,  <35.297668, 33.022163, 43.938698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123940, 33.691296, 43.897175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503574, 33.678440, 43.771824>,  <35.731354, 33.670727, 43.696613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503574, 33.678440, 43.771824>,  <35.123940, 33.691296, 43.897175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503574, 33.678440, 43.771824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244205, 0.553356, -0.796342,
		0.199004, 0.832325, 0.517332,
		0.949084, -0.032140, -0.313378,
		35.788300, 33.668797, 43.677811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222687, 34.299297, 43.498558>,  <35.123940, 33.691296, 43.897175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222687, 34.299297, 43.498558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541748, 34.116398, 43.341240>,  <35.733185, 34.006657, 43.246849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541748, 34.116398, 43.341240>,  <35.222687, 34.299297, 43.498558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541748, 34.116398, 43.341240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266251, 0.318155, -0.909883,
		0.541171, 0.830482, 0.132033,
		0.797649, -0.457249, -0.393293,
		35.781044, 33.979221, 43.223251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595551, 34.806561, 43.037315>,  <35.222687, 34.299297, 43.498558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595551, 34.806561, 43.037315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 34.439331, 42.951157>,  <35.808540, 34.218994, 42.899464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 34.439331, 42.951157>,  <35.595551, 34.806561, 43.037315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728668, 34.439331, 42.951157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039473, 0.214651, -0.975893,
		0.942173, 0.333274, 0.035195,
		0.332794, -0.918071, -0.215394,
		35.828506, 34.163910, 42.886539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040161, 34.988255, 42.562302>,  <35.595551, 34.806561, 43.037315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040161, 34.988255, 42.562302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933994, 34.606365, 42.508545>,  <35.870296, 34.377232, 42.476292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933994, 34.606365, 42.508545>,  <36.040161, 34.988255, 42.562302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933994, 34.606365, 42.508545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131616, 0.173964, -0.975917,
		0.955109, -0.241334, -0.171829,
		-0.265414, -0.954722, -0.134391,
		35.854370, 34.319950, 42.468227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498280, 34.749023, 42.013340>,  <36.040161, 34.988255, 42.562302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498280, 34.749023, 42.013340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206261, 34.475773, 42.005642>,  <36.031048, 34.311821, 42.001022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206261, 34.475773, 42.005642>,  <36.498280, 34.749023, 42.013340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206261, 34.475773, 42.005642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127343, 0.163651, -0.978265,
		0.671427, -0.711729, -0.206464,
		-0.730047, -0.683126, -0.019246,
		35.987247, 34.270836, 41.999866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656990, 34.332897, 41.570610>,  <36.498280, 34.749023, 42.013340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656990, 34.332897, 41.570610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271915, 34.231930, 41.609615>,  <36.040871, 34.171349, 41.633018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271915, 34.231930, 41.609615>,  <36.656990, 34.332897, 41.570610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271915, 34.231930, 41.609615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088502, -0.046856, -0.994973,
		0.255721, -0.966482, 0.022768,
		-0.962691, -0.252421, 0.097517,
		35.983109, 34.156204, 41.638870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589127, 33.746346, 41.116768>,  <36.656990, 34.332897, 41.570610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589127, 33.746346, 41.116768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235092, 33.925636, 41.166904>,  <36.022671, 34.033211, 41.196987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235092, 33.925636, 41.166904>,  <36.589127, 33.746346, 41.116768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235092, 33.925636, 41.166904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116473, 0.047418, -0.992061,
		-0.450614, -0.892660, 0.010238,
		-0.885088, 0.448229, 0.125337,
		35.969566, 34.060104, 41.204506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178642, 33.415024, 40.645481>,  <36.589127, 33.746346, 41.116768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178642, 33.415024, 40.645481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008766, 33.764938, 40.738762>,  <35.906841, 33.974888, 40.794731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008766, 33.764938, 40.738762>,  <36.178642, 33.415024, 40.645481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008766, 33.764938, 40.738762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233089, 0.143249, -0.961847,
		-0.874821, -0.462840, 0.143068,
		-0.424687, 0.874791, 0.233200,
		35.881359, 34.027374, 40.808723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563034, 33.379612, 40.228497>,  <36.178642, 33.415024, 40.645481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563034, 33.379612, 40.228497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618851, 33.763699, 40.325256>,  <35.652340, 33.994148, 40.383312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618851, 33.763699, 40.325256>,  <35.563034, 33.379612, 40.228497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618851, 33.763699, 40.325256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022249, 0.247273, -0.968690,
		-0.989966, 0.129794, 0.055870,
		0.139545, 0.960213, 0.241903,
		35.660713, 34.051762, 40.397827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137192, 33.685963, 39.765350>,  <35.563034, 33.379612, 40.228497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137192, 33.685963, 39.765350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377518, 33.980659, 39.889431>,  <35.521713, 34.157478, 39.963879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.377518, 33.980659, 39.889431>,  <35.137192, 33.685963, 39.765350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377518, 33.980659, 39.889431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081061, 0.442206, -0.893243,
		-0.795265, 0.511531, 0.325407,
		0.600818, 0.736743, 0.310205,
		35.557762, 34.201683, 39.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797493, 34.416451, 39.650333>,  <35.137192, 33.685963, 39.765350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797493, 34.416451, 39.650333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196087, 34.449459, 39.644512>,  <35.435242, 34.469265, 39.641018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196087, 34.449459, 39.644512>,  <34.797493, 34.416451, 39.650333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196087, 34.449459, 39.644512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048368, 0.424597, -0.904089,
		-0.068422, 0.901614, 0.427095,
		0.996483, 0.082518, -0.014558,
		35.495033, 34.474213, 39.640144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939491, 35.167889, 39.541397>,  <34.797493, 34.416451, 39.650333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939491, 35.167889, 39.541397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283459, 34.992104, 39.437546>,  <35.489838, 34.886631, 39.375233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283459, 34.992104, 39.437546>,  <34.939491, 35.167889, 39.541397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283459, 34.992104, 39.437546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064460, 0.411083, -0.909316,
		0.506344, 0.798674, 0.325170,
		0.859919, -0.439466, -0.259632,
		35.541435, 34.860264, 39.359657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387283, 35.709045, 39.240807>,  <34.939491, 35.167889, 39.541397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387283, 35.709045, 39.240807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529106, 35.358303, 39.110939>,  <35.614201, 35.147858, 39.033016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529106, 35.358303, 39.110939>,  <35.387283, 35.709045, 39.240807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529106, 35.358303, 39.110939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046606, 0.363371, -0.930478,
		0.933873, 0.314773, 0.169701,
		0.354554, -0.876858, -0.324673,
		35.635471, 35.095245, 39.013538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885246, 35.893093, 38.804695>,  <35.387283, 35.709045, 39.240807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885246, 35.893093, 38.804695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802475, 35.521801, 38.681038>,  <35.752811, 35.299026, 38.606846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802475, 35.521801, 38.681038>,  <35.885246, 35.893093, 38.804695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802475, 35.521801, 38.681038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288463, 0.244045, -0.925868,
		0.934863, -0.280764, 0.217260,
		-0.206929, -0.928231, -0.309139,
		35.740395, 35.243332, 38.588295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428898, 35.748283, 38.409496>,  <35.885246, 35.893093, 38.804695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428898, 35.748283, 38.409496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129158, 35.504082, 38.306915>,  <35.949314, 35.357559, 38.245369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129158, 35.504082, 38.306915>,  <36.428898, 35.748283, 38.409496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129158, 35.504082, 38.306915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141329, 0.230905, -0.962657,
		0.646921, -0.757607, -0.086746,
		-0.749346, -0.610503, -0.256449,
		35.904354, 35.320930, 38.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707008, 35.506657, 37.843880>,  <36.428898, 35.748283, 38.409496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707008, 35.506657, 37.843880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319157, 35.410866, 37.823994>,  <36.086445, 35.353390, 37.812061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319157, 35.410866, 37.823994>,  <36.707008, 35.506657, 37.843880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319157, 35.410866, 37.823994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027601, 0.094831, -0.995111,
		0.243020, -0.966260, -0.085341,
		-0.969629, -0.239476, -0.049715,
		36.028267, 35.339024, 37.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610413, 34.938950, 37.348431>,  <36.707008, 35.506657, 37.843880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610413, 34.938950, 37.348431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283440, 35.163952, 37.398071>,  <36.087257, 35.298954, 37.427856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283440, 35.163952, 37.398071>,  <36.610413, 34.938950, 37.348431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283440, 35.163952, 37.398071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029647, 0.174081, -0.984285,
		-0.575266, -0.808262, -0.125622,
		-0.817428, 0.562502, 0.124105,
		36.038212, 35.332703, 37.435303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682587, 34.772877, 36.619446>,  <36.610413, 34.938950, 37.348431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682587, 34.772877, 36.619446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056030, 34.804184, 36.479591>,  <37.280098, 34.822968, 36.395679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056030, 34.804184, 36.479591>,  <36.682587, 34.772877, 36.619446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056030, 34.804184, 36.479591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358248, -0.189671, 0.914157,
		0.005233, -0.978724, -0.205118,
		0.933612, 0.078266, -0.349633,
		37.336113, 34.827663, 36.374702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104954, 34.125023, 36.819569>,  <36.682587, 34.772877, 36.619446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104954, 34.125023, 36.819569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381016, 34.406715, 36.752945>,  <37.546654, 34.575733, 36.712971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381016, 34.406715, 36.752945>,  <37.104954, 34.125023, 36.819569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381016, 34.406715, 36.752945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406829, -0.187229, 0.894111,
		0.598479, -0.684836, -0.415720,
		0.690155, 0.704234, -0.166558,
		37.588062, 34.617985, 36.702976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667778, 33.804249, 36.954094>,  <37.104954, 34.125023, 36.819569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667778, 33.804249, 36.954094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808987, 34.178410, 36.946098>,  <37.893711, 34.402908, 36.941303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808987, 34.178410, 36.946098>,  <37.667778, 33.804249, 36.954094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808987, 34.178410, 36.946098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528608, -0.181778, 0.829175,
		0.771980, -0.303277, -0.558632,
		0.353017, 0.935403, -0.019985,
		37.914890, 34.459030, 36.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352161, 33.759136, 36.927723>,  <37.667778, 33.804249, 36.954094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352161, 33.759136, 36.927723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267105, 34.117390, 37.083992>,  <38.216072, 34.332340, 37.177753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267105, 34.117390, 37.083992>,  <38.352161, 33.759136, 36.927723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267105, 34.117390, 37.083992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503799, -0.242089, 0.829204,
		0.837241, 0.373141, -0.399742,
		-0.212637, 0.895633, 0.390674,
		38.203316, 34.386078, 37.201195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976719, 34.187031, 37.261826>,  <38.352161, 33.759136, 36.927723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976719, 34.187031, 37.261826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628059, 34.289501, 37.428967>,  <38.418865, 34.350983, 37.529251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628059, 34.289501, 37.428967>,  <38.976719, 34.187031, 37.261826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628059, 34.289501, 37.428967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353646, -0.261549, 0.898068,
		0.339353, 0.930573, 0.137383,
		-0.871650, 0.256177, 0.417851,
		38.366566, 34.366356, 37.554321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266018, 34.522976, 37.807144>,  <38.976719, 34.187031, 37.261826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266018, 34.522976, 37.807144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886150, 34.518360, 37.932362>,  <38.658230, 34.515591, 38.007492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886150, 34.518360, 37.932362>,  <39.266018, 34.522976, 37.807144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886150, 34.518360, 37.932362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313047, 0.001895, 0.949736,
		-0.011553, 0.999932, 0.001813,
		-0.949667, -0.011540, 0.313048,
		38.601250, 34.514896, 38.026276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195187, 34.963627, 38.276188>,  <39.266018, 34.522976, 37.807144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195187, 34.963627, 38.276188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884628, 34.724861, 38.357090>,  <38.698292, 34.581604, 38.405632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884628, 34.724861, 38.357090>,  <39.195187, 34.963627, 38.276188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884628, 34.724861, 38.357090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214803, 0.051086, 0.975320,
		-0.592511, 0.800680, 0.088555,
		-0.776396, -0.596910, 0.202257,
		38.651711, 34.545788, 38.417767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797592, 35.330238, 38.829250>,  <39.195187, 34.963627, 38.276188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797592, 35.330238, 38.829250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743069, 34.934509, 38.849873>,  <38.710354, 34.697071, 38.862244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743069, 34.934509, 38.849873>,  <38.797592, 35.330238, 38.829250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743069, 34.934509, 38.849873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137312, 0.032670, 0.989989,
		-0.981104, 0.142022, 0.131393,
		-0.136308, -0.989324, 0.051554,
		38.702175, 34.637711, 38.865337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463963, 35.238167, 39.390411>,  <38.797592, 35.330238, 38.829250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463963, 35.238167, 39.390411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580662, 34.864079, 39.310173>,  <38.650681, 34.639626, 39.262032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580662, 34.864079, 39.310173>,  <38.463963, 35.238167, 39.390411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580662, 34.864079, 39.310173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173729, -0.154419, 0.972611,
		-0.940586, -0.318607, 0.117424,
		0.291748, -0.935224, -0.200596,
		38.668186, 34.583511, 39.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302773, 34.873150, 39.887115>,  <38.463963, 35.238167, 39.390411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302773, 34.873150, 39.887115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561649, 34.599773, 39.752029>,  <38.716976, 34.435745, 39.670979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561649, 34.599773, 39.752029>,  <38.302773, 34.873150, 39.887115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561649, 34.599773, 39.752029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262614, -0.216004, 0.940413,
		-0.715667, -0.697313, 0.039686,
		0.647189, -0.683445, -0.337711,
		38.755806, 34.394741, 39.650715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145741, 34.248093, 40.163033>,  <38.302773, 34.873150, 39.887115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145741, 34.248093, 40.163033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534344, 34.192616, 40.086166>,  <38.767506, 34.159328, 40.040047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534344, 34.192616, 40.086166>,  <38.145741, 34.248093, 40.163033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534344, 34.192616, 40.086166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124241, -0.392437, 0.911349,
		-0.201809, -0.909262, -0.364026,
		0.971513, -0.138691, -0.192165,
		38.825798, 34.151009, 40.028515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237274, 33.606983, 40.399948>,  <38.145741, 34.248093, 40.163033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237274, 33.606983, 40.399948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613331, 33.737225, 40.359734>,  <38.838966, 33.815369, 40.335606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613331, 33.737225, 40.359734>,  <38.237274, 33.606983, 40.399948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613331, 33.737225, 40.359734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233646, -0.401138, 0.885719,
		0.248064, -0.856195, -0.453204,
		0.940145, 0.325604, -0.100539,
		38.895374, 33.834908, 40.329571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778568, 33.078159, 40.506840>,  <38.237274, 33.606983, 40.399948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778568, 33.078159, 40.506840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928070, 33.433716, 40.612801>,  <39.017773, 33.647049, 40.676376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928070, 33.433716, 40.612801>,  <38.778568, 33.078159, 40.506840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928070, 33.433716, 40.612801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297763, -0.385477, 0.873353,
		0.878431, -0.247545, -0.408754,
		0.373759, 0.888892, 0.264905,
		39.040199, 33.700382, 40.692272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361691, 32.967979, 40.921154>,  <38.778568, 33.078159, 40.506840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361691, 32.967979, 40.921154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322117, 33.353523, 41.020100>,  <39.298374, 33.584850, 41.079468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322117, 33.353523, 41.020100>,  <39.361691, 32.967979, 40.921154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322117, 33.353523, 41.020100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147632, -0.231619, 0.961539,
		0.984082, 0.131646, -0.119382,
		-0.098932, 0.963858, 0.247367,
		39.292439, 33.642681, 41.094311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941311, 33.215466, 41.385468>,  <39.361691, 32.967979, 40.921154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941311, 33.215466, 41.385468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642002, 33.474834, 41.441517>,  <39.462418, 33.630455, 41.475147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642002, 33.474834, 41.441517>,  <39.941311, 33.215466, 41.385468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642002, 33.474834, 41.441517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006367, -0.204199, 0.978909,
		0.663358, 0.733385, 0.148668,
		-0.748275, 0.648421, 0.140127,
		39.417519, 33.669361, 41.483555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203991, 33.683891, 41.845665>,  <39.941311, 33.215466, 41.385468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203991, 33.683891, 41.845665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807201, 33.717922, 41.883060>,  <39.569126, 33.738342, 41.905499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807201, 33.717922, 41.883060>,  <40.203991, 33.683891, 41.845665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807201, 33.717922, 41.883060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078378, -0.166296, 0.982956,
		0.099178, 0.982399, 0.158294,
		-0.991978, 0.085081, 0.093491,
		39.509609, 33.743446, 41.911106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996922, 34.078838, 42.446041>,  <40.203991, 33.683891, 41.845665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996922, 34.078838, 42.446041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670063, 33.855755, 42.387756>,  <39.473949, 33.721905, 42.352783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.670063, 33.855755, 42.387756>,  <39.996922, 34.078838, 42.446041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670063, 33.855755, 42.387756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033804, -0.205986, 0.977971,
		-0.575441, 0.804069, 0.149468,
		-0.817144, -0.557712, -0.145714,
		39.424919, 33.688442, 42.344044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584534, 34.128803, 43.062923>,  <39.996922, 34.078838, 42.446041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584534, 34.128803, 43.062923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394421, 33.807560, 42.919182>,  <39.280354, 33.614815, 42.832935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394421, 33.807560, 42.919182>,  <39.584534, 34.128803, 43.062923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394421, 33.807560, 42.919182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137241, -0.471103, 0.871336,
		-0.869065, 0.364810, 0.334124,
		-0.475279, -0.803104, -0.359353,
		39.251839, 33.566628, 42.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.044682, 33.901833, 43.584904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079700, 33.566711, 43.369339>,  <39.100712, 33.365639, 43.240002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079700, 33.566711, 43.369339>,  <39.044682, 33.901833, 43.584904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079700, 33.566711, 43.369339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207371, -0.544464, 0.812746,
		-0.974337, 0.040602, -0.221401,
		0.087546, -0.837801, -0.538911,
		39.105965, 33.315372, 43.207664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394333, 33.504707, 43.639927>,  <39.044682, 33.901833, 43.584904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394333, 33.504707, 43.639927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693611, 33.254494, 43.551456>,  <38.873177, 33.104366, 43.498375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693611, 33.254494, 43.551456>,  <38.394333, 33.504707, 43.639927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693611, 33.254494, 43.551456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254113, -0.578108, 0.775382,
		-0.612894, -0.523927, -0.591491,
		0.748189, -0.625533, -0.221182,
		38.918068, 33.066833, 43.485104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213104, 32.908737, 43.886848>,  <38.394333, 33.504707, 43.639927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213104, 32.908737, 43.886848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589520, 32.795208, 43.813221>,  <38.815369, 32.727089, 43.769043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589520, 32.795208, 43.813221>,  <38.213104, 32.908737, 43.886848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589520, 32.795208, 43.813221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006046, -0.529926, 0.848022,
		-0.338234, -0.799138, -0.496967,
		0.941043, -0.283825, -0.184071,
		38.871834, 32.710060, 43.757999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179718, 32.224331, 44.013401>,  <38.213104, 32.908737, 43.886848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179718, 32.224331, 44.013401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557144, 32.348610, 44.059277>,  <38.783600, 32.423180, 44.086803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557144, 32.348610, 44.059277>,  <38.179718, 32.224331, 44.013401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557144, 32.348610, 44.059277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049041, -0.473556, 0.879397,
		0.327543, -0.824142, -0.462067,
		0.943563, 0.310701, 0.114693,
		38.840214, 32.441818, 44.093685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640984, 31.563562, 44.102932>,  <38.179718, 32.224331, 44.013401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640984, 31.563562, 44.102932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807007, 31.881681, 44.279671>,  <38.906620, 32.072552, 44.385715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807007, 31.881681, 44.279671>,  <38.640984, 31.563562, 44.102932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807007, 31.881681, 44.279671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096026, -0.521238, 0.847992,
		0.904713, -0.309537, -0.292713,
		0.415058, 0.795298, 0.441847,
		38.931522, 32.120270, 44.412224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247997, 31.301718, 44.382683>,  <38.640984, 31.563562, 44.102932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247997, 31.301718, 44.382683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236782, 31.641062, 44.594151>,  <39.230053, 31.844669, 44.721031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236782, 31.641062, 44.594151>,  <39.247997, 31.301718, 44.382683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236782, 31.641062, 44.594151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266262, -0.503434, 0.821984,
		0.963493, 0.163816, -0.211769,
		-0.028042, 0.848362, 0.528673,
		39.228371, 31.895571, 44.752754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917408, 31.465870, 44.740662>,  <39.247997, 31.301718, 44.382683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917408, 31.465870, 44.740662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656010, 31.693518, 44.940281>,  <39.499172, 31.830107, 45.060051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656010, 31.693518, 44.940281>,  <39.917408, 31.465870, 44.740662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656010, 31.693518, 44.940281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441522, -0.248916, 0.862032,
		0.614820, 0.783673, -0.088613,
		-0.653494, 0.569120, 0.499047,
		39.459961, 31.864254, 45.089996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311798, 31.873077, 45.182903>,  <39.917408, 31.465870, 44.740662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311798, 31.873077, 45.182903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953529, 31.902851, 45.358284>,  <39.738567, 31.920715, 45.463512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953529, 31.902851, 45.358284>,  <40.311798, 31.873077, 45.182903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953529, 31.902851, 45.358284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430515, -0.102090, 0.896791,
		0.111515, 0.991986, 0.059393,
		-0.895668, 0.074436, 0.438450,
		39.684830, 31.925182, 45.489819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495003, 32.184509, 45.724133>,  <40.311798, 31.873077, 45.182903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495003, 32.184509, 45.724133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152252, 31.996761, 45.809418>,  <39.946602, 31.884111, 45.860588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152252, 31.996761, 45.809418>,  <40.495003, 32.184509, 45.724133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152252, 31.996761, 45.809418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361321, -0.251793, 0.897801,
		-0.367717, 0.846340, 0.385349,
		-0.856873, -0.469371, 0.213212,
		39.895191, 31.855949, 45.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251816, 32.462097, 46.403748>,  <40.495003, 32.184509, 45.724133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251816, 32.462097, 46.403748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055283, 32.115391, 46.369534>,  <39.937363, 31.907368, 46.349007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055283, 32.115391, 46.369534>,  <40.251816, 32.462097, 46.403748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055283, 32.115391, 46.369534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289778, -0.255287, 0.922419,
		-0.821352, 0.428431, 0.376600,
		-0.491334, -0.866761, -0.085531,
		39.907883, 31.855362, 46.343876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776222, 32.431541, 46.931087>,  <40.251816, 32.462097, 46.403748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776222, 32.431541, 46.931087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862858, 32.057388, 46.819271>,  <39.914837, 31.832895, 46.752182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862858, 32.057388, 46.819271>,  <39.776222, 32.431541, 46.931087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862858, 32.057388, 46.819271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188093, -0.240987, 0.952127,
		-0.957972, -0.258797, 0.123745,
		0.216587, -0.935387, -0.279537,
		39.927834, 31.776772, 46.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548637, 31.967995, 47.611576>,  <39.776222, 32.431541, 46.931087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548637, 31.967995, 47.611576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.746418, 31.713467, 47.374725>,  <39.865086, 31.560749, 47.232616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.746418, 31.713467, 47.374725>,  <39.548637, 31.967995, 47.611576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746418, 31.713467, 47.374725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215736, -0.570071, 0.792765,
		-0.842007, -0.519727, -0.144596,
		0.494451, -0.636320, -0.592127,
		39.894753, 31.522572, 47.197086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292011, 31.326113, 47.814907>,  <39.548637, 31.967995, 47.611576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292011, 31.326113, 47.814907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629204, 31.244686, 47.615730>,  <39.831520, 31.195829, 47.496223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629204, 31.244686, 47.615730>,  <39.292011, 31.326113, 47.814907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629204, 31.244686, 47.615730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300427, -0.589684, 0.749678,
		-0.446236, -0.781559, -0.435935,
		0.842981, -0.203566, -0.497939,
		39.882099, 31.183617, 47.466347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428566, 30.663780, 47.944012>,  <39.292011, 31.326113, 47.814907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428566, 30.663780, 47.944012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.787853, 30.806742, 47.841667>,  <40.003426, 30.892519, 47.780262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.787853, 30.806742, 47.841667>,  <39.428566, 30.663780, 47.944012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787853, 30.806742, 47.841667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406124, -0.452182, 0.794100,
		0.168121, -0.817187, -0.551309,
		0.898220, 0.357404, -0.255858,
		40.057320, 30.913963, 47.764908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804729, 30.137619, 47.917522>,  <39.428566, 30.663780, 47.944012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804729, 30.137619, 47.917522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068363, 30.431107, 47.983562>,  <40.226543, 30.607199, 48.023186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068363, 30.431107, 47.983562>,  <39.804729, 30.137619, 47.917522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068363, 30.431107, 47.983562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365386, -0.504279, 0.782430,
		0.657340, -0.455366, -0.600455,
		0.659088, 0.733720, 0.165098,
		40.266090, 30.651222, 48.033092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503407, 29.851778, 47.994316>,  <39.804729, 30.137619, 47.917522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503407, 29.851778, 47.994316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540321, 30.197321, 48.192402>,  <40.562469, 30.404646, 48.311253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540321, 30.197321, 48.192402>,  <40.503407, 29.851778, 47.994316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540321, 30.197321, 48.192402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357822, -0.492886, 0.793112,
		0.929218, 0.104007, -0.354592,
		0.092284, 0.863855, 0.495215,
		40.568008, 30.456478, 48.340965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131149, 29.793495, 48.328419>,  <40.503407, 29.851778, 47.994316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131149, 29.793495, 48.328419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955967, 30.093147, 48.527214>,  <40.850857, 30.272940, 48.646492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955967, 30.093147, 48.527214>,  <41.131149, 29.793495, 48.328419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955967, 30.093147, 48.527214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174424, -0.471510, 0.864439,
		0.881912, 0.465274, 0.075835,
		-0.437958, 0.749132, 0.496985,
		40.824581, 30.317886, 48.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565899, 29.989655, 48.741707>,  <41.131149, 29.793495, 48.328419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565899, 29.989655, 48.741707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224884, 30.107496, 48.914398>,  <41.020275, 30.178202, 49.018013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224884, 30.107496, 48.914398>,  <41.565899, 29.989655, 48.741707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224884, 30.107496, 48.914398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260731, -0.476173, 0.839808,
		0.452985, 0.828534, 0.329145,
		-0.852540, 0.294602, 0.431724,
		40.969124, 30.195877, 49.043915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806671, 30.244545, 49.313992>,  <41.565899, 29.989655, 48.741707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806671, 30.244545, 49.313992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416935, 30.180157, 49.376911>,  <41.183094, 30.141523, 49.414661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416935, 30.180157, 49.376911>,  <41.806671, 30.244545, 49.313992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416935, 30.180157, 49.376911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222463, -0.582856, 0.781530,
		-0.034120, 0.796472, 0.603712,
		-0.974344, -0.160970, 0.157299,
		41.124630, 30.131866, 49.424099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707897, 30.407774, 50.071857>,  <41.806671, 30.244545, 49.313992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707897, 30.407774, 50.071857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404320, 30.177795, 49.949585>,  <41.222172, 30.039808, 49.876221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404320, 30.177795, 49.949585>,  <41.707897, 30.407774, 50.071857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404320, 30.177795, 49.949585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003910, -0.473454, 0.880810,
		-0.651143, 0.667292, 0.361573,
		-0.758945, -0.574946, -0.305677,
		41.176636, 30.005312, 49.857883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219688, 30.279572, 50.741821>,  <41.707897, 30.407774, 50.071857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219688, 30.279572, 50.741821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.144577, 29.973637, 50.495319>,  <41.099510, 29.790075, 50.347420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.144577, 29.973637, 50.495319>,  <41.219688, 30.279572, 50.741821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144577, 29.973637, 50.495319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043683, -0.620287, 0.783158,
		-0.981240, 0.173980, 0.083067,
		-0.187779, -0.764837, -0.616250,
		41.088245, 29.744186, 50.310444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771507, 30.009359, 51.151672>,  <41.219688, 30.279572, 50.741821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771507, 30.009359, 51.151672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868481, 29.717314, 50.896122>,  <40.926666, 29.542086, 50.742794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868481, 29.717314, 50.896122>,  <40.771507, 30.009359, 51.151672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868481, 29.717314, 50.896122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024734, -0.662954, 0.748251,
		-0.969852, -0.165602, -0.178784,
		0.242437, -0.730115, -0.638871,
		40.941212, 29.498280, 50.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245934, 29.441956, 51.164501>,  <40.771507, 30.009359, 51.151672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245934, 29.441956, 51.164501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623482, 29.342609, 51.077393>,  <40.850010, 29.283003, 51.025127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.623482, 29.342609, 51.077393>,  <40.245934, 29.441956, 51.164501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623482, 29.342609, 51.077393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037640, -0.735856, 0.676091,
		-0.328164, -0.629945, -0.703902,
		0.943871, -0.248364, -0.217771,
		40.906643, 29.268101, 51.012062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203083, 28.646957, 50.969204>,  <40.245934, 29.441956, 51.164501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203083, 28.646957, 50.969204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.588219, 28.706369, 51.059437>,  <40.819298, 28.742016, 51.113579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.588219, 28.706369, 51.059437>,  <40.203083, 28.646957, 50.969204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588219, 28.706369, 51.059437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043899, -0.910170, 0.411903,
		0.266501, -0.386692, -0.882863,
		0.962834, 0.148529, 0.225586,
		40.877068, 28.750929, 51.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674889, 28.800829, 51.416107>,  <40.203083, 28.646957, 50.969204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674889, 28.800829, 51.416107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385017, 28.951908, 51.646652>,  <39.211094, 29.042555, 51.784977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385017, 28.951908, 51.646652>,  <39.674889, 28.800829, 51.416107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385017, 28.951908, 51.646652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474095, 0.333710, -0.814783,
		-0.500079, -0.863702, -0.062766,
		-0.724676, 0.377699, 0.576358,
		39.167614, 29.065218, 51.819561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128387, 28.642714, 51.073902>,  <39.674889, 28.800829, 51.416107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128387, 28.642714, 51.073902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981789, 28.927027, 51.314056>,  <38.893829, 29.097614, 51.458149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981789, 28.927027, 51.314056>,  <39.128387, 28.642714, 51.073902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981789, 28.927027, 51.314056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583482, 0.327047, -0.743363,
		-0.724725, -0.622758, 0.294867,
		-0.366500, 0.710783, 0.600387,
		38.871838, 29.140263, 51.494171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397179, 28.641449, 50.812424>,  <39.128387, 28.642714, 51.073902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397179, 28.641449, 50.812424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472134, 28.975452, 51.019360>,  <38.517105, 29.175856, 51.143520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.472134, 28.975452, 51.019360>,  <38.397179, 28.641449, 50.812424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472134, 28.975452, 51.019360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480178, 0.537323, -0.693334,
		-0.856921, -0.118494, 0.501642,
		0.187388, 0.835011, 0.517342,
		38.528351, 29.225956, 51.174561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836933, 28.887667, 50.902615>,  <38.397179, 28.641449, 50.812424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836933, 28.887667, 50.902615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073696, 29.204479, 50.962379>,  <38.215755, 29.394567, 50.998238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073696, 29.204479, 50.962379>,  <37.836933, 28.887667, 50.902615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073696, 29.204479, 50.962379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661505, 0.583288, -0.471367,
		-0.460491, 0.180167, 0.869188,
		0.591912, 0.792032, 0.149417,
		38.251270, 29.442089, 51.007206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382229, 29.578527, 51.113853>,  <37.836933, 28.887667, 50.902615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382229, 29.578527, 51.113853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732483, 29.734999, 51.000549>,  <37.942635, 29.828882, 50.932568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732483, 29.734999, 51.000549>,  <37.382229, 29.578527, 51.113853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732483, 29.734999, 51.000549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458765, 0.490365, -0.740997,
		-0.150963, 0.778795, 0.608842,
		0.875639, 0.391179, -0.283257,
		37.995174, 29.852352, 50.915573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230328, 30.169439, 50.856937>,  <37.382229, 29.578527, 51.113853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230328, 30.169439, 50.856937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597652, 30.127861, 50.704151>,  <37.818047, 30.102915, 50.612480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597652, 30.127861, 50.704151>,  <37.230328, 30.169439, 50.856937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597652, 30.127861, 50.704151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305806, 0.426439, -0.851254,
		0.251370, 0.898524, 0.359816,
		0.918311, -0.103945, -0.381968,
		37.873146, 30.096678, 50.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525536, 30.909763, 50.639324>,  <37.230328, 30.169439, 50.856937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525536, 30.909763, 50.639324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732086, 30.628050, 50.444454>,  <37.856018, 30.459023, 50.327534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732086, 30.628050, 50.444454>,  <37.525536, 30.909763, 50.639324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732086, 30.628050, 50.444454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226318, 0.436428, -0.870810,
		0.825913, 0.559925, 0.065971,
		0.516380, -0.704283, -0.487173,
		37.887001, 30.416765, 50.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090698, 31.281435, 50.199387>,  <37.525536, 30.909763, 50.639324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090698, 31.281435, 50.199387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037434, 30.932230, 50.011719>,  <38.005474, 30.722708, 49.899120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037434, 30.932230, 50.011719>,  <38.090698, 31.281435, 50.199387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037434, 30.932230, 50.011719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185954, 0.486983, -0.853386,
		0.973493, -0.026396, -0.227189,
		-0.133162, -0.873012, -0.469166,
		37.997486, 30.670326, 49.870968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387627, 31.387707, 49.611053>,  <38.090698, 31.281435, 50.199387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387627, 31.387707, 49.611053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146008, 31.075901, 49.544739>,  <38.001038, 30.888819, 49.504951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146008, 31.075901, 49.544739>,  <38.387627, 31.387707, 49.611053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146008, 31.075901, 49.544739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107508, 0.285827, -0.952231,
		0.789663, -0.557371, -0.256457,
		-0.604049, -0.779513, -0.165785,
		37.964794, 30.842047, 49.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696884, 31.044647, 48.921867>,  <38.387627, 31.387707, 49.611053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696884, 31.044647, 48.921867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324654, 30.907776, 48.973942>,  <38.101315, 30.825653, 49.005188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324654, 30.907776, 48.973942>,  <38.696884, 31.044647, 48.921867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324654, 30.907776, 48.973942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180655, 0.119880, -0.976213,
		0.318431, -0.931957, -0.173373,
		-0.930572, -0.342178, 0.130190,
		38.045483, 30.805122, 49.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614967, 30.503428, 48.404453>,  <38.696884, 31.044647, 48.921867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614967, 30.503428, 48.404453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263836, 30.667135, 48.503983>,  <38.053158, 30.765360, 48.563702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263836, 30.667135, 48.503983>,  <38.614967, 30.503428, 48.404453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263836, 30.667135, 48.503983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188946, 0.181476, -0.965073,
		-0.440131, -0.894184, -0.081975,
		-0.877829, 0.409270, 0.248826,
		38.000488, 30.789917, 48.578629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229534, 30.422979, 47.834358>,  <38.614967, 30.503428, 48.404453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229534, 30.422979, 47.834358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008476, 30.690201, 48.033672>,  <37.875843, 30.850534, 48.153259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008476, 30.690201, 48.033672>,  <38.229534, 30.422979, 47.834358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008476, 30.690201, 48.033672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379732, 0.330375, -0.864093,
		-0.741883, -0.666749, 0.071103,
		-0.552642, 0.668056, 0.498285,
		37.842682, 30.890617, 48.183159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559315, 30.355841, 47.519123>,  <38.229534, 30.422979, 47.834358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559315, 30.355841, 47.519123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566032, 30.720182, 47.684078>,  <37.570065, 30.938787, 47.783051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566032, 30.720182, 47.684078>,  <37.559315, 30.355841, 47.519123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566032, 30.720182, 47.684078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261084, 0.402132, -0.877568,
		-0.965170, -0.092927, 0.244564,
		0.016797, 0.910854, 0.412388,
		37.571072, 30.993439, 47.807793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852882, 30.736897, 47.274868>,  <37.559315, 30.355841, 47.519123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852882, 30.736897, 47.274868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105629, 31.021711, 47.397343>,  <37.257275, 31.192600, 47.470829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105629, 31.021711, 47.397343>,  <36.852882, 30.736897, 47.274868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105629, 31.021711, 47.397343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127186, 0.484941, -0.865249,
		-0.764574, 0.507776, 0.396977,
		0.631863, 0.712037, 0.306191,
		37.295189, 31.235323, 47.489201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484688, 31.398888, 47.185120>,  <36.852882, 30.736897, 47.274868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484688, 31.398888, 47.185120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874905, 31.485086, 47.202461>,  <37.109035, 31.536806, 47.212868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874905, 31.485086, 47.202461>,  <36.484688, 31.398888, 47.185120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874905, 31.485086, 47.202461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078869, 0.527255, -0.846039,
		-0.205180, 0.821926, 0.531355,
		0.975541, 0.215498, 0.043358,
		37.167568, 31.549736, 47.215469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517269, 32.188751, 47.179619>,  <36.484688, 31.398888, 47.185120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517269, 32.188751, 47.179619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874687, 32.060318, 47.054092>,  <37.089138, 31.983257, 46.978775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874687, 32.060318, 47.054092>,  <36.517269, 32.188751, 47.179619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874687, 32.060318, 47.054092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020366, 0.669260, -0.742749,
		0.448508, 0.670072, 0.591476,
		0.893547, -0.321083, -0.313815,
		37.142750, 31.963993, 46.959949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727612, 32.788471, 46.910461>,  <36.517269, 32.188751, 47.179619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727612, 32.788471, 46.910461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958359, 32.513485, 46.734001>,  <37.096806, 32.348492, 46.628124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958359, 32.513485, 46.734001>,  <36.727612, 32.788471, 46.910461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958359, 32.513485, 46.734001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199453, 0.642271, -0.740072,
		0.792115, 0.338932, 0.507621,
		0.576864, -0.687469, -0.441151,
		37.131416, 32.307243, 46.601654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273472, 33.170902, 46.592880>,  <36.727612, 32.788471, 46.910461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273472, 33.170902, 46.592880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253685, 32.817322, 46.406902>,  <37.241814, 32.605171, 46.295315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253685, 32.817322, 46.406902>,  <37.273472, 33.170902, 46.592880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253685, 32.817322, 46.406902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234590, 0.442211, -0.865688,
		0.970835, -0.151894, 0.185493,
		-0.049466, -0.883955, -0.464947,
		37.238846, 32.552135, 46.267418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745602, 33.303947, 46.053993>,  <37.273472, 33.170902, 46.592880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745602, 33.303947, 46.053993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509262, 32.994907, 45.961052>,  <37.367458, 32.809483, 45.905289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509262, 32.994907, 45.961052>,  <37.745602, 33.303947, 46.053993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509262, 32.994907, 45.961052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034444, 0.311889, -0.949494,
		0.806046, -0.553006, -0.210891,
		-0.590851, -0.772600, -0.232349,
		37.332008, 32.763126, 45.891346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921158, 33.018219, 45.380428>,  <37.745602, 33.303947, 46.053993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921158, 33.018219, 45.380428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543400, 32.898144, 45.434097>,  <37.316746, 32.826099, 45.466297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543400, 32.898144, 45.434097>,  <37.921158, 33.018219, 45.380428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543400, 32.898144, 45.434097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217312, 0.263615, -0.939831,
		0.246744, -0.916735, -0.314189,
		-0.944401, -0.300175, 0.134172,
		37.260078, 32.808090, 45.474346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.687447, 43.508072, 36.784153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322262, 43.421913, 36.645527>,  <43.103149, 43.370216, 36.562351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322262, 43.421913, 36.645527>,  <43.687447, 43.508072, 36.784153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322262, 43.421913, 36.645527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321940, -0.902073, -0.287436,
		-0.250713, -0.373991, 0.892902,
		-0.912961, -0.215397, -0.346564,
		43.048374, 43.357292, 36.541557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488312, 42.738766, 36.937035>,  <43.687447, 43.508072, 36.784153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488312, 42.738766, 36.937035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272469, 42.847706, 36.618374>,  <43.142963, 42.913071, 36.427177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272469, 42.847706, 36.618374>,  <43.488312, 42.738766, 36.937035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272469, 42.847706, 36.618374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030008, -0.939408, -0.341485,
		-0.841384, -0.208173, 0.498735,
		-0.539604, 0.272354, -0.796650,
		43.110588, 42.929413, 36.379379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885643, 42.258736, 36.891968>,  <43.488312, 42.738766, 36.937035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885643, 42.258736, 36.891968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946491, 42.405777, 36.524986>,  <42.983002, 42.494003, 36.304798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946491, 42.405777, 36.524986>,  <42.885643, 42.258736, 36.891968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946491, 42.405777, 36.524986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030226, -0.929555, -0.367443,
		-0.987899, 0.028166, -0.152520,
		0.152124, 0.367607, -0.917455,
		42.992130, 42.516060, 36.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491100, 41.862419, 36.463837>,  <42.885643, 42.258736, 36.891968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491100, 41.862419, 36.463837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733276, 42.050621, 36.207066>,  <42.878582, 42.163544, 36.053005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733276, 42.050621, 36.207066>,  <42.491100, 41.862419, 36.463837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733276, 42.050621, 36.207066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082193, -0.839198, -0.537580,
		-0.791637, 0.272710, -0.546755,
		0.605438, 0.470507, -0.641925,
		42.914909, 42.191772, 36.014488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178520, 41.749283, 35.805691>,  <42.491100, 41.862419, 36.463837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178520, 41.749283, 35.805691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.563873, 41.831345, 35.736637>,  <42.795086, 41.880581, 35.695206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.563873, 41.831345, 35.736637>,  <42.178520, 41.749283, 35.805691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563873, 41.831345, 35.736637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119675, -0.905174, -0.407846,
		-0.239937, 0.372253, -0.896582,
		0.963384, 0.205156, -0.172635,
		42.852890, 41.892891, 35.684845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263416, 41.743187, 35.180614>,  <42.178520, 41.749283, 35.805691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263416, 41.743187, 35.180614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644024, 41.694859, 35.293758>,  <42.872391, 41.665863, 35.361645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644024, 41.694859, 35.293758>,  <42.263416, 41.743187, 35.180614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644024, 41.694859, 35.293758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039754, -0.863605, -0.502599,
		0.305002, 0.489479, -0.816936,
		0.951522, -0.120817, 0.282860,
		42.929482, 41.658615, 35.378616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535446, 41.349865, 34.597168>,  <42.263416, 41.743187, 35.180614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535446, 41.349865, 34.597168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783100, 41.278881, 34.903156>,  <42.931694, 41.236290, 35.086750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783100, 41.278881, 34.903156>,  <42.535446, 41.349865, 34.597168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783100, 41.278881, 34.903156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005442, -0.975078, -0.221794,
		0.785265, 0.133158, -0.604672,
		0.619136, -0.177458, 0.764970,
		42.968842, 41.225643, 35.132648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048786, 41.025425, 34.340797>,  <42.535446, 41.349865, 34.597168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048786, 41.025425, 34.340797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062611, 40.923950, 34.727467>,  <43.070904, 40.863068, 34.959469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062611, 40.923950, 34.727467>,  <43.048786, 41.025425, 34.340797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062611, 40.923950, 34.727467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153384, -0.954442, -0.255957,
		0.987562, 0.157118, 0.005924,
		0.034562, -0.253682, 0.966670,
		43.072979, 40.847847, 35.017467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633209, 40.653439, 34.343136>,  <43.048786, 41.025425, 34.340797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633209, 40.653439, 34.343136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425179, 40.538784, 34.664970>,  <43.300358, 40.469990, 34.858070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425179, 40.538784, 34.664970>,  <43.633209, 40.653439, 34.343136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425179, 40.538784, 34.664970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205653, -0.956317, -0.207760,
		0.828990, 0.057414, 0.556308,
		-0.520079, -0.286638, 0.804585,
		43.269154, 40.452793, 34.906345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019863, 39.971779, 34.577118>,  <43.633209, 40.653439, 34.343136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019863, 39.971779, 34.577118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661842, 39.973038, 34.755501>,  <43.447029, 39.973793, 34.862530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.661842, 39.973038, 34.755501>,  <44.019863, 39.971779, 34.577118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661842, 39.973038, 34.755501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055521, -0.991409, 0.118431,
		0.442495, 0.130762, 0.887186,
		-0.895051, 0.003147, 0.445953,
		43.393326, 39.973984, 34.889286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106144, 39.477322, 35.108761>,  <44.019863, 39.971779, 34.577118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106144, 39.477322, 35.108761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711479, 39.519276, 35.058975>,  <43.474678, 39.544449, 35.029102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711479, 39.519276, 35.058975>,  <44.106144, 39.477322, 35.108761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711479, 39.519276, 35.058975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129427, -0.969271, 0.209195,
		-0.098700, 0.222515, 0.969921,
		-0.986665, 0.104886, -0.124466,
		43.415482, 39.550743, 35.021637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797462, 39.120583, 35.621597>,  <44.106144, 39.477322, 35.108761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797462, 39.120583, 35.621597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500206, 39.146538, 35.355206>,  <43.321850, 39.162109, 35.195370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500206, 39.146538, 35.355206>,  <43.797462, 39.120583, 35.621597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500206, 39.146538, 35.355206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211287, -0.967121, 0.141540,
		-0.634898, 0.245897, 0.732420,
		-0.743143, 0.064887, -0.665979,
		43.277264, 39.166004, 35.155411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304203, 38.833408, 36.008652>,  <43.797462, 39.120583, 35.621597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304203, 38.833408, 36.008652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214581, 38.816898, 35.619171>,  <43.160809, 38.806992, 35.385483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214581, 38.816898, 35.619171>,  <43.304203, 38.833408, 36.008652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214581, 38.816898, 35.619171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049642, -0.997323, 0.053697,
		-0.973312, 0.060367, 0.221404,
		-0.224053, -0.041273, -0.973703,
		43.147366, 38.804516, 35.327061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652927, 38.529781, 35.963470>,  <43.304203, 38.833408, 36.008652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652927, 38.529781, 35.963470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778214, 38.490704, 35.585613>,  <42.853386, 38.467255, 35.358898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778214, 38.490704, 35.585613>,  <42.652927, 38.529781, 35.963470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778214, 38.490704, 35.585613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423213, -0.904824, -0.046744,
		-0.850170, 0.414427, -0.324751,
		0.313214, -0.097698, -0.944644,
		42.872177, 38.461395, 35.302219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081093, 38.205956, 35.538776>,  <42.652927, 38.529781, 35.963470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081093, 38.205956, 35.538776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423092, 38.121796, 35.349159>,  <42.628292, 38.071301, 35.235390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423092, 38.121796, 35.349159>,  <42.081093, 38.205956, 35.538776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423092, 38.121796, 35.349159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313173, -0.938010, -0.148525,
		-0.413403, 0.275445, -0.867887,
		0.854998, -0.210398, -0.474038,
		42.679592, 38.058678, 35.206947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819660, 37.914230, 34.923313>,  <42.081093, 38.205956, 35.538776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819660, 37.914230, 34.923313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200573, 37.813156, 34.991798>,  <42.429119, 37.752510, 35.032890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.200573, 37.813156, 34.991798>,  <41.819660, 37.914230, 34.923313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200573, 37.813156, 34.991798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262833, -0.964050, 0.039072,
		0.155183, -0.082207, -0.984459,
		0.952280, -0.252685, 0.171211,
		42.486256, 37.737350, 35.043163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955822, 37.422749, 34.445316>,  <41.819660, 37.914230, 34.923313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955822, 37.422749, 34.445316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252464, 37.365192, 34.707405>,  <42.430450, 37.330658, 34.864658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252464, 37.365192, 34.707405>,  <41.955822, 37.422749, 34.445316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252464, 37.365192, 34.707405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288611, -0.950146, 0.118007,
		0.605572, -0.276618, -0.746167,
		0.741611, -0.143890, 0.655217,
		42.474949, 37.322025, 34.903969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315201, 36.703259, 34.212494>,  <41.955822, 37.422749, 34.445316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315201, 36.703259, 34.212494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366135, 36.790855, 34.599445>,  <42.396694, 36.843414, 34.831615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366135, 36.790855, 34.599445>,  <42.315201, 36.703259, 34.212494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366135, 36.790855, 34.599445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315899, -0.915578, 0.248846,
		0.940210, -0.337281, -0.047401,
		0.127330, 0.218994, 0.967383,
		42.404335, 36.856552, 34.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707584, 36.130882, 34.509449>,  <42.315201, 36.703259, 34.212494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707584, 36.130882, 34.509449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548088, 36.291950, 34.839024>,  <42.452393, 36.388592, 35.036766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548088, 36.291950, 34.839024>,  <42.707584, 36.130882, 34.509449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548088, 36.291950, 34.839024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179758, -0.915336, 0.360344,
		0.899274, -0.004425, 0.437362,
		-0.398739, 0.402667, 0.823933,
		42.428467, 36.412750, 35.086205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814873, 35.584827, 34.931362>,  <42.707584, 36.130882, 34.509449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814873, 35.584827, 34.931362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579182, 35.820908, 35.152077>,  <42.437767, 35.962555, 35.284504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579182, 35.820908, 35.152077>,  <42.814873, 35.584827, 34.931362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579182, 35.820908, 35.152077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328220, -0.798893, 0.504025,
		0.738295, 0.115879, 0.664449,
		-0.589230, 0.590204, 0.551785,
		42.402412, 35.997971, 35.317612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986225, 35.438725, 35.633907>,  <42.814873, 35.584827, 34.931362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986225, 35.438725, 35.633907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609180, 35.569744, 35.608002>,  <42.382954, 35.648357, 35.592457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609180, 35.569744, 35.608002>,  <42.986225, 35.438725, 35.633907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609180, 35.569744, 35.608002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326512, -0.863732, 0.383870,
		0.069798, 0.382986, 0.921113,
		-0.942612, 0.327547, -0.064763,
		42.326397, 35.668007, 35.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520813, 35.293571, 36.259880>,  <42.986225, 35.438725, 35.633907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520813, 35.293571, 36.259880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881317, 35.141602, 36.343204>,  <44.097618, 35.050419, 36.393200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881317, 35.141602, 36.343204>,  <43.520813, 35.293571, 36.259880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881317, 35.141602, 36.343204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238320, 0.836187, 0.493958,
		-0.361852, -0.395540, 0.844163,
		0.901258, -0.379921, 0.208310,
		44.151695, 35.027626, 36.405697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754875, 35.564724, 36.840111>,  <43.520813, 35.293571, 36.259880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754875, 35.564724, 36.840111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118633, 35.433655, 36.737640>,  <44.336887, 35.355015, 36.676159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118633, 35.433655, 36.737640>,  <43.754875, 35.564724, 36.840111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118633, 35.433655, 36.737640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415657, 0.738184, 0.531332,
		0.015004, -0.589674, 0.807502,
		0.909397, -0.327671, -0.256178,
		44.391453, 35.335354, 36.660786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073341, 35.439907, 37.380093>,  <43.754875, 35.564724, 36.840111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073341, 35.439907, 37.380093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345909, 35.539875, 37.104931>,  <44.509449, 35.599857, 36.939835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345909, 35.539875, 37.104931>,  <44.073341, 35.439907, 37.380093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345909, 35.539875, 37.104931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234940, 0.815459, 0.528989,
		0.693161, -0.522079, 0.496952,
		0.681418, 0.249921, -0.687902,
		44.550335, 35.614853, 36.898560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653671, 35.656143, 37.793198>,  <44.073341, 35.439907, 37.380093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653671, 35.656143, 37.793198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.721718, 35.804401, 37.427971>,  <44.762547, 35.893356, 37.208836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.721718, 35.804401, 37.427971>,  <44.653671, 35.656143, 37.793198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721718, 35.804401, 37.427971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188245, 0.897282, 0.399310,
		0.967276, -0.239810, 0.082872,
		0.170118, 0.370643, -0.913063,
		44.772755, 35.915596, 37.154053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321964, 36.086613, 37.782104>,  <44.653671, 35.656143, 37.793198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321964, 36.086613, 37.782104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097317, 36.235703, 37.486629>,  <44.962528, 36.325157, 37.309345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097317, 36.235703, 37.486629>,  <45.321964, 36.086613, 37.782104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097317, 36.235703, 37.486629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163741, 0.925199, 0.342337,
		0.811029, 0.071311, -0.580643,
		-0.561623, 0.372721, -0.738687,
		44.928829, 36.347519, 37.265022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592617, 36.705700, 37.694859>,  <45.321964, 36.086613, 37.782104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592617, 36.705700, 37.694859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231888, 36.717682, 37.522434>,  <45.015450, 36.724873, 37.418980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231888, 36.717682, 37.522434>,  <45.592617, 36.705700, 37.694859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231888, 36.717682, 37.522434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129711, 0.932818, 0.336192,
		0.412173, 0.359100, -0.837353,
		-0.901825, 0.029955, -0.431062,
		44.961342, 36.726669, 37.393116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499104, 37.421055, 37.342045>,  <45.592617, 36.705700, 37.694859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499104, 37.421055, 37.342045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.137558, 37.268314, 37.419220>,  <44.920631, 37.176670, 37.465527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.137558, 37.268314, 37.419220>,  <45.499104, 37.421055, 37.342045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137558, 37.268314, 37.419220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297992, 0.885500, 0.356498,
		-0.306978, 0.264730, -0.914157,
		-0.903861, -0.381848, 0.192942,
		44.866398, 37.153759, 37.477104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087627, 38.022236, 37.238041>,  <45.499104, 37.421055, 37.342045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087627, 38.022236, 37.238041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837360, 37.759144, 37.405815>,  <44.687199, 37.601288, 37.506477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837360, 37.759144, 37.405815>,  <45.087627, 38.022236, 37.238041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837360, 37.759144, 37.405815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632373, 0.742473, 0.220994,
		-0.456771, -0.126967, -0.880477,
		-0.625671, -0.657734, 0.419431,
		44.649658, 37.561825, 37.531643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511230, 38.412361, 37.078011>,  <45.087627, 38.022236, 37.238041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511230, 38.412361, 37.078011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413208, 38.149818, 37.363426>,  <44.354393, 37.992290, 37.534676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413208, 38.149818, 37.363426>,  <44.511230, 38.412361, 37.078011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413208, 38.149818, 37.363426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643260, 0.660726, 0.386856,
		-0.725371, -0.364189, -0.584126,
		-0.245059, -0.656359, 0.713540,
		44.339691, 37.952911, 37.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765038, 38.180107, 37.052143>,  <44.511230, 38.412361, 37.078011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765038, 38.180107, 37.052143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912205, 38.158997, 37.423489>,  <44.000504, 38.146332, 37.646294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912205, 38.158997, 37.423489>,  <43.765038, 38.180107, 37.052143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912205, 38.158997, 37.423489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681271, 0.664199, 0.307750,
		-0.632857, -0.745691, 0.208415,
		0.367915, -0.052774, 0.928361,
		44.022579, 38.143166, 37.701996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162701, 38.316837, 37.540367>,  <43.765038, 38.180107, 37.052143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162701, 38.316837, 37.540367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507801, 38.351212, 37.739677>,  <43.714859, 38.371838, 37.859264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507801, 38.351212, 37.739677>,  <43.162701, 38.316837, 37.540367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507801, 38.351212, 37.739677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420708, 0.668642, 0.613126,
		-0.280479, -0.738602, 0.613024,
		0.862749, 0.085936, 0.498276,
		43.766624, 38.376991, 37.889160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954426, 38.309311, 38.161808>,  <43.162701, 38.316837, 37.540367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954426, 38.309311, 38.161808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312824, 38.486004, 38.179951>,  <43.527863, 38.592018, 38.190834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.312824, 38.486004, 38.179951>,  <42.954426, 38.309311, 38.161808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312824, 38.486004, 38.179951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337685, 0.611484, 0.715581,
		0.288362, -0.656476, 0.697055,
		0.896000, 0.441732, 0.045354,
		43.581623, 38.618523, 38.193558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094028, 38.512909, 38.917908>,  <42.954426, 38.309311, 38.161808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094028, 38.512909, 38.917908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321693, 38.743336, 38.683235>,  <43.458290, 38.881592, 38.542431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321693, 38.743336, 38.683235>,  <43.094028, 38.512909, 38.917908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321693, 38.743336, 38.683235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318968, 0.812348, 0.488211,
		0.757836, -0.090738, 0.646106,
		0.569162, 0.576071, -0.586684,
		43.492439, 38.916157, 38.507229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321011, 39.026176, 39.312828>,  <43.094028, 38.512909, 38.917908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321011, 39.026176, 39.312828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362465, 39.173668, 38.943333>,  <43.387337, 39.262161, 38.721634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362465, 39.173668, 38.943333>,  <43.321011, 39.026176, 39.312828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362465, 39.173668, 38.943333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421208, 0.857620, 0.295079,
		0.901023, 0.358506, 0.244194,
		0.103638, 0.368730, -0.923741,
		43.393555, 39.284286, 38.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577995, 39.637287, 39.481869>,  <43.321011, 39.026176, 39.312828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577995, 39.637287, 39.481869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460564, 39.682533, 39.102180>,  <43.390106, 39.709682, 38.874367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460564, 39.682533, 39.102180>,  <43.577995, 39.637287, 39.481869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460564, 39.682533, 39.102180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317058, 0.925244, 0.208322,
		0.901823, 0.362116, -0.235768,
		-0.293580, 0.113118, -0.949218,
		43.372490, 39.716469, 38.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769936, 40.304115, 39.342911>,  <43.577995, 39.637287, 39.481869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769936, 40.304115, 39.342911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492519, 40.193451, 39.076839>,  <43.326069, 40.127052, 38.917198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492519, 40.193451, 39.076839>,  <43.769936, 40.304115, 39.342911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492519, 40.193451, 39.076839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622371, 0.695131, 0.359786,
		0.362846, 0.663513, -0.654288,
		-0.693539, -0.276663, -0.665177,
		43.284458, 40.110451, 38.877285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490814, 40.885441, 39.137463>,  <43.769936, 40.304115, 39.342911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490814, 40.885441, 39.137463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217255, 40.634083, 38.989189>,  <43.053120, 40.483269, 38.900223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217255, 40.634083, 38.989189>,  <43.490814, 40.885441, 39.137463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217255, 40.634083, 38.989189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688347, 0.724142, 0.042390,
		0.241791, 0.284151, -0.927791,
		-0.683897, -0.628392, -0.370685,
		43.012085, 40.445564, 38.877983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119709, 41.370361, 38.673321>,  <43.490814, 40.885441, 39.137463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119709, 41.370361, 38.673321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879810, 41.058601, 38.745811>,  <42.735870, 40.871548, 38.789307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879810, 41.058601, 38.745811>,  <43.119709, 41.370361, 38.673321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879810, 41.058601, 38.745811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793172, 0.608969, -0.005942,
		-0.105729, -0.147307, -0.983424,
		-0.599750, -0.779396, 0.181226,
		42.699886, 40.824783, 38.800179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506519, 41.358688, 38.159306>,  <43.119709, 41.370361, 38.673321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506519, 41.358688, 38.159306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375244, 41.150112, 38.474365>,  <42.296478, 41.024967, 38.663403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375244, 41.150112, 38.474365>,  <42.506519, 41.358688, 38.159306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375244, 41.150112, 38.474365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843305, 0.537417, 0.004407,
		-0.425596, -0.662786, -0.616103,
		-0.328183, -0.521438, 0.787653,
		42.276791, 40.993679, 38.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884670, 41.031830, 37.903824>,  <42.506519, 41.358688, 38.159306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884670, 41.031830, 37.903824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854961, 41.004372, 38.301773>,  <41.837135, 40.987896, 38.540543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854961, 41.004372, 38.301773>,  <41.884670, 41.031830, 37.903824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854961, 41.004372, 38.301773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854505, 0.518688, -0.028005,
		-0.514106, -0.852204, -0.097179,
		-0.074271, -0.068643, 0.994873,
		41.832680, 40.983780, 38.600235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124638, 41.043705, 38.048977>,  <41.884670, 41.031830, 37.903824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124638, 41.043705, 38.048977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271130, 41.121826, 38.412895>,  <41.359024, 41.168697, 38.631248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271130, 41.121826, 38.412895>,  <41.124638, 41.043705, 38.048977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271130, 41.121826, 38.412895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767396, 0.616375, 0.176593,
		-0.526288, -0.762850, 0.375608,
		0.366229, 0.195301, 0.909799,
		41.380997, 41.180416, 38.685833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.990185, 34.498161, 40.104298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666756, 34.279976, 40.192554>,  <39.472698, 34.149067, 40.245506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666756, 34.279976, 40.192554>,  <39.990185, 34.498161, 40.104298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666756, 34.279976, 40.192554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284644, 0.034427, -0.958015,
		0.514963, -0.837429, -0.183099,
		-0.808573, -0.545461, 0.220640,
		39.424183, 34.116337, 40.258747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014545, 34.014179, 39.604408>,  <39.990185, 34.498161, 40.104298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014545, 34.014179, 39.604408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641899, 34.042065, 39.747093>,  <39.418312, 34.058796, 39.832703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641899, 34.042065, 39.747093>,  <40.014545, 34.014179, 39.604408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641899, 34.042065, 39.747093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351660, 0.075115, -0.933109,
		-0.091844, -0.994735, -0.045462,
		-0.931611, 0.069713, 0.356708,
		39.362415, 34.062977, 39.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622871, 33.584412, 39.163448>,  <40.014545, 34.014179, 39.604408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622871, 33.584412, 39.163448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347233, 33.826790, 39.322433>,  <39.181850, 33.972218, 39.417824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347233, 33.826790, 39.322433>,  <39.622871, 33.584412, 39.163448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347233, 33.826790, 39.322433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414530, 0.120275, -0.902052,
		-0.594404, -0.786357, 0.168304,
		-0.689093, 0.605950, 0.397461,
		39.140507, 34.008575, 39.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953899, 33.321030, 38.880478>,  <39.622871, 33.584412, 39.163448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953899, 33.321030, 38.880478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851364, 33.685413, 39.009750>,  <38.789845, 33.904045, 39.087315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851364, 33.685413, 39.009750>,  <38.953899, 33.321030, 38.880478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851364, 33.685413, 39.009750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588802, 0.117996, -0.799618,
		-0.766553, -0.395263, 0.506127,
		-0.256338, 0.910958, 0.323182,
		38.774464, 33.958702, 39.106705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202057, 33.455704, 38.734901>,  <38.953899, 33.321030, 38.880478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202057, 33.455704, 38.734901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345726, 33.825420, 38.786552>,  <38.431927, 34.047253, 38.817543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345726, 33.825420, 38.786552>,  <38.202057, 33.455704, 38.734901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345726, 33.825420, 38.786552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508559, 0.309850, -0.803343,
		-0.782538, 0.222865, 0.581348,
		0.359168, 0.924296, 0.129129,
		38.453476, 34.102711, 38.825291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584427, 33.880569, 38.758411>,  <38.202057, 33.455704, 38.734901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584427, 33.880569, 38.758411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914177, 34.084572, 38.660183>,  <38.112026, 34.206974, 38.601246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914177, 34.084572, 38.660183>,  <37.584427, 33.880569, 38.758411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914177, 34.084572, 38.660183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479364, 0.398301, -0.782027,
		-0.301026, 0.762400, 0.572826,
		0.824375, 0.510003, -0.245568,
		38.161488, 34.237572, 38.586514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324890, 34.428394, 38.373379>,  <37.584427, 33.880569, 38.758411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324890, 34.428394, 38.373379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705750, 34.431431, 38.251160>,  <37.934265, 34.433254, 38.177830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705750, 34.431431, 38.251160>,  <37.324890, 34.428394, 38.373379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705750, 34.431431, 38.251160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290298, 0.335226, -0.896298,
		0.095620, 0.942107, 0.321389,
		0.952147, 0.007594, -0.305546,
		37.991394, 34.433708, 38.159496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410168, 35.050346, 38.034615>,  <37.324890, 34.428394, 38.373379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410168, 35.050346, 38.034615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709003, 34.823746, 37.895512>,  <37.888306, 34.687786, 37.812050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709003, 34.823746, 37.895512>,  <37.410168, 35.050346, 38.034615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709003, 34.823746, 37.895512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172446, 0.340075, -0.924452,
		0.641963, 0.750620, 0.156377,
		0.747092, -0.566497, -0.347756,
		37.933132, 34.653797, 37.791183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782738, 35.556938, 37.637398>,  <37.410168, 35.050346, 38.034615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782738, 35.556938, 37.637398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925919, 35.205452, 37.511086>,  <38.011829, 34.994560, 37.435299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925919, 35.205452, 37.511086>,  <37.782738, 35.556938, 37.637398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925919, 35.205452, 37.511086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133048, 0.286743, -0.948724,
		0.924211, 0.381615, -0.014270,
		0.357955, -0.878720, -0.315784,
		38.033306, 34.941837, 37.416351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190998, 35.683495, 37.034924>,  <37.782738, 35.556938, 37.637398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190998, 35.683495, 37.034924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107498, 35.296703, 36.976440>,  <38.057400, 35.064629, 36.941353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107498, 35.296703, 36.976440>,  <38.190998, 35.683495, 37.034924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107498, 35.296703, 36.976440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196350, 0.187894, -0.962363,
		0.958055, -0.172186, -0.229090,
		-0.208750, -0.966978, -0.146205,
		38.044872, 35.006611, 36.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515205, 35.406723, 36.369537>,  <38.190998, 35.683495, 37.034924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515205, 35.406723, 36.369537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231987, 35.141281, 36.466125>,  <38.062057, 34.982018, 36.524078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231987, 35.141281, 36.466125>,  <38.515205, 35.406723, 36.369537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231987, 35.141281, 36.466125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323355, 0.000676, -0.946278,
		0.627789, -0.748085, -0.215057,
		-0.708041, -0.663603, 0.241473,
		38.019573, 34.942200, 36.538567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449280, 35.087624, 35.764454>,  <38.515205, 35.406723, 36.369537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449280, 35.087624, 35.764454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111683, 35.019867, 35.968018>,  <37.909126, 34.979214, 36.090157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111683, 35.019867, 35.968018>,  <38.449280, 35.087624, 35.764454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111683, 35.019867, 35.968018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536361, 0.268562, -0.800120,
		-0.001140, -0.948251, -0.317519,
		-0.843988, -0.169392, 0.508911,
		37.858486, 34.969048, 36.120689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163017, 34.928787, 35.883125>,  <38.449280, 35.087624, 35.764454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163017, 34.928787, 35.883125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522495, 35.102234, 35.856823>,  <39.738182, 35.206303, 35.841042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522495, 35.102234, 35.856823>,  <39.163017, 34.928787, 35.883125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522495, 35.102234, 35.856823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414825, -0.791746, 0.448394,
		0.142372, -0.430246, -0.891414,
		0.898694, 0.433620, -0.065755,
		39.792103, 35.232319, 35.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692451, 34.427334, 35.630531>,  <39.163017, 34.928787, 35.883125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692451, 34.427334, 35.630531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870743, 34.703701, 35.858200>,  <39.977718, 34.869522, 35.994801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870743, 34.703701, 35.858200>,  <39.692451, 34.427334, 35.630531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870743, 34.703701, 35.858200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623060, -0.695987, 0.356931,
		0.642745, 0.195533, -0.740706,
		0.445730, 0.690919, 0.569171,
		40.004463, 34.910976, 36.028950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428726, 34.082508, 35.535027>,  <39.692451, 34.427334, 35.630531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428726, 34.082508, 35.535027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314819, 33.785599, 35.292393>,  <40.246475, 33.607452, 35.146812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314819, 33.785599, 35.292393>,  <40.428726, 34.082508, 35.535027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314819, 33.785599, 35.292393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019323, -0.628206, 0.777807,
		-0.958402, 0.233214, 0.164548,
		-0.284766, -0.742273, -0.606580,
		40.229389, 33.562916, 35.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863525, 33.754967, 35.886066>,  <40.428726, 34.082508, 35.535027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863525, 33.754967, 35.886066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005856, 33.462807, 35.652863>,  <40.091255, 33.287510, 35.512939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005856, 33.462807, 35.652863>,  <39.863525, 33.754967, 35.886066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005856, 33.462807, 35.652863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060395, -0.640506, 0.765574,
		-0.932598, -0.237202, -0.272023,
		0.355828, -0.730402, -0.583009,
		40.112602, 33.243687, 35.477959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394836, 33.263718, 36.057571>,  <39.863525, 33.754967, 35.886066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394836, 33.263718, 36.057571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719044, 33.082176, 35.909470>,  <39.913567, 32.973251, 35.820610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719044, 33.082176, 35.909470>,  <39.394836, 33.263718, 36.057571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719044, 33.082176, 35.909470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096092, -0.726604, 0.680304,
		-0.577784, -0.515817, -0.632534,
		0.810513, -0.453850, -0.370254,
		39.962196, 32.946022, 35.798393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177753, 32.523605, 35.955345>,  <39.394836, 33.263718, 36.057571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177753, 32.523605, 35.955345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575504, 32.553375, 35.985485>,  <39.814156, 32.571236, 36.003567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575504, 32.553375, 35.985485>,  <39.177753, 32.523605, 35.955345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575504, 32.553375, 35.985485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000304, -0.713468, 0.700688,
		0.105905, -0.696724, -0.709478,
		0.994376, 0.074423, 0.075348,
		39.873817, 32.575703, 36.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351768, 31.795738, 35.990356>,  <39.177753, 32.523605, 35.955345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351768, 31.795738, 35.990356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685432, 31.994438, 36.086205>,  <39.885632, 32.113659, 36.143711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685432, 31.994438, 36.086205>,  <39.351768, 31.795738, 35.990356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685432, 31.994438, 36.086205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098153, -0.561238, 0.821814,
		0.542719, -0.662004, -0.516919,
		0.834159, 0.496752, 0.239617,
		39.935680, 32.143463, 36.158089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905003, 31.306780, 36.192410>,  <39.351768, 31.795738, 35.990356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905003, 31.306780, 36.192410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043579, 31.636549, 36.371433>,  <40.126724, 31.834410, 36.478848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043579, 31.636549, 36.371433>,  <39.905003, 31.306780, 36.192410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043579, 31.636549, 36.371433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055439, -0.458276, 0.887079,
		0.936432, -0.332134, -0.113061,
		0.346442, 0.824421, 0.447558,
		40.147511, 31.883875, 36.505699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396038, 31.148024, 36.651783>,  <39.905003, 31.306780, 36.192410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396038, 31.148024, 36.651783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271347, 31.500713, 36.793423>,  <40.196533, 31.712328, 36.878407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271347, 31.500713, 36.793423>,  <40.396038, 31.148024, 36.651783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271347, 31.500713, 36.793423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043828, -0.385617, 0.921617,
		0.949161, 0.271771, 0.158851,
		-0.311725, 0.881725, 0.354102,
		40.177830, 31.765230, 36.899654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708103, 31.124434, 37.341293>,  <40.396038, 31.148024, 36.651783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708103, 31.124434, 37.341293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402775, 31.382738, 37.333935>,  <40.219578, 31.537722, 37.329521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402775, 31.382738, 37.333935>,  <40.708103, 31.124434, 37.341293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402775, 31.382738, 37.333935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231822, -0.247221, 0.940819,
		0.602998, 0.722407, 0.338410,
		-0.763317, 0.645763, -0.018396,
		40.173779, 31.576468, 37.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713009, 31.531799, 37.999218>,  <40.708103, 31.124434, 37.341293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713009, 31.531799, 37.999218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329136, 31.537329, 37.886913>,  <40.098812, 31.540646, 37.819530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329136, 31.537329, 37.886913>,  <40.713009, 31.531799, 37.999218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329136, 31.537329, 37.886913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267399, -0.352937, 0.896623,
		-0.086698, 0.935545, 0.342402,
		-0.959678, 0.013823, -0.280762,
		40.041233, 31.541475, 37.802685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371223, 31.787374, 38.570625>,  <40.713009, 31.531799, 37.999218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371223, 31.787374, 38.570625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060474, 31.643284, 38.364052>,  <39.874023, 31.556829, 38.240108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060474, 31.643284, 38.364052>,  <40.371223, 31.787374, 38.570625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060474, 31.643284, 38.364052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337667, -0.453924, 0.824581,
		-0.531457, 0.814978, 0.231006,
		-0.776875, -0.360226, -0.516432,
		39.827412, 31.535215, 38.209122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788288, 31.860998, 38.949425>,  <40.371223, 31.787374, 38.570625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788288, 31.860998, 38.949425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673683, 31.591791, 38.676674>,  <39.604919, 31.430267, 38.513023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673683, 31.591791, 38.676674>,  <39.788288, 31.860998, 38.949425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673683, 31.591791, 38.676674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532637, -0.479695, 0.697274,
		-0.796371, 0.562972, -0.221034,
		-0.286517, -0.673019, -0.681875,
		39.587727, 31.389885, 38.472111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096100, 31.902050, 38.973957>,  <39.788288, 31.860998, 38.949425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096100, 31.902050, 38.973957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191586, 31.535553, 38.845264>,  <39.248878, 31.315655, 38.768047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191586, 31.535553, 38.845264>,  <39.096100, 31.902050, 38.973957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191586, 31.535553, 38.845264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322873, -0.387349, 0.863547,
		-0.915843, -0.102263, -0.388296,
		0.238716, -0.916244, -0.321733,
		39.263199, 31.260679, 38.748745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541054, 31.481352, 39.211670>,  <39.096100, 31.902050, 38.973957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541054, 31.481352, 39.211670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842934, 31.223915, 39.160728>,  <39.024059, 31.069452, 39.130165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842934, 31.223915, 39.160728>,  <38.541054, 31.481352, 39.211670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842934, 31.223915, 39.160728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196002, -0.406423, 0.892414,
		-0.626111, -0.648542, -0.432872,
		0.754698, -0.643595, -0.127350,
		39.069344, 31.030836, 39.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223209, 30.848486, 39.411530>,  <38.541054, 31.481352, 39.211670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223209, 30.848486, 39.411530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619827, 30.803221, 39.436943>,  <38.857800, 30.776062, 39.452190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619827, 30.803221, 39.436943>,  <38.223209, 30.848486, 39.411530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619827, 30.803221, 39.436943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108928, -0.459614, 0.881413,
		-0.070542, -0.880880, -0.468054,
		0.991544, -0.113161, 0.063530,
		38.917290, 30.769272, 39.456001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197746, 30.072050, 39.411625>,  <38.223209, 30.848486, 39.411530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197746, 30.072050, 39.411625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841805, 29.895313, 39.457111>,  <37.628239, 29.789272, 39.484402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841805, 29.895313, 39.457111>,  <38.197746, 30.072050, 39.411625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841805, 29.895313, 39.457111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331159, 0.454065, -0.827139,
		0.313827, -0.773694, -0.550372,
		-0.889858, -0.441839, 0.113718,
		37.574848, 29.762762, 39.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960506, 29.862211, 38.752579>,  <38.197746, 30.072050, 39.411625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960506, 29.862211, 38.752579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622658, 29.907473, 38.961887>,  <37.419949, 29.934629, 39.087471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622658, 29.907473, 38.961887>,  <37.960506, 29.862211, 38.752579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622658, 29.907473, 38.961887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408407, 0.495778, -0.766425,
		-0.346151, -0.861046, -0.372531,
		-0.844620, 0.113154, 0.523271,
		37.369270, 29.941420, 39.118870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412918, 29.677929, 38.282928>,  <37.960506, 29.862211, 38.752579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412918, 29.677929, 38.282928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217209, 29.879967, 38.567318>,  <37.099781, 30.001188, 38.737953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217209, 29.879967, 38.567318>,  <37.412918, 29.677929, 38.282928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217209, 29.879967, 38.567318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582136, 0.417889, -0.697486,
		-0.649405, -0.755149, 0.089570,
		-0.489276, 0.505093, 0.710979,
		37.070427, 30.031494, 38.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740906, 29.706215, 38.039955>,  <37.412918, 29.677929, 38.282928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740906, 29.706215, 38.039955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760281, 30.002474, 38.308014>,  <36.771904, 30.180229, 38.468849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760281, 30.002474, 38.308014>,  <36.740906, 29.706215, 38.039955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760281, 30.002474, 38.308014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421130, 0.623527, -0.658684,
		-0.905707, -0.250318, 0.342106,
		0.048432, 0.740645, 0.670148,
		36.774811, 30.224667, 38.509060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104050, 29.977921, 38.174965>,  <36.740906, 29.706215, 38.039955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104050, 29.977921, 38.174965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332100, 30.286789, 38.287186>,  <36.468929, 30.472111, 38.354519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332100, 30.286789, 38.287186>,  <36.104050, 29.977921, 38.174965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332100, 30.286789, 38.287186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665709, 0.634316, -0.393034,
		-0.481448, 0.037312, 0.875680,
		0.570123, 0.772173, 0.280551,
		36.503136, 30.518440, 38.371349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633831, 30.477541, 38.480904>,  <36.104050, 29.977921, 38.174965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633831, 30.477541, 38.480904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967495, 30.667364, 38.368492>,  <36.167694, 30.781258, 38.301044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967495, 30.667364, 38.368492>,  <35.633831, 30.477541, 38.480904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967495, 30.667364, 38.368492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546631, 0.779111, -0.306889,
		0.073316, 0.409613, 0.909308,
		0.834158, 0.474556, -0.281029,
		36.217743, 30.809731, 38.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424686, 31.192451, 38.537327>,  <35.633831, 30.477541, 38.480904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424686, 31.192451, 38.537327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764740, 31.207359, 38.327229>,  <35.968773, 31.216303, 38.201168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764740, 31.207359, 38.327229>,  <35.424686, 31.192451, 38.537327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764740, 31.207359, 38.327229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407222, 0.678914, -0.610938,
		0.333828, 0.733271, 0.592345,
		0.850135, 0.037268, -0.525245,
		36.019779, 31.218540, 38.169655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624039, 31.872002, 38.377846>,  <35.424686, 31.192451, 38.537327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624039, 31.872002, 38.377846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827511, 31.688995, 38.086113>,  <35.949593, 31.579191, 37.911072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827511, 31.688995, 38.086113>,  <35.624039, 31.872002, 38.377846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827511, 31.688995, 38.086113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219294, 0.750329, -0.623632,
		0.832560, 0.477166, 0.281346,
		0.508678, -0.457513, -0.729334,
		35.980114, 31.551741, 37.867313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765808, 32.407711, 37.887604>,  <35.624039, 31.872002, 38.377846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765808, 32.407711, 37.887604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837791, 32.071205, 37.683685>,  <35.880981, 31.869301, 37.561337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837791, 32.071205, 37.683685>,  <35.765808, 32.407711, 37.887604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837791, 32.071205, 37.683685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095527, 0.500858, -0.860242,
		0.979024, 0.203509, 0.009772,
		0.179961, -0.841264, -0.509792,
		35.891781, 31.818827, 37.530746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301678, 32.508694, 37.408405>,  <35.765808, 32.407711, 37.887604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301678, 32.508694, 37.408405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078579, 32.215263, 37.253078>,  <35.944721, 32.039204, 37.159882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078579, 32.215263, 37.253078>,  <36.301678, 32.508694, 37.408405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078579, 32.215263, 37.253078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010496, 0.474041, -0.880440,
		0.829947, -0.486984, -0.272093,
		-0.557743, -0.733575, -0.388317,
		35.911255, 31.995192, 37.136585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404591, 32.541893, 36.705292>,  <36.301678, 32.508694, 37.408405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404591, 32.541893, 36.705292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074680, 32.316608, 36.725456>,  <35.876736, 32.181438, 36.737553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074680, 32.316608, 36.725456>,  <36.404591, 32.541893, 36.705292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074680, 32.316608, 36.725456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292649, 0.348875, -0.890305,
		0.483847, -0.749049, -0.452567,
		-0.824772, -0.563215, 0.050406,
		35.827248, 32.147644, 36.740578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173058, 32.471737, 36.022392>,  <36.404591, 32.541893, 36.705292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173058, 32.471737, 36.022392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855396, 32.389862, 36.251278>,  <35.664799, 32.340736, 36.388611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855396, 32.389862, 36.251278>,  <36.173058, 32.471737, 36.022392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855396, 32.389862, 36.251278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590597, 0.481881, -0.647291,
		-0.143250, -0.851995, -0.503571,
		-0.794150, -0.204683, 0.572216,
		35.617149, 32.328457, 36.422943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.246288, 27.369747, 42.084866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867142, 27.470161, 42.163380>,  <38.639652, 27.530411, 42.210487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867142, 27.470161, 42.163380>,  <39.246288, 27.369747, 42.084866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867142, 27.470161, 42.163380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111527, 0.315684, -0.942287,
		-0.298513, -0.915054, -0.271229,
		-0.947867, 0.251036, 0.196289,
		38.582783, 27.545471, 42.222267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849426, 27.259378, 41.402439>,  <39.246288, 27.369747, 42.084866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849426, 27.259378, 41.402439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581177, 27.482910, 41.597572>,  <38.420227, 27.617029, 41.714653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581177, 27.482910, 41.597572>,  <38.849426, 27.259378, 41.402439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581177, 27.482910, 41.597572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367681, 0.320749, -0.872886,
		-0.644263, -0.764743, -0.009631,
		-0.670623, 0.558828, 0.487828,
		38.379990, 27.650558, 41.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246746, 27.080061, 41.055809>,  <38.849426, 27.259378, 41.402439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246746, 27.080061, 41.055809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201054, 27.425976, 41.251396>,  <38.173637, 27.633526, 41.368748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201054, 27.425976, 41.251396>,  <38.246746, 27.080061, 41.055809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201054, 27.425976, 41.251396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485369, 0.380866, -0.786993,
		-0.866815, -0.327232, 0.376234,
		-0.114234, 0.864789, 0.488968,
		38.166782, 27.685413, 41.398087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520473, 27.320766, 40.918766>,  <38.246746, 27.080061, 41.055809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520473, 27.320766, 40.918766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732834, 27.651808, 40.991676>,  <37.860249, 27.850431, 41.035423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732834, 27.651808, 40.991676>,  <37.520473, 27.320766, 40.918766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732834, 27.651808, 40.991676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482047, 0.471822, -0.738251,
		-0.696979, 0.304070, 0.649432,
		0.530896, 0.827602, 0.182274,
		37.892101, 27.900089, 41.046360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984333, 27.905163, 40.871990>,  <37.520473, 27.320766, 40.918766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984333, 27.905163, 40.871990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335766, 28.096067, 40.864891>,  <37.546627, 28.210611, 40.860630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335766, 28.096067, 40.864891>,  <36.984333, 27.905163, 40.871990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335766, 28.096067, 40.864891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396434, 0.708053, -0.584381,
		-0.266337, 0.520462, 0.811285,
		0.878581, 0.477264, -0.017748,
		37.599339, 28.239246, 40.859566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809723, 28.645426, 40.950768>,  <36.984333, 27.905163, 40.871990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809723, 28.645426, 40.950768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182457, 28.631912, 40.806248>,  <37.406097, 28.623804, 40.719536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182457, 28.631912, 40.806248>,  <36.809723, 28.645426, 40.950768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182457, 28.631912, 40.806248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211344, 0.758829, -0.616045,
		0.294978, 0.650413, 0.699966,
		0.931838, -0.033786, -0.361299,
		37.462009, 28.621777, 40.697857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102676, 29.366760, 40.916527>,  <36.809723, 28.645426, 40.950768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102676, 29.366760, 40.916527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381245, 29.229618, 40.664352>,  <37.548386, 29.147333, 40.513046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381245, 29.229618, 40.664352>,  <37.102676, 29.366760, 40.916527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381245, 29.229618, 40.664352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169305, 0.775201, -0.608604,
		0.697379, 0.530579, 0.481817,
		0.696418, -0.342853, -0.630439,
		37.590172, 29.126762, 40.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685806, 29.844290, 40.679741>,  <37.102676, 29.366760, 40.916527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685806, 29.844290, 40.679741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658360, 29.579678, 40.381031>,  <37.641891, 29.420910, 40.201805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658360, 29.579678, 40.381031>,  <37.685806, 29.844290, 40.679741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658360, 29.579678, 40.381031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012328, 0.747918, -0.663677,
		0.997567, -0.054743, -0.043162,
		-0.068613, -0.661530, -0.746773,
		37.637775, 29.381218, 40.156998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229736, 29.963598, 40.175732>,  <37.685806, 29.844290, 40.679741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229736, 29.963598, 40.175732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932198, 29.763628, 39.998299>,  <37.753674, 29.643646, 39.891838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932198, 29.763628, 39.998299>,  <38.229736, 29.963598, 40.175732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932198, 29.763628, 39.998299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040669, 0.696328, -0.716570,
		0.667111, -0.514979, -0.538294,
		-0.743848, -0.499924, -0.443584,
		37.709045, 29.613649, 39.865223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798611, 29.632761, 39.820206>,  <38.229736, 29.963598, 40.175732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798611, 29.632761, 39.820206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038166, 29.951317, 39.853897>,  <39.181900, 30.142450, 39.874111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038166, 29.951317, 39.853897>,  <38.798611, 29.632761, 39.820206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038166, 29.951317, 39.853897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672318, -0.557142, 0.487423,
		0.435107, -0.235282, -0.869094,
		0.598891, 0.796389, 0.084232,
		39.217834, 30.190233, 39.879166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537392, 29.337975, 39.812702>,  <38.798611, 29.632761, 39.820206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537392, 29.337975, 39.812702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592247, 29.711590, 39.944622>,  <39.625160, 29.935759, 40.023773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592247, 29.711590, 39.944622>,  <39.537392, 29.337975, 39.812702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592247, 29.711590, 39.944622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752169, -0.314837, 0.578894,
		0.644542, 0.168676, -0.745731,
		0.137138, 0.934038, 0.329799,
		39.633389, 29.991800, 40.043560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253361, 29.358070, 39.933746>,  <39.537392, 29.337975, 39.812702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253361, 29.358070, 39.933746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142368, 29.687202, 40.132122>,  <40.075771, 29.884682, 40.251148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142368, 29.687202, 40.132122>,  <40.253361, 29.358070, 39.933746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142368, 29.687202, 40.132122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685872, -0.191809, 0.701989,
		0.672743, 0.534939, -0.511133,
		-0.277481, 0.822830, 0.495938,
		40.059124, 29.934052, 40.280903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891796, 29.795216, 40.217575>,  <40.253361, 29.358070, 39.933746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891796, 29.795216, 40.217575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588623, 29.918903, 40.447327>,  <40.406719, 29.993116, 40.585178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588623, 29.918903, 40.447327>,  <40.891796, 29.795216, 40.217575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588623, 29.918903, 40.447327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518852, -0.247918, 0.818125,
		0.395381, 0.918107, 0.027466,
		-0.757936, 0.309220, 0.574383,
		40.361244, 30.011669, 40.619640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212967, 30.331272, 40.715065>,  <40.891796, 29.795216, 40.217575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212967, 30.331272, 40.715065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877113, 30.183365, 40.874203>,  <40.675602, 30.094620, 40.969685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.877113, 30.183365, 40.874203>,  <41.212967, 30.331272, 40.715065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877113, 30.183365, 40.874203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503245, -0.254067, 0.825951,
		-0.204334, 0.893711, 0.399409,
		-0.839638, -0.369770, 0.397842,
		40.625221, 30.072433, 40.993557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163391, 30.708527, 41.281815>,  <41.212967, 30.331272, 40.715065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163391, 30.708527, 41.281815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944714, 30.380829, 41.351063>,  <40.813507, 30.184210, 41.392612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944714, 30.380829, 41.351063>,  <41.163391, 30.708527, 41.281815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944714, 30.380829, 41.351063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544562, -0.190801, 0.816730,
		-0.636067, 0.540775, 0.550437,
		-0.546691, -0.819242, 0.173123,
		40.780708, 30.135056, 41.403000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913860, 30.726862, 41.939899>,  <41.163391, 30.708527, 41.281815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913860, 30.726862, 41.939899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.885876, 30.334049, 41.869789>,  <40.869083, 30.098362, 41.827724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.885876, 30.334049, 41.869789>,  <40.913860, 30.726862, 41.939899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885876, 30.334049, 41.869789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328773, -0.188590, 0.925387,
		-0.941814, 0.007116, 0.336060,
		-0.069962, -0.982030, -0.175277,
		40.864887, 30.039440, 41.817207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573711, 30.456797, 42.516731>,  <40.913860, 30.726862, 41.939899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573711, 30.456797, 42.516731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.773777, 30.153078, 42.350212>,  <40.893818, 29.970846, 42.250301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.773777, 30.153078, 42.350212>,  <40.573711, 30.456797, 42.516731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773777, 30.153078, 42.350212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403100, -0.221321, 0.887991,
		-0.766383, -0.611953, 0.195375,
		0.500168, -0.759296, -0.416295,
		40.923828, 29.925289, 42.225323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443878, 29.910908, 42.963287>,  <40.573711, 30.456797, 42.516731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443878, 29.910908, 42.963287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768871, 29.790352, 42.763676>,  <40.963867, 29.718018, 42.643909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768871, 29.790352, 42.763676>,  <40.443878, 29.910908, 42.963287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768871, 29.790352, 42.763676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283990, -0.542952, 0.790286,
		-0.509138, -0.783815, -0.355547,
		0.812483, -0.301393, -0.499033,
		41.012615, 29.699936, 42.613968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588600, 29.297693, 43.262856>,  <40.443878, 29.910908, 42.963287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588600, 29.297693, 43.262856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928017, 29.396881, 43.075890>,  <41.131668, 29.456394, 42.963711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928017, 29.396881, 43.075890>,  <40.588600, 29.297693, 43.262856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928017, 29.396881, 43.075890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526435, -0.484554, 0.698623,
		-0.053252, -0.838879, -0.541706,
		0.848546, 0.247970, -0.467419,
		41.182579, 29.471272, 42.935665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049950, 28.683262, 43.207119>,  <40.588600, 29.297693, 43.262856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049950, 28.683262, 43.207119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275822, 29.013386, 43.206841>,  <41.411346, 29.211460, 43.206673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275822, 29.013386, 43.206841>,  <41.049950, 28.683262, 43.207119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275822, 29.013386, 43.206841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601586, -0.411036, 0.684940,
		0.565002, -0.387190, -0.728599,
		0.564682, 0.825308, -0.000692,
		41.445225, 29.260979, 43.206635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726837, 28.444798, 43.285427>,  <41.049950, 28.683262, 43.207119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726837, 28.444798, 43.285427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.717358, 28.828970, 43.396427>,  <41.711670, 29.059473, 43.463028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.717358, 28.828970, 43.396427>,  <41.726837, 28.444798, 43.285427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717358, 28.828970, 43.396427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519514, -0.225325, 0.824217,
		0.854133, 0.163700, -0.493618,
		-0.023700, 0.960433, 0.277502,
		41.710247, 29.117100, 43.479679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170601, 28.392004, 43.696716>,  <41.726837, 28.444798, 43.285427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170601, 28.392004, 43.696716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.051662, 28.764948, 43.778976>,  <41.980301, 28.988714, 43.828335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.051662, 28.764948, 43.778976>,  <42.170601, 28.392004, 43.696716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051662, 28.764948, 43.778976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393490, -0.076582, 0.916134,
		0.869914, 0.353332, -0.344102,
		-0.297347, 0.932358, 0.205653,
		41.962460, 29.044655, 43.840672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819721, 28.687222, 44.048817>,  <42.170601, 28.392004, 43.696716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819721, 28.687222, 44.048817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.495003, 28.891939, 44.161282>,  <42.300171, 29.014771, 44.228760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.495003, 28.891939, 44.161282>,  <42.819721, 28.687222, 44.048817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495003, 28.891939, 44.161282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325907, -0.002430, 0.945399,
		0.484534, 0.859104, -0.164825,
		-0.811796, 0.511795, 0.281165,
		42.251465, 29.045477, 44.245632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.534771, 30.952364, 46.593533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800514, 30.734983, 46.388287>,  <34.959961, 30.604555, 46.265137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800514, 30.734983, 46.388287>,  <34.534771, 30.952364, 46.593533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800514, 30.734983, 46.388287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184849, 0.545726, -0.817321,
		0.724196, 0.637843, 0.262101,
		0.664358, -0.543452, -0.513117,
		34.999821, 30.571947, 46.234352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058205, 31.400875, 46.371418>,  <34.534771, 30.952364, 46.593533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058205, 31.400875, 46.371418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072971, 31.094210, 46.115025>,  <35.081833, 30.910210, 45.961189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072971, 31.094210, 46.115025>,  <35.058205, 31.400875, 46.371418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072971, 31.094210, 46.115025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119269, 0.633459, -0.764530,
		0.992175, 0.104674, -0.068053,
		0.036918, -0.766664, -0.640986,
		35.084045, 30.864210, 45.922729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426071, 31.708254, 45.793495>,  <35.058205, 31.400875, 46.371418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426071, 31.708254, 45.793495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309551, 31.354549, 45.647495>,  <35.239639, 31.142326, 45.559895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309551, 31.354549, 45.647495>,  <35.426071, 31.708254, 45.793495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309551, 31.354549, 45.647495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109584, 0.409880, -0.905533,
		0.950335, -0.223782, -0.216298,
		-0.291298, -0.884263, -0.365000,
		35.222160, 31.089272, 45.537994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842785, 31.568493, 45.124199>,  <35.426071, 31.708254, 45.793495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842785, 31.568493, 45.124199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520435, 31.332800, 45.100960>,  <35.327026, 31.191385, 45.087017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520435, 31.332800, 45.100960>,  <35.842785, 31.568493, 45.124199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520435, 31.332800, 45.100960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172537, 0.327564, -0.928942,
		0.566392, -0.738585, -0.365639,
		-0.805873, -0.589232, -0.058096,
		35.278675, 31.156031, 45.083530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822025, 31.308115, 44.486256>,  <35.842785, 31.568493, 45.124199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822025, 31.308115, 44.486256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438137, 31.235973, 44.572430>,  <35.207806, 31.192688, 44.624134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438137, 31.235973, 44.572430>,  <35.822025, 31.308115, 44.486256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438137, 31.235973, 44.572430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257979, 0.261949, -0.929962,
		0.111289, -0.948080, -0.297925,
		-0.959719, -0.180353, 0.215432,
		35.150223, 31.181868, 44.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548599, 30.946316, 43.914963>,  <35.822025, 31.308115, 44.486256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548599, 30.946316, 43.914963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224060, 31.092794, 44.097218>,  <35.029335, 31.180681, 44.206570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224060, 31.092794, 44.097218>,  <35.548599, 30.946316, 43.914963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224060, 31.092794, 44.097218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368763, 0.284154, -0.885026,
		-0.453566, -0.886090, -0.095509,
		-0.811352, 0.366197, 0.455640,
		34.980656, 31.202654, 44.233910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986160, 30.647932, 43.495384>,  <35.548599, 30.946316, 43.914963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986160, 30.647932, 43.495384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847935, 30.969986, 43.688194>,  <34.764999, 31.163218, 43.803879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847935, 30.969986, 43.688194>,  <34.986160, 30.647932, 43.495384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847935, 30.969986, 43.688194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382479, 0.348217, -0.855836,
		-0.856910, -0.480110, 0.187614,
		-0.345565, 0.805133, 0.482022,
		34.744267, 31.211525, 43.832802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323265, 30.759249, 43.135025>,  <34.986160, 30.647932, 43.495384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323265, 30.759249, 43.135025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422710, 31.083485, 43.347115>,  <34.482376, 31.278027, 43.474369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422710, 31.083485, 43.347115>,  <34.323265, 30.759249, 43.135025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422710, 31.083485, 43.347115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483565, 0.578182, -0.657168,
		-0.839260, -0.093020, 0.535714,
		0.248610, 0.810588, 0.530227,
		34.497295, 31.326660, 43.506184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677601, 31.132223, 43.320122>,  <34.323265, 30.759249, 43.135025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677601, 31.132223, 43.320122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995296, 31.375017, 43.309155>,  <34.185913, 31.520695, 43.302574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995296, 31.375017, 43.309155>,  <33.677601, 31.132223, 43.320122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995296, 31.375017, 43.309155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440684, 0.544386, -0.713752,
		-0.418310, 0.578974, 0.699862,
		0.794238, 0.606987, -0.027422,
		34.233566, 31.557114, 43.300926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206581, 31.721361, 43.251114>,  <33.677601, 31.132223, 43.320122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206581, 31.721361, 43.251114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583721, 31.835817, 43.182819>,  <33.810005, 31.904491, 43.141842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.583721, 31.835817, 43.182819>,  <33.206581, 31.721361, 43.251114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583721, 31.835817, 43.182819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326958, 0.695724, -0.639583,
		-0.064226, 0.658857, 0.749522,
		0.942854, 0.286140, -0.170735,
		33.866577, 31.921659, 43.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244576, 32.401615, 43.398575>,  <33.206581, 31.721361, 43.251114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244576, 32.401615, 43.398575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532192, 32.338604, 43.127823>,  <33.704762, 32.300797, 42.965374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532192, 32.338604, 43.127823>,  <33.244576, 32.401615, 43.398575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532192, 32.338604, 43.127823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329163, 0.780601, -0.531332,
		0.612070, 0.604854, 0.509434,
		0.719042, -0.157526, -0.676878,
		33.747906, 32.291348, 42.924759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341373, 33.046745, 43.175278>,  <33.244576, 32.401615, 43.398575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341373, 33.046745, 43.175278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525627, 32.816814, 42.904758>,  <33.636181, 32.678856, 42.742447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525627, 32.816814, 42.904758>,  <33.341373, 33.046745, 43.175278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525627, 32.816814, 42.904758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086996, 0.729045, -0.678915,
		0.883316, 0.371568, 0.285816,
		0.460636, -0.574831, -0.676302,
		33.663818, 32.644363, 42.701866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771725, 33.499020, 42.805061>,  <33.341373, 33.046745, 43.175278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771725, 33.499020, 42.805061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778496, 33.185616, 42.556602>,  <33.782558, 32.997574, 42.407528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778496, 33.185616, 42.556602>,  <33.771725, 33.499020, 42.805061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778496, 33.185616, 42.556602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093970, 0.617241, -0.781142,
		0.995431, 0.071590, -0.063180,
		0.016924, -0.783510, -0.621148,
		33.783573, 32.950562, 42.370258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209454, 33.616692, 42.141861>,  <33.771725, 33.499020, 42.805061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209454, 33.616692, 42.141861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920303, 33.346706, 42.082706>,  <33.746815, 33.184715, 42.047215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920303, 33.346706, 42.082706>,  <34.209454, 33.616692, 42.141861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920303, 33.346706, 42.082706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285070, 0.486286, -0.825991,
		0.629433, -0.554930, -0.543937,
		-0.722876, -0.674966, -0.147890,
		33.703442, 33.144218, 42.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996246, 33.413692, 42.071434>,  <34.209454, 33.616692, 42.141861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996246, 33.413692, 42.071434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314056, 33.654942, 42.043243>,  <35.504742, 33.799690, 42.026329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314056, 33.654942, 42.043243>,  <34.996246, 33.413692, 42.071434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314056, 33.654942, 42.043243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314353, -0.309232, 0.897529,
		0.519529, -0.735265, -0.435287,
		0.794526, 0.603126, -0.070478,
		35.552414, 33.835880, 42.022099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481956, 32.982357, 42.309814>,  <34.996246, 33.413692, 42.071434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481956, 32.982357, 42.309814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601379, 33.362251, 42.347466>,  <35.673035, 33.590187, 42.370056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601379, 33.362251, 42.347466>,  <35.481956, 32.982357, 42.309814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601379, 33.362251, 42.347466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354957, -0.202049, 0.912788,
		0.885928, -0.239110, -0.397439,
		0.298559, 0.949738, 0.094127,
		35.690948, 33.647171, 42.375702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178532, 32.955509, 42.451576>,  <35.481956, 32.982357, 42.309814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178532, 32.955509, 42.451576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076733, 33.323345, 42.571297>,  <36.015652, 33.544048, 42.643127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076733, 33.323345, 42.571297>,  <36.178532, 32.955509, 42.451576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076733, 33.323345, 42.571297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360184, -0.197091, 0.911824,
		0.897496, 0.339861, -0.281063,
		-0.254498, 0.919592, 0.299300,
		36.000381, 33.599224, 42.661087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715813, 33.125298, 42.927082>,  <36.178532, 32.955509, 42.451576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715813, 33.125298, 42.927082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416916, 33.380741, 43.000633>,  <36.237579, 33.534008, 43.044765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416916, 33.380741, 43.000633>,  <36.715813, 33.125298, 42.927082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416916, 33.380741, 43.000633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279203, 0.050597, 0.958898,
		0.603061, 0.767863, -0.216110,
		-0.747237, 0.638613, 0.183877,
		36.192745, 33.572327, 43.055798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960464, 33.754795, 43.176105>,  <36.715813, 33.125298, 42.927082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960464, 33.754795, 43.176105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591625, 33.715874, 43.325916>,  <36.370323, 33.692520, 43.415802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591625, 33.715874, 43.325916>,  <36.960464, 33.754795, 43.176105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591625, 33.715874, 43.325916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385506, -0.147250, 0.910880,
		-0.033484, 0.984302, 0.173290,
		-0.922098, -0.097304, 0.374524,
		36.314995, 33.686684, 43.438274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133862, 33.829693, 43.797066>,  <36.960464, 33.754795, 43.176105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133862, 33.829693, 43.797066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763920, 33.685463, 43.845428>,  <36.541954, 33.598923, 43.874447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763920, 33.685463, 43.845428>,  <37.133862, 33.829693, 43.797066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763920, 33.685463, 43.845428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243512, -0.317254, 0.916543,
		-0.292126, 0.877117, 0.381220,
		-0.924859, -0.360578, 0.120911,
		36.486462, 33.577290, 43.881702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871506, 34.153015, 44.366455>,  <37.133862, 33.829693, 43.797066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871506, 34.153015, 44.366455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649143, 33.825581, 44.308651>,  <36.515728, 33.629120, 44.273968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649143, 33.825581, 44.308651>,  <36.871506, 34.153015, 44.366455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649143, 33.825581, 44.308651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278696, -0.347325, 0.895374,
		-0.783135, 0.457467, 0.421217,
		-0.555903, -0.818590, -0.144508,
		36.482372, 33.580002, 44.265297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563335, 33.998684, 44.995380>,  <36.871506, 34.153015, 44.366455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563335, 33.998684, 44.995380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548058, 33.656929, 44.788086>,  <36.538891, 33.451878, 44.663712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548058, 33.656929, 44.788086>,  <36.563335, 33.998684, 44.995380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548058, 33.656929, 44.788086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252060, -0.510078, 0.822366,
		-0.966958, -0.099218, 0.234837,
		-0.038192, -0.854386, -0.518233,
		36.536602, 33.400612, 44.632618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149883, 33.653503, 45.322491>,  <36.563335, 33.998684, 44.995380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149883, 33.653503, 45.322491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342548, 33.376293, 45.107937>,  <36.458145, 33.209965, 44.979202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342548, 33.376293, 45.107937>,  <36.149883, 33.653503, 45.322491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342548, 33.376293, 45.107937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253488, -0.475726, 0.842276,
		-0.838897, -0.541658, -0.053463,
		0.481660, -0.693030, -0.536389,
		36.487045, 33.168385, 44.947021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899174, 32.991169, 45.490250>,  <36.149883, 33.653503, 45.322491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899174, 32.991169, 45.490250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268250, 32.924255, 45.351303>,  <36.489693, 32.884106, 45.267937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268250, 32.924255, 45.351303>,  <35.899174, 32.991169, 45.490250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268250, 32.924255, 45.351303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230948, -0.481626, 0.845399,
		-0.308722, -0.860263, -0.405757,
		0.922688, -0.167285, -0.347364,
		36.545055, 32.874069, 45.247093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078342, 32.340843, 45.644203>,  <35.899174, 32.991169, 45.490250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078342, 32.340843, 45.644203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443268, 32.480747, 45.559013>,  <36.662224, 32.564690, 45.507900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443268, 32.480747, 45.559013>,  <36.078342, 32.340843, 45.644203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443268, 32.480747, 45.559013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368765, -0.475582, 0.798645,
		0.178048, -0.807149, -0.562858,
		0.912311, 0.349760, -0.212972,
		36.716961, 32.585674, 45.495121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566814, 31.729012, 45.564907>,  <36.078342, 32.340843, 45.644203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566814, 31.729012, 45.564907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792992, 32.045940, 45.656559>,  <36.928696, 32.236099, 45.711552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792992, 32.045940, 45.656559>,  <36.566814, 31.729012, 45.564907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792992, 32.045940, 45.656559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388417, -0.500875, 0.773470,
		0.727606, -0.348350, -0.590967,
		0.565439, 0.792323, 0.229134,
		36.962624, 32.283638, 45.725300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213493, 31.381769, 45.700279>,  <36.566814, 31.729012, 45.564907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213493, 31.381769, 45.700279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229282, 31.742840, 45.871681>,  <37.238754, 31.959482, 45.974525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229282, 31.742840, 45.871681>,  <37.213493, 31.381769, 45.700279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229282, 31.742840, 45.871681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357304, -0.413239, 0.837596,
		0.933154, 0.120050, -0.338839,
		0.039468, 0.902675, 0.428510,
		37.241123, 32.013641, 46.000233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914478, 31.460180, 46.041702>,  <37.213493, 31.381769, 45.700279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914478, 31.460180, 46.041702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662388, 31.710186, 46.225948>,  <37.511131, 31.860189, 46.336494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662388, 31.710186, 46.225948>,  <37.914478, 31.460180, 46.041702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662388, 31.710186, 46.225948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364888, -0.285229, 0.886285,
		0.685323, 0.726635, -0.048301,
		-0.630230, 0.625016, 0.460614,
		37.473320, 31.897692, 46.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486805, 32.053539, 45.911964>,  <37.914478, 31.460180, 46.041702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486805, 32.053539, 45.911964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869091, 32.019543, 45.799267>,  <39.098465, 31.999146, 45.731647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869091, 32.019543, 45.799267>,  <38.486805, 32.053539, 45.911964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869091, 32.019543, 45.799267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202397, 0.505161, -0.838956,
		0.213626, 0.858830, 0.465591,
		0.955719, -0.084989, -0.281740,
		39.155807, 31.994045, 45.714745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666500, 32.735195, 45.633381>,  <38.486805, 32.053539, 45.911964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666500, 32.735195, 45.633381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924866, 32.468033, 45.485485>,  <39.079884, 32.307735, 45.396748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924866, 32.468033, 45.485485>,  <38.666500, 32.735195, 45.633381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924866, 32.468033, 45.485485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004248, 0.481170, -0.876617,
		0.763400, 0.567788, 0.307956,
		0.645912, -0.667901, -0.369737,
		39.118641, 32.267662, 45.374565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194611, 33.106014, 45.373501>,  <38.666500, 32.735195, 45.633381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194611, 33.106014, 45.373501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.178932, 32.748962, 45.193867>,  <39.169525, 32.534733, 45.086086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.178932, 32.748962, 45.193867>,  <39.194611, 33.106014, 45.373501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178932, 32.748962, 45.193867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172100, 0.436681, -0.883001,
		0.984299, -0.111897, 0.136506,
		-0.039195, -0.892630, -0.449082,
		39.167175, 32.481174, 45.059143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721321, 33.065479, 44.907612>,  <39.194611, 33.106014, 45.373501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721321, 33.065479, 44.907612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448406, 32.802261, 44.780201>,  <39.284657, 32.644333, 44.703754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448406, 32.802261, 44.780201>,  <39.721321, 33.065479, 44.907612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448406, 32.802261, 44.780201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011985, 0.425566, -0.904848,
		0.730983, -0.621187, -0.282473,
		-0.682291, -0.658043, -0.318526,
		39.243717, 32.604847, 44.684643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064438, 32.812958, 44.298672>,  <39.721321, 33.065479, 44.907612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064438, 32.812958, 44.298672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690372, 32.692547, 44.224007>,  <39.465931, 32.620300, 44.179207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690372, 32.692547, 44.224007>,  <40.064438, 32.812958, 44.298672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690372, 32.692547, 44.224007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103365, 0.272120, -0.956695,
		0.338790, -0.913964, -0.223362,
		-0.935167, -0.301031, -0.186663,
		39.409821, 32.602238, 44.168007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096565, 32.363396, 43.648304>,  <40.064438, 32.812958, 44.298672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096565, 32.363396, 43.648304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718491, 32.490883, 43.676727>,  <39.491646, 32.567375, 43.693783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718491, 32.490883, 43.676727>,  <40.096565, 32.363396, 43.648304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718491, 32.490883, 43.676727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000510, 0.216163, -0.976357,
		-0.326543, -0.922872, -0.204151,
		-0.945182, 0.318718, 0.071057,
		39.434937, 32.586498, 43.698044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845943, 32.256443, 42.982162>,  <40.096565, 32.363396, 43.648304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845943, 32.256443, 42.982162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572044, 32.495594, 43.148857>,  <39.407707, 32.639084, 43.248875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572044, 32.495594, 43.148857>,  <39.845943, 32.256443, 42.982162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572044, 32.495594, 43.148857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033047, 0.545770, -0.837283,
		-0.728035, -0.587096, -0.353954,
		-0.684743, 0.597875, 0.416741,
		39.366623, 32.674957, 43.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233582, 32.198483, 42.561134>,  <39.845943, 32.256443, 42.982162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233582, 32.198483, 42.561134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182499, 32.538822, 42.764999>,  <39.151848, 32.743027, 42.887318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182499, 32.538822, 42.764999>,  <39.233582, 32.198483, 42.561134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182499, 32.538822, 42.764999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032170, 0.517150, -0.855290,
		-0.991290, -0.092832, -0.093416,
		-0.127709, 0.850845, 0.509659,
		39.144188, 32.794075, 42.917896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737801, 32.523239, 42.158070>,  <39.233582, 32.198483, 42.561134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737801, 32.523239, 42.158070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879856, 32.848057, 42.343307>,  <38.965092, 33.042946, 42.454449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879856, 32.848057, 42.343307>,  <38.737801, 32.523239, 42.158070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879856, 32.848057, 42.343307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055289, 0.476275, -0.877556,
		-0.933176, 0.337260, 0.124248,
		0.355141, 0.812045, 0.463096,
		38.986397, 33.091671, 42.482235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271194, 33.103645, 42.088753>,  <38.737801, 32.523239, 42.158070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271194, 33.103645, 42.088753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.627522, 33.270546, 42.160694>,  <38.841316, 33.370686, 42.203857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.627522, 33.270546, 42.160694>,  <38.271194, 33.103645, 42.088753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627522, 33.270546, 42.160694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087976, 0.546740, -0.832668,
		-0.445765, 0.725931, 0.523753,
		0.890816, 0.417252, 0.179853,
		38.894768, 33.395721, 42.214649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211918, 33.764679, 41.931896>,  <38.271194, 33.103645, 42.088753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211918, 33.764679, 41.931896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611801, 33.758896, 41.939590>,  <38.851730, 33.755424, 41.944206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611801, 33.758896, 41.939590>,  <38.211918, 33.764679, 41.931896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611801, 33.758896, 41.939590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023273, 0.377970, -0.925525,
		0.006114, 0.925705, 0.378197,
		0.999710, -0.014460, 0.019233,
		38.911713, 33.754559, 41.945362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434231, 34.448135, 41.672245>,  <38.211918, 33.764679, 41.931896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434231, 34.448135, 41.672245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737034, 34.192795, 41.616463>,  <38.918716, 34.039589, 41.582993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737034, 34.192795, 41.616463>,  <38.434231, 34.448135, 41.672245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737034, 34.192795, 41.616463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147686, 0.375057, -0.915162,
		0.636500, 0.672187, 0.378196,
		0.757005, -0.638355, -0.139451,
		38.964134, 34.001289, 41.574627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968739, 34.803062, 41.508259>,  <38.434231, 34.448135, 41.672245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968739, 34.803062, 41.508259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066700, 34.443405, 41.363174>,  <39.125477, 34.227612, 41.276123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066700, 34.443405, 41.363174>,  <38.968739, 34.803062, 41.508259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066700, 34.443405, 41.363174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147157, 0.404240, -0.902737,
		0.958316, 0.167704, 0.231314,
		0.244899, -0.899147, -0.362710,
		39.140171, 34.173660, 41.254360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546463, 34.852390, 41.007885>,  <38.968739, 34.803062, 41.508259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546463, 34.852390, 41.007885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377899, 34.504562, 40.904922>,  <39.276760, 34.295864, 40.843143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.377899, 34.504562, 40.904922>,  <39.546463, 34.852390, 41.007885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377899, 34.504562, 40.904922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087119, 0.321347, -0.942946,
		0.902675, -0.374944, -0.211176,
		-0.421413, -0.869570, -0.257407,
		39.251476, 34.243690, 40.827702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.534599, 29.509729, 32.514153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141315, 29.438631, 32.497623>,  <29.905346, 29.395971, 32.487705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141315, 29.438631, 32.497623>,  <30.534599, 29.509729, 32.514153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141315, 29.438631, 32.497623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165555, 0.964069, -0.207758,
		0.076762, -0.197429, -0.977307,
		-0.983209, -0.177746, -0.041318,
		29.846354, 29.385307, 32.485229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245770, 29.809221, 31.873873>,  <30.534599, 29.509729, 32.514153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245770, 29.809221, 31.873873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946470, 29.772997, 32.136757>,  <29.766891, 29.751263, 32.294487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946470, 29.772997, 32.136757>,  <30.245770, 29.809221, 31.873873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946470, 29.772997, 32.136757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248499, 0.956777, -0.151084,
		-0.615119, -0.276364, -0.738411,
		-0.748249, -0.090560, 0.657208,
		29.721996, 29.745829, 32.333920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792175, 30.204794, 31.641378>,  <30.245770, 29.809221, 31.873873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792175, 30.204794, 31.641378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676123, 30.144833, 32.019447>,  <29.606491, 30.108856, 32.246288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676123, 30.144833, 32.019447>,  <29.792175, 30.204794, 31.641378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676123, 30.144833, 32.019447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292387, 0.954314, 0.061601,
		-0.911226, -0.258484, -0.320706,
		-0.290131, -0.149903, 0.945173,
		29.589083, 30.099861, 32.302998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189939, 30.550739, 31.749649>,  <29.792175, 30.204794, 31.641378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189939, 30.550739, 31.749649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349483, 30.510527, 32.114243>,  <29.445210, 30.486399, 32.333000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349483, 30.510527, 32.114243>,  <29.189939, 30.550739, 31.749649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349483, 30.510527, 32.114243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225744, 0.952620, 0.203852,
		-0.888791, -0.287071, 0.357269,
		0.398862, -0.100530, 0.911484,
		29.469143, 30.480368, 32.387688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632584, 30.683378, 32.231529>,  <29.189939, 30.550739, 31.749649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632584, 30.683378, 32.231529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960979, 30.712019, 32.458103>,  <29.158016, 30.729204, 32.594048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960979, 30.712019, 32.458103>,  <28.632584, 30.683378, 32.231529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960979, 30.712019, 32.458103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406522, 0.769929, 0.491883,
		-0.400896, -0.634099, 0.661212,
		0.820989, 0.071603, 0.566437,
		29.207275, 30.733500, 32.628033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385283, 30.703775, 32.888985>,  <28.632584, 30.683378, 32.231529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385283, 30.703775, 32.888985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740547, 30.887291, 32.899448>,  <28.953705, 30.997400, 32.905727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740547, 30.887291, 32.899448>,  <28.385283, 30.703775, 32.888985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740547, 30.887291, 32.899448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418669, 0.784394, 0.457649,
		0.189444, -0.417418, 0.888748,
		0.888160, 0.458790, 0.026161,
		29.006994, 31.024927, 32.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427534, 30.960295, 33.612850>,  <28.385283, 30.703775, 32.888985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427534, 30.960295, 33.612850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660124, 31.201841, 33.394775>,  <28.799677, 31.346769, 33.263931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660124, 31.201841, 33.394775>,  <28.427534, 30.960295, 33.612850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660124, 31.201841, 33.394775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394377, 0.795345, 0.460317,
		0.711585, -0.052652, 0.700624,
		0.581475, 0.603865, -0.545191,
		28.834566, 31.383001, 33.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766375, 31.387255, 33.993828>,  <28.427534, 30.960295, 33.612850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766375, 31.387255, 33.993828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.850603, 31.585394, 33.656712>,  <28.901140, 31.704277, 33.454441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.850603, 31.585394, 33.656712>,  <28.766375, 31.387255, 33.993828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850603, 31.585394, 33.656712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135062, 0.868591, 0.476768,
		0.968204, 0.013435, 0.249802,
		0.210570, 0.495347, -0.842787,
		28.913774, 31.733997, 33.403873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287518, 31.933928, 34.164639>,  <28.766375, 31.387255, 33.993828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287518, 31.933928, 34.164639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123438, 32.061253, 33.822781>,  <29.024990, 32.137650, 33.617668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.123438, 32.061253, 33.822781>,  <29.287518, 31.933928, 34.164639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123438, 32.061253, 33.822781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133413, 0.906086, 0.401508,
		0.902185, 0.278719, -0.329209,
		-0.410199, 0.318314, -0.854642,
		29.000378, 32.156746, 33.566387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353149, 32.611362, 34.198494>,  <29.287518, 31.933928, 34.164639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353149, 32.611362, 34.198494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082932, 32.610619, 33.903568>,  <28.920799, 32.610172, 33.726612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082932, 32.610619, 33.903568>,  <29.353149, 32.611362, 34.198494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082932, 32.610619, 33.903568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390500, 0.849135, 0.355640,
		0.625417, 0.528172, -0.574359,
		-0.675547, -0.001864, -0.737314,
		28.880268, 32.610058, 33.682373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269571, 33.206196, 34.032883>,  <29.353149, 32.611362, 34.198494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269571, 33.206196, 34.032883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912903, 33.087822, 33.895863>,  <28.698902, 33.016796, 33.813652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912903, 33.087822, 33.895863>,  <29.269571, 33.206196, 34.032883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912903, 33.087822, 33.895863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397597, 0.873761, 0.280103,
		0.216416, 0.385957, -0.896773,
		-0.891673, -0.295935, -0.342552,
		28.645401, 32.999043, 33.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967777, 33.831112, 33.529343>,  <29.269571, 33.206196, 34.032883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967777, 33.831112, 33.529343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678513, 33.600418, 33.681347>,  <28.504953, 33.462002, 33.772549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678513, 33.600418, 33.681347>,  <28.967777, 33.831112, 33.529343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678513, 33.600418, 33.681347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467429, 0.813732, 0.345471,
		-0.508472, 0.072204, -0.858046,
		-0.723164, -0.576738, 0.380010,
		28.461563, 33.427395, 33.795349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204319, 34.000324, 33.202175>,  <28.967777, 33.831112, 33.529343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204319, 34.000324, 33.202175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198675, 33.846012, 33.571167>,  <28.195290, 33.753426, 33.792564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198675, 33.846012, 33.571167>,  <28.204319, 34.000324, 33.202175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198675, 33.846012, 33.571167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556183, 0.769709, 0.313383,
		-0.830940, -0.508647, -0.225425,
		-0.014110, -0.385780, 0.922483,
		28.194443, 33.730278, 33.847912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631821, 34.418400, 33.442894>,  <28.204319, 34.000324, 33.202175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631821, 34.418400, 33.442894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759356, 34.217880, 33.764648>,  <27.835876, 34.097569, 33.957703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759356, 34.217880, 33.764648>,  <27.631821, 34.418400, 33.442894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759356, 34.217880, 33.764648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471424, 0.652384, 0.593426,
		-0.822254, -0.568416, -0.028318,
		0.318838, -0.501297, 0.804390,
		27.855007, 34.067490, 34.005966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977695, 34.289463, 33.877884>,  <27.631821, 34.418400, 33.442894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977695, 34.289463, 33.877884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296595, 34.268414, 34.118427>,  <27.487934, 34.255783, 34.262753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296595, 34.268414, 34.118427>,  <26.977695, 34.289463, 33.877884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296595, 34.268414, 34.118427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449141, 0.613880, 0.649171,
		-0.403324, -0.787643, 0.465777,
		0.797246, -0.052627, 0.601356,
		27.535769, 34.252625, 34.298836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652290, 34.156803, 34.479565>,  <26.977695, 34.289463, 33.877884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652290, 34.156803, 34.479565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010220, 34.316444, 34.559574>,  <27.224977, 34.412228, 34.607578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010220, 34.316444, 34.559574>,  <26.652290, 34.156803, 34.479565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010220, 34.316444, 34.559574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411847, 0.565132, 0.714848,
		0.172254, -0.722043, 0.670062,
		0.894824, 0.399099, 0.200025,
		27.278667, 34.436172, 34.619583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764824, 34.217724, 35.304455>,  <26.652290, 34.156803, 34.479565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764824, 34.217724, 35.304455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020163, 34.490139, 35.160957>,  <27.173367, 34.653587, 35.074860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020163, 34.490139, 35.160957>,  <26.764824, 34.217724, 35.304455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020163, 34.490139, 35.160957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314776, 0.656265, 0.685735,
		0.702448, -0.324809, 0.633298,
		0.638344, 0.681040, -0.358750,
		27.211666, 34.694450, 35.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022493, 34.578339, 35.917019>,  <26.764824, 34.217724, 35.304455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022493, 34.578339, 35.917019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131990, 34.826569, 35.623096>,  <27.197689, 34.975506, 35.446743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131990, 34.826569, 35.623096>,  <27.022493, 34.578339, 35.917019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131990, 34.826569, 35.623096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160807, 0.782769, 0.601177,
		0.948264, -0.046406, 0.314072,
		0.273745, 0.620580, -0.734810,
		27.214113, 35.012741, 35.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518290, 35.036716, 36.155338>,  <27.022493, 34.578339, 35.917019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518290, 35.036716, 36.155338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343151, 35.205929, 35.838017>,  <27.238068, 35.307457, 35.647625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343151, 35.205929, 35.838017>,  <27.518290, 35.036716, 36.155338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343151, 35.205929, 35.838017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313152, 0.755365, 0.575638,
		0.842750, 0.500465, -0.198259,
		-0.437845, 0.423034, -0.793306,
		27.211798, 35.332840, 35.600025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626143, 35.808804, 36.271797>,  <27.518290, 35.036716, 36.155338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626143, 35.808804, 36.271797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330238, 35.748741, 36.009438>,  <27.152697, 35.712704, 35.852020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330238, 35.748741, 36.009438>,  <27.626143, 35.808804, 36.271797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330238, 35.748741, 36.009438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571091, 0.655590, 0.494020,
		0.355824, 0.740037, -0.570732,
		-0.739760, -0.150156, -0.655903,
		27.108311, 35.703693, 35.812668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213238, 35.798767, 35.736774>,  <27.626143, 35.808804, 36.271797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213238, 35.798767, 35.736774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362764, 35.865150, 36.101788>,  <28.452480, 35.904980, 36.320797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362764, 35.865150, 36.101788>,  <28.213238, 35.798767, 35.736774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362764, 35.865150, 36.101788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247861, -0.965955, 0.074136,
		0.893772, 0.198469, -0.402221,
		0.373814, 0.165955, 0.912536,
		28.474909, 35.914936, 36.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759186, 35.227913, 35.712452>,  <28.213238, 35.798767, 35.736774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759186, 35.227913, 35.712452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712507, 35.349205, 36.090748>,  <28.684500, 35.421982, 36.317726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712507, 35.349205, 36.090748>,  <28.759186, 35.227913, 35.712452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712507, 35.349205, 36.090748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247718, -0.913267, 0.323387,
		0.961778, 0.272016, 0.031459,
		-0.116697, 0.303234, 0.945744,
		28.677498, 35.440174, 36.374470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302656, 35.098602, 36.082760>,  <28.759186, 35.227913, 35.712452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302656, 35.098602, 36.082760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010048, 35.107655, 36.355335>,  <28.834482, 35.113087, 36.518883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010048, 35.107655, 36.355335>,  <29.302656, 35.098602, 36.082760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010048, 35.107655, 36.355335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181714, -0.956829, 0.226843,
		0.657157, 0.289769, 0.695829,
		-0.731522, 0.022630, 0.681442,
		28.790592, 35.114445, 36.559769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577993, 34.733986, 36.700108>,  <29.302656, 35.098602, 36.082760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577993, 34.733986, 36.700108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178839, 34.709579, 36.691143>,  <28.939346, 34.694935, 36.685764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178839, 34.709579, 36.691143>,  <29.577993, 34.733986, 36.700108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178839, 34.709579, 36.691143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055529, -0.979394, 0.194175,
		-0.033799, 0.192520, 0.980711,
		-0.997885, -0.061021, -0.022412,
		28.879473, 34.691273, 36.684418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392061, 34.351418, 37.251026>,  <29.577993, 34.733986, 36.700108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392061, 34.351418, 37.251026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064068, 34.298733, 37.028214>,  <28.867271, 34.267120, 36.894527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064068, 34.298733, 37.028214>,  <29.392061, 34.351418, 37.251026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064068, 34.298733, 37.028214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010325, -0.976409, 0.215681,
		-0.572297, 0.171103, 0.801998,
		-0.819982, -0.131714, -0.557029,
		28.818073, 34.259220, 36.861103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082651, 33.818195, 37.546764>,  <29.392061, 34.351418, 37.251026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082651, 33.818195, 37.546764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883802, 33.838909, 37.200310>,  <28.764492, 33.851337, 36.992439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883802, 33.838909, 37.200310>,  <29.082651, 33.818195, 37.546764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883802, 33.838909, 37.200310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059842, -0.997887, -0.025315,
		-0.865613, 0.039246, 0.499172,
		-0.497124, 0.051784, -0.866133,
		28.734665, 33.854443, 36.940472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636522, 33.235798, 37.630592>,  <29.082651, 33.818195, 37.546764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636522, 33.235798, 37.630592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605165, 33.298241, 37.236744>,  <28.586351, 33.335709, 37.000435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605165, 33.298241, 37.236744>,  <28.636522, 33.235798, 37.630592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605165, 33.298241, 37.236744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050425, -0.985778, -0.160307,
		-0.995647, -0.062217, 0.069405,
		-0.078392, 0.156110, -0.984624,
		28.581648, 33.345074, 36.941357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208990, 32.833317, 37.526398>,  <28.636522, 33.235798, 37.630592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208990, 32.833317, 37.526398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347670, 32.913033, 37.159775>,  <28.430878, 32.960861, 36.939800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347670, 32.913033, 37.159775>,  <28.208990, 32.833317, 37.526398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347670, 32.913033, 37.159775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065287, -0.969671, -0.235533,
		-0.935701, 0.141499, -0.323173,
		0.346700, 0.199289, -0.916561,
		28.451679, 32.972820, 36.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717045, 32.496384, 36.915543>,  <28.208990, 32.833317, 37.526398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717045, 32.496384, 36.915543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076500, 32.542233, 36.746162>,  <28.292173, 32.569740, 36.644535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076500, 32.542233, 36.746162>,  <27.717045, 32.496384, 36.915543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076500, 32.542233, 36.746162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098360, -0.888045, -0.449111,
		-0.427518, 0.445240, -0.786759,
		0.898640, 0.114617, -0.423449,
		28.346092, 32.576618, 36.619129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704092, 32.460289, 36.077290>,  <27.717045, 32.496384, 36.915543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704092, 32.460289, 36.077290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056353, 32.363937, 36.240471>,  <28.267710, 32.306126, 36.338379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056353, 32.363937, 36.240471>,  <27.704092, 32.460289, 36.077290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056353, 32.363937, 36.240471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076627, -0.922177, -0.379101,
		0.467524, 0.302596, -0.830577,
		0.880653, -0.240883, 0.407953,
		28.320549, 32.291672, 36.362858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067387, 32.117744, 35.589428>,  <27.704092, 32.460289, 36.077290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067387, 32.117744, 35.589428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338409, 32.040146, 35.873199>,  <28.501022, 31.993587, 36.043461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338409, 32.040146, 35.873199>,  <28.067387, 32.117744, 35.589428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338409, 32.040146, 35.873199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132687, -0.916516, -0.377350,
		0.723404, 0.349807, -0.595249,
		0.677555, -0.193995, 0.709426,
		28.541676, 31.981947, 36.086029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807877, 31.946367, 35.325890>,  <28.067387, 32.117744, 35.589428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807877, 31.946367, 35.325890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.759069, 31.763763, 35.678413>,  <28.729786, 31.654202, 35.889927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.759069, 31.763763, 35.678413>,  <28.807877, 31.946367, 35.325890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759069, 31.763763, 35.678413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173084, -0.884128, -0.434003,
		0.977320, 0.099586, 0.186893,
		-0.122017, -0.456508, 0.881313,
		28.722464, 31.626810, 35.942806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380692, 31.494455, 35.513077>,  <28.807877, 31.946367, 35.325890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380692, 31.494455, 35.513077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083941, 31.356871, 35.743317>,  <28.905890, 31.274319, 35.881458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083941, 31.356871, 35.743317>,  <29.380692, 31.494455, 35.513077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083941, 31.356871, 35.743317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234740, -0.937314, -0.257566,
		0.628107, -0.055967, 0.776112,
		-0.741875, -0.343963, 0.575596,
		28.861378, 31.253681, 35.915997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735004, 30.957247, 35.790257>,  <29.380692, 31.494455, 35.513077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735004, 30.957247, 35.790257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353302, 30.884333, 35.885056>,  <29.124281, 30.840584, 35.941936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353302, 30.884333, 35.885056>,  <29.735004, 30.957247, 35.790257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353302, 30.884333, 35.885056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166529, -0.982361, -0.085051,
		0.248322, -0.041693, 0.967780,
		-0.954256, -0.182284, 0.236999,
		29.067026, 30.829647, 35.956154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717867, 30.441656, 36.223354>,  <29.735004, 30.957247, 35.790257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717867, 30.441656, 36.223354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338041, 30.392715, 36.107868>,  <29.110146, 30.363350, 36.038578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338041, 30.392715, 36.107868>,  <29.717867, 30.441656, 36.223354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338041, 30.392715, 36.107868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178018, -0.968318, -0.175129,
		-0.258140, -0.217693, 0.941262,
		-0.949565, -0.122354, -0.288715,
		29.053171, 30.356009, 36.021255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560238, 29.817596, 36.389343>,  <29.717867, 30.441656, 36.223354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560238, 29.817596, 36.389343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261883, 29.887436, 36.132229>,  <29.082870, 29.929340, 35.977962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261883, 29.887436, 36.132229>,  <29.560238, 29.817596, 36.389343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261883, 29.887436, 36.132229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008038, -0.967321, -0.253429,
		-0.666026, -0.183862, 0.722914,
		-0.745886, 0.174601, -0.642783,
		29.038116, 29.939816, 35.939396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956528, 29.457336, 36.547310>,  <29.560238, 29.817596, 36.389343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956528, 29.457336, 36.547310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936323, 29.512142, 36.151596>,  <28.924200, 29.545027, 35.914169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936323, 29.512142, 36.151596>,  <28.956528, 29.457336, 36.547310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936323, 29.512142, 36.151596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026062, -0.990388, -0.135839,
		-0.998384, 0.018921, 0.053595,
		-0.050509, 0.137016, -0.989280,
		28.921171, 29.553247, 35.854813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485628, 28.907724, 36.256374>,  <28.956528, 29.457336, 36.547310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485628, 28.907724, 36.256374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642532, 29.059469, 35.921181>,  <28.736675, 29.150517, 35.720066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642532, 29.059469, 35.921181>,  <28.485628, 28.907724, 36.256374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642532, 29.059469, 35.921181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034080, -0.904376, -0.425374,
		-0.919224, 0.195415, -0.341820,
		0.392258, 0.379364, -0.837983,
		28.760210, 29.173279, 35.669785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050257, 28.582861, 35.711399>,  <28.485628, 28.907724, 36.256374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050257, 28.582861, 35.711399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404240, 28.697514, 35.564598>,  <28.616631, 28.766306, 35.476517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404240, 28.697514, 35.564598>,  <28.050257, 28.582861, 35.711399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404240, 28.697514, 35.564598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104534, -0.890278, -0.443257,
		-0.453784, 0.353901, -0.817823,
		0.884959, 0.286633, -0.366999,
		28.669727, 28.783504, 35.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929443, 28.302896, 35.049583>,  <28.050257, 28.582861, 35.711399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929443, 28.302896, 35.049583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314272, 28.333288, 35.154381>,  <28.545170, 28.351524, 35.217258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314272, 28.333288, 35.154381>,  <27.929443, 28.302896, 35.049583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314272, 28.333288, 35.154381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157777, -0.938473, -0.307207,
		0.222533, 0.336892, -0.914868,
		0.962074, 0.075981, 0.261995,
		28.602894, 28.356083, 35.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401814, 27.983509, 34.701107>,  <27.929443, 28.302896, 35.049583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401814, 27.983509, 34.701107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654119, 28.014626, 35.009933>,  <28.805504, 28.033295, 35.195229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654119, 28.014626, 35.009933>,  <28.401814, 27.983509, 34.701107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654119, 28.014626, 35.009933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191168, -0.979875, -0.057452,
		0.752056, 0.183832, -0.632943,
		0.630766, 0.077791, 0.772064,
		28.843349, 28.037964, 35.241554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008392, 27.744301, 34.476032>,  <28.401814, 27.983509, 34.701107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008392, 27.744301, 34.476032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968784, 27.688152, 34.870087>,  <28.945019, 27.654463, 35.106518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968784, 27.688152, 34.870087>,  <29.008392, 27.744301, 34.476032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968784, 27.688152, 34.870087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348437, -0.932215, -0.097810,
		0.932087, 0.333572, 0.141218,
		-0.099019, -0.140373, 0.985135,
		28.939079, 27.646040, 35.165627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.079037, 29.321630, 44.421135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696541, 29.274897, 44.528435>,  <42.467045, 29.246857, 44.592815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696541, 29.274897, 44.528435>,  <43.079037, 29.321630, 44.421135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696541, 29.274897, 44.528435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247617, 0.165219, 0.954667,
		-0.155857, 0.979312, -0.129059,
		-0.956240, -0.116835, 0.268245,
		42.409668, 29.239847, 44.608910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942974, 29.882120, 44.888802>,  <43.079037, 29.321630, 44.421135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942974, 29.882120, 44.888802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.690308, 29.576828, 44.943165>,  <42.538708, 29.393652, 44.975784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.690308, 29.576828, 44.943165>,  <42.942974, 29.882120, 44.888802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690308, 29.576828, 44.943165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149285, 0.052276, 0.987411,
		-0.760729, 0.644006, 0.080918,
		-0.631669, -0.763232, 0.135909,
		42.500809, 29.347858, 44.983936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586361, 30.062399, 45.468491>,  <42.942974, 29.882120, 44.888802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586361, 30.062399, 45.468491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.526543, 29.668150, 45.437023>,  <42.490654, 29.431601, 45.418144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.526543, 29.668150, 45.437023>,  <42.586361, 30.062399, 45.468491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526543, 29.668150, 45.437023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111512, -0.095865, 0.989129,
		-0.982447, 0.139145, 0.124244,
		-0.149543, -0.985621, -0.078666,
		42.481678, 29.372463, 45.413422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012627, 29.969187, 45.956516>,  <42.586361, 30.062399, 45.468491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012627, 29.969187, 45.956516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.189148, 29.618898, 45.878174>,  <42.295063, 29.408726, 45.831169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.189148, 29.618898, 45.878174>,  <42.012627, 29.969187, 45.956516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189148, 29.618898, 45.878174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102802, -0.167484, 0.980500,
		-0.891449, -0.452835, 0.016114,
		0.441306, -0.875722, -0.195855,
		42.321541, 29.356182, 45.819416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707260, 29.618027, 46.457352>,  <42.012627, 29.969187, 45.956516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707260, 29.618027, 46.457352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.995678, 29.361246, 46.353050>,  <42.168728, 29.207178, 46.290470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.995678, 29.361246, 46.353050>,  <41.707260, 29.618027, 46.457352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995678, 29.361246, 46.353050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006296, -0.370239, 0.928915,
		-0.692857, -0.671433, -0.262918,
		0.721047, -0.641951, -0.260750,
		42.211990, 29.168661, 46.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470016, 28.919132, 46.673000>,  <41.707260, 29.618027, 46.457352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470016, 28.919132, 46.673000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.867340, 28.909702, 46.627785>,  <42.105736, 28.904045, 46.600655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.867340, 28.909702, 46.627785>,  <41.470016, 28.919132, 46.673000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867340, 28.909702, 46.627785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094587, -0.395390, 0.913630,
		-0.066232, -0.918211, -0.390515,
		0.993311, -0.023574, -0.113039,
		42.165333, 28.902630, 46.593872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625324, 28.284527, 46.969795>,  <41.470016, 28.919132, 46.673000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625324, 28.284527, 46.969795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.946434, 28.522951, 46.976379>,  <42.139099, 28.666006, 46.980331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.946434, 28.522951, 46.976379>,  <41.625324, 28.284527, 46.969795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946434, 28.522951, 46.976379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223431, -0.326285, 0.918486,
		0.552846, -0.733654, -0.395110,
		0.802770, 0.596062, 0.016464,
		42.187263, 28.701769, 46.981319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256882, 27.949671, 47.072647>,  <41.625324, 28.284527, 46.969795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256882, 27.949671, 47.072647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.354382, 28.318289, 47.193535>,  <42.412880, 28.539459, 47.266068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.354382, 28.318289, 47.193535>,  <42.256882, 27.949671, 47.072647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354382, 28.318289, 47.193535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220807, -0.356169, 0.907958,
		0.944368, -0.154581, -0.290299,
		0.243749, 0.921547, 0.302223,
		42.427505, 28.594753, 47.284203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876217, 27.864988, 47.556389>,  <42.256882, 27.949671, 47.072647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876217, 27.864988, 47.556389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.714954, 28.223761, 47.629032>,  <42.618198, 28.439024, 47.672619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.714954, 28.223761, 47.629032>,  <42.876217, 27.864988, 47.556389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714954, 28.223761, 47.629032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038156, -0.181808, 0.982594,
		0.914337, 0.403066, 0.039073,
		-0.403154, 0.896930, 0.181613,
		42.594009, 28.492840, 47.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304138, 28.141356, 48.118824>,  <42.876217, 27.864988, 47.556389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304138, 28.141356, 48.118824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.970551, 28.360405, 48.145947>,  <42.770397, 28.491835, 48.162220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.970551, 28.360405, 48.145947>,  <43.304138, 28.141356, 48.118824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970551, 28.360405, 48.145947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038693, -0.064547, 0.997164,
		0.550450, 0.834230, 0.032642,
		-0.833971, 0.547626, 0.067809,
		42.720360, 28.524693, 48.166290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414261, 28.581709, 48.680538>,  <43.304138, 28.141356, 48.118824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414261, 28.581709, 48.680538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.019913, 28.567087, 48.615154>,  <42.783302, 28.558313, 48.575924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.019913, 28.567087, 48.615154>,  <43.414261, 28.581709, 48.680538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019913, 28.567087, 48.615154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154413, -0.179726, 0.971522,
		-0.064891, 0.983037, 0.171542,
		-0.985873, -0.036554, -0.163456,
		42.724152, 28.556120, 48.566116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129715, 29.010845, 49.085072>,  <43.414261, 28.581709, 48.680538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129715, 29.010845, 49.085072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.796032, 28.794397, 49.042561>,  <42.595821, 28.664530, 49.017052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.796032, 28.794397, 49.042561>,  <43.129715, 29.010845, 49.085072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796032, 28.794397, 49.042561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213317, 0.138918, 0.967056,
		-0.508528, 0.829393, -0.231316,
		-0.834204, -0.541118, -0.106279,
		42.545773, 28.632061, 49.010677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480614, 29.319746, 49.531857>,  <43.129715, 29.010845, 49.085072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480614, 29.319746, 49.531857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440525, 28.924210, 49.487766>,  <42.416473, 28.686888, 49.461311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440525, 28.924210, 49.487766>,  <42.480614, 29.319746, 49.531857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440525, 28.924210, 49.487766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296535, -0.076062, 0.951988,
		-0.949749, 0.128096, -0.285603,
		-0.100222, -0.988841, -0.110225,
		42.410458, 28.627558, 49.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807655, 29.173058, 49.678703>,  <42.480614, 29.319746, 49.531857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807655, 29.173058, 49.678703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.028450, 28.859058, 49.791191>,  <42.160927, 28.670658, 49.858685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.028450, 28.859058, 49.791191>,  <41.807655, 29.173058, 49.678703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028450, 28.859058, 49.791191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395561, 0.050385, 0.917056,
		-0.734058, -0.617444, -0.282704,
		0.551987, -0.784999, 0.281223,
		42.194046, 28.623558, 49.875557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393314, 28.583189, 49.868652>,  <41.807655, 29.173058, 49.678703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393314, 28.583189, 49.868652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277493, 28.865105, 50.127705>,  <41.208000, 29.034254, 50.283138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277493, 28.865105, 50.127705>,  <41.393314, 28.583189, 49.868652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277493, 28.865105, 50.127705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089577, 0.653696, -0.751437,
		-0.952960, -0.275598, -0.126150,
		-0.289558, 0.704789, 0.647633,
		41.190624, 29.076542, 50.321995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865929, 28.764399, 49.494110>,  <41.393314, 28.583189, 49.868652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865929, 28.764399, 49.494110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.921997, 29.067751, 49.748734>,  <40.955639, 29.249762, 49.901508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.921997, 29.067751, 49.748734>,  <40.865929, 28.764399, 49.494110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921997, 29.067751, 49.748734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265921, 0.648122, -0.713599,
		-0.953749, -0.069246, 0.292521,
		0.140176, 0.758382, 0.636560,
		40.964050, 29.295265, 49.939701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198181, 29.143583, 49.546432>,  <40.865929, 28.764399, 49.494110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198181, 29.143583, 49.546432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.495075, 29.393667, 49.642925>,  <40.673210, 29.543718, 49.700821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.495075, 29.393667, 49.642925>,  <40.198181, 29.143583, 49.546432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495075, 29.393667, 49.642925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295613, 0.628530, -0.719418,
		-0.601413, 0.462666, 0.651339,
		0.742237, 0.625212, 0.241236,
		40.717747, 29.581230, 49.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898300, 29.803925, 49.472378>,  <40.198181, 29.143583, 49.546432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898300, 29.803925, 49.472378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290295, 29.883402, 49.467480>,  <40.525490, 29.931087, 49.464539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290295, 29.883402, 49.467480>,  <39.898300, 29.803925, 49.472378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290295, 29.883402, 49.467480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149033, 0.691485, -0.706850,
		-0.131975, 0.694529, 0.707257,
		0.979986, 0.198691, -0.012249,
		40.584290, 29.943008, 49.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884155, 30.537403, 49.624168>,  <39.898300, 29.803925, 49.472378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884155, 30.537403, 49.624168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.206699, 30.421093, 49.418167>,  <40.400227, 30.351307, 49.294567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.206699, 30.421093, 49.418167>,  <39.884155, 30.537403, 49.624168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206699, 30.421093, 49.418167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117422, 0.774743, -0.621277,
		0.579649, 0.561447, 0.590579,
		0.806362, -0.290776, -0.515005,
		40.448608, 30.333860, 49.263664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106209, 31.168964, 49.274963>,  <39.884155, 30.537403, 49.624168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106209, 31.168964, 49.274963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320370, 30.885303, 49.091465>,  <40.448868, 30.715107, 48.981365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320370, 30.885303, 49.091465>,  <40.106209, 31.168964, 49.274963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320370, 30.885303, 49.091465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034206, 0.524497, -0.850725,
		0.843903, 0.471173, 0.256560,
		0.535404, -0.709154, -0.458742,
		40.480991, 30.672558, 48.953842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640839, 31.565399, 48.906364>,  <40.106209, 31.168964, 49.274963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640839, 31.565399, 48.906364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.600597, 31.200335, 48.747906>,  <40.576454, 30.981297, 48.652832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.600597, 31.200335, 48.747906>,  <40.640839, 31.565399, 48.906364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600597, 31.200335, 48.747906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134056, 0.406967, -0.903553,
		0.985854, -0.037793, -0.163289,
		-0.100601, -0.912661, -0.396143,
		40.570415, 30.926537, 48.629063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067471, 31.644215, 48.224941>,  <40.640839, 31.565399, 48.906364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067471, 31.644215, 48.224941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.825371, 31.330952, 48.167900>,  <40.680111, 31.142994, 48.133675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.825371, 31.330952, 48.167900>,  <41.067471, 31.644215, 48.224941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825371, 31.330952, 48.167900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245404, 0.353985, -0.902481,
		0.757265, -0.511231, -0.406439,
		-0.605249, -0.783159, -0.142602,
		40.643795, 31.096004, 48.125118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209290, 31.452337, 47.487564>,  <41.067471, 31.644215, 48.224941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209290, 31.452337, 47.487564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855602, 31.293350, 47.585686>,  <40.643391, 31.197958, 47.644558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855602, 31.293350, 47.585686>,  <41.209290, 31.452337, 47.487564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855602, 31.293350, 47.585686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363473, 0.255722, -0.895820,
		0.293337, -0.881261, -0.370585,
		-0.884218, -0.397475, 0.245302,
		40.590336, 31.174110, 47.659279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059494, 30.903217, 47.051594>,  <41.209290, 31.452337, 47.487564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059494, 30.903217, 47.051594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705872, 31.053040, 47.163414>,  <40.493698, 31.142933, 47.230507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705872, 31.053040, 47.163414>,  <41.059494, 30.903217, 47.051594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705872, 31.053040, 47.163414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249392, 0.127803, -0.959932,
		-0.395276, -0.918354, -0.019574,
		-0.884059, 0.374556, 0.279548,
		40.440655, 31.165407, 47.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710953, 30.788330, 46.521324>,  <41.059494, 30.903217, 47.051594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710953, 30.788330, 46.521324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435112, 31.004841, 46.713768>,  <40.269608, 31.134747, 46.829235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435112, 31.004841, 46.713768>,  <40.710953, 30.788330, 46.521324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435112, 31.004841, 46.713768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543978, 0.051378, -0.837525,
		-0.478050, -0.839274, 0.259012,
		-0.689605, 0.541276, 0.481108,
		40.228230, 31.167223, 46.858101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004883, 30.549213, 46.364796>,  <40.710953, 30.788330, 46.521324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004883, 30.549213, 46.364796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.960716, 30.925182, 46.494015>,  <39.934216, 31.150763, 46.571545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.960716, 30.925182, 46.494015>,  <40.004883, 30.549213, 46.364796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960716, 30.925182, 46.494015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513148, 0.224445, -0.828434,
		-0.851168, -0.257242, 0.457536,
		-0.110416, 0.939921, 0.323044,
		39.927593, 31.207159, 46.590927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264877, 30.666851, 46.433064>,  <40.004883, 30.549213, 46.364796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264877, 30.666851, 46.433064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443470, 31.021313, 46.383442>,  <39.550625, 31.233990, 46.353668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443470, 31.021313, 46.383442>,  <39.264877, 30.666851, 46.433064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443470, 31.021313, 46.383442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611691, 0.201084, -0.765114,
		-0.653063, 0.417490, 0.631831,
		0.446479, 0.886153, -0.124054,
		39.577415, 31.287159, 46.346226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786148, 31.151737, 46.164021>,  <39.264877, 30.666851, 46.433064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786148, 31.151737, 46.164021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.100681, 31.372766, 46.053497>,  <39.289402, 31.505384, 45.987183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.100681, 31.372766, 46.053497>,  <38.786148, 31.151737, 46.164021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100681, 31.372766, 46.053497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531569, 0.377214, -0.758383,
		-0.314834, 0.743217, 0.590345,
		0.786329, 0.552574, -0.276311,
		39.336578, 31.538538, 45.970604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313541, 31.687160, 46.603600>,  <38.786148, 31.151737, 46.164021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313541, 31.687160, 46.603600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938400, 31.777510, 46.708981>,  <37.713314, 31.831720, 46.772209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938400, 31.777510, 46.708981>,  <38.313541, 31.687160, 46.603600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938400, 31.777510, 46.708981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198879, -0.272286, 0.941439,
		0.284381, 0.935329, 0.210444,
		-0.937856, 0.225875, 0.263450,
		37.657043, 31.845272, 46.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395344, 31.884056, 47.291931>,  <38.313541, 31.687160, 46.603600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395344, 31.884056, 47.291931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012058, 31.774214, 47.259869>,  <37.782089, 31.708309, 47.240631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012058, 31.774214, 47.259869>,  <38.395344, 31.884056, 47.291931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012058, 31.774214, 47.259869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012764, -0.238887, 0.970963,
		-0.285779, 0.931411, 0.225399,
		-0.958211, -0.274604, -0.080157,
		37.724594, 31.691833, 47.235821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191708, 32.049416, 47.884144>,  <38.395344, 31.884056, 47.291931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191708, 32.049416, 47.884144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901005, 31.806658, 47.755459>,  <37.726582, 31.661003, 47.678249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901005, 31.806658, 47.755459>,  <38.191708, 32.049416, 47.884144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901005, 31.806658, 47.755459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142857, -0.324568, 0.935012,
		-0.671870, 0.725489, 0.149184,
		-0.726761, -0.606895, -0.321709,
		37.682976, 31.624590, 47.658947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709743, 32.155693, 48.324215>,  <38.191708, 32.049416, 47.884144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709743, 32.155693, 48.324215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663921, 31.790997, 48.166431>,  <37.636429, 31.572178, 48.071762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663921, 31.790997, 48.166431>,  <37.709743, 32.155693, 48.324215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663921, 31.790997, 48.166431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048500, -0.391468, 0.918913,
		-0.992232, 0.124401, 0.000626,
		-0.114558, -0.911744, -0.394460,
		37.629555, 31.517473, 48.048092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193417, 31.808578, 48.740299>,  <37.709743, 32.155693, 48.324215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193417, 31.808578, 48.740299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397240, 31.503901, 48.580215>,  <37.519535, 31.321095, 48.484165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397240, 31.503901, 48.580215>,  <37.193417, 31.808578, 48.740299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397240, 31.503901, 48.580215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062656, -0.431045, 0.900153,
		-0.858152, -0.483756, -0.171917,
		0.509559, -0.761696, -0.400212,
		37.550106, 31.275393, 48.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758659, 31.270897, 48.951832>,  <37.193417, 31.808578, 48.740299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758659, 31.270897, 48.951832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110657, 31.117676, 48.839489>,  <37.321857, 31.025743, 48.772083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110657, 31.117676, 48.839489>,  <36.758659, 31.270897, 48.951832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110657, 31.117676, 48.839489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073059, -0.475100, 0.876894,
		-0.469311, -0.792190, -0.390107,
		0.880006, -0.383035, -0.280846,
		37.374657, 31.002760, 48.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781128, 30.507328, 48.943672>,  <36.758659, 31.270897, 48.951832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781128, 30.507328, 48.943672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155380, 30.632530, 49.008949>,  <37.379932, 30.707651, 49.048115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155380, 30.632530, 49.008949>,  <36.781128, 30.507328, 48.943672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155380, 30.632530, 49.008949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127293, -0.730381, 0.671073,
		0.329240, -0.607101, -0.723207,
		0.935627, 0.313003, 0.163191,
		37.436069, 30.726431, 49.057907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749432, 29.845013, 48.564156>,  <36.781128, 30.507328, 48.943672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749432, 29.845013, 48.564156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515270, 29.529142, 48.490707>,  <36.374775, 29.339621, 48.446640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515270, 29.529142, 48.490707>,  <36.749432, 29.845013, 48.564156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515270, 29.529142, 48.490707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291954, 0.416620, -0.860924,
		0.756350, -0.450379, -0.474440,
		-0.585403, -0.789674, -0.183621,
		36.339649, 29.292240, 48.435619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869541, 29.635408, 47.825397>,  <36.749432, 29.845013, 48.564156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869541, 29.635408, 47.825397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512627, 29.476135, 47.910511>,  <36.298477, 29.380571, 47.961578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512627, 29.476135, 47.910511>,  <36.869541, 29.635408, 47.825397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512627, 29.476135, 47.910511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367706, 0.367496, -0.854247,
		0.261948, -0.840475, -0.474326,
		-0.892286, -0.398181, 0.212783,
		36.244942, 29.356682, 47.974346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600624, 29.267057, 47.253677>,  <36.869541, 29.635408, 47.825397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600624, 29.267057, 47.253677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262703, 29.317186, 47.461754>,  <36.059948, 29.347263, 47.586597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262703, 29.317186, 47.461754>,  <36.600624, 29.267057, 47.253677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262703, 29.317186, 47.461754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498560, 0.168598, -0.850302,
		-0.194264, -0.977685, -0.079952,
		-0.844808, 0.125322, 0.520187,
		36.009262, 29.354782, 47.617809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976967, 28.795528, 46.953072>,  <36.600624, 29.267057, 47.253677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976967, 28.795528, 46.953072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864422, 29.120398, 47.157509>,  <35.796894, 29.315319, 47.280170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864422, 29.120398, 47.157509>,  <35.976967, 28.795528, 46.953072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864422, 29.120398, 47.157509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496102, 0.332796, -0.801954,
		-0.821413, -0.479191, 0.309284,
		-0.281360, 0.812172, 0.511090,
		35.780014, 29.364050, 47.310837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263638, 28.906317, 46.726456>,  <35.976967, 28.795528, 46.953072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263638, 28.906317, 46.726456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404633, 29.257956, 46.854794>,  <35.489227, 29.468939, 46.931797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404633, 29.257956, 46.854794>,  <35.263638, 28.906317, 46.726456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404633, 29.257956, 46.854794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655182, 0.476626, -0.586144,
		-0.668200, -0.003601, 0.743973,
		0.352486, 0.879099, 0.320841,
		35.510380, 29.521685, 46.951046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650871, 29.333773, 46.501179>,  <35.263638, 28.906317, 46.726456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650871, 29.333773, 46.501179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951126, 29.579958, 46.597298>,  <35.131279, 29.727669, 46.654968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951126, 29.579958, 46.597298>,  <34.650871, 29.333773, 46.501179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951126, 29.579958, 46.597298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252023, 0.602920, -0.756949,
		-0.610756, 0.507635, 0.607687,
		0.750640, 0.615463, 0.240301,
		35.176319, 29.764597, 46.669388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321785, 29.916063, 46.314476>,  <34.650871, 29.333773, 46.501179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321785, 29.916063, 46.314476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718304, 29.968233, 46.307350>,  <34.956215, 29.999535, 46.303074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718304, 29.968233, 46.307350>,  <34.321785, 29.916063, 46.314476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718304, 29.968233, 46.307350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085081, 0.531563, -0.842735,
		-0.100445, 0.836917, 0.538034,
		0.991298, 0.130425, -0.017813,
		35.015694, 30.007360, 46.302006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.171494, 26.677214, 48.859566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.297367, 27.047379, 48.775101>,  <40.372890, 27.269478, 48.724422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.297367, 27.047379, 48.775101>,  <40.171494, 26.677214, 48.859566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297367, 27.047379, 48.775101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265878, -0.127622, -0.955522,
		-0.911198, 0.356831, 0.205886,
		0.314685, 0.925410, -0.211163,
		40.391773, 27.325001, 48.711750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525108, 27.107601, 48.580505>,  <40.171494, 26.677214, 48.859566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525108, 27.107601, 48.580505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.887543, 27.224768, 48.458389>,  <40.105003, 27.295069, 48.385120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.887543, 27.224768, 48.458389>,  <39.525108, 27.107601, 48.580505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887543, 27.224768, 48.458389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296257, -0.075887, -0.952089,
		-0.302052, 0.953121, 0.018019,
		0.906089, 0.292918, -0.305291,
		40.159370, 27.312643, 48.366802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476307, 27.777958, 48.305519>,  <39.525108, 27.107601, 48.580505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476307, 27.777958, 48.305519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.774048, 27.561548, 48.148937>,  <39.952690, 27.431702, 48.054989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.774048, 27.561548, 48.148937>,  <39.476307, 27.777958, 48.305519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774048, 27.561548, 48.148937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457212, 0.014358, -0.889242,
		0.486723, 0.840884, -0.236677,
		0.744350, -0.541026, -0.391450,
		39.997353, 27.399240, 48.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673409, 28.148577, 47.768272>,  <39.476307, 27.777958, 48.305519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673409, 28.148577, 47.768272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.831284, 27.791462, 47.681416>,  <39.926010, 27.577192, 47.629303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.831284, 27.791462, 47.681416>,  <39.673409, 28.148577, 47.768272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831284, 27.791462, 47.681416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420474, 0.034626, -0.906644,
		0.816958, 0.449147, -0.361727,
		0.394691, -0.892787, -0.217142,
		39.949692, 27.523626, 47.616272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027241, 28.204971, 47.137741>,  <39.673409, 28.148577, 47.768272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027241, 28.204971, 47.137741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.948971, 27.815256, 47.182411>,  <39.902008, 27.581427, 47.209213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.948971, 27.815256, 47.182411>,  <40.027241, 28.204971, 47.137741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948971, 27.815256, 47.182411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374864, -0.030920, -0.926564,
		0.906195, -0.223167, -0.359176,
		-0.195673, -0.974290, 0.111677,
		39.890270, 27.522968, 47.215916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236393, 27.885828, 46.512867>,  <40.027241, 28.204971, 47.137741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236393, 27.885828, 46.512867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.986313, 27.620985, 46.678150>,  <39.836266, 27.462078, 46.777321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.986313, 27.620985, 46.678150>,  <40.236393, 27.885828, 46.512867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986313, 27.620985, 46.678150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442586, -0.135309, -0.886459,
		0.642843, -0.737091, -0.208446,
		-0.625196, -0.662109, 0.413208,
		39.798756, 27.422352, 46.802113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333889, 27.321949, 46.056507>,  <40.236393, 27.885828, 46.512867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333889, 27.321949, 46.056507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.981522, 27.313702, 46.245636>,  <39.770103, 27.308754, 46.359116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.981522, 27.313702, 46.245636>,  <40.333889, 27.321949, 46.056507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981522, 27.313702, 46.245636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468101, -0.109360, -0.876882,
		0.069788, -0.993788, 0.086685,
		-0.880915, -0.020619, 0.472826,
		39.717247, 27.307516, 46.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067387, 26.795662, 45.779335>,  <40.333889, 27.321949, 46.056507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067387, 26.795662, 45.779335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.727287, 26.920849, 45.948627>,  <39.523228, 26.995962, 46.050201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.727287, 26.920849, 45.948627>,  <40.067387, 26.795662, 45.779335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727287, 26.920849, 45.948627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491096, -0.182231, -0.851831,
		-0.189505, -0.932104, 0.308657,
		-0.850242, 0.313007, 0.423219,
		39.472214, 27.014740, 46.075596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605080, 26.227888, 45.720875>,  <40.067387, 26.795662, 45.779335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605080, 26.227888, 45.720875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.387383, 26.557896, 45.781723>,  <39.256763, 26.755899, 45.818233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.387383, 26.557896, 45.781723>,  <39.605080, 26.227888, 45.720875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387383, 26.557896, 45.781723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487426, -0.163386, -0.857742,
		-0.682798, -0.540970, 0.491058,
		-0.544244, 0.825019, 0.152123,
		39.224110, 26.805401, 45.827358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954998, 26.023462, 45.387321>,  <39.605080, 26.227888, 45.720875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954998, 26.023462, 45.387321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.932568, 26.417736, 45.450924>,  <38.919109, 26.654301, 45.489086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.932568, 26.417736, 45.450924>,  <38.954998, 26.023462, 45.387321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932568, 26.417736, 45.450924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405665, 0.123026, -0.905704,
		-0.912300, -0.115297, 0.392958,
		-0.056081, 0.985683, 0.159009,
		38.915745, 26.713442, 45.498627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425987, 26.220888, 45.014576>,  <38.954998, 26.023462, 45.387321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425987, 26.220888, 45.014576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596729, 26.582350, 45.028492>,  <38.699173, 26.799227, 45.036842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596729, 26.582350, 45.028492>,  <38.425987, 26.220888, 45.014576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596729, 26.582350, 45.028492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275596, 0.166625, -0.946722,
		-0.861305, 0.394522, 0.320167,
		0.426850, 0.903653, 0.034786,
		38.724785, 26.853445, 45.038929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883957, 26.801249, 44.893532>,  <38.425987, 26.220888, 45.014576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883957, 26.801249, 44.893532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240025, 26.962219, 44.808071>,  <38.453667, 27.058802, 44.756794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240025, 26.962219, 44.808071>,  <37.883957, 26.801249, 44.893532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240025, 26.962219, 44.808071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364830, 0.348661, -0.863328,
		-0.272937, 0.846455, 0.457185,
		0.890171, 0.402429, -0.213650,
		38.507076, 27.082949, 44.743977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304653, 27.084558, 45.216209>,  <37.883957, 26.801249, 44.893532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304653, 27.084558, 45.216209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936401, 26.931934, 45.249310>,  <36.715450, 26.840361, 45.269169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936401, 26.931934, 45.249310>,  <37.304653, 27.084558, 45.216209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936401, 26.931934, 45.249310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273098, -0.477871, 0.834899,
		-0.279020, 0.791235, 0.544147,
		-0.920633, -0.381559, 0.082749,
		36.660210, 26.817467, 45.274136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382481, 26.930046, 45.932671>,  <37.304653, 27.084558, 45.216209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382481, 26.930046, 45.932671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.049271, 26.739866, 45.819523>,  <36.849342, 26.625759, 45.751633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.049271, 26.739866, 45.819523>,  <37.382481, 26.930046, 45.932671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049271, 26.739866, 45.819523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000087, -0.511418, 0.859332,
		-0.553233, 0.715822, 0.426066,
		-0.833027, -0.475448, -0.282871,
		36.799362, 26.597233, 45.734661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738743, 27.007328, 46.353733>,  <37.382481, 26.930046, 45.932671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738743, 27.007328, 46.353733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708515, 26.657389, 46.162346>,  <36.690376, 26.447426, 46.047512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708515, 26.657389, 46.162346>,  <36.738743, 27.007328, 46.353733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708515, 26.657389, 46.162346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132712, -0.466748, 0.874376,
		-0.988269, 0.129578, -0.080829,
		-0.075573, -0.874846, -0.478470,
		36.685844, 26.394936, 46.018806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246426, 26.698853, 46.699268>,  <36.738743, 27.007328, 46.353733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246426, 26.698853, 46.699268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448044, 26.410259, 46.509361>,  <36.569016, 26.237103, 46.395416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448044, 26.410259, 46.509361>,  <36.246426, 26.698853, 46.699268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448044, 26.410259, 46.509361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032268, -0.533587, 0.845129,
		-0.863076, -0.441300, -0.245670,
		0.504042, -0.721484, -0.474766,
		36.599255, 26.193813, 46.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934959, 26.027727, 47.000858>,  <36.246426, 26.698853, 46.699268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934959, 26.027727, 47.000858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287159, 25.917593, 46.846497>,  <36.498478, 25.851513, 46.753880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287159, 25.917593, 46.846497>,  <35.934959, 26.027727, 47.000858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287159, 25.917593, 46.846497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154789, -0.602442, 0.783009,
		-0.448070, -0.749170, -0.487829,
		0.880496, -0.275333, -0.385900,
		36.551308, 25.834993, 46.730728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912674, 25.317633, 47.015244>,  <35.934959, 26.027727, 47.000858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912674, 25.317633, 47.015244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.294239, 25.433825, 46.985107>,  <36.523178, 25.503540, 46.967026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.294239, 25.433825, 46.985107>,  <35.912674, 25.317633, 47.015244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294239, 25.433825, 46.985107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245446, -0.610778, 0.752799,
		0.172656, -0.736595, -0.653925,
		0.953911, 0.290478, -0.075340,
		36.580414, 25.520967, 46.962505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227573, 24.734047, 47.141869>,  <35.912674, 25.317633, 47.015244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227573, 24.734047, 47.141869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520428, 25.004423, 47.175526>,  <36.696140, 25.166649, 47.195721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.520428, 25.004423, 47.175526>,  <36.227573, 24.734047, 47.141869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520428, 25.004423, 47.175526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352359, -0.481540, 0.802473,
		0.582941, -0.557872, -0.590727,
		0.732135, 0.675943, 0.084138,
		36.740067, 25.207207, 47.200768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824036, 24.364132, 47.300564>,  <36.227573, 24.734047, 47.141869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824036, 24.364132, 47.300564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903706, 24.737463, 47.420048>,  <36.951508, 24.961462, 47.491737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903706, 24.737463, 47.420048>,  <36.824036, 24.364132, 47.300564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903706, 24.737463, 47.420048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381814, -0.354635, 0.853494,
		0.902523, -0.055945, -0.426992,
		0.199175, 0.933329, 0.298706,
		36.963459, 25.017462, 47.509659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474865, 24.268234, 47.524906>,  <36.824036, 24.364132, 47.300564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474865, 24.268234, 47.524906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300106, 24.590225, 47.685474>,  <37.195251, 24.783419, 47.781815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300106, 24.590225, 47.685474>,  <37.474865, 24.268234, 47.524906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300106, 24.590225, 47.685474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326164, -0.274120, 0.904696,
		0.838294, 0.526187, -0.142791,
		-0.436898, 0.804975, 0.401416,
		37.169037, 24.831718, 47.805901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009274, 24.526993, 48.101109>,  <37.474865, 24.268234, 47.524906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009274, 24.526993, 48.101109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663727, 24.711149, 48.182858>,  <37.456398, 24.821644, 48.231907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663727, 24.711149, 48.182858>,  <38.009274, 24.526993, 48.101109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663727, 24.711149, 48.182858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212329, -0.035095, 0.976568,
		0.456776, 0.887022, -0.067437,
		-0.863871, 0.460391, 0.204371,
		37.404564, 24.849266, 48.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209011, 25.025444, 48.602470>,  <38.009274, 24.526993, 48.101109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209011, 25.025444, 48.602470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815178, 24.971127, 48.646564>,  <37.578876, 24.938536, 48.673019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.815178, 24.971127, 48.646564>,  <38.209011, 25.025444, 48.602470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815178, 24.971127, 48.646564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127981, -0.129757, 0.983252,
		-0.119217, 0.982203, 0.145136,
		-0.984585, -0.135795, 0.110234,
		37.519802, 24.930387, 48.679634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964413, 25.507563, 49.073822>,  <38.209011, 25.025444, 48.602470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964413, 25.507563, 49.073822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.647453, 25.263588, 49.077408>,  <37.457275, 25.117203, 49.079559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.647453, 25.263588, 49.077408>,  <37.964413, 25.507563, 49.073822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647453, 25.263588, 49.077408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051945, -0.052834, 0.997251,
		-0.607785, 0.790688, 0.073549,
		-0.792401, -0.609935, 0.008961,
		37.409733, 25.080606, 49.080097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433182, 25.811710, 49.459896>,  <37.964413, 25.507563, 49.073822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433182, 25.811710, 49.459896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345997, 25.421370, 49.454182>,  <37.293686, 25.187164, 49.450752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345997, 25.421370, 49.454182>,  <37.433182, 25.811710, 49.459896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345997, 25.421370, 49.454182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100666, -0.037039, 0.994231,
		-0.970752, 0.215267, 0.106308,
		-0.217963, -0.975852, -0.014285,
		37.280609, 25.128614, 49.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895634, 25.657370, 49.908424>,  <37.433182, 25.811710, 49.459896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895634, 25.657370, 49.908424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.075340, 25.300730, 49.885769>,  <37.183167, 25.086746, 49.872173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.075340, 25.300730, 49.885769>,  <36.895634, 25.657370, 49.908424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075340, 25.300730, 49.885769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241774, -0.182372, 0.953040,
		-0.860059, -0.414478, -0.297500,
		0.449270, -0.891599, -0.056641,
		37.210121, 25.033251, 49.868778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934082, 26.419304, 49.760094>,  <36.895634, 25.657370, 49.908424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934082, 26.419304, 49.760094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.296959, 26.291586, 49.869675>,  <37.514687, 26.214956, 49.935425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.296959, 26.291586, 49.869675>,  <36.934082, 26.419304, 49.760094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296959, 26.291586, 49.869675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351066, -0.933365, 0.074715,
		0.231844, -0.163957, -0.958836,
		0.907194, -0.319293, 0.273955,
		37.569118, 26.195799, 49.951862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991776, 26.902100, 49.256596>,  <36.934082, 26.419304, 49.760094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991776, 26.902100, 49.256596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043091, 27.198488, 49.520264>,  <37.073879, 27.376322, 49.678463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043091, 27.198488, 49.520264>,  <36.991776, 26.902100, 49.256596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043091, 27.198488, 49.520264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729784, 0.520594, -0.443168,
		-0.671535, -0.424200, 0.607533,
		0.128286, 0.740970, 0.659171,
		37.081577, 27.420778, 49.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365917, 27.229095, 49.379951>,  <36.991776, 26.902100, 49.256596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365917, 27.229095, 49.379951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655224, 27.496220, 49.450283>,  <36.828808, 27.656494, 49.492481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655224, 27.496220, 49.450283>,  <36.365917, 27.229095, 49.379951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655224, 27.496220, 49.450283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490094, 0.675764, -0.550592,
		-0.486511, 0.312050, 0.816046,
		0.723267, 0.667808, 0.175833,
		36.872204, 27.696562, 49.503033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027363, 27.827862, 49.529716>,  <36.365917, 27.229095, 49.379951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027363, 27.827862, 49.529716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.395920, 27.970554, 49.468040>,  <36.617054, 28.056171, 49.431034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.395920, 27.970554, 49.468040>,  <36.027363, 27.827862, 49.529716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395920, 27.970554, 49.468040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382386, 0.761356, -0.523563,
		-0.069381, 0.541367, 0.837919,
		0.921394, 0.356734, -0.154188,
		36.672337, 28.077574, 49.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064816, 28.474230, 49.802898>,  <36.027363, 27.827862, 49.529716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064816, 28.474230, 49.802898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.341633, 28.428253, 49.517841>,  <36.507725, 28.400667, 49.346806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.341633, 28.428253, 49.517841>,  <36.064816, 28.474230, 49.802898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341633, 28.428253, 49.517841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427068, 0.730730, -0.532585,
		0.581967, 0.672920, 0.456609,
		0.692045, -0.114943, -0.712644,
		36.549248, 28.393770, 49.304047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302361, 29.198467, 49.735252>,  <36.064816, 28.474230, 49.802898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302361, 29.198467, 49.735252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390354, 28.980621, 49.411526>,  <36.443150, 28.849913, 49.217289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390354, 28.980621, 49.411526>,  <36.302361, 29.198467, 49.735252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390354, 28.980621, 49.411526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418786, 0.696575, -0.582582,
		0.881036, 0.467092, -0.074839,
		0.219988, -0.544617, -0.809319,
		36.456352, 28.817236, 49.168732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510902, 29.692257, 49.218124>,  <36.302361, 29.198467, 49.735252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510902, 29.692257, 49.218124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.445637, 29.370390, 48.989780>,  <36.406475, 29.177269, 48.852776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.445637, 29.370390, 48.989780>,  <36.510902, 29.692257, 49.218124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445637, 29.370390, 48.989780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228595, 0.593705, -0.771531,
		0.959750, 0.004607, -0.280817,
		-0.163168, -0.804670, -0.570861,
		36.396687, 29.128988, 48.818523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276188, 29.802685, 49.221016>,  <36.510902, 29.692257, 49.218124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276188, 29.802685, 49.221016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.466511, 30.143211, 49.309448>,  <37.580704, 30.347527, 49.362507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.466511, 30.143211, 49.309448>,  <37.276188, 29.802685, 49.221016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466511, 30.143211, 49.309448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343396, -0.411204, 0.844388,
		0.809747, -0.325846, -0.487990,
		0.475804, 0.851314, 0.221077,
		37.609253, 30.398605, 49.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854355, 29.496939, 49.355148>,  <37.276188, 29.802685, 49.221016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854355, 29.496939, 49.355148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888920, 29.862745, 49.513233>,  <37.909660, 30.082230, 49.608082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888920, 29.862745, 49.513233>,  <37.854355, 29.496939, 49.355148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888920, 29.862745, 49.513233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289484, -0.402628, 0.868384,
		0.953274, 0.039366, -0.299530,
		0.086414, 0.914517, 0.395210,
		37.914845, 30.137100, 49.631798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489651, 29.478809, 49.646240>,  <37.854355, 29.496939, 49.355148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489651, 29.478809, 49.646240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293388, 29.771255, 49.835861>,  <38.175629, 29.946724, 49.949635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293388, 29.771255, 49.835861>,  <38.489651, 29.478809, 49.646240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293388, 29.771255, 49.835861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494681, -0.214143, 0.842278,
		0.717317, 0.647776, -0.256597,
		-0.490659, 0.731115, 0.474051,
		38.146191, 29.990589, 49.978077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058826, 29.898750, 49.997547>,  <38.489651, 29.478809, 49.646240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058826, 29.898750, 49.997547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.710178, 29.956436, 50.184940>,  <38.500988, 29.991049, 50.297379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.710178, 29.956436, 50.184940>,  <39.058826, 29.898750, 49.997547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710178, 29.956436, 50.184940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450470, -0.141175, 0.881559,
		0.193274, 0.979424, 0.058086,
		-0.871621, 0.144216, 0.468486,
		38.448692, 29.999701, 50.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160320, 30.317280, 50.556595>,  <39.058826, 29.898750, 49.997547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160320, 30.317280, 50.556595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.807957, 30.156002, 50.655743>,  <38.596539, 30.059235, 50.715233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.807957, 30.156002, 50.655743>,  <39.160320, 30.317280, 50.556595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807957, 30.156002, 50.655743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331613, -0.152127, 0.931069,
		-0.337695, 0.902381, 0.267714,
		-0.880906, -0.403195, 0.247869,
		38.543686, 30.035044, 50.730103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049412, 30.477413, 51.155540>,  <39.160320, 30.317280, 50.556595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049412, 30.477413, 51.155540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.799690, 30.165350, 51.139561>,  <38.649857, 29.978113, 51.129974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.799690, 30.165350, 51.139561>,  <39.049412, 30.477413, 51.155540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799690, 30.165350, 51.139561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336033, -0.314366, 0.887838,
		-0.705210, 0.540861, 0.458419,
		-0.624308, -0.780156, -0.039947,
		38.612396, 29.931303, 51.127575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733883, 30.385244, 51.779652>,  <39.049412, 30.477413, 51.155540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733883, 30.385244, 51.779652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653931, 30.027031, 51.620621>,  <38.605957, 29.812103, 51.525204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653931, 30.027031, 51.620621>,  <38.733883, 30.385244, 51.779652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653931, 30.027031, 51.620621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225157, -0.436884, 0.870883,
		-0.953599, 0.084558, 0.288962,
		-0.199883, -0.895535, -0.397573,
		38.593967, 29.758371, 51.501350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202034, 30.032497, 52.182293>,  <38.733883, 30.385244, 51.779652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202034, 30.032497, 52.182293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.405758, 29.755785, 51.977535>,  <38.527992, 29.589758, 51.854679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.405758, 29.755785, 51.977535>,  <38.202034, 30.032497, 52.182293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405758, 29.755785, 51.977535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323838, -0.397041, 0.858771,
		-0.797325, -0.603155, 0.021806,
		0.509314, -0.691782, -0.511896,
		38.558552, 29.548250, 51.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221115, 29.522032, 52.614628>,  <38.202034, 30.032497, 52.182293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221115, 29.522032, 52.614628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526623, 29.411318, 52.381374>,  <38.709927, 29.344891, 52.241425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526623, 29.411318, 52.381374>,  <38.221115, 29.522032, 52.614628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526623, 29.411318, 52.381374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373702, -0.546993, 0.749096,
		-0.526308, -0.790056, -0.314343,
		0.763771, -0.276785, -0.583132,
		38.755753, 29.328283, 52.206436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.953968, 35.783810, 37.791290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305061, 35.655762, 37.648678>,  <35.515717, 35.578934, 37.563110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305061, 35.655762, 37.648678>,  <34.953968, 35.783810, 37.791290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305061, 35.655762, 37.648678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011925, -0.758443, 0.651631,
		-0.479010, -0.567703, -0.669524,
		0.877729, -0.320122, -0.356531,
		35.568378, 35.559727, 37.541718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802307, 35.088627, 37.628525>,  <34.953968, 35.783810, 37.791290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802307, 35.088627, 37.628525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191895, 35.151066, 37.694283>,  <35.425648, 35.188530, 37.733738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191895, 35.151066, 37.694283>,  <34.802307, 35.088627, 37.628525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191895, 35.151066, 37.694283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039315, -0.597871, 0.800628,
		0.223260, -0.786247, -0.576169,
		0.973966, 0.156096, 0.164392,
		35.484085, 35.197895, 37.743599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009098, 34.457382, 37.856548>,  <34.802307, 35.088627, 37.628525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009098, 34.457382, 37.856548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288586, 34.717045, 37.976799>,  <35.456280, 34.872845, 38.048950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288586, 34.717045, 37.976799>,  <35.009098, 34.457382, 37.856548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288586, 34.717045, 37.976799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001309, -0.421391, 0.906878,
		0.715392, -0.633263, -0.295285,
		0.698723, 0.649160, 0.300630,
		35.498203, 34.911793, 38.066990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501793, 34.051140, 38.220028>,  <35.009098, 34.457382, 37.856548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501793, 34.051140, 38.220028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579544, 34.421520, 38.349541>,  <35.626194, 34.643749, 38.427250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579544, 34.421520, 38.349541>,  <35.501793, 34.051140, 38.220028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579544, 34.421520, 38.349541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084488, -0.344657, 0.934919,
		0.977282, -0.154370, -0.145225,
		0.194376, 0.925949, 0.323784,
		35.637856, 34.699306, 38.446674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137333, 34.000816, 38.533688>,  <35.501793, 34.051140, 38.220028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137333, 34.000816, 38.533688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976742, 34.334679, 38.684509>,  <35.880386, 34.534996, 38.775002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976742, 34.334679, 38.684509>,  <36.137333, 34.000816, 38.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976742, 34.334679, 38.684509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237019, -0.302979, 0.923052,
		0.884668, 0.459955, -0.076189,
		-0.401479, 0.834653, 0.377054,
		35.856297, 34.585075, 38.797626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619179, 34.252495, 39.030678>,  <36.137333, 34.000816, 38.533688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619179, 34.252495, 39.030678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280247, 34.446136, 39.118019>,  <36.076889, 34.562321, 39.170425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280247, 34.446136, 39.118019>,  <36.619179, 34.252495, 39.030678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280247, 34.446136, 39.118019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129992, -0.209595, 0.969109,
		0.514914, 0.849538, 0.114666,
		-0.847328, 0.484102, 0.218357,
		36.026047, 34.591366, 39.183525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772610, 34.580021, 39.708595>,  <36.619179, 34.252495, 39.030678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772610, 34.580021, 39.708595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375595, 34.545235, 39.674397>,  <36.137386, 34.524361, 39.653877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375595, 34.545235, 39.674397>,  <36.772610, 34.580021, 39.708595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375595, 34.545235, 39.674397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069775, -0.170063, 0.982960,
		-0.100028, 0.981588, 0.162725,
		-0.992535, -0.086969, -0.085501,
		36.077835, 34.519142, 39.648746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415806, 35.110035, 40.232407>,  <36.772610, 34.580021, 39.708595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415806, 35.110035, 40.232407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166721, 34.804703, 40.163635>,  <36.017273, 34.621502, 40.122372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166721, 34.804703, 40.163635>,  <36.415806, 35.110035, 40.232407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166721, 34.804703, 40.163635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104113, -0.136945, 0.985092,
		-0.775497, 0.631325, 0.005804,
		-0.622708, -0.763332, -0.171930,
		35.979908, 34.575703, 40.112057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793568, 35.278713, 40.694557>,  <36.415806, 35.110035, 40.232407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793568, 35.278713, 40.694557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754440, 34.892670, 40.597404>,  <35.730965, 34.661041, 40.539112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754440, 34.892670, 40.597404>,  <35.793568, 35.278713, 40.694557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754440, 34.892670, 40.597404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217429, -0.217432, 0.951550,
		-0.971162, 0.145887, -0.188574,
		-0.097817, -0.965111, -0.242882,
		35.725094, 34.603138, 40.524540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145412, 35.093185, 40.896648>,  <35.793568, 35.278713, 40.694557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145412, 35.093185, 40.896648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370029, 34.762230, 40.892467>,  <35.504799, 34.563656, 40.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370029, 34.762230, 40.892467>,  <35.145412, 35.093185, 40.896648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370029, 34.762230, 40.892467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300895, -0.215944, 0.928887,
		-0.770803, -0.518462, -0.370217,
		0.561538, -0.827385, -0.010448,
		35.538490, 34.514015, 40.889332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809738, 34.620880, 41.366524>,  <35.145412, 35.093185, 40.896648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809738, 34.620880, 41.366524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152081, 34.419724, 41.318161>,  <35.357487, 34.299030, 41.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152081, 34.419724, 41.318161>,  <34.809738, 34.620880, 41.366524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152081, 34.419724, 41.318161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073097, -0.349024, 0.934259,
		-0.512029, -0.790749, -0.335473,
		0.855852, -0.502890, -0.120909,
		35.408836, 34.268856, 41.281887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701412, 34.008419, 41.676788>,  <34.809738, 34.620880, 41.366524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701412, 34.008419, 41.676788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097626, 34.062889, 41.669956>,  <35.335354, 34.095573, 41.665855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097626, 34.062889, 41.669956>,  <34.701412, 34.008419, 41.676788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097626, 34.062889, 41.669956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083935, -0.502590, 0.860441,
		0.108587, -0.853733, -0.509264,
		0.990537, 0.136177, -0.017083,
		35.394787, 34.103741, 41.664829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276890, 33.403103, 41.376316>,  <34.701412, 34.008419, 41.676788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276890, 33.403103, 41.376316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916435, 33.239143, 41.432785>,  <33.700161, 33.140766, 41.466667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916435, 33.239143, 41.432785>,  <34.276890, 33.403103, 41.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916435, 33.239143, 41.432785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300315, 0.355368, -0.885169,
		0.312653, -0.840061, -0.443333,
		-0.901143, -0.409890, 0.141176,
		33.646091, 33.116173, 41.475136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093990, 33.092587, 40.764065>,  <34.276890, 33.403103, 41.376316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093990, 33.092587, 40.764065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740967, 33.154892, 40.941528>,  <33.529152, 33.192276, 41.048008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740967, 33.154892, 40.941528>,  <34.093990, 33.092587, 40.764065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740967, 33.154892, 40.941528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366307, 0.363832, -0.856414,
		-0.294814, -0.918349, -0.264046,
		-0.882556, 0.155761, 0.443660,
		33.476200, 33.201618, 41.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631607, 32.756832, 40.284233>,  <34.093990, 33.092587, 40.764065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631607, 32.756832, 40.284233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437290, 33.045074, 40.482117>,  <33.320702, 33.218018, 40.600845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437290, 33.045074, 40.482117>,  <33.631607, 32.756832, 40.284233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437290, 33.045074, 40.482117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518696, 0.217888, -0.826728,
		-0.703534, -0.658222, 0.267925,
		-0.485793, 0.720603, 0.494709,
		33.291553, 33.261253, 40.630531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929699, 32.700832, 40.033798>,  <33.631607, 32.756832, 40.284233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929699, 32.700832, 40.033798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978004, 33.067623, 40.185890>,  <33.006989, 33.287697, 40.277145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978004, 33.067623, 40.185890>,  <32.929699, 32.700832, 40.033798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978004, 33.067623, 40.185890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567764, 0.377998, -0.731274,
		-0.814286, -0.127572, 0.566272,
		0.120759, 0.916975, 0.380229,
		33.014233, 33.342716, 40.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350540, 32.967617, 39.860020>,  <32.929699, 32.700832, 40.033798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350540, 32.967617, 39.860020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575523, 33.284924, 39.953285>,  <32.710514, 33.475307, 40.009243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575523, 33.284924, 39.953285>,  <32.350540, 32.967617, 39.860020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575523, 33.284924, 39.953285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503397, 0.552251, -0.664537,
		-0.655924, 0.256397, 0.709947,
		0.562455, 0.793271, 0.233165,
		32.744259, 33.522903, 40.023235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820957, 33.472080, 39.984135>,  <32.350540, 32.967617, 39.860020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820957, 33.472080, 39.984135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170162, 33.644001, 39.891945>,  <32.379684, 33.747154, 39.836632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170162, 33.644001, 39.891945>,  <31.820957, 33.472080, 39.984135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170162, 33.644001, 39.891945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409783, 0.390226, -0.824501,
		-0.264435, 0.814244, 0.516798,
		0.873013, 0.429802, -0.230474,
		32.432068, 33.772942, 39.822803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587545, 34.085178, 39.682312>,  <31.820957, 33.472080, 39.984135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587545, 34.085178, 39.682312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976049, 34.073097, 39.587875>,  <32.209152, 34.065849, 39.531216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976049, 34.073097, 39.587875>,  <31.587545, 34.085178, 39.682312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976049, 34.073097, 39.587875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233062, 0.080581, -0.969118,
		0.048296, 0.996290, 0.071226,
		0.971262, -0.030205, -0.236090,
		32.267429, 34.064037, 39.517048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840246, 34.762718, 39.332901>,  <31.587545, 34.085178, 39.682312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840246, 34.762718, 39.332901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 34.490677, 39.191559>,  <32.251347, 34.327454, 39.106754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 34.490677, 39.191559>,  <31.840246, 34.762718, 39.332901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097183, 34.490677, 39.191559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079435, 0.399482, -0.913293,
		0.762291, 0.614714, 0.202580,
		0.642341, -0.680103, -0.353352,
		32.289886, 34.286644, 39.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265331, 35.256371, 39.023567>,  <31.840246, 34.762718, 39.332901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265331, 35.256371, 39.023567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285408, 34.882473, 38.882862>,  <32.297455, 34.658134, 38.798439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285408, 34.882473, 38.882862>,  <32.265331, 35.256371, 39.023567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285408, 34.882473, 38.882862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031487, 0.353516, -0.934899,
		0.998243, 0.035853, 0.047177,
		0.050197, -0.934741, -0.351766,
		32.300468, 34.602051, 38.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700207, 35.330364, 38.502209>,  <32.265331, 35.256371, 39.023567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700207, 35.330364, 38.502209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 34.972778, 38.432468>,  <32.435997, 34.758224, 38.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 34.972778, 38.432468>,  <32.700207, 35.330364, 38.502209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535076, 34.972778, 38.432468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060529, 0.217928, -0.974086,
		0.908798, -0.391572, -0.144076,
		-0.412823, -0.893969, -0.174351,
		32.411228, 34.704586, 38.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961327, 35.102337, 37.857376>,  <32.700207, 35.330364, 38.502209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961327, 35.102337, 37.857376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633595, 34.875431, 37.890644>,  <32.436954, 34.739288, 37.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633595, 34.875431, 37.890644>,  <32.961327, 35.102337, 37.857376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633595, 34.875431, 37.890644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235850, 0.201263, -0.950720,
		0.522570, -0.798565, -0.298689,
		-0.819326, -0.567263, 0.083168,
		32.387798, 34.705254, 37.915596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906761, 34.822922, 37.261406>,  <32.961327, 35.102337, 37.857376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906761, 34.822922, 37.261406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529789, 34.757816, 37.378254>,  <32.303604, 34.718754, 37.448360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529789, 34.757816, 37.378254>,  <32.906761, 34.822922, 37.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529789, 34.757816, 37.378254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317893, 0.164984, -0.933662,
		0.103763, -0.972775, -0.207225,
		-0.942431, -0.162755, 0.292119,
		32.247059, 34.708988, 37.465889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550968, 34.209099, 36.939793>,  <32.906761, 34.822922, 37.261406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550968, 34.209099, 36.939793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305592, 34.504311, 37.052216>,  <32.158363, 34.681438, 37.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305592, 34.504311, 37.052216>,  <32.550968, 34.209099, 36.939793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305592, 34.504311, 37.052216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200843, 0.198392, -0.959324,
		-0.763771, -0.644942, 0.026525,
		-0.613446, 0.738032, 0.281058,
		32.121559, 34.725719, 37.136532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883814, 34.095821, 36.715046>,  <32.550968, 34.209099, 36.939793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883814, 34.095821, 36.715046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934978, 34.490765, 36.752495>,  <31.965677, 34.727730, 36.774963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934978, 34.490765, 36.752495>,  <31.883814, 34.095821, 36.715046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934978, 34.490765, 36.752495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237460, 0.122143, -0.963687,
		-0.962939, 0.101036, 0.250081,
		0.127912, 0.987356, 0.093624,
		31.973352, 34.786972, 36.780582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198269, 33.451721, 36.563400>,  <31.883814, 34.095821, 36.715046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198269, 33.451721, 36.563400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489727, 33.427563, 36.836288>,  <32.664604, 33.413067, 37.000023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489727, 33.427563, 36.836288>,  <32.198269, 33.451721, 36.563400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489727, 33.427563, 36.836288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444485, -0.716130, -0.538137,
		0.521062, 0.695349, -0.494959,
		0.728647, -0.060401, 0.682220,
		32.708321, 33.409443, 37.040955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240261, 32.855316, 37.067081>,  <32.198269, 33.451721, 36.563400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240261, 32.855316, 37.067081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460449, 32.617989, 36.832150>,  <32.592560, 32.475590, 36.691189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460449, 32.617989, 36.832150>,  <32.240261, 32.855316, 37.067081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460449, 32.617989, 36.832150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264035, -0.543674, 0.796683,
		-0.792004, -0.593624, -0.142618,
		0.550468, -0.593321, -0.587329,
		32.625591, 32.439991, 36.655952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995907, 32.059902, 37.123718>,  <32.240261, 32.855316, 37.067081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995907, 32.059902, 37.123718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380947, 32.135849, 37.046413>,  <32.611973, 32.181416, 37.000031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380947, 32.135849, 37.046413>,  <31.995907, 32.059902, 37.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380947, 32.135849, 37.046413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263937, -0.496189, 0.827123,
		0.061148, -0.847199, -0.527745,
		0.962600, 0.189869, -0.193267,
		32.669727, 32.192810, 36.988434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325554, 31.452040, 37.125168>,  <31.995907, 32.059902, 37.123718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325554, 31.452040, 37.125168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600658, 31.731451, 37.204201>,  <32.765720, 31.899097, 37.251621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600658, 31.731451, 37.204201>,  <32.325554, 31.452040, 37.125168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600658, 31.731451, 37.204201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312825, -0.530798, 0.787651,
		0.655071, -0.479911, -0.583581,
		0.687766, 0.698527, 0.197582,
		32.806988, 31.941010, 37.263477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008820, 31.146574, 37.161007>,  <32.325554, 31.452040, 37.125168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008820, 31.146574, 37.161007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016670, 31.488211, 37.368908>,  <33.021381, 31.693193, 37.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016670, 31.488211, 37.368908>,  <33.008820, 31.146574, 37.161007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016670, 31.488211, 37.368908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295772, -0.501543, 0.813003,
		0.955057, 0.137774, -0.262459,
		0.019624, 0.854092, 0.519752,
		33.022556, 31.744438, 37.524834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643471, 31.146210, 37.428909>,  <33.008820, 31.146574, 37.161007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643471, 31.146210, 37.428909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415543, 31.370962, 37.668774>,  <33.278786, 31.505814, 37.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415543, 31.370962, 37.668774>,  <33.643471, 31.146210, 37.428909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415543, 31.370962, 37.668774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316479, -0.523385, 0.791144,
		0.758384, 0.640590, 0.120411,
		-0.569820, 0.561883, 0.599660,
		33.244598, 31.539528, 37.848671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976662, 30.998058, 37.975780>,  <33.643471, 31.146210, 37.428909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976662, 30.998058, 37.975780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669613, 31.202303, 38.130718>,  <33.485386, 31.324850, 38.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669613, 31.202303, 38.130718>,  <33.976662, 30.998058, 37.975780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669613, 31.202303, 38.130718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193489, -0.391546, 0.899585,
		0.611002, 0.765486, 0.201760,
		-0.767619, 0.510610, 0.387348,
		33.439327, 31.355486, 38.246922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215111, 31.348680, 38.586346>,  <33.976662, 30.998058, 37.975780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215111, 31.348680, 38.586346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819889, 31.297979, 38.621384>,  <33.582756, 31.267559, 38.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819889, 31.297979, 38.621384>,  <34.215111, 31.348680, 38.586346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819889, 31.297979, 38.621384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130937, -0.391087, 0.910992,
		-0.081213, 0.911583, 0.403013,
		-0.988059, -0.126754, 0.087598,
		33.523472, 31.259953, 38.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233135, 31.403482, 39.248245>,  <34.215111, 31.348680, 38.586346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233135, 31.403482, 39.248245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860477, 31.282513, 39.167667>,  <33.636883, 31.209930, 39.119320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860477, 31.282513, 39.167667>,  <34.233135, 31.403482, 39.248245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860477, 31.282513, 39.167667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096763, -0.327891, 0.939747,
		-0.350254, 0.895002, 0.276214,
		-0.931643, -0.302422, -0.201448,
		33.580986, 31.191786, 39.107231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715759, 31.706400, 39.771786>,  <34.233135, 31.403482, 39.248245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715759, 31.706400, 39.771786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565434, 31.365309, 39.626667>,  <33.475239, 31.160654, 39.539597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565434, 31.365309, 39.626667>,  <33.715759, 31.706400, 39.771786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565434, 31.365309, 39.626667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058338, -0.412487, 0.909093,
		-0.924858, 0.320483, 0.204764,
		-0.375812, -0.852728, -0.362796,
		33.452690, 31.109491, 39.517830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253990, 31.422457, 40.197853>,  <33.715759, 31.706400, 39.771786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253990, 31.422457, 40.197853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360394, 31.098167, 39.989250>,  <33.424236, 30.903593, 39.864090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360394, 31.098167, 39.989250>,  <33.253990, 31.422457, 40.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360394, 31.098167, 39.989250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067715, -0.523943, 0.849057,
		-0.961588, -0.261174, -0.084477,
		0.266013, -0.810723, -0.521503,
		33.440197, 30.854950, 39.832798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082367, 30.888613, 40.565384>,  <33.253990, 31.422457, 40.197853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082367, 30.888613, 40.565384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364273, 30.716318, 40.339901>,  <33.533417, 30.612942, 40.204613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364273, 30.716318, 40.339901>,  <33.082367, 30.888613, 40.565384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364273, 30.716318, 40.339901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261404, -0.581012, 0.770774,
		-0.659523, -0.690573, -0.296881,
		0.704767, -0.430738, -0.563710,
		33.575703, 30.587097, 40.170788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002277, 30.108145, 40.609383>,  <33.082367, 30.888613, 40.565384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002277, 30.108145, 40.609383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382454, 30.167860, 40.500290>,  <33.610558, 30.203690, 40.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382454, 30.167860, 40.500290>,  <33.002277, 30.108145, 40.609383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382454, 30.167860, 40.500290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296988, -0.695521, 0.654254,
		-0.092014, -0.702825, -0.705387,
		0.950437, 0.149290, -0.272728,
		33.667583, 30.212646, 40.418472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307945, 29.471390, 40.526592>,  <33.002277, 30.108145, 40.609383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307945, 29.471390, 40.526592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651337, 29.675516, 40.546928>,  <33.857372, 29.797993, 40.559132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651337, 29.675516, 40.546928>,  <33.307945, 29.471390, 40.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651337, 29.675516, 40.546928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418150, -0.753915, 0.506718,
		0.296916, -0.413749, -0.860612,
		0.858482, 0.510317, 0.050840,
		33.908882, 29.828611, 40.562180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902050, 29.058111, 40.367794>,  <33.307945, 29.471390, 40.526592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902050, 29.058111, 40.367794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111908, 29.350719, 40.541977>,  <34.237823, 29.526283, 40.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111908, 29.350719, 40.541977>,  <33.902050, 29.058111, 40.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111908, 29.350719, 40.541977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522374, -0.680520, 0.513826,
		0.672214, -0.042103, -0.739159,
		0.524646, 0.731519, 0.435462,
		34.269302, 29.570175, 40.672615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559467, 28.877857, 40.268940>,  <33.902050, 29.058111, 40.367794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559467, 28.877857, 40.268940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586723, 29.141033, 40.568932>,  <34.603077, 29.298939, 40.748928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586723, 29.141033, 40.568932>,  <34.559467, 28.877857, 40.268940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586723, 29.141033, 40.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631595, -0.610361, 0.478067,
		0.772298, 0.441107, -0.457143,
		0.068143, 0.657939, 0.749981,
		34.607166, 29.338415, 40.793926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222702, 28.722103, 40.570377>,  <34.559467, 28.877857, 40.268940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222702, 28.722103, 40.570377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035297, 28.917908, 40.864555>,  <34.922855, 29.035391, 41.041061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035297, 28.917908, 40.864555>,  <35.222702, 28.722103, 40.570377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035297, 28.917908, 40.864555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428574, -0.602014, 0.673724,
		0.772542, 0.630839, 0.072259,
		-0.468512, 0.489511, 0.735442,
		34.894745, 29.064762, 41.085190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645718, 28.675295, 41.051590>,  <35.222702, 28.722103, 40.570377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645718, 28.675295, 41.051590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337177, 28.775976, 41.285400>,  <35.152054, 28.836384, 41.425686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337177, 28.775976, 41.285400>,  <35.645718, 28.675295, 41.051590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337177, 28.775976, 41.285400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353855, -0.593785, 0.722638,
		0.528973, 0.764242, 0.368948,
		-0.771346, 0.251702, 0.584527,
		35.105774, 28.851486, 41.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922131, 29.056650, 41.655144>,  <35.645718, 28.675295, 41.051590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922131, 29.056650, 41.655144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568329, 28.911631, 41.772587>,  <35.356049, 28.824619, 41.843052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568329, 28.911631, 41.772587>,  <35.922131, 29.056650, 41.655144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568329, 28.911631, 41.772587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418587, -0.338850, 0.842594,
		-0.205991, 0.868182, 0.451473,
		-0.884507, -0.362548, 0.293610,
		35.302979, 28.802866, 41.860668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739002, 29.330904, 42.347599>,  <35.922131, 29.056650, 41.655144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739002, 29.330904, 42.347599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519302, 28.997946, 42.318077>,  <35.387482, 28.798170, 42.300362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519302, 28.997946, 42.318077>,  <35.739002, 29.330904, 42.347599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519302, 28.997946, 42.318077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267718, -0.258939, 0.928051,
		-0.791617, 0.489968, 0.365068,
		-0.549245, -0.832395, -0.073807,
		35.354530, 28.748228, 42.295937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453854, 29.251852, 42.987499>,  <35.739002, 29.330904, 42.347599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453854, 29.251852, 42.987499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378319, 28.883081, 42.852215>,  <35.332996, 28.661819, 42.771042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378319, 28.883081, 42.852215>,  <35.453854, 29.251852, 42.987499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378319, 28.883081, 42.852215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208078, -0.374156, 0.903720,
		-0.959710, 0.100282, 0.262488,
		-0.188838, -0.921928, -0.338215,
		35.321667, 28.606503, 42.750751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099819, 28.914040, 43.540417>,  <35.453854, 29.251852, 42.987499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099819, 28.914040, 43.540417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289486, 28.644371, 43.313908>,  <35.403286, 28.482571, 43.178001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289486, 28.644371, 43.313908>,  <35.099819, 28.914040, 43.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289486, 28.644371, 43.313908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203268, -0.541968, 0.815446,
		-0.856650, -0.501761, -0.119945,
		0.474166, -0.674171, -0.566269,
		35.431736, 28.442120, 43.144028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734245, 28.257130, 43.728584>,  <35.099819, 28.914040, 43.540417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734245, 28.257130, 43.728584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086933, 28.157444, 43.568352>,  <35.298546, 28.097633, 43.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086933, 28.157444, 43.568352>,  <34.734245, 28.257130, 43.728584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086933, 28.157444, 43.568352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107221, -0.721014, 0.684575,
		-0.459428, -0.646553, -0.609011,
		0.881719, -0.249214, -0.400579,
		35.351448, 28.082680, 43.448177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792820, 27.463638, 43.776768>,  <34.734245, 28.257130, 43.728584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792820, 27.463638, 43.776768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167038, 27.602030, 43.748356>,  <35.391571, 27.685064, 43.731308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167038, 27.602030, 43.748356>,  <34.792820, 27.463638, 43.776768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167038, 27.602030, 43.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304755, -0.689101, 0.657468,
		0.178525, -0.636740, -0.750128,
		0.935550, 0.345980, -0.071028,
		35.447704, 27.705824, 43.727047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204247, 26.783661, 43.855244>,  <34.792820, 27.463638, 43.776768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204247, 26.783661, 43.855244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459274, 27.083353, 43.926971>,  <35.612293, 27.263168, 43.970009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459274, 27.083353, 43.926971>,  <35.204247, 26.783661, 43.855244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459274, 27.083353, 43.926971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479854, -0.568316, 0.668399,
		0.602693, -0.340107, -0.721864,
		0.637574, 0.749229, 0.179318,
		35.650547, 27.308123, 43.980766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841053, 26.486614, 43.768188>,  <35.204247, 26.783661, 43.855244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841053, 26.486614, 43.768188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896099, 26.814283, 43.990906>,  <35.929127, 27.010885, 44.124535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896099, 26.814283, 43.990906>,  <35.841053, 26.486614, 43.768188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896099, 26.814283, 43.990906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543393, -0.532429, 0.649032,
		0.828122, 0.213240, -0.518404,
		0.137614, 0.819175, 0.556790,
		35.937382, 27.060036, 44.157944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622658, 26.611996, 43.987858>,  <35.841053, 26.486614, 43.768188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622658, 26.611996, 43.987858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399067, 26.814068, 44.250866>,  <36.264912, 26.935310, 44.408672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399067, 26.814068, 44.250866>,  <36.622658, 26.611996, 43.987858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399067, 26.814068, 44.250866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401788, -0.528644, 0.747731,
		0.725334, 0.682151, 0.092526,
		-0.558979, 0.505179, 0.657524,
		36.231373, 26.965622, 44.448124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087841, 26.655016, 44.514355>,  <36.622658, 26.611996, 43.987858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087841, 26.655016, 44.514355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746021, 26.753660, 44.697189>,  <36.540928, 26.812847, 44.806889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746021, 26.753660, 44.697189>,  <37.087841, 26.655016, 44.514355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746021, 26.753660, 44.697189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381974, -0.297892, 0.874847,
		0.351909, 0.922195, 0.160365,
		-0.854550, 0.246611, 0.457085,
		36.489655, 26.827644, 44.834316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611019, 27.296444, 44.413216>,  <37.087841, 26.655016, 44.514355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611019, 27.296444, 44.413216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006351, 27.277952, 44.355160>,  <38.243549, 27.266857, 44.320328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006351, 27.277952, 44.355160>,  <37.611019, 27.296444, 44.413216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006351, 27.277952, 44.355160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106144, 0.474370, -0.873903,
		0.109247, 0.879111, 0.463928,
		0.988331, -0.046229, -0.145136,
		38.302853, 27.264084, 44.311619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935081, 27.892891, 44.084869>,  <37.611019, 27.296444, 44.413216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935081, 27.892891, 44.084869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200531, 27.611713, 43.982521>,  <38.359802, 27.443007, 43.921112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200531, 27.611713, 43.982521>,  <37.935081, 27.892891, 44.084869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200531, 27.611713, 43.982521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126772, 0.231416, -0.964560,
		0.737245, 0.672543, 0.064459,
		0.663625, -0.702946, -0.255870,
		38.399620, 27.400829, 43.905762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329098, 28.328985, 43.689114>,  <37.935081, 27.892891, 44.084869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329098, 28.328985, 43.689114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349373, 27.938261, 43.605911>,  <38.361538, 27.703827, 43.555988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349373, 27.938261, 43.605911>,  <38.329098, 28.328985, 43.689114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349373, 27.938261, 43.605911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008303, 0.208681, -0.977949,
		0.998680, 0.047843, 0.018689,
		0.050688, -0.976813, -0.208008,
		38.364578, 27.645218, 43.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801998, 28.382343, 43.216175>,  <38.329098, 28.328985, 43.689114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801998, 28.382343, 43.216175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633595, 28.021072, 43.182644>,  <38.532555, 27.804310, 43.162525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633595, 28.021072, 43.182644>,  <38.801998, 28.382343, 43.216175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633595, 28.021072, 43.182644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041500, 0.073139, -0.996458,
		0.906108, -0.422994, 0.006690,
		-0.421006, -0.903176, -0.083826,
		38.507294, 27.750120, 43.157497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254581, 27.966215, 42.816822>,  <38.801998, 28.382343, 43.216175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254581, 27.966215, 42.816822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877499, 27.837133, 42.782955>,  <38.651249, 27.759684, 42.762634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877499, 27.837133, 42.782955>,  <39.254581, 27.966215, 42.816822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877499, 27.837133, 42.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065630, 0.069432, -0.995426,
		0.327107, -0.943950, -0.044274,
		-0.942706, -0.322705, -0.084663,
		38.594688, 27.740322, 42.757557>
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
