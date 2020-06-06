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
	<24.495667, 34.763474, 35.378201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266138, 34.793888, 35.052025>,  <24.128422, 34.812138, 34.856319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266138, 34.793888, 35.052025>,  <24.495667, 34.763474, 35.378201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266138, 34.793888, 35.052025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771964, 0.282292, 0.569546,
		0.273498, 0.956311, -0.103290,
		-0.573821, 0.076034, -0.815443,
		24.093992, 34.816700, 34.807392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482679, 34.962276, 36.020962>,  <24.495667, 34.763474, 35.378201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482679, 34.962276, 36.020962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756109, 34.899231, 36.306026>,  <24.920168, 34.861404, 36.477066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756109, 34.899231, 36.306026>,  <24.482679, 34.962276, 36.020962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756109, 34.899231, 36.306026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051980, -0.963413, -0.262933,
		0.728027, 0.216779, -0.650372,
		0.683575, -0.157616, 0.712659,
		24.961182, 34.851948, 36.519825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213322, 34.773884, 35.863792>,  <24.482679, 34.962276, 36.020962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213322, 34.773884, 35.863792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081390, 34.591263, 36.194313>,  <25.002232, 34.481689, 36.392624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081390, 34.591263, 36.194313>,  <25.213322, 34.773884, 35.863792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081390, 34.591263, 36.194313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187118, -0.889532, -0.416796,
		0.925310, 0.017144, 0.378822,
		-0.329829, -0.456550, 0.826302,
		24.982441, 34.454296, 36.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727139, 34.345535, 36.059616>,  <25.213322, 34.773884, 35.863792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727139, 34.345535, 36.059616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351864, 34.250633, 36.160427>,  <25.126699, 34.193691, 36.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351864, 34.250633, 36.160427>,  <25.727139, 34.345535, 36.059616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351864, 34.250633, 36.160427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038467, -0.795076, -0.605289,
		0.343992, -0.558178, 0.755055,
		-0.938185, -0.237259, 0.252028,
		25.070408, 34.179455, 36.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002609, 34.754883, 36.593239>,  <25.727139, 34.345535, 36.059616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002609, 34.754883, 36.593239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346811, 34.562637, 36.660816>,  <26.553333, 34.447292, 36.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346811, 34.562637, 36.660816>,  <26.002609, 34.754883, 36.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346811, 34.562637, 36.660816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504001, 0.754822, -0.419793,
		0.074232, 0.446384, 0.891757,
		0.860507, -0.480609, 0.168946,
		26.604963, 34.418453, 36.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562922, 35.149021, 37.080776>,  <26.002609, 34.754883, 36.593239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562922, 35.149021, 37.080776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684439, 34.914783, 36.780167>,  <26.757349, 34.774239, 36.599800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684439, 34.914783, 36.780167>,  <26.562922, 35.149021, 37.080776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684439, 34.914783, 36.780167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323176, 0.805374, -0.496921,
		0.896252, -0.091914, 0.433917,
		0.303791, -0.585598, -0.751523,
		26.775576, 34.739105, 36.554710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325264, 35.139954, 36.924057>,  <26.562922, 35.149021, 37.080776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325264, 35.139954, 36.924057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055037, 35.101540, 36.631649>,  <26.892900, 35.078491, 36.456203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055037, 35.101540, 36.631649>,  <27.325264, 35.139954, 36.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055037, 35.101540, 36.631649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353690, 0.827737, -0.435608,
		0.646924, -0.552836, -0.525226,
		-0.675569, -0.096038, -0.731016,
		26.852365, 35.072727, 36.412346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674408, 34.520805, 36.647614>,  <27.325264, 35.139954, 36.924057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674408, 34.520805, 36.647614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062365, 34.592060, 36.714039>,  <28.295139, 34.634811, 36.753895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062365, 34.592060, 36.714039>,  <27.674408, 34.520805, 36.647614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062365, 34.592060, 36.714039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217646, -0.939972, -0.262836,
		0.109275, 0.291066, -0.950442,
		0.969891, 0.178138, 0.166065,
		28.353333, 34.645500, 36.763859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988495, 34.097397, 36.171276>,  <27.674408, 34.520805, 36.647614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988495, 34.097397, 36.171276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262016, 34.171745, 36.453514>,  <28.426128, 34.216354, 36.622856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262016, 34.171745, 36.453514>,  <27.988495, 34.097397, 36.171276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262016, 34.171745, 36.453514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212364, -0.975846, 0.051251,
		0.698079, 0.114798, -0.706758,
		0.683803, 0.185868, 0.705596,
		28.467157, 34.227505, 36.665192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482437, 33.629864, 35.900467>,  <27.988495, 34.097397, 36.171276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482437, 33.629864, 35.900467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576717, 33.709164, 36.281021>,  <28.633286, 33.756744, 36.509354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576717, 33.709164, 36.281021>,  <28.482437, 33.629864, 35.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576717, 33.709164, 36.281021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018607, -0.979712, 0.199544,
		0.971648, -0.029330, -0.234607,
		0.235700, 0.198251, 0.951389,
		28.647427, 33.768639, 36.566437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096937, 33.205952, 36.046387>,  <28.482437, 33.629864, 35.900467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096937, 33.205952, 36.046387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914879, 33.291019, 36.392246>,  <28.805645, 33.342060, 36.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914879, 33.291019, 36.392246>,  <29.096937, 33.205952, 36.046387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914879, 33.291019, 36.392246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133716, -0.976372, 0.169759,
		0.880320, -0.038353, 0.472827,
		-0.455144, 0.212667, 0.864648,
		28.778336, 33.354820, 36.651642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363125, 32.730053, 36.527996>,  <29.096937, 33.205952, 36.046387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363125, 32.730053, 36.527996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998243, 32.868412, 36.615852>,  <28.779314, 32.951427, 36.668564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998243, 32.868412, 36.615852>,  <29.363125, 32.730053, 36.527996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998243, 32.868412, 36.615852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235036, -0.880820, 0.410992,
		0.335619, 0.323287, 0.884786,
		-0.912205, 0.345893, 0.219636,
		28.724583, 32.972179, 36.681744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262035, 32.673965, 37.245205>,  <29.363125, 32.730053, 36.527996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262035, 32.673965, 37.245205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892328, 32.677864, 37.092556>,  <28.670504, 32.680202, 37.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892328, 32.677864, 37.092556>,  <29.262035, 32.673965, 37.245205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892328, 32.677864, 37.092556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238913, -0.794460, 0.558349,
		-0.297742, 0.607239, 0.736622,
		-0.924267, 0.009744, -0.381621,
		28.615047, 32.680786, 36.978069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731041, 32.661098, 37.807449>,  <29.262035, 32.673965, 37.245205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731041, 32.661098, 37.807449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595037, 32.494274, 37.470295>,  <28.513435, 32.394180, 37.268002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595037, 32.494274, 37.470295>,  <28.731041, 32.661098, 37.807449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595037, 32.494274, 37.470295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354215, -0.773482, 0.525602,
		-0.871164, 0.477272, 0.115261,
		-0.340007, -0.417058, -0.842887,
		28.493034, 32.369156, 37.217430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101498, 32.428524, 37.849129>,  <28.731041, 32.661098, 37.807449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101498, 32.428524, 37.849129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273445, 32.181965, 37.585228>,  <28.376614, 32.034031, 37.426888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273445, 32.181965, 37.585228>,  <28.101498, 32.428524, 37.849129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273445, 32.181965, 37.585228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424480, -0.782888, 0.454866,
		-0.796891, 0.084523, -0.598181,
		0.429862, -0.616395, -0.659755,
		28.402405, 31.997046, 37.387302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926876, 33.045166, 37.467785>,  <28.101498, 32.428524, 37.849129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926876, 33.045166, 37.467785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313923, 33.046688, 37.366825>,  <28.546150, 33.047600, 37.306248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313923, 33.046688, 37.366825>,  <27.926876, 33.045166, 37.467785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313923, 33.046688, 37.366825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050960, 0.982240, -0.180574,
		0.247229, 0.187588, 0.950625,
		0.967616, 0.003801, -0.252398,
		28.604208, 33.047829, 37.291107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296438, 33.481102, 37.831974>,  <27.926876, 33.045166, 37.467785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296438, 33.481102, 37.831974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483152, 33.454121, 37.479256>,  <28.595181, 33.437931, 37.267624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483152, 33.454121, 37.479256>,  <28.296438, 33.481102, 37.831974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483152, 33.454121, 37.479256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047187, 0.997566, -0.051334,
		0.883111, -0.017648, 0.468831,
		0.466784, -0.067456, -0.881795,
		28.623188, 33.433884, 37.214718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872238, 34.019527, 37.802216>,  <28.296438, 33.481102, 37.831974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872238, 34.019527, 37.802216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820976, 33.938385, 37.413902>,  <28.790218, 33.889698, 37.180912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820976, 33.938385, 37.413902>,  <28.872238, 34.019527, 37.802216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820976, 33.938385, 37.413902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067044, 0.974847, -0.212554,
		0.989485, -0.092325, -0.111332,
		-0.128156, -0.202855, -0.970786,
		28.782530, 33.877529, 37.122665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425722, 34.438648, 37.503712>,  <28.872238, 34.019527, 37.802216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425722, 34.438648, 37.503712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128735, 34.374645, 37.243515>,  <28.950542, 34.336243, 37.087399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128735, 34.374645, 37.243515>,  <29.425722, 34.438648, 37.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128735, 34.374645, 37.243515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030183, 0.978059, -0.206131,
		0.669202, -0.133412, -0.731006,
		-0.742467, -0.160007, -0.650492,
		28.905994, 34.326645, 37.048367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650839, 34.700729, 36.851814>,  <29.425722, 34.438648, 37.503712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650839, 34.700729, 36.851814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250952, 34.699692, 36.842381>,  <29.011019, 34.699070, 36.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250952, 34.699692, 36.842381>,  <29.650839, 34.700729, 36.851814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250952, 34.699692, 36.842381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006450, 0.926786, -0.375535,
		0.022831, -0.375582, -0.926508,
		-0.999719, -0.002598, -0.023582,
		28.951036, 34.698914, 36.835304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440228, 34.992577, 36.207584>,  <29.650839, 34.700729, 36.851814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440228, 34.992577, 36.207584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159098, 35.043999, 36.487446>,  <28.990419, 35.074852, 36.655361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159098, 35.043999, 36.487446>,  <29.440228, 34.992577, 36.207584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159098, 35.043999, 36.487446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064317, 0.968022, -0.242479,
		-0.708449, -0.215420, -0.672082,
		-0.702825, 0.128558, 0.699650,
		28.948250, 35.082565, 36.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102663, 34.912392, 36.258137>,  <29.440228, 34.992577, 36.207584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102663, 34.912392, 36.258137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428087, 34.786278, 36.453571>,  <30.623343, 34.710609, 36.570831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428087, 34.786278, 36.453571>,  <30.102663, 34.912392, 36.258137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428087, 34.786278, 36.453571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495571, 0.815497, -0.298955,
		-0.304187, 0.485348, 0.819699,
		0.813560, -0.315281, 0.488588,
		30.672155, 34.691692, 36.600147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613571, 34.422569, 35.932377>,  <30.102663, 34.912392, 36.258137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613571, 34.422569, 35.932377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909664, 34.536087, 36.176186>,  <31.087320, 34.604198, 36.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909664, 34.536087, 36.176186>,  <30.613571, 34.422569, 35.932377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909664, 34.536087, 36.176186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616574, 0.075006, -0.783716,
		-0.268134, 0.955947, -0.119459,
		0.740230, 0.283796, 0.609523,
		31.131733, 34.621227, 36.359043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357800, 33.887875, 35.373589>,  <30.613571, 34.422569, 35.932377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357800, 33.887875, 35.373589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209583, 34.241932, 35.260998>,  <30.120653, 34.454365, 35.193443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209583, 34.241932, 35.260998>,  <30.357800, 33.887875, 35.373589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209583, 34.241932, 35.260998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882640, 0.241195, -0.403451,
		-0.289220, -0.397935, -0.870632,
		-0.370539, 0.885140, -0.281474,
		30.098421, 34.507473, 35.176556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275215, 33.999935, 34.594971>,  <30.357800, 33.887875, 35.373589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275215, 33.999935, 34.594971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354759, 34.303341, 34.843201>,  <30.402487, 34.485382, 34.992138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354759, 34.303341, 34.843201>,  <30.275215, 33.999935, 34.594971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354759, 34.303341, 34.843201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754891, 0.285259, -0.590565,
		-0.624975, 0.585908, -0.515867,
		0.198861, 0.758511, 0.620576,
		30.414417, 34.530895, 35.029373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793177, 34.342155, 34.250778>,  <30.275215, 33.999935, 34.594971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793177, 34.342155, 34.250778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729372, 34.606274, 34.544327>,  <30.691090, 34.764744, 34.720455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729372, 34.606274, 34.544327>,  <30.793177, 34.342155, 34.250778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729372, 34.606274, 34.544327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494690, 0.696778, -0.519405,
		-0.854306, 0.280186, -0.437787,
		-0.159511, 0.660300, 0.733867,
		30.681519, 34.804363, 34.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179491, 34.896488, 34.153297>,  <30.793177, 34.342155, 34.250778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179491, 34.896488, 34.153297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529583, 34.951923, 34.338669>,  <30.739639, 34.985184, 34.449890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529583, 34.951923, 34.338669>,  <30.179491, 34.896488, 34.153297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529583, 34.951923, 34.338669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290617, 0.615218, -0.732837,
		-0.386669, 0.776081, 0.498182,
		0.875231, 0.138585, 0.463428,
		30.792152, 34.993500, 34.477695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319759, 35.674881, 34.255398>,  <30.179491, 34.896488, 34.153297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319759, 35.674881, 34.255398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669582, 35.481094, 34.247002>,  <30.879477, 35.364822, 34.241962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669582, 35.481094, 34.247002>,  <30.319759, 35.674881, 34.255398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669582, 35.481094, 34.247002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383850, 0.718084, -0.580530,
		0.296323, 0.499649, 0.813968,
		0.874558, -0.484466, -0.020995,
		30.931950, 35.335754, 34.240704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819536, 36.198174, 34.383385>,  <30.319759, 35.674881, 34.255398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819536, 36.198174, 34.383385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029060, 35.910034, 34.201523>,  <31.154776, 35.737148, 34.092407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029060, 35.910034, 34.201523>,  <30.819536, 36.198174, 34.383385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029060, 35.910034, 34.201523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463470, 0.688831, -0.557411,
		0.714714, 0.081259, 0.694681,
		0.523813, -0.720353, -0.454656,
		31.186205, 35.693928, 34.065125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530499, 36.388611, 34.409740>,  <30.819536, 36.198174, 34.383385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530499, 36.388611, 34.409740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510164, 36.116177, 34.117565>,  <31.497963, 35.952717, 33.942261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510164, 36.116177, 34.117565>,  <31.530499, 36.388611, 34.409740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510164, 36.116177, 34.117565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447914, 0.638154, -0.626205,
		0.892630, -0.359008, 0.272624,
		-0.050837, -0.681082, -0.730440,
		31.494913, 35.911854, 33.898434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176003, 36.273232, 34.052437>,  <31.530499, 36.388611, 34.409740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176003, 36.273232, 34.052437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922958, 36.156601, 33.765442>,  <31.771132, 36.086624, 33.593246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922958, 36.156601, 33.765442>,  <32.176003, 36.273232, 34.052437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922958, 36.156601, 33.765442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379478, 0.690891, -0.615359,
		0.675120, -0.661557, -0.326429,
		-0.632622, -0.291568, -0.717480,
		31.733173, 36.069130, 33.550198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540489, 36.171547, 33.324936>,  <32.176003, 36.273232, 34.052437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540489, 36.171547, 33.324936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158031, 36.277000, 33.273880>,  <31.928558, 36.340271, 33.243248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158031, 36.277000, 33.273880>,  <32.540489, 36.171547, 33.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158031, 36.277000, 33.273880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291994, 0.823553, -0.486313,
		-0.023093, -0.502253, -0.864413,
		-0.956141, 0.263633, -0.127637,
		31.871189, 36.356091, 33.235588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577641, 36.533970, 32.743038>,  <32.540489, 36.171547, 33.324936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577641, 36.533970, 32.743038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202087, 36.640774, 32.829952>,  <31.976757, 36.704857, 32.882099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202087, 36.640774, 32.829952>,  <32.577641, 36.533970, 32.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202087, 36.640774, 32.829952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151120, 0.886797, -0.436754,
		-0.309306, -0.377223, -0.872945,
		-0.938878, 0.267010, 0.217286,
		31.920424, 36.720879, 32.895138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117847, 36.807693, 32.173225>,  <32.577641, 36.533970, 32.743038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117847, 36.807693, 32.173225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017017, 36.984470, 32.517586>,  <31.956520, 37.090538, 32.724201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017017, 36.984470, 32.517586>,  <32.117847, 36.807693, 32.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017017, 36.984470, 32.517586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094373, 0.896611, -0.432646,
		-0.963096, -0.027812, -0.267718,
		-0.252072, 0.441945, 0.860897,
		31.941397, 37.117054, 32.775856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667139, 37.363560, 31.989599>,  <32.117847, 36.807693, 32.173225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667139, 37.363560, 31.989599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819063, 37.428944, 32.353802>,  <31.910217, 37.468174, 32.572323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819063, 37.428944, 32.353802>,  <31.667139, 37.363560, 31.989599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819063, 37.428944, 32.353802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081111, 0.974589, -0.208798,
		-0.921501, 0.153156, 0.356901,
		0.379811, 0.163459, 0.910508,
		31.933006, 37.477982, 32.626953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314192, 37.974960, 32.241554>,  <31.667139, 37.363560, 31.989599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314192, 37.974960, 32.241554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677094, 37.902668, 32.393463>,  <31.894835, 37.859295, 32.484608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677094, 37.902668, 32.393463>,  <31.314192, 37.974960, 32.241554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677094, 37.902668, 32.393463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178169, 0.983094, 0.042206,
		-0.380978, 0.029371, 0.924118,
		0.907255, -0.180728, 0.379770,
		31.949270, 37.848450, 32.507393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108871, 37.375038, 32.592590>,  <31.314192, 37.974960, 32.241554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108871, 37.375038, 32.592590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852856, 37.680618, 32.625408>,  <30.699245, 37.863964, 32.645100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852856, 37.680618, 32.625408>,  <31.108871, 37.375038, 32.592590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852856, 37.680618, 32.625408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463760, -0.298978, -0.833990,
		-0.612595, -0.571836, 0.545647,
		-0.640042, 0.763947, 0.082042,
		30.660843, 37.909801, 32.650021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778219, 37.105972, 33.283932>,  <31.108871, 37.375038, 32.592590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778219, 37.105972, 33.283932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125193, 36.966606, 33.141850>,  <31.333376, 36.882988, 33.056602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125193, 36.966606, 33.141850>,  <30.778219, 37.105972, 33.283932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125193, 36.966606, 33.141850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286127, -0.933351, 0.216764,
		-0.407052, -0.086395, -0.909310,
		0.867433, -0.348413, -0.355202,
		31.385422, 36.862083, 33.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572235, 36.565922, 32.949249>,  <30.778219, 37.105972, 33.283932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572235, 36.565922, 32.949249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954487, 36.510021, 33.052975>,  <31.183838, 36.476482, 33.115208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954487, 36.510021, 33.052975>,  <30.572235, 36.565922, 32.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954487, 36.510021, 33.052975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210892, -0.939183, 0.271035,
		0.205662, -0.313696, -0.926983,
		0.955629, -0.139751, 0.259310,
		31.241177, 36.468094, 33.130768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716942, 36.020824, 32.699444>,  <30.572235, 36.565922, 32.949249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716942, 36.020824, 32.699444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980133, 36.064484, 32.997478>,  <31.138048, 36.090679, 33.176300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980133, 36.064484, 32.997478>,  <30.716942, 36.020824, 32.699444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980133, 36.064484, 32.997478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200745, -0.928211, 0.313250,
		0.725785, -0.355684, -0.588833,
		0.657980, 0.109147, 0.745084,
		31.177526, 36.097229, 33.221004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983368, 35.360992, 32.802635>,  <30.716942, 36.020824, 32.699444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983368, 35.360992, 32.802635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222940, 35.598907, 33.017113>,  <31.366684, 35.741657, 33.145802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222940, 35.598907, 33.017113>,  <30.983368, 35.360992, 32.802635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222940, 35.598907, 33.017113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079762, -0.621940, 0.778992,
		0.796818, -0.509331, -0.325059,
		0.598932, 0.594787, 0.536198,
		31.402620, 35.777344, 33.177971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507748, 34.936295, 32.960400>,  <30.983368, 35.360992, 32.802635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507748, 34.936295, 32.960400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467377, 35.230305, 33.228596>,  <31.443153, 35.406712, 33.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467377, 35.230305, 33.228596>,  <31.507748, 34.936295, 32.960400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467377, 35.230305, 33.228596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121971, -0.677985, 0.724885,
		0.987389, -0.008620, 0.158079,
		-0.100927, 0.735025, 0.670487,
		31.437099, 35.450813, 33.429741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744377, 34.677334, 33.514519>,  <31.507748, 34.936295, 32.960400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744377, 34.677334, 33.514519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554792, 34.992275, 33.672222>,  <31.441042, 35.181240, 33.766846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554792, 34.992275, 33.672222>,  <31.744377, 34.677334, 33.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554792, 34.992275, 33.672222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229117, -0.542592, 0.808146,
		0.850216, 0.292698, 0.437563,
		-0.473961, 0.787351, 0.394258,
		31.412603, 35.228481, 33.790501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033176, 34.714172, 34.194401>,  <31.744377, 34.677334, 33.514519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033176, 34.714172, 34.194401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664299, 34.868713, 34.187450>,  <31.442974, 34.961437, 34.183281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664299, 34.868713, 34.187450>,  <32.033176, 34.714172, 34.194401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664299, 34.868713, 34.187450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287963, -0.655970, 0.697697,
		0.258156, 0.648413, 0.716182,
		-0.922189, 0.386348, -0.017376,
		31.387642, 34.984619, 34.182236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810415, 34.790577, 34.820477>,  <32.033176, 34.714172, 34.194401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810415, 34.790577, 34.820477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467333, 34.763309, 34.616634>,  <31.261484, 34.746948, 34.494331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467333, 34.763309, 34.616634>,  <31.810415, 34.790577, 34.820477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467333, 34.763309, 34.616634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391322, -0.556332, 0.733050,
		-0.333479, 0.828159, 0.450493,
		-0.857705, -0.068169, -0.509603,
		31.210022, 34.742859, 34.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184589, 34.498104, 35.501007>,  <31.810415, 34.790577, 34.820477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184589, 34.498104, 35.501007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082283, 34.843800, 35.674297>,  <32.020901, 35.051216, 35.778271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082283, 34.843800, 35.674297>,  <32.184589, 34.498104, 35.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082283, 34.843800, 35.674297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965164, 0.253842, 0.063418,
		-0.055162, 0.434351, -0.899053,
		-0.255763, 0.864236, 0.433223,
		32.005554, 35.103069, 35.804264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457428, 35.045731, 35.001549>,  <32.184589, 34.498104, 35.501007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457428, 35.045731, 35.001549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404476, 35.150501, 35.383934>,  <32.372707, 35.213364, 35.613365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404476, 35.150501, 35.383934>,  <32.457428, 35.045731, 35.001549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404476, 35.150501, 35.383934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988354, 0.107905, 0.107298,
		-0.075050, 0.959038, -0.273156,
		-0.132378, 0.261922, 0.955967,
		32.364761, 35.229076, 35.670723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792858, 35.654152, 35.166965>,  <32.457428, 35.045731, 35.001549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792858, 35.654152, 35.166965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762478, 35.411144, 35.483234>,  <32.744251, 35.265339, 35.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762478, 35.411144, 35.483234>,  <32.792858, 35.654152, 35.166965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762478, 35.411144, 35.483234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993519, 0.021142, 0.111681,
		-0.084565, 0.794026, 0.601973,
		-0.075951, -0.607516, 0.790668,
		32.739693, 35.228889, 35.720436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163139, 35.846378, 35.762169>,  <32.792858, 35.654152, 35.166965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163139, 35.846378, 35.762169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142864, 35.447906, 35.790611>,  <33.130699, 35.208824, 35.807678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142864, 35.447906, 35.790611>,  <33.163139, 35.846378, 35.762169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142864, 35.447906, 35.790611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998496, -0.049062, 0.024450,
		-0.020868, 0.072239, 0.997169,
		-0.050689, -0.996180, 0.071107,
		33.127659, 35.149052, 35.811943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406174, 35.679695, 36.383236>,  <33.163139, 35.846378, 35.762169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406174, 35.679695, 36.383236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456169, 35.409328, 36.092712>,  <33.486164, 35.247108, 35.918400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456169, 35.409328, 36.092712>,  <33.406174, 35.679695, 36.383236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456169, 35.409328, 36.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960208, 0.266683, -0.082943,
		0.249756, -0.687039, 0.682349,
		0.124986, -0.675913, -0.726306,
		33.493664, 35.206554, 35.874821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722717, 35.047539, 36.477928>,  <33.406174, 35.679695, 36.383236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722717, 35.047539, 36.477928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780327, 35.158127, 36.097862>,  <33.814892, 35.224480, 35.869823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780327, 35.158127, 36.097862>,  <33.722717, 35.047539, 36.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780327, 35.158127, 36.097862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963543, 0.179605, 0.198310,
		0.225482, -0.944089, -0.240526,
		0.144023, 0.276473, -0.950168,
		33.823532, 35.241070, 35.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418865, 35.098137, 36.401012>,  <33.722717, 35.047539, 36.477928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418865, 35.098137, 36.401012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299740, 35.191559, 36.030769>,  <34.228264, 35.247612, 35.808624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299740, 35.191559, 36.030769>,  <34.418865, 35.098137, 36.401012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299740, 35.191559, 36.030769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944537, 0.212671, -0.250244,
		0.138404, -0.948800, -0.283940,
		-0.297817, 0.233557, -0.925611,
		34.210396, 35.261627, 35.753086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954266, 34.813026, 35.936069>,  <34.418865, 35.098137, 36.401012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954266, 34.813026, 35.936069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751324, 35.102867, 35.749500>,  <34.629559, 35.276772, 35.637558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751324, 35.102867, 35.749500>,  <34.954266, 34.813026, 35.936069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751324, 35.102867, 35.749500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856891, 0.366892, -0.362117,
		-0.091264, -0.583393, -0.807046,
		-0.507355, 0.724599, -0.466420,
		34.599117, 35.320248, 35.609573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212421, 34.125038, 35.855896>,  <34.954266, 34.813026, 35.936069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212421, 34.125038, 35.855896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235622, 34.248463, 35.476124>,  <35.249542, 34.322517, 35.248260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235622, 34.248463, 35.476124>,  <35.212421, 34.125038, 35.855896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235622, 34.248463, 35.476124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953728, 0.298179, 0.038639,
		0.295024, 0.903261, 0.311578,
		0.058005, 0.308560, -0.949435,
		35.253025, 34.341030, 35.191292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625423, 33.758804, 35.291069>,  <35.212421, 34.125038, 35.855896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625423, 33.758804, 35.291069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972191, 33.734215, 35.093212>,  <36.180252, 33.719460, 34.974499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972191, 33.734215, 35.093212>,  <35.625423, 33.758804, 35.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972191, 33.734215, 35.093212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497237, 0.175796, 0.849618,
		0.034725, -0.982505, 0.182969,
		0.866919, -0.061476, -0.494643,
		36.232265, 33.715771, 34.944820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945812, 33.269680, 35.611053>,  <35.625423, 33.758804, 35.291069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945812, 33.269680, 35.611053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224220, 33.507751, 35.450394>,  <36.391266, 33.650593, 35.353996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224220, 33.507751, 35.450394>,  <35.945812, 33.269680, 35.611053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224220, 33.507751, 35.450394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482812, 0.026095, 0.875336,
		0.531460, -0.803172, -0.269196,
		0.696020, 0.595176, -0.401649,
		36.433025, 33.686306, 35.329899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645451, 32.958969, 35.796749>,  <35.945812, 33.269680, 35.611053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645451, 32.958969, 35.796749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700348, 33.346039, 35.712109>,  <36.733288, 33.578281, 35.661324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700348, 33.346039, 35.712109>,  <36.645451, 32.958969, 35.796749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700348, 33.346039, 35.712109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562338, 0.099741, 0.820870,
		0.815438, -0.231651, -0.530470,
		0.137246, 0.967672, -0.211598,
		36.741520, 33.636341, 35.648628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331974, 33.127369, 35.838840>,  <36.645451, 32.958969, 35.796749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331974, 33.127369, 35.838840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136250, 33.462132, 35.936954>,  <37.018814, 33.662987, 35.995823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136250, 33.462132, 35.936954>,  <37.331974, 33.127369, 35.838840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136250, 33.462132, 35.936954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581911, 0.103824, 0.806598,
		0.649578, 0.537414, -0.537806,
		-0.489314, 0.836903, 0.245285,
		36.989456, 33.713203, 36.010540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805847, 33.757969, 35.902245>,  <37.331974, 33.127369, 35.838840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805847, 33.757969, 35.902245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484264, 33.769577, 36.139835>,  <37.291313, 33.776543, 36.282391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484264, 33.769577, 36.139835>,  <37.805847, 33.757969, 35.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484264, 33.769577, 36.139835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574788, 0.294117, 0.763619,
		-0.152539, 0.955329, -0.253138,
		-0.803959, 0.029019, 0.593976,
		37.243076, 33.778282, 36.318027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659924, 34.485382, 36.232536>,  <37.805847, 33.757969, 35.902245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659924, 34.485382, 36.232536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571381, 34.159084, 36.446285>,  <37.518257, 33.963306, 36.574535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571381, 34.159084, 36.446285>,  <37.659924, 34.485382, 36.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571381, 34.159084, 36.446285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436107, 0.407318, 0.802436,
		-0.872246, 0.410666, 0.265592,
		-0.221353, -0.815748, 0.534376,
		37.504974, 33.914360, 36.606598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164165, 34.615467, 36.835732>,  <37.659924, 34.485382, 36.232536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164165, 34.615467, 36.835732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447575, 34.335934, 36.874962>,  <37.617622, 34.168213, 36.898499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447575, 34.335934, 36.874962>,  <37.164165, 34.615467, 36.835732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447575, 34.335934, 36.874962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427064, 0.535265, 0.728771,
		-0.561788, -0.474469, 0.677697,
		0.708527, -0.698835, 0.098077,
		37.660133, 34.126282, 36.904385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452713, 34.428761, 36.633236>,  <37.164165, 34.615467, 36.835732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452713, 34.428761, 36.633236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800453, 34.367840, 36.445179>,  <37.009098, 34.331287, 36.332344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800453, 34.367840, 36.445179>,  <36.452713, 34.428761, 36.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800453, 34.367840, 36.445179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474259, 0.010378, -0.880324,
		0.138958, 0.988279, -0.063210,
		0.869350, -0.152306, -0.470142,
		37.061256, 34.322147, 36.304138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546356, 34.828079, 36.046543>,  <36.452713, 34.428761, 36.633236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546356, 34.828079, 36.046543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775253, 34.509411, 35.968727>,  <36.912594, 34.318211, 35.922039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775253, 34.509411, 35.968727>,  <36.546356, 34.828079, 36.046543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775253, 34.509411, 35.968727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330727, -0.007120, -0.943700,
		0.750435, 0.604368, -0.267556,
		0.572247, -0.796673, -0.194538,
		36.946926, 34.270409, 35.910366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859104, 34.974972, 35.407494>,  <36.546356, 34.828079, 36.046543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859104, 34.974972, 35.407494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827217, 34.582203, 35.476154>,  <36.808083, 34.346542, 35.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827217, 34.582203, 35.476154>,  <36.859104, 34.974972, 35.407494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827217, 34.582203, 35.476154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294822, -0.141269, -0.945052,
		0.952221, -0.125947, -0.278231,
		-0.079721, -0.981927, 0.171651,
		36.803299, 34.287624, 35.527649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171227, 34.677303, 34.868336>,  <36.859104, 34.974972, 35.407494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171227, 34.677303, 34.868336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941502, 34.379181, 35.003799>,  <36.803665, 34.200310, 35.085079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941502, 34.379181, 35.003799>,  <37.171227, 34.677303, 34.868336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941502, 34.379181, 35.003799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115230, -0.335971, -0.934797,
		0.810486, -0.575890, 0.107071,
		-0.574313, -0.745302, 0.338660,
		36.769207, 34.155590, 35.105396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354923, 34.135365, 34.417511>,  <37.171227, 34.677303, 34.868336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354923, 34.135365, 34.417511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012280, 34.001667, 34.574738>,  <36.806694, 33.921448, 34.669075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012280, 34.001667, 34.574738>,  <37.354923, 34.135365, 34.417511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012280, 34.001667, 34.574738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325483, -0.241061, -0.914303,
		0.400353, -0.911137, 0.097705,
		-0.856608, -0.334243, 0.393070,
		36.755299, 33.901394, 34.692657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206802, 33.431690, 34.143093>,  <37.354923, 34.135365, 34.417511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206802, 33.431690, 34.143093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880569, 33.628822, 34.264385>,  <36.684830, 33.747101, 34.337162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880569, 33.628822, 34.264385>,  <37.206802, 33.431690, 34.143093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880569, 33.628822, 34.264385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493442, -0.318632, -0.809313,
		-0.302218, -0.809696, 0.503047,
		-0.815585, 0.492814, 0.303242,
		36.635895, 33.776672, 34.355354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540188, 33.038612, 34.119083>,  <37.206802, 33.431690, 34.143093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540188, 33.038612, 34.119083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486984, 33.433697, 34.086231>,  <36.455063, 33.670746, 34.066521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486984, 33.433697, 34.086231>,  <36.540188, 33.038612, 34.119083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486984, 33.433697, 34.086231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553577, -0.142771, -0.820469,
		-0.822108, -0.063662, 0.565761,
		-0.133007, 0.987706, -0.082131,
		36.447083, 33.730007, 34.061592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788235, 33.090393, 34.002182>,  <36.540188, 33.038612, 34.119083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788235, 33.090393, 34.002182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983334, 33.415001, 33.873470>,  <36.100391, 33.609764, 33.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983334, 33.415001, 33.873470>,  <35.788235, 33.090393, 34.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983334, 33.415001, 33.873470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570552, 0.017348, -0.821078,
		-0.660739, 0.584067, 0.471476,
		0.487743, 0.811520, -0.321778,
		36.129658, 33.658459, 33.776936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246677, 33.575737, 33.751030>,  <35.788235, 33.090393, 34.002182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246677, 33.575737, 33.751030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602711, 33.642670, 33.581440>,  <35.816330, 33.682831, 33.479687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602711, 33.642670, 33.581440>,  <35.246677, 33.575737, 33.751030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602711, 33.642670, 33.581440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400004, -0.159168, -0.902587,
		-0.218517, 0.972967, -0.074738,
		0.890083, 0.167335, -0.423971,
		35.869736, 33.692871, 33.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998184, 33.898262, 33.088127>,  <35.246677, 33.575737, 33.751030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998184, 33.898262, 33.088127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393303, 33.859314, 33.039509>,  <35.630375, 33.835945, 33.010338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393303, 33.859314, 33.039509>,  <34.998184, 33.898262, 33.088127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393303, 33.859314, 33.039509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131729, -0.106086, -0.985593,
		0.083071, 0.989578, -0.117618,
		0.987799, -0.097368, -0.121544,
		35.689644, 33.830105, 33.003044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193222, 34.272251, 32.503704>,  <34.998184, 33.898262, 33.088127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193222, 34.272251, 32.503704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488003, 34.005337, 32.546860>,  <35.664871, 33.845188, 32.572754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488003, 34.005337, 32.546860>,  <35.193222, 34.272251, 32.503704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488003, 34.005337, 32.546860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190249, 0.051598, -0.980379,
		0.648625, 0.743013, 0.164976,
		0.736947, -0.667284, 0.107890,
		35.709087, 33.805153, 32.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761311, 34.570976, 32.212414>,  <35.193222, 34.272251, 32.503704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761311, 34.570976, 32.212414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833328, 34.177818, 32.196896>,  <35.876537, 33.941925, 32.187584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833328, 34.177818, 32.196896>,  <35.761311, 34.570976, 32.212414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833328, 34.177818, 32.196896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533188, 0.130656, -0.835847,
		0.826617, 0.129806, 0.547591,
		0.180044, -0.982894, -0.038792,
		35.887341, 33.882950, 32.185257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447159, 34.551693, 32.018890>,  <35.761311, 34.570976, 32.212414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447159, 34.551693, 32.018890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330429, 34.180298, 31.927015>,  <36.260391, 33.957462, 31.871891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330429, 34.180298, 31.927015>,  <36.447159, 34.551693, 32.018890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330429, 34.180298, 31.927015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450932, 0.078223, -0.889124,
		0.843505, -0.363037, 0.395857,
		-0.291820, -0.928485, -0.229686,
		36.242882, 33.901752, 31.858109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884262, 34.374805, 31.518856>,  <36.447159, 34.551693, 32.018890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884262, 34.374805, 31.518856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609463, 34.085865, 31.487263>,  <36.444584, 33.912502, 31.468307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609463, 34.085865, 31.487263>,  <36.884262, 34.374805, 31.518856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609463, 34.085865, 31.487263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207873, -0.091213, -0.973894,
		0.696290, -0.685483, 0.212820,
		-0.687000, -0.722352, -0.078983,
		36.403362, 33.869160, 31.463568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226791, 33.885269, 31.139822>,  <36.884262, 34.374805, 31.518856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226791, 33.885269, 31.139822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830753, 33.848801, 31.097130>,  <36.593128, 33.826920, 31.071514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830753, 33.848801, 31.097130>,  <37.226791, 33.885269, 31.139822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830753, 33.848801, 31.097130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103039, 0.044293, -0.993691,
		0.095320, -0.994850, -0.034461,
		-0.990100, -0.091168, -0.106731,
		36.533722, 33.821449, 31.065111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114605, 33.482483, 30.578747>,  <37.226791, 33.885269, 31.139822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114605, 33.482483, 30.578747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754322, 33.653812, 30.607748>,  <36.538151, 33.756611, 30.625149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754322, 33.653812, 30.607748>,  <37.114605, 33.482483, 30.578747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754322, 33.653812, 30.607748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024519, 0.116505, -0.992887,
		-0.433729, -0.896081, -0.094434,
		-0.900709, 0.428329, 0.072503,
		36.484108, 33.782310, 30.629499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609741, 33.046860, 30.069881>,  <37.114605, 33.482483, 30.578747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609741, 33.046860, 30.069881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500607, 33.420898, 30.160343>,  <36.435127, 33.645321, 30.214621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500607, 33.420898, 30.160343>,  <36.609741, 33.046860, 30.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500607, 33.420898, 30.160343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155865, 0.189002, -0.969528,
		-0.949350, -0.299773, 0.094183,
		-0.272837, 0.935101, 0.226153,
		36.418755, 33.701427, 30.228189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178394, 33.193531, 29.480579>,  <36.609741, 33.046860, 30.069881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178394, 33.193531, 29.480579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239906, 33.552013, 29.647034>,  <36.276814, 33.767101, 29.746906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239906, 33.552013, 29.647034>,  <36.178394, 33.193531, 29.480579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239906, 33.552013, 29.647034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081649, 0.408178, -0.909244,
		-0.984726, 0.173799, -0.010405,
		0.153778, 0.896206, 0.416134,
		36.286041, 33.820873, 29.771873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712608, 33.556900, 29.181082>,  <36.178394, 33.193531, 29.480579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712608, 33.556900, 29.181082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015469, 33.793739, 29.291458>,  <36.197186, 33.935844, 29.357685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015469, 33.793739, 29.291458>,  <35.712608, 33.556900, 29.181082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015469, 33.793739, 29.291458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127162, 0.547932, -0.826801,
		-0.640746, 0.590922, 0.490159,
		0.757149, 0.592099, 0.275942,
		36.242615, 33.971371, 29.374241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495930, 34.227829, 28.986954>,  <35.712608, 33.556900, 29.181082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495930, 34.227829, 28.986954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887691, 34.255062, 29.062986>,  <36.122749, 34.271400, 29.108606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887691, 34.255062, 29.062986>,  <35.495930, 34.227829, 28.986954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887691, 34.255062, 29.062986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111059, 0.604561, -0.788779,
		-0.168619, 0.793644, 0.584548,
		0.979405, 0.068084, 0.190082,
		36.181515, 34.275486, 29.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679447, 34.949703, 29.188643>,  <35.495930, 34.227829, 28.986954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679447, 34.949703, 29.188643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011154, 34.811127, 29.013235>,  <36.210178, 34.727982, 28.907991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011154, 34.811127, 29.013235>,  <35.679447, 34.949703, 29.188643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011154, 34.811127, 29.013235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091634, 0.689756, -0.718220,
		0.551294, 0.635776, 0.540244,
		0.829264, -0.346446, -0.438517,
		36.259933, 34.707191, 28.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827728, 35.487762, 28.769873>,  <35.679447, 34.949703, 29.188643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827728, 35.487762, 28.769873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088825, 35.218575, 28.630709>,  <36.245483, 35.057060, 28.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088825, 35.218575, 28.630709>,  <35.827728, 35.487762, 28.769873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088825, 35.218575, 28.630709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052722, 0.417773, -0.907021,
		0.755746, 0.610391, 0.237216,
		0.652739, -0.672970, -0.347911,
		36.284649, 35.016682, 28.526335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440716, 35.886940, 28.405720>,  <35.827728, 35.487762, 28.769873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440716, 35.886940, 28.405720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415707, 35.522182, 28.243465>,  <36.400703, 35.303329, 28.146112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415707, 35.522182, 28.243465>,  <36.440716, 35.886940, 28.405720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415707, 35.522182, 28.243465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138631, 0.394555, -0.908354,
		0.988369, -0.113024, 0.101749,
		-0.062520, -0.911895, -0.405634,
		36.396950, 35.248615, 28.121775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852863, 35.945309, 27.908598>,  <36.440716, 35.886940, 28.405720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852863, 35.945309, 27.908598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673763, 35.603977, 27.801758>,  <36.566303, 35.399178, 27.737654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673763, 35.603977, 27.801758>,  <36.852863, 35.945309, 27.908598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673763, 35.603977, 27.801758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241697, 0.172093, -0.954969,
		0.860872, -0.492146, 0.129193,
		-0.447752, -0.853332, -0.267100,
		36.539436, 35.347977, 27.721628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385406, 35.601044, 27.543703>,  <36.852863, 35.945309, 27.908598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385406, 35.601044, 27.543703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029686, 35.462276, 27.424513>,  <36.816254, 35.379017, 27.352999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029686, 35.462276, 27.424513>,  <37.385406, 35.601044, 27.543703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029686, 35.462276, 27.424513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190160, 0.312051, -0.930840,
		0.415910, -0.884461, -0.211538,
		-0.889302, -0.346919, -0.297974,
		36.762894, 35.358200, 27.335121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473282, 35.114063, 26.938747>,  <37.385406, 35.601044, 27.543703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473282, 35.114063, 26.938747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095608, 35.236649, 26.890434>,  <36.869003, 35.310200, 26.861446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095608, 35.236649, 26.890434>,  <37.473282, 35.114063, 26.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095608, 35.236649, 26.890434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207131, 0.267250, -0.941103,
		-0.256137, -0.913595, -0.315812,
		-0.944188, 0.306466, -0.120781,
		36.812351, 35.328587, 26.854200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285851, 34.993492, 26.201799>,  <37.473282, 35.114063, 26.938747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285851, 34.993492, 26.201799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994869, 35.240597, 26.321257>,  <36.820282, 35.388859, 26.392931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994869, 35.240597, 26.321257>,  <37.285851, 34.993492, 26.201799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994869, 35.240597, 26.321257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015380, 0.449809, -0.892992,
		-0.685989, -0.645014, -0.336714,
		-0.727449, 0.617761, 0.298644,
		36.776634, 35.425926, 26.410851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806461, 34.926643, 25.713524>,  <37.285851, 34.993492, 26.201799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806461, 34.926643, 25.713524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711437, 35.276104, 25.883371>,  <36.654423, 35.485779, 25.985279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711437, 35.276104, 25.883371>,  <36.806461, 34.926643, 25.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711437, 35.276104, 25.883371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190993, 0.386588, -0.902259,
		-0.952410, -0.295443, 0.075021,
		-0.237564, 0.873649, 0.424618,
		36.640167, 35.538200, 26.010757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223240, 35.238331, 25.248127>,  <36.806461, 34.926643, 25.713524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223240, 35.238331, 25.248127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409584, 35.520565, 25.461716>,  <36.521389, 35.689907, 25.589869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409584, 35.520565, 25.461716>,  <36.223240, 35.238331, 25.248127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409584, 35.520565, 25.461716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044408, 0.621334, -0.782287,
		-0.883745, 0.340722, 0.320787,
		0.465858, 0.705587, 0.533970,
		36.549343, 35.732243, 25.621906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884937, 35.874451, 25.155558>,  <36.223240, 35.238331, 25.248127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884937, 35.874451, 25.155558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233242, 36.003689, 25.303820>,  <36.442226, 36.081230, 25.392776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233242, 36.003689, 25.303820>,  <35.884937, 35.874451, 25.155558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233242, 36.003689, 25.303820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032042, 0.714931, -0.698460,
		-0.490661, 0.620068, 0.612182,
		0.870761, 0.323092, 0.370657,
		36.494469, 36.100616, 25.415016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847267, 36.547192, 24.995138>,  <35.884937, 35.874451, 25.155558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847267, 36.547192, 24.995138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237541, 36.534950, 25.081945>,  <36.471706, 36.527607, 25.134029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237541, 36.534950, 25.081945>,  <35.847267, 36.547192, 24.995138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237541, 36.534950, 25.081945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179322, 0.680763, -0.710215,
		-0.126004, 0.731865, 0.669699,
		0.975688, -0.030602, 0.217018,
		36.530247, 36.525768, 25.147051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014702, 37.197636, 24.994808>,  <35.847267, 36.547192, 24.995138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014702, 37.197636, 24.994808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380787, 37.040916, 24.957127>,  <36.600437, 36.946884, 24.934517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380787, 37.040916, 24.957127>,  <36.014702, 37.197636, 24.994808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380787, 37.040916, 24.957127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222132, 0.685586, -0.693275,
		0.336206, 0.613571, 0.714490,
		0.915217, -0.391794, -0.094204,
		36.655354, 36.923378, 24.928865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537384, 37.786873, 25.077280>,  <36.014702, 37.197636, 24.994808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537384, 37.786873, 25.077280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690811, 37.483204, 24.866932>,  <36.782867, 37.301003, 24.740723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690811, 37.483204, 24.866932>,  <36.537384, 37.786873, 25.077280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690811, 37.483204, 24.866932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364004, 0.647606, -0.669409,
		0.848751, 0.065343, 0.524740,
		0.383566, -0.759169, -0.525871,
		36.805882, 37.255455, 24.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231346, 37.931892, 25.020733>,  <36.537384, 37.786873, 25.077280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231346, 37.931892, 25.020733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156387, 37.693764, 24.708200>,  <37.111412, 37.550888, 24.520681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156387, 37.693764, 24.708200>,  <37.231346, 37.931892, 25.020733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156387, 37.693764, 24.708200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485547, 0.635312, -0.600518,
		0.853889, -0.491909, 0.169998,
		-0.187398, -0.595318, -0.781331,
		37.100166, 37.515167, 24.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875565, 37.944061, 24.586878>,  <37.231346, 37.931892, 25.020733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875565, 37.944061, 24.586878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589573, 37.828758, 24.332094>,  <37.417976, 37.759579, 24.179224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589573, 37.828758, 24.332094>,  <37.875565, 37.944061, 24.586878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589573, 37.828758, 24.332094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435536, 0.529040, -0.728302,
		0.546911, -0.798139, -0.252708,
		-0.714980, -0.288253, -0.636957,
		37.375080, 37.742283, 24.141006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270138, 37.835514, 24.008211>,  <37.875565, 37.944061, 24.586878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270138, 37.835514, 24.008211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883335, 37.867199, 23.911367>,  <37.651253, 37.886211, 23.853262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883335, 37.867199, 23.911367>,  <38.270138, 37.835514, 24.008211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883335, 37.867199, 23.911367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242631, 0.575953, -0.780646,
		0.077603, -0.813636, -0.576172,
		-0.967010, 0.079216, -0.242109,
		37.593231, 37.890965, 23.838736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285091, 37.855263, 23.236435>,  <38.270138, 37.835514, 24.008211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285091, 37.855263, 23.236435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917789, 37.994289, 23.312338>,  <37.697411, 38.077705, 23.357880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917789, 37.994289, 23.312338>,  <38.285091, 37.855263, 23.236435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917789, 37.994289, 23.312338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083927, 0.639124, -0.764511,
		-0.387000, -0.686088, -0.616048,
		-0.918253, 0.347569, 0.189760,
		37.642315, 38.098560, 23.369267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928211, 37.828808, 22.589104>,  <38.285091, 37.855263, 23.236435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928211, 37.828808, 22.589104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721741, 38.101570, 22.796398>,  <37.597858, 38.265228, 22.920774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721741, 38.101570, 22.796398>,  <37.928211, 37.828808, 22.589104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721741, 38.101570, 22.796398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048234, 0.580969, -0.812495,
		-0.855125, -0.444385, -0.266990,
		-0.516173, 0.681907, 0.518235,
		37.566887, 38.306141, 22.951868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499523, 38.146191, 22.075480>,  <37.928211, 37.828808, 22.589104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499523, 38.146191, 22.075480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500023, 38.435635, 22.351562>,  <37.500324, 38.609303, 22.517212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500023, 38.435635, 22.351562>,  <37.499523, 38.146191, 22.075480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500023, 38.435635, 22.351562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108432, 0.686041, -0.719438,
		-0.994103, 0.075740, -0.077605,
		0.001251, 0.723610, 0.690208,
		37.500397, 38.652718, 22.558624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955288, 38.628609, 21.810080>,  <37.499523, 38.146191, 22.075480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955288, 38.628609, 21.810080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207699, 38.815868, 22.057510>,  <37.359146, 38.928223, 22.205969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207699, 38.815868, 22.057510>,  <36.955288, 38.628609, 21.810080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207699, 38.815868, 22.057510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069113, 0.760289, -0.645898,
		-0.772673, 0.450333, 0.447411,
		0.631031, 0.468146, 0.618579,
		37.397007, 38.956310, 22.243084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706032, 39.360416, 21.811523>,  <36.955288, 38.628609, 21.810080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706032, 39.360416, 21.811523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085957, 39.348045, 21.936043>,  <37.313911, 39.340622, 22.010756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085957, 39.348045, 21.936043>,  <36.706032, 39.360416, 21.811523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085957, 39.348045, 21.936043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196649, 0.832933, -0.517255,
		-0.243297, 0.552510, 0.797208,
		0.949808, -0.030923, 0.311300,
		37.370899, 39.338768, 22.029432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676971, 40.092632, 22.113323>,  <36.706032, 39.360416, 21.811523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676971, 40.092632, 22.113323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056988, 39.970779, 22.086111>,  <37.284996, 39.897667, 22.069784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056988, 39.970779, 22.086111>,  <36.676971, 40.092632, 22.113323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056988, 39.970779, 22.086111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212516, 0.790919, -0.573833,
		0.228611, 0.530706, 0.816142,
		0.950039, -0.304628, -0.068030,
		37.341999, 39.879391, 22.065702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096146, 40.614235, 22.331409>,  <36.676971, 40.092632, 22.113323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096146, 40.614235, 22.331409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305836, 40.377041, 22.086931>,  <37.431652, 40.234726, 21.940245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305836, 40.377041, 22.086931>,  <37.096146, 40.614235, 22.331409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305836, 40.377041, 22.086931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206151, 0.784740, -0.584538,
		0.826248, 0.180433, 0.533627,
		0.524228, -0.592982, -0.611193,
		37.463104, 40.199146, 21.903574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624882, 40.936230, 22.216639>,  <37.096146, 40.614235, 22.331409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624882, 40.936230, 22.216639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610413, 40.703224, 21.891832>,  <37.601730, 40.563419, 21.696949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610413, 40.703224, 21.891832>,  <37.624882, 40.936230, 22.216639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610413, 40.703224, 21.891832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216127, 0.788755, -0.575460,
		0.975695, -0.196314, 0.097366,
		-0.036173, -0.582517, -0.812014,
		37.599560, 40.528469, 21.648228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147003, 41.267796, 21.718739>,  <37.624882, 40.936230, 22.216639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147003, 41.267796, 21.718739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953602, 40.996571, 21.497305>,  <37.837559, 40.833836, 21.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953602, 40.996571, 21.497305>,  <38.147003, 41.267796, 21.718739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953602, 40.996571, 21.497305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062719, 0.603959, -0.794544,
		0.873091, -0.418888, -0.249491,
		-0.483507, -0.678061, -0.553583,
		37.808548, 40.793152, 21.331230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543747, 41.085129, 21.080702>,  <38.147003, 41.267796, 21.718739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543747, 41.085129, 21.080702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161507, 41.014477, 20.986355>,  <37.932163, 40.972084, 20.929747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161507, 41.014477, 20.986355>,  <38.543747, 41.085129, 21.080702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161507, 41.014477, 20.986355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146993, 0.408004, -0.901069,
		0.255390, -0.895731, -0.363925,
		-0.955599, -0.176629, -0.235866,
		37.874828, 40.961487, 20.915594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514679, 40.811829, 20.431543>,  <38.543747, 41.085129, 21.080702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514679, 40.811829, 20.431543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132336, 40.927887, 20.450069>,  <37.902927, 40.997524, 20.461185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132336, 40.927887, 20.450069>,  <38.514679, 40.811829, 20.431543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132336, 40.927887, 20.450069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029628, 0.252006, -0.967272,
		-0.292324, -0.923205, -0.249479,
		-0.955860, 0.290148, 0.046314,
		37.845577, 41.014931, 20.463964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295933, 40.591030, 19.743750>,  <38.514679, 40.811829, 20.431543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295933, 40.591030, 19.743750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011707, 40.831215, 19.890471>,  <37.841171, 40.975327, 19.978502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011707, 40.831215, 19.890471>,  <38.295933, 40.591030, 19.743750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011707, 40.831215, 19.890471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140520, 0.389700, -0.910158,
		-0.689455, -0.698272, -0.192531,
		-0.710567, 0.600458, 0.366802,
		37.798538, 41.011353, 20.000511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826366, 40.624565, 19.274553>,  <38.295933, 40.591030, 19.743750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826366, 40.624565, 19.274553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724419, 40.944221, 19.492329>,  <37.663250, 41.136017, 19.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724419, 40.944221, 19.492329>,  <37.826366, 40.624565, 19.274553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724419, 40.944221, 19.492329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023635, 0.557715, -0.829696,
		-0.966686, -0.224332, -0.123257,
		-0.254870, 0.799142, 0.544438,
		37.647957, 41.183964, 19.655661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158848, 41.083519, 19.077461>,  <37.826366, 40.624565, 19.274553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158848, 41.083519, 19.077461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452312, 41.293327, 19.250256>,  <37.628391, 41.419212, 19.353931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452312, 41.293327, 19.250256>,  <37.158848, 41.083519, 19.077461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452312, 41.293327, 19.250256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059954, 0.683217, -0.727750,
		-0.676860, 0.508026, 0.532700,
		0.733666, 0.524522, 0.431984,
		37.672413, 41.450684, 19.379850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088825, 41.682262, 18.774668>,  <37.158848, 41.083519, 19.077461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088825, 41.682262, 18.774668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419991, 41.773106, 18.979792>,  <37.618690, 41.827610, 19.102867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419991, 41.773106, 18.979792>,  <37.088825, 41.682262, 18.774668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419991, 41.773106, 18.979792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216493, 0.714069, -0.665760,
		-0.517382, 0.662214, 0.542023,
		0.827917, 0.227108, 0.512811,
		37.668365, 41.841236, 19.133635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256966, 42.357071, 18.578632>,  <37.088825, 41.682262, 18.774668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256966, 42.357071, 18.578632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628132, 42.310101, 18.720161>,  <37.850830, 42.281918, 18.805079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628132, 42.310101, 18.720161>,  <37.256966, 42.357071, 18.578632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628132, 42.310101, 18.720161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266318, 0.872945, -0.408707,
		-0.260874, 0.473474, 0.841289,
		0.927911, -0.117430, 0.353823,
		37.906506, 42.274872, 18.826309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405930, 42.821339, 19.271803>,  <37.256966, 42.357071, 18.578632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405930, 42.821339, 19.271803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675179, 42.706501, 18.999193>,  <37.836727, 42.637600, 18.835627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675179, 42.706501, 18.999193>,  <37.405930, 42.821339, 19.271803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675179, 42.706501, 18.999193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002934, 0.922599, -0.385748,
		0.739522, 0.257658, 0.621868,
		0.673126, -0.287094, -0.681526,
		37.877117, 42.620373, 18.794735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916267, 43.358051, 19.157148>,  <37.405930, 42.821339, 19.271803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916267, 43.358051, 19.157148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838097, 43.134007, 18.835135>,  <37.791195, 42.999580, 18.641926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838097, 43.134007, 18.835135>,  <37.916267, 43.358051, 19.157148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838097, 43.134007, 18.835135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290725, 0.817051, -0.497903,
		0.936637, 0.136741, -0.322511,
		-0.195424, -0.560116, -0.805034,
		37.779469, 42.965973, 18.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924156, 44.126255, 19.346849>,  <37.916267, 43.358051, 19.157148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924156, 44.126255, 19.346849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579929, 44.227139, 19.169842>,  <37.373394, 44.287670, 19.063637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579929, 44.227139, 19.169842>,  <37.924156, 44.126255, 19.346849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579929, 44.227139, 19.169842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119097, -0.745076, -0.656261,
		-0.495225, -0.617456, 0.611147,
		-0.860563, 0.252211, -0.442517,
		37.321762, 44.302803, 19.037086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843269, 43.991566, 19.960327>,  <37.924156, 44.126255, 19.346849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843269, 43.991566, 19.960327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548679, 43.721001, 19.956736>,  <37.371925, 43.558662, 19.954580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548679, 43.721001, 19.956736>,  <37.843269, 43.991566, 19.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548679, 43.721001, 19.956736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615086, -0.675111, 0.407301,
		-0.281565, 0.294442, 0.913250,
		-0.736471, -0.676409, -0.008980,
		37.327740, 43.518078, 19.954042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583645, 43.799820, 20.698807>,  <37.843269, 43.991566, 19.960327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583645, 43.799820, 20.698807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518055, 43.504093, 20.437572>,  <37.478699, 43.326656, 20.280832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518055, 43.504093, 20.437572>,  <37.583645, 43.799820, 20.698807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518055, 43.504093, 20.437572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377754, -0.658643, 0.650762,
		-0.911270, -0.139995, 0.387283,
		-0.163978, -0.739318, -0.653086,
		37.468861, 43.282299, 20.241648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154362, 44.316872, 20.956566>,  <37.583645, 43.799820, 20.698807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154362, 44.316872, 20.956566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799290, 44.246964, 20.786167>,  <36.586246, 44.205017, 20.683928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799290, 44.246964, 20.786167>,  <37.154362, 44.316872, 20.956566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799290, 44.246964, 20.786167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313267, -0.448819, 0.836914,
		-0.337466, 0.876365, 0.343659,
		-0.887683, -0.174773, -0.425997,
		36.532986, 44.194530, 20.658367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647690, 44.406197, 21.395868>,  <37.154362, 44.316872, 20.956566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647690, 44.406197, 21.395868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475174, 44.140831, 21.151289>,  <36.371662, 43.981613, 21.004541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475174, 44.140831, 21.151289>,  <36.647690, 44.406197, 21.395868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475174, 44.140831, 21.151289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189709, -0.595885, 0.780341,
		-0.882042, 0.452552, 0.131144,
		-0.431292, -0.663414, -0.611448,
		36.345787, 43.941807, 20.967855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033939, 44.082607, 21.669241>,  <36.647690, 44.406197, 21.395868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033939, 44.082607, 21.669241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189285, 43.819622, 21.410963>,  <36.282494, 43.661831, 21.255997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189285, 43.819622, 21.410963>,  <36.033939, 44.082607, 21.669241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189285, 43.819622, 21.410963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058167, -0.681807, 0.729216,
		-0.919668, -0.320761, -0.226548,
		0.388366, -0.657459, -0.645694,
		36.305794, 43.622383, 21.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751770, 43.394585, 21.807144>,  <36.033939, 44.082607, 21.669241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751770, 43.394585, 21.807144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101089, 43.321087, 21.626659>,  <36.310680, 43.276989, 21.518368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101089, 43.321087, 21.626659>,  <35.751770, 43.394585, 21.807144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101089, 43.321087, 21.626659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181248, -0.737142, 0.650977,
		-0.452223, -0.650276, -0.610438,
		0.873295, -0.183746, -0.451214,
		36.363079, 43.265965, 21.491295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703613, 42.699497, 21.707344>,  <35.751770, 43.394585, 21.807144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703613, 42.699497, 21.707344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098492, 42.758400, 21.682819>,  <36.335419, 42.793739, 21.668104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098492, 42.758400, 21.682819>,  <35.703613, 42.699497, 21.707344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098492, 42.758400, 21.682819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152991, -0.765346, 0.625172,
		0.045134, -0.626548, -0.778075,
		0.987197, 0.147255, -0.061314,
		36.394650, 42.802578, 21.664425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025852, 42.008568, 21.681250>,  <35.703613, 42.699497, 21.707344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025852, 42.008568, 21.681250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289097, 42.285259, 21.800182>,  <36.447044, 42.451275, 21.871542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289097, 42.285259, 21.800182>,  <36.025852, 42.008568, 21.681250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289097, 42.285259, 21.800182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272452, -0.586930, 0.762419,
		0.701897, -0.420748, -0.574727,
		0.658111, 0.691726, 0.297331,
		36.486530, 42.492779, 21.889381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684467, 41.710758, 21.733593>,  <36.025852, 42.008568, 21.681250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684467, 41.710758, 21.733593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703110, 42.032623, 21.970354>,  <36.714294, 42.225742, 22.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703110, 42.032623, 21.970354>,  <36.684467, 41.710758, 21.733593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703110, 42.032623, 21.970354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110596, -0.593061, 0.797525,
		0.992772, 0.028296, -0.116630,
		0.046602, 0.804660, 0.591904,
		36.717091, 42.274021, 22.147924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314804, 41.623917, 22.041651>,  <36.684467, 41.710758, 21.733593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314804, 41.623917, 22.041651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133144, 41.894684, 22.273348>,  <37.024147, 42.057144, 22.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133144, 41.894684, 22.273348>,  <37.314804, 41.623917, 22.041651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133144, 41.894684, 22.273348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468131, -0.371861, 0.801607,
		0.758023, 0.635213, -0.148006,
		-0.454154, 0.676922, 0.579242,
		36.996899, 42.097759, 22.447121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840351, 41.852089, 22.520935>,  <37.314804, 41.623917, 22.041651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840351, 41.852089, 22.520935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483452, 41.906361, 22.693205>,  <37.269310, 41.938923, 22.796566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483452, 41.906361, 22.693205>,  <37.840351, 41.852089, 22.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483452, 41.906361, 22.693205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358366, -0.367480, 0.858214,
		0.274704, 0.920082, 0.279263,
		-0.892251, 0.135676, 0.430674,
		37.215778, 41.947063, 22.822407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971340, 42.153877, 23.176506>,  <37.840351, 41.852089, 22.520935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971340, 42.153877, 23.176506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608749, 41.987797, 23.207241>,  <37.391193, 41.888149, 23.225683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608749, 41.987797, 23.207241>,  <37.971340, 42.153877, 23.176506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608749, 41.987797, 23.207241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223225, -0.316747, 0.921869,
		-0.358420, 0.852808, 0.379807,
		-0.906480, -0.415198, 0.076840,
		37.336807, 41.863235, 23.230293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780151, 42.246441, 23.897699>,  <37.971340, 42.153877, 23.176506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780151, 42.246441, 23.897699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522724, 41.955086, 23.803661>,  <37.368267, 41.780273, 23.747238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522724, 41.955086, 23.803661>,  <37.780151, 42.246441, 23.897699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522724, 41.955086, 23.803661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014546, -0.295463, 0.955244,
		-0.765249, 0.618186, 0.179556,
		-0.643570, -0.728387, -0.235095,
		37.329655, 41.736568, 23.733133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296597, 42.236004, 24.431095>,  <37.780151, 42.246441, 23.897699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296597, 42.236004, 24.431095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256706, 41.873085, 24.267700>,  <37.232773, 41.655334, 24.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256706, 41.873085, 24.267700>,  <37.296597, 42.236004, 24.431095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256706, 41.873085, 24.267700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154242, -0.391476, 0.907169,
		-0.982988, 0.153473, -0.100905,
		-0.099724, -0.907300, -0.408488,
		37.226788, 41.600895, 24.145153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758327, 41.849976, 24.875860>,  <37.296597, 42.236004, 24.431095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758327, 41.849976, 24.875860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921436, 41.542065, 24.679426>,  <37.019302, 41.357319, 24.561565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921436, 41.542065, 24.679426>,  <36.758327, 41.849976, 24.875860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921436, 41.542065, 24.679426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069387, -0.562400, 0.823949,
		-0.910443, -0.301910, -0.282745,
		0.407774, -0.769777, -0.491084,
		37.043770, 41.311131, 24.532101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330875, 41.205883, 25.024349>,  <36.758327, 41.849976, 24.875860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330875, 41.205883, 25.024349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688282, 41.065659, 24.912109>,  <36.902725, 40.981525, 24.844765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688282, 41.065659, 24.912109>,  <36.330875, 41.205883, 25.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688282, 41.065659, 24.912109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034115, -0.676093, 0.736027,
		-0.447733, -0.648079, -0.616059,
		0.893517, -0.350560, -0.280600,
		36.956337, 40.960491, 24.827929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253262, 40.403095, 25.135021>,  <36.330875, 41.205883, 25.024349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253262, 40.403095, 25.135021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641552, 40.497818, 25.118927>,  <36.874527, 40.554649, 25.109270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641552, 40.497818, 25.118927>,  <36.253262, 40.403095, 25.135021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641552, 40.497818, 25.118927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220945, -0.814583, 0.536319,
		0.094227, -0.529508, -0.843056,
		0.970724, 0.236804, -0.040237,
		36.932770, 40.568859, 25.106855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670719, 39.780018, 24.971037>,  <36.253262, 40.403095, 25.135021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670719, 39.780018, 24.971037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897591, 40.048523, 25.161915>,  <37.033714, 40.209625, 25.276442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897591, 40.048523, 25.161915>,  <36.670719, 39.780018, 24.971037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897591, 40.048523, 25.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302156, -0.708600, 0.637643,
		0.766165, -0.217470, -0.604729,
		0.567179, 0.671262, 0.477195,
		37.067745, 40.249901, 25.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125103, 39.380775, 25.164703>,  <36.670719, 39.780018, 24.971037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125103, 39.380775, 25.164703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171398, 39.708450, 25.389397>,  <37.199173, 39.905056, 25.524212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171398, 39.708450, 25.389397>,  <37.125103, 39.380775, 25.164703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171398, 39.708450, 25.389397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061895, -0.570382, 0.819044,
		0.991350, -0.060023, -0.116716,
		0.115735, 0.819183, 0.561733,
		37.206120, 39.954205, 25.557917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844917, 39.351467, 25.657669>,  <37.125103, 39.380775, 25.164703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844917, 39.351467, 25.657669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556259, 39.593819, 25.791620>,  <37.383064, 39.739231, 25.871992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556259, 39.593819, 25.791620>,  <37.844917, 39.351467, 25.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556259, 39.593819, 25.791620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042583, -0.521679, 0.852078,
		0.690955, 0.600636, 0.402266,
		-0.721643, 0.605878, 0.334880,
		37.339767, 39.775581, 25.892084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833202, 39.330948, 26.342463>,  <37.844917, 39.351467, 25.657669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833202, 39.330948, 26.342463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494820, 39.543789, 26.328466>,  <37.291790, 39.671494, 26.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494820, 39.543789, 26.328466>,  <37.833202, 39.330948, 26.342463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494820, 39.543789, 26.328466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311656, -0.440101, 0.842129,
		0.432702, 0.723309, 0.538139,
		-0.845955, 0.532105, -0.034991,
		37.241032, 39.703419, 26.317968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716278, 39.606033, 27.026653>,  <37.833202, 39.330948, 26.342463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716278, 39.606033, 27.026653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346222, 39.620884, 26.875528>,  <37.124187, 39.629795, 26.784853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346222, 39.620884, 26.875528>,  <37.716278, 39.606033, 27.026653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346222, 39.620884, 26.875528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349499, -0.471875, 0.809435,
		-0.148225, 0.880883, 0.449527,
		-0.925138, 0.037131, -0.377812,
		37.068680, 39.632023, 26.762184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248646, 39.874134, 27.535503>,  <37.716278, 39.606033, 27.026653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248646, 39.874134, 27.535503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010605, 39.671242, 27.286163>,  <36.867779, 39.549507, 27.136560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010605, 39.671242, 27.286163>,  <37.248646, 39.874134, 27.535503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010605, 39.671242, 27.286163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415945, -0.469271, 0.778957,
		-0.687633, 0.722840, 0.068285,
		-0.595106, -0.507234, -0.623348,
		36.832073, 39.519070, 27.099159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638691, 39.875221, 27.934574>,  <37.248646, 39.874134, 27.535503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638691, 39.875221, 27.934574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559341, 39.618000, 27.638702>,  <36.511734, 39.463665, 27.461180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559341, 39.618000, 27.638702>,  <36.638691, 39.875221, 27.934574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559341, 39.618000, 27.638702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475314, -0.596881, 0.646382,
		-0.857162, 0.479804, -0.187250,
		-0.198371, -0.643056, -0.739681,
		36.499832, 39.425083, 27.416798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871281, 39.798073, 27.744446>,  <36.638691, 39.875221, 27.934574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871281, 39.798073, 27.744446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068680, 39.466686, 27.638535>,  <36.187119, 39.267853, 27.574987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068680, 39.466686, 27.638535>,  <35.871281, 39.798073, 27.744446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068680, 39.466686, 27.638535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597317, -0.544112, 0.589198,
		-0.632200, -0.132609, -0.763373,
		0.493493, -0.828466, -0.264778,
		36.216728, 39.218147, 27.559101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278999, 39.295532, 27.751917>,  <35.871281, 39.798073, 27.744446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278999, 39.295532, 27.751917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638416, 39.120659, 27.767414>,  <35.854065, 39.015736, 27.776712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638416, 39.120659, 27.767414>,  <35.278999, 39.295532, 27.751917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638416, 39.120659, 27.767414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337605, -0.632066, 0.697507,
		-0.280448, -0.639817, -0.715530,
		0.898539, -0.437181, 0.038744,
		35.907978, 38.989506, 27.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133255, 38.620045, 27.895969>,  <35.278999, 39.295532, 27.751917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133255, 38.620045, 27.895969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522942, 38.656178, 27.978666>,  <35.756752, 38.677856, 28.028284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522942, 38.656178, 27.978666>,  <35.133255, 38.620045, 27.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522942, 38.656178, 27.978666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092632, -0.675394, 0.731616,
		0.205721, -0.731903, -0.649612,
		0.974217, 0.090334, 0.206740,
		35.815208, 38.683277, 28.040688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376282, 37.981514, 27.800716>,  <35.133255, 38.620045, 27.895969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376282, 37.981514, 27.800716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594933, 38.200657, 28.054031>,  <35.726124, 38.332142, 28.206020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594933, 38.200657, 28.054031>,  <35.376282, 37.981514, 27.800716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594933, 38.200657, 28.054031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165105, -0.670914, 0.722921,
		0.820938, -0.499727, -0.276286,
		0.546627, 0.547857, 0.633286,
		35.758923, 38.365013, 28.244017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726997, 37.466671, 28.221970>,  <35.376282, 37.981514, 27.800716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726997, 37.466671, 28.221970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769115, 37.802143, 28.435707>,  <35.794384, 38.003426, 28.563950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769115, 37.802143, 28.435707>,  <35.726997, 37.466671, 28.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769115, 37.802143, 28.435707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099382, -0.525765, 0.844804,
		0.989463, -0.142054, 0.027992,
		0.105291, 0.838684, 0.534342,
		35.800701, 38.053749, 28.596010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268219, 37.382221, 28.660135>,  <35.726997, 37.466671, 28.221970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268219, 37.382221, 28.660135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076881, 37.681908, 28.843382>,  <35.962078, 37.861717, 28.953329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076881, 37.681908, 28.843382>,  <36.268219, 37.382221, 28.660135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076881, 37.681908, 28.843382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119276, -0.461404, 0.879136,
		0.870036, 0.475170, 0.131345,
		-0.478342, 0.749213, 0.458114,
		35.933380, 37.906673, 28.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692699, 37.477127, 29.251350>,  <36.268219, 37.382221, 28.660135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692699, 37.477127, 29.251350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319607, 37.609352, 29.308956>,  <36.095753, 37.688686, 29.343519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319607, 37.609352, 29.308956>,  <36.692699, 37.477127, 29.251350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319607, 37.609352, 29.308956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019206, -0.353294, 0.935315,
		0.360062, 0.875164, 0.323179,
		-0.932731, 0.330564, 0.144016,
		36.039787, 37.708523, 29.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646900, 37.598755, 29.991869>,  <36.692699, 37.477127, 29.251350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646900, 37.598755, 29.991869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262749, 37.617836, 29.882040>,  <36.032257, 37.629284, 29.816143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262749, 37.617836, 29.882040>,  <36.646900, 37.598755, 29.991869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262749, 37.617836, 29.882040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273799, -0.345201, 0.897703,
		-0.051962, 0.937316, 0.344585,
		-0.960382, 0.047700, -0.274573,
		35.974632, 37.632145, 29.799667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299133, 37.954540, 30.535082>,  <36.646900, 37.598755, 29.991869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299133, 37.954540, 30.535082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014633, 37.750935, 30.341166>,  <35.843933, 37.628773, 30.224815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014633, 37.750935, 30.341166>,  <36.299133, 37.954540, 30.535082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014633, 37.750935, 30.341166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341864, -0.352130, 0.871283,
		-0.614206, 0.785435, 0.076439,
		-0.711252, -0.509016, -0.484792,
		35.801258, 37.598228, 30.195728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817970, 38.116714, 30.860830>,  <36.299133, 37.954540, 30.535082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817970, 38.116714, 30.860830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735287, 37.761398, 30.696775>,  <35.685677, 37.548210, 30.598343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735287, 37.761398, 30.696775>,  <35.817970, 38.116714, 30.860830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735287, 37.761398, 30.696775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414009, -0.300401, 0.859276,
		-0.886493, 0.347417, -0.305666,
		-0.206705, -0.888291, -0.410137,
		35.673275, 37.494911, 30.573734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216438, 37.886044, 31.261122>,  <35.817970, 38.116714, 30.860830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216438, 37.886044, 31.261122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319004, 37.542423, 31.083904>,  <35.380543, 37.336250, 30.977573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319004, 37.542423, 31.083904>,  <35.216438, 37.886044, 31.261122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319004, 37.542423, 31.083904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290974, -0.505711, 0.812152,
		-0.921730, -0.079333, -0.379632,
		0.256414, -0.859048, -0.443045,
		35.395927, 37.284710, 30.950991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630798, 37.552975, 31.332979>,  <35.216438, 37.886044, 31.261122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630798, 37.552975, 31.332979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917000, 37.285751, 31.251240>,  <35.088722, 37.125420, 31.202196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917000, 37.285751, 31.251240>,  <34.630798, 37.552975, 31.332979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917000, 37.285751, 31.251240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295427, -0.554402, 0.778050,
		-0.633069, -0.496328, -0.594038,
		0.715504, -0.668054, -0.204346,
		35.131653, 37.085335, 31.189936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325600, 36.832817, 31.374451>,  <34.630798, 37.552975, 31.332979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325600, 36.832817, 31.374451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718609, 36.787788, 31.433744>,  <34.954414, 36.760773, 31.469320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718609, 36.787788, 31.433744>,  <34.325600, 36.832817, 31.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718609, 36.787788, 31.433744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185960, -0.559611, 0.807622,
		-0.007959, -0.821075, -0.570765,
		0.982525, -0.112568, 0.148233,
		35.013367, 36.754017, 31.478214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453247, 36.114559, 31.483509>,  <34.325600, 36.832817, 31.374451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453247, 36.114559, 31.483509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771664, 36.288258, 31.652145>,  <34.962715, 36.392479, 31.753328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771664, 36.288258, 31.652145>,  <34.453247, 36.114559, 31.483509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771664, 36.288258, 31.652145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061593, -0.634834, 0.770190,
		0.602096, -0.639073, -0.478609,
		0.796045, 0.434249, 0.421593,
		35.010479, 36.418533, 31.778624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753315, 35.585461, 31.671846>,  <34.453247, 36.114559, 31.483509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753315, 35.585461, 31.671846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929420, 35.879845, 31.877579>,  <35.035084, 36.056473, 32.001019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929420, 35.879845, 31.877579>,  <34.753315, 35.585461, 31.671846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929420, 35.879845, 31.877579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103991, -0.527185, 0.843363,
		0.891827, -0.424787, -0.155567,
		0.440262, 0.735956, 0.514332,
		35.061501, 36.100632, 32.031879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154495, 35.283443, 32.123268>,  <34.753315, 35.585461, 31.671846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154495, 35.283443, 32.123268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164909, 35.637260, 32.309563>,  <35.171158, 35.849552, 32.421337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164909, 35.637260, 32.309563>,  <35.154495, 35.283443, 32.123268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164909, 35.637260, 32.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053573, -0.466455, 0.882921,
		0.998224, 0.001960, -0.059534,
		0.026039, 0.884543, 0.465732,
		35.172722, 35.902622, 32.449284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835560, 35.438808, 32.477112>,  <35.154495, 35.283443, 32.123268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835560, 35.438808, 32.477112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530045, 35.640507, 32.638287>,  <35.346737, 35.761528, 32.734993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530045, 35.640507, 32.638287>,  <35.835560, 35.438808, 32.477112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530045, 35.640507, 32.638287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207311, -0.399542, 0.892966,
		0.611269, 0.765571, 0.200629,
		-0.763788, 0.504250, 0.402939,
		35.300907, 35.791782, 32.759167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127239, 35.645588, 33.221687>,  <35.835560, 35.438808, 32.477112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127239, 35.645588, 33.221687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728638, 35.663609, 33.193527>,  <35.489479, 35.674423, 33.176632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728638, 35.663609, 33.193527>,  <36.127239, 35.645588, 33.221687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728638, 35.663609, 33.193527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083555, -0.559758, 0.824433,
		-0.002264, 0.827430, 0.561564,
		-0.996501, 0.045055, -0.070403,
		35.429688, 35.677124, 33.172405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026512, 35.742493, 33.860901>,  <36.127239, 35.645588, 33.221687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026512, 35.742493, 33.860901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675747, 35.632957, 33.702900>,  <35.465286, 35.567234, 33.608097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675747, 35.632957, 33.702900>,  <36.026512, 35.742493, 33.860901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675747, 35.632957, 33.702900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251871, -0.438135, 0.862901,
		-0.409363, 0.856183, 0.315235,
		-0.876917, -0.273841, -0.395004,
		35.412670, 35.550804, 33.584400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529591, 36.037735, 33.951496>,  <36.026512, 35.742493, 33.860901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529591, 36.037735, 33.951496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740173, 36.318172, 34.143879>,  <36.866524, 36.486435, 34.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740173, 36.318172, 34.143879>,  <36.529591, 36.037735, 33.951496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740173, 36.318172, 34.143879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094562, 0.513898, -0.852623,
		-0.844929, 0.494346, 0.204246,
		0.526453, 0.701092, 0.480954,
		36.898109, 36.528500, 34.288166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317085, 36.670486, 33.599262>,  <36.529591, 36.037735, 33.951496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317085, 36.670486, 33.599262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663849, 36.737953, 33.786888>,  <36.871906, 36.778435, 33.899464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663849, 36.737953, 33.786888>,  <36.317085, 36.670486, 33.599262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663849, 36.737953, 33.786888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293981, 0.586934, -0.754376,
		-0.402552, 0.791871, 0.459231,
		0.866907, 0.168670, 0.469066,
		36.923920, 36.788555, 33.927608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483864, 37.404133, 33.590973>,  <36.317085, 36.670486, 33.599262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483864, 37.404133, 33.590973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848679, 37.258942, 33.667320>,  <37.067566, 37.171825, 33.713131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848679, 37.258942, 33.667320>,  <36.483864, 37.404133, 33.590973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848679, 37.258942, 33.667320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385087, 0.597917, -0.702996,
		0.141046, 0.714662, 0.685102,
		0.912039, -0.362978, 0.190873,
		37.122292, 37.150047, 33.724583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870960, 38.020588, 33.742405>,  <36.483864, 37.404133, 33.590973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870960, 38.020588, 33.742405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107136, 37.720585, 33.623158>,  <37.248840, 37.540585, 33.551609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107136, 37.720585, 33.623158>,  <36.870960, 38.020588, 33.742405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107136, 37.720585, 33.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378471, 0.583538, -0.718501,
		0.712843, 0.311401, 0.628398,
		0.590436, -0.750009, -0.298115,
		37.284267, 37.495583, 33.533722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515495, 38.349522, 33.689430>,  <36.870960, 38.020588, 33.742405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515495, 38.349522, 33.689430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535107, 38.025883, 33.455177>,  <37.546875, 37.831699, 33.314625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535107, 38.025883, 33.455177>,  <37.515495, 38.349522, 33.689430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535107, 38.025883, 33.455177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517636, 0.522031, -0.677891,
		0.854195, -0.269908, 0.444410,
		0.049028, -0.809094, -0.585631,
		37.549816, 37.783154, 33.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287598, 38.336956, 33.443420>,  <37.515495, 38.349522, 33.689430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287598, 38.336956, 33.443420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032459, 38.116867, 33.227863>,  <37.879375, 37.984814, 33.098530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032459, 38.116867, 33.227863>,  <38.287598, 38.336956, 33.443420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032459, 38.116867, 33.227863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404040, 0.356635, -0.842356,
		0.655671, -0.755029, -0.005167,
		-0.637846, -0.550221, -0.538897,
		37.841106, 37.951801, 33.066193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603340, 38.378315, 32.862972>,  <38.287598, 38.336956, 33.443420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603340, 38.378315, 32.862972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259804, 38.213638, 32.741051>,  <38.053684, 38.114834, 32.667896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259804, 38.213638, 32.741051>,  <38.603340, 38.378315, 32.862972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259804, 38.213638, 32.741051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175081, 0.323277, -0.929967,
		0.481397, -0.852057, -0.205563,
		-0.858838, -0.411693, -0.304804,
		38.002151, 38.090130, 32.649609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804054, 37.816051, 32.355438>,  <38.603340, 38.378315, 32.862972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804054, 37.816051, 32.355438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435429, 37.961212, 32.300262>,  <38.214252, 38.048309, 32.267159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435429, 37.961212, 32.300262>,  <38.804054, 37.816051, 32.355438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435429, 37.961212, 32.300262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241510, 0.257702, -0.935554,
		-0.303964, -0.895485, -0.325132,
		-0.921563, 0.362898, -0.137937,
		38.158958, 38.070080, 32.258881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660099, 37.569527, 31.741482>,  <38.804054, 37.816051, 32.355438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660099, 37.569527, 31.741482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367725, 37.840904, 31.771011>,  <38.192303, 38.003731, 31.788729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367725, 37.840904, 31.771011>,  <38.660099, 37.569527, 31.741482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367725, 37.840904, 31.771011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227081, 0.343795, -0.911175,
		-0.643563, -0.649243, -0.405353,
		-0.730932, 0.678446, 0.073823,
		38.148445, 38.044437, 31.793158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204399, 37.508930, 31.100409>,  <38.660099, 37.569527, 31.741482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204399, 37.508930, 31.100409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183811, 37.877384, 31.254736>,  <38.171459, 38.098457, 31.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183811, 37.877384, 31.254736>,  <38.204399, 37.508930, 31.100409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183811, 37.877384, 31.254736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310989, 0.381906, -0.870306,
		-0.949019, 0.075194, -0.306119,
		-0.051467, 0.921137, 0.385820,
		38.168369, 38.153725, 31.370481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936569, 37.930927, 30.587362>,  <38.204399, 37.508930, 31.100409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936569, 37.930927, 30.587362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075069, 38.222542, 30.823540>,  <38.158169, 38.397511, 30.965246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075069, 38.222542, 30.823540>,  <37.936569, 37.930927, 30.587362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075069, 38.222542, 30.823540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315141, 0.502415, -0.805149,
		-0.883628, 0.464854, -0.055788,
		0.346248, 0.729033, 0.590443,
		38.178944, 38.441254, 31.000673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641003, 38.595417, 30.469080>,  <37.936569, 37.930927, 30.587362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641003, 38.595417, 30.469080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999245, 38.665344, 30.632702>,  <38.214191, 38.707298, 30.730875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999245, 38.665344, 30.632702>,  <37.641003, 38.595417, 30.469080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999245, 38.665344, 30.632702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190263, 0.680660, -0.707461,
		-0.402103, 0.711436, 0.576344,
		0.895608, 0.174816, 0.409055,
		38.267925, 38.717789, 30.755419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597317, 39.290649, 30.681076>,  <37.641003, 38.595417, 30.469080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597317, 39.290649, 30.681076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984844, 39.206539, 30.628641>,  <38.217361, 39.156075, 30.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984844, 39.206539, 30.628641>,  <37.597317, 39.290649, 30.681076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984844, 39.206539, 30.628641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081780, 0.770725, -0.631898,
		0.233905, 0.601471, 0.763886,
		0.968814, -0.210274, -0.131088,
		38.275490, 39.143456, 30.589315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015640, 39.971989, 30.671257>,  <37.597317, 39.290649, 30.681076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015640, 39.971989, 30.671257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 39.703686, 30.505146>,  <38.408928, 39.542706, 30.405479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 39.703686, 30.505146>,  <38.015640, 39.971989, 30.671257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261444, 39.703686, 30.505146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212341, 0.647603, -0.731794,
		0.759793, 0.361516, 0.540390,
		0.614513, -0.670759, -0.415279,
		38.445797, 39.502457, 30.380562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583313, 40.350014, 30.654783>,  <38.015640, 39.971989, 30.671257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583313, 40.350014, 30.654783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631203, 40.049675, 30.394970>,  <38.659935, 39.869473, 30.239082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631203, 40.049675, 30.394970>,  <38.583313, 40.350014, 30.654783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631203, 40.049675, 30.394970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165017, 0.660188, -0.732749,
		0.978997, -0.019456, 0.202943,
		0.119724, -0.750848, -0.649533,
		38.667118, 39.824421, 30.200109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245014, 40.446442, 30.221889>,  <38.583313, 40.350014, 30.654783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245014, 40.446442, 30.221889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017105, 40.202690, 30.001337>,  <38.880360, 40.056438, 29.869005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017105, 40.202690, 30.001337>,  <39.245014, 40.446442, 30.221889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017105, 40.202690, 30.001337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093843, 0.618306, -0.780315,
		0.816428, -0.496344, -0.295107,
		-0.569771, -0.609377, -0.551381,
		38.846172, 40.019878, 29.835922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609455, 40.404625, 29.593084>,  <39.245014, 40.446442, 30.221889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609455, 40.404625, 29.593084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238831, 40.289471, 29.496243>,  <39.016457, 40.220379, 29.438137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238831, 40.289471, 29.496243>,  <39.609455, 40.404625, 29.593084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238831, 40.289471, 29.496243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064115, 0.513346, -0.855784,
		0.370651, -0.808455, -0.457186,
		-0.926557, -0.287884, -0.242106,
		38.960865, 40.203106, 29.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660126, 40.174770, 28.886772>,  <39.609455, 40.404625, 29.593084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660126, 40.174770, 28.886772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278847, 40.260853, 28.971725>,  <39.050079, 40.312504, 29.022697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278847, 40.260853, 28.971725>,  <39.660126, 40.174770, 28.886772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278847, 40.260853, 28.971725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043424, 0.597703, -0.800541,
		-0.299227, -0.772293, -0.560381,
		-0.953194, 0.215209, 0.212385,
		38.992889, 40.325417, 29.035440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418980, 39.967976, 28.248762>,  <39.660126, 40.174770, 28.886772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418980, 39.967976, 28.248762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147350, 40.216873, 28.404539>,  <38.984371, 40.366211, 28.498005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147350, 40.216873, 28.404539>,  <39.418980, 39.967976, 28.248762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147350, 40.216873, 28.404539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273486, 0.277874, -0.920864,
		-0.681222, -0.731842, -0.018521,
		-0.679074, 0.622248, 0.389443,
		38.943626, 40.403549, 28.521372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712910, 39.881771, 27.911976>,  <39.418980, 39.967976, 28.248762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712910, 39.881771, 27.911976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734356, 40.242783, 28.082891>,  <38.747223, 40.459389, 28.185440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734356, 40.242783, 28.082891>,  <38.712910, 39.881771, 27.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734356, 40.242783, 28.082891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255942, 0.426028, -0.867752,
		-0.965204, -0.062839, 0.253834,
		0.053612, 0.902525, 0.427287,
		38.750439, 40.513538, 28.211077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233521, 40.331108, 27.608866>,  <38.712910, 39.881771, 27.911976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233521, 40.331108, 27.608866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473785, 40.604618, 27.774591>,  <38.617947, 40.768723, 27.874027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473785, 40.604618, 27.774591>,  <38.233521, 40.331108, 27.608866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473785, 40.604618, 27.774591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052277, 0.550698, -0.833066,
		-0.797790, 0.478734, 0.366530,
		0.600665, 0.683773, 0.414314,
		38.653984, 40.809750, 27.898886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827538, 40.933155, 27.517746>,  <38.233521, 40.331108, 27.608866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827538, 40.933155, 27.517746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193626, 41.068214, 27.605711>,  <38.413280, 41.149250, 27.658489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193626, 41.068214, 27.605711>,  <37.827538, 40.933155, 27.517746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193626, 41.068214, 27.605711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, 0.470001, -0.881826,
		-0.401103, 0.815533, 0.417159,
		0.915224, 0.337645, 0.219910,
		38.468193, 41.169510, 27.671684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810158, 41.629700, 27.298683>,  <37.827538, 40.933155, 27.517746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810158, 41.629700, 27.298683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187077, 41.496029, 27.306728>,  <38.413227, 41.415825, 27.311556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187077, 41.496029, 27.306728>,  <37.810158, 41.629700, 27.298683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187077, 41.496029, 27.306728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162672, 0.404530, -0.899940,
		0.292602, 0.851282, 0.435549,
		0.942296, -0.334176, 0.020114,
		38.469765, 41.395775, 27.312763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190006, 42.100880, 26.940584>,  <37.810158, 41.629700, 27.298683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190006, 42.100880, 26.940584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467724, 41.815041, 26.974762>,  <38.634354, 41.643536, 26.995270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467724, 41.815041, 26.974762>,  <38.190006, 42.100880, 26.940584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467724, 41.815041, 26.974762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371745, 0.254429, -0.892788,
		0.616248, 0.651621, 0.442298,
		0.694294, -0.714602, 0.085446,
		38.676010, 41.600658, 27.000395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749542, 42.395844, 26.757677>,  <38.190006, 42.100880, 26.940584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749542, 42.395844, 26.757677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857475, 42.016098, 26.693314>,  <38.922237, 41.788250, 26.654696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857475, 42.016098, 26.693314>,  <38.749542, 42.395844, 26.757677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857475, 42.016098, 26.693314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554511, 0.289824, -0.780077,
		0.787214, 0.121267, 0.604639,
		0.269837, -0.949366, -0.160910,
		38.938427, 41.731289, 26.645041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547928, 42.176067, 26.819691>,  <38.749542, 42.395844, 26.757677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547928, 42.176067, 26.819691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371986, 41.899136, 26.590879>,  <39.266422, 41.732979, 26.453592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371986, 41.899136, 26.590879>,  <39.547928, 42.176067, 26.819691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371986, 41.899136, 26.590879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606154, 0.241115, -0.757919,
		0.662651, -0.680109, 0.313601,
		-0.439854, -0.692326, -0.572026,
		39.240028, 41.691437, 26.419271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073757, 41.791790, 26.494728>,  <39.547928, 42.176067, 26.819691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073757, 41.791790, 26.494728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742332, 41.764008, 26.272499>,  <39.543476, 41.747337, 26.139162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742332, 41.764008, 26.272499>,  <40.073757, 41.791790, 26.494728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742332, 41.764008, 26.272499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521485, 0.265465, -0.810914,
		0.203807, -0.961615, -0.183735,
		-0.828563, -0.069455, -0.555572,
		39.493763, 41.743172, 26.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362972, 41.576424, 25.964022>,  <40.073757, 41.791790, 26.494728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362972, 41.576424, 25.964022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997856, 41.687496, 25.844215>,  <39.778786, 41.754139, 25.772331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997856, 41.687496, 25.844215>,  <40.362972, 41.576424, 25.964022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997856, 41.687496, 25.844215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384395, 0.336206, -0.859771,
		-0.138041, -0.899922, -0.413624,
		-0.912790, 0.277679, -0.299515,
		39.724018, 41.770802, 25.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356575, 41.336979, 25.325298>,  <40.362972, 41.576424, 25.964022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356575, 41.336979, 25.325298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036366, 41.576687, 25.322617>,  <39.844242, 41.720512, 25.321007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036366, 41.576687, 25.322617>,  <40.356575, 41.336979, 25.325298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036366, 41.576687, 25.322617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249958, 0.323689, -0.912549,
		-0.544692, -0.732190, -0.408912,
		-0.800519, 0.599269, -0.006706,
		39.796211, 41.756466, 25.320604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954834, 41.218422, 24.662724>,  <40.356575, 41.336979, 25.325298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954834, 41.218422, 24.662724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857689, 41.580166, 24.803097>,  <39.799404, 41.797211, 24.887321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857689, 41.580166, 24.803097>,  <39.954834, 41.218422, 24.662724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857689, 41.580166, 24.803097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225538, 0.404490, -0.886296,
		-0.943479, -0.136095, -0.302201,
		-0.242858, 0.904359, 0.350933,
		39.784832, 41.851475, 24.908377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521099, 41.421703, 24.186163>,  <39.954834, 41.218422, 24.662724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521099, 41.421703, 24.186163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654293, 41.741985, 24.385361>,  <39.734211, 41.934155, 24.504879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654293, 41.741985, 24.385361>,  <39.521099, 41.421703, 24.186163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654293, 41.741985, 24.385361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096039, 0.496586, -0.862658,
		-0.938029, 0.335078, 0.088457,
		0.332984, 0.800703, 0.497993,
		39.754189, 41.982197, 24.534758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233223, 42.024464, 23.776726>,  <39.521099, 41.421703, 24.186163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233223, 42.024464, 23.776726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535557, 42.177608, 23.989191>,  <39.716957, 42.269493, 24.116671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535557, 42.177608, 23.989191>,  <39.233223, 42.024464, 23.776726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535557, 42.177608, 23.989191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270630, 0.556016, -0.785879,
		-0.596216, 0.737743, 0.316642,
		0.755835, 0.382860, 0.531161,
		39.762306, 42.292465, 24.148539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216290, 42.764828, 23.703350>,  <39.233223, 42.024464, 23.776726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216290, 42.764828, 23.703350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587360, 42.679344, 23.825825>,  <39.810001, 42.628056, 23.899309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587360, 42.679344, 23.825825>,  <39.216290, 42.764828, 23.703350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587360, 42.679344, 23.825825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373327, 0.515840, -0.771061,
		0.006835, 0.829602, 0.558314,
		0.927674, -0.213704, 0.306187,
		39.865662, 42.615234, 23.917681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571846, 43.440250, 23.723923>,  <39.216290, 42.764828, 23.703350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571846, 43.440250, 23.723923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845844, 43.150032, 23.697531>,  <40.010242, 42.975899, 23.681696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845844, 43.150032, 23.697531>,  <39.571846, 43.440250, 23.723923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845844, 43.150032, 23.697531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526943, 0.555953, -0.642844,
		0.503097, 0.405579, 0.763150,
		0.685000, -0.725549, -0.065981,
		40.051346, 42.932365, 23.677736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111336, 43.714790, 23.890862>,  <39.571846, 43.440250, 23.723923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111336, 43.714790, 23.890862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247574, 43.422234, 23.654535>,  <40.329319, 43.246700, 23.512739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247574, 43.422234, 23.654535>,  <40.111336, 43.714790, 23.890862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247574, 43.422234, 23.654535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474941, 0.676160, -0.563239,
		0.811433, -0.088764, 0.577665,
		0.340599, -0.731388, -0.590817,
		40.349754, 43.202816, 23.477291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794685, 43.927704, 23.642908>,  <40.111336, 43.714790, 23.890862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794685, 43.927704, 23.642908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673294, 43.647118, 23.384966>,  <40.600460, 43.478764, 23.230200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673294, 43.647118, 23.384966>,  <40.794685, 43.927704, 23.642908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673294, 43.647118, 23.384966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381856, 0.530514, -0.756796,
		0.872974, -0.475917, 0.106859,
		-0.303482, -0.701468, -0.644857,
		40.582249, 43.436676, 23.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210182, 43.988674, 23.130920>,  <40.794685, 43.927704, 23.642908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210182, 43.988674, 23.130920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915623, 43.778351, 22.960629>,  <40.738888, 43.652157, 22.858454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915623, 43.778351, 22.960629>,  <41.210182, 43.988674, 23.130920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915623, 43.778351, 22.960629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221370, 0.407361, -0.886032,
		0.639310, -0.746714, -0.183580,
		-0.736395, -0.525809, -0.425730,
		40.694702, 43.620609, 22.832909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478378, 43.932503, 22.495586>,  <41.210182, 43.988674, 23.130920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478378, 43.932503, 22.495586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088821, 43.873970, 22.426163>,  <40.855087, 43.838852, 22.384508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088821, 43.873970, 22.426163>,  <41.478378, 43.932503, 22.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088821, 43.873970, 22.426163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121220, 0.311210, -0.942578,
		0.191941, -0.939008, -0.285347,
		-0.973892, -0.146329, -0.173560,
		40.796654, 43.830070, 22.374094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186047, 43.852936, 22.875292>,  <41.478378, 43.932503, 22.495586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186047, 43.852936, 22.875292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500061, 43.623745, 22.781130>,  <42.688469, 43.486233, 22.724632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500061, 43.623745, 22.781130>,  <42.186047, 43.852936, 22.875292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500061, 43.623745, 22.781130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134564, -0.528691, 0.838080,
		-0.604655, -0.626248, -0.492145,
		0.785038, -0.572974, -0.235405,
		42.735573, 43.451855, 22.710508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999615, 43.210430, 23.069157>,  <42.186047, 43.852936, 22.875292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999615, 43.210430, 23.069157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398304, 43.188694, 23.045214>,  <42.637520, 43.175652, 23.030848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398304, 43.188694, 23.045214>,  <41.999615, 43.210430, 23.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398304, 43.188694, 23.045214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017961, -0.573095, 0.819292,
		-0.078823, -0.817685, -0.570243,
		0.996727, -0.054337, -0.059859,
		42.697323, 43.172394, 23.027256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134007, 42.507435, 23.155872>,  <41.999615, 43.210430, 23.069157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134007, 42.507435, 23.155872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463257, 42.713818, 23.250736>,  <42.660809, 42.837646, 23.307655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463257, 42.713818, 23.250736>,  <42.134007, 42.507435, 23.155872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463257, 42.713818, 23.250736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141554, -0.590897, 0.794231,
		0.549928, -0.620184, -0.559421,
		0.823129, 0.515958, 0.237161,
		42.710197, 42.868607, 23.321884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786827, 42.032230, 23.300133>,  <42.134007, 42.507435, 23.155872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786827, 42.032230, 23.300133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914906, 42.364323, 23.482641>,  <42.991753, 42.563580, 23.592146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914906, 42.364323, 23.482641>,  <42.786827, 42.032230, 23.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914906, 42.364323, 23.482641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148378, -0.519635, 0.841406,
		0.935658, -0.201717, -0.289575,
		0.320199, 0.830235, 0.456270,
		43.010963, 42.613392, 23.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522720, 41.900375, 23.691133>,  <42.786827, 42.032230, 23.300133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522720, 41.900375, 23.691133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358555, 42.219788, 23.867277>,  <43.260056, 42.411434, 23.972963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358555, 42.219788, 23.867277>,  <43.522720, 41.900375, 23.691133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358555, 42.219788, 23.867277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044862, -0.464636, 0.884364,
		0.910795, 0.382711, 0.154870,
		-0.410414, 0.798527, 0.440358,
		43.235432, 42.459347, 23.999384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961105, 41.999199, 24.330973>,  <43.522720, 41.900375, 23.691133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961105, 41.999199, 24.330973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610180, 42.176605, 24.404310>,  <43.399624, 42.283047, 24.448313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610180, 42.176605, 24.404310>,  <43.961105, 41.999199, 24.330973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610180, 42.176605, 24.404310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000746, -0.383291, 0.923627,
		0.479915, 0.810175, 0.336598,
		-0.877314, 0.443514, 0.183343,
		43.346985, 42.309658, 24.459312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987152, 42.146370, 24.995392>,  <43.961105, 41.999199, 24.330973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987152, 42.146370, 24.995392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 42.152088, 24.916510>,  <43.359791, 42.155518, 24.869181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 42.152088, 24.916510>,  <43.987152, 42.146370, 24.995392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595051, 42.152088, 24.916510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184609, -0.423348, 0.886959,
		-0.070811, 0.905855, 0.417628,
		-0.980258, 0.014292, -0.197207,
		43.300972, 42.156376, 24.857347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688541, 42.169544, 25.650366>,  <43.987152, 42.146370, 24.995392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688541, 42.169544, 25.650366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388775, 42.067020, 25.406176>,  <43.208916, 42.005505, 25.259663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388775, 42.067020, 25.406176>,  <43.688541, 42.169544, 25.650366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388775, 42.067020, 25.406176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383724, -0.583251, 0.715943,
		-0.539565, 0.770793, 0.338744,
		-0.749417, -0.256313, -0.610474,
		43.163948, 41.990128, 25.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167900, 42.416023, 25.928944>,  <43.688541, 42.169544, 25.650366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167900, 42.416023, 25.928944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006931, 42.132988, 25.696606>,  <42.910351, 41.963165, 25.557203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006931, 42.132988, 25.696606>,  <43.167900, 42.416023, 25.928944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006931, 42.132988, 25.696606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346755, -0.469391, 0.812055,
		-0.847242, 0.528198, -0.056467,
		-0.402420, -0.707587, -0.580843,
		42.886204, 41.920712, 25.522352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530010, 42.225948, 26.323397>,  <43.167900, 42.416023, 25.928944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530010, 42.225948, 26.323397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599731, 41.934547, 26.058395>,  <42.641563, 41.759708, 25.899395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599731, 41.934547, 26.058395>,  <42.530010, 42.225948, 26.323397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599731, 41.934547, 26.058395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456615, -0.655890, 0.601091,
		-0.872422, 0.197735, -0.446969,
		0.174305, -0.728498, -0.662502,
		42.652023, 41.716000, 25.859646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934700, 41.874111, 26.253401>,  <42.530010, 42.225948, 26.323397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934700, 41.874111, 26.253401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236832, 41.639729, 26.136011>,  <42.418110, 41.499100, 26.065577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236832, 41.639729, 26.136011>,  <41.934700, 41.874111, 26.253401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236832, 41.639729, 26.136011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317518, -0.718961, 0.618285,
		-0.573288, -0.373825, -0.729106,
		0.755330, -0.585960, -0.293476,
		42.463432, 41.463940, 26.047968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612949, 41.153934, 26.180216>,  <41.934700, 41.874111, 26.253401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612949, 41.153934, 26.180216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007957, 41.108650, 26.223999>,  <42.244965, 41.081478, 26.250269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007957, 41.108650, 26.223999>,  <41.612949, 41.153934, 26.180216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007957, 41.108650, 26.223999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157464, -0.701581, 0.694974,
		-0.001884, -0.703539, -0.710654,
		0.987523, -0.113212, 0.109460,
		42.304214, 41.074688, 26.256838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822735, 40.473541, 25.887831>,  <41.612949, 41.153934, 26.180216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822735, 40.473541, 25.887831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092594, 40.583405, 26.161882>,  <42.254509, 40.649323, 26.326313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092594, 40.583405, 26.161882>,  <41.822735, 40.473541, 25.887831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092594, 40.583405, 26.161882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185146, -0.835551, 0.517277,
		0.714538, -0.475832, -0.512854,
		0.674653, 0.274661, 0.685131,
		42.294991, 40.665802, 26.367422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964169, 39.846512, 26.299202>,  <41.822735, 40.473541, 25.887831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964169, 39.846512, 26.299202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153694, 40.102444, 26.541231>,  <42.267410, 40.256004, 26.686449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153694, 40.102444, 26.541231>,  <41.964169, 39.846512, 26.299202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153694, 40.102444, 26.541231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139660, -0.623802, 0.769003,
		0.869479, -0.448870, -0.206208,
		0.473816, 0.639833, 0.605072,
		42.295837, 40.294395, 26.722754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395695, 39.434727, 26.746080>,  <41.964169, 39.846512, 26.299202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395695, 39.434727, 26.746080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330124, 39.785088, 26.927597>,  <42.290783, 39.995304, 27.036507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330124, 39.785088, 26.927597>,  <42.395695, 39.434727, 26.746080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330124, 39.785088, 26.927597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144750, -0.476390, 0.867237,
		0.975795, 0.076475, 0.204879,
		-0.163925, 0.875902, 0.453790,
		42.280945, 40.047859, 27.063734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675335, 39.350471, 27.359943>,  <42.395695, 39.434727, 26.746080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675335, 39.350471, 27.359943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421440, 39.654415, 27.416119>,  <42.269104, 39.836781, 27.449823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421440, 39.654415, 27.416119>,  <42.675335, 39.350471, 27.359943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421440, 39.654415, 27.416119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150100, -0.299526, 0.942207,
		0.758007, 0.576977, 0.304176,
		-0.634740, 0.759857, 0.140439,
		42.231018, 39.882374, 27.458250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816193, 39.632107, 28.026836>,  <42.675335, 39.350471, 27.359943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816193, 39.632107, 28.026836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441277, 39.737705, 27.935799>,  <42.216328, 39.801064, 27.881176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441277, 39.737705, 27.935799>,  <42.816193, 39.632107, 28.026836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441277, 39.737705, 27.935799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310617, -0.336362, 0.889032,
		0.158149, 0.903972, 0.397270,
		-0.937286, 0.263999, -0.227594,
		42.160091, 39.816906, 27.867521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536430, 40.037312, 28.718040>,  <42.816193, 39.632107, 28.026836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536430, 40.037312, 28.718040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228958, 39.913708, 28.494024>,  <42.044476, 39.839546, 28.359613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228958, 39.913708, 28.494024>,  <42.536430, 40.037312, 28.718040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228958, 39.913708, 28.494024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490220, -0.277818, 0.826136,
		-0.410876, 0.909576, 0.062068,
		-0.768677, -0.309013, -0.560041,
		41.998356, 39.821003, 28.326012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830868, 40.289871, 29.034992>,  <42.536430, 40.037312, 28.718040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830868, 40.289871, 29.034992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676922, 40.020519, 28.782503>,  <41.584553, 39.858910, 28.631010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676922, 40.020519, 28.782503>,  <41.830868, 40.289871, 29.034992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676922, 40.020519, 28.782503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605534, -0.331925, 0.723294,
		-0.696569, 0.660596, -0.280008,
		-0.384864, -0.673379, -0.631222,
		41.561462, 39.818504, 28.593136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141487, 40.214443, 29.222038>,  <41.830868, 40.289871, 29.034992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141487, 40.214443, 29.222038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199425, 39.873844, 29.020456>,  <41.234188, 39.669483, 28.899508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199425, 39.873844, 29.020456>,  <41.141487, 40.214443, 29.222038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199425, 39.873844, 29.020456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507265, -0.501205, 0.701054,
		-0.849531, 0.154094, -0.504533,
		0.144847, -0.851498, -0.503955,
		41.242878, 39.618393, 28.869270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485542, 39.831387, 29.152956>,  <41.141487, 40.214443, 29.222038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485542, 39.831387, 29.152956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781334, 39.565159, 29.112581>,  <40.958809, 39.405422, 29.088356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781334, 39.565159, 29.112581>,  <40.485542, 39.831387, 29.152956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781334, 39.565159, 29.112581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430334, -0.582681, 0.689417,
		-0.517668, -0.466374, -0.717297,
		0.739481, -0.665567, -0.100939,
		41.003178, 39.365490, 29.082300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130272, 39.255257, 29.183130>,  <40.485542, 39.831387, 29.152956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130272, 39.255257, 29.183130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508152, 39.147713, 29.258238>,  <40.734879, 39.083187, 29.303303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508152, 39.147713, 29.258238>,  <40.130272, 39.255257, 29.183130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508152, 39.147713, 29.258238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316038, -0.593570, 0.740131,
		-0.087540, -0.758543, -0.645716,
		0.944699, -0.268862, 0.187768,
		40.791561, 39.067055, 29.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126179, 38.565014, 29.243166>,  <40.130272, 39.255257, 29.183130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126179, 38.565014, 29.243166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455704, 38.677052, 29.440298>,  <40.653419, 38.744274, 29.558577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455704, 38.677052, 29.440298>,  <40.126179, 38.565014, 29.243166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455704, 38.677052, 29.440298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193089, -0.678749, 0.708531,
		0.532964, -0.678856, -0.505077,
		0.823812, 0.280097, 0.492828,
		40.702847, 38.761082, 29.588146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201401, 37.960045, 29.752373>,  <40.126179, 38.565014, 29.243166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201401, 37.960045, 29.752373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467300, 38.232445, 29.875235>,  <40.626839, 38.395885, 29.948952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467300, 38.232445, 29.875235>,  <40.201401, 37.960045, 29.752373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467300, 38.232445, 29.875235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012806, -0.400701, 0.916120,
		0.746957, -0.612923, -0.257645,
		0.664750, 0.681002, 0.307155,
		40.666725, 38.436745, 29.967381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536034, 37.554863, 30.147999>,  <40.201401, 37.960045, 29.752373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536034, 37.554863, 30.147999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617474, 37.929939, 30.260630>,  <40.666340, 38.154984, 30.328209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617474, 37.929939, 30.260630>,  <40.536034, 37.554863, 30.147999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617474, 37.929939, 30.260630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083821, -0.269850, 0.959247,
		0.975459, -0.218907, 0.023656,
		0.203603, 0.937689, 0.281577,
		40.678555, 38.211246, 30.345102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082172, 37.558849, 30.629574>,  <40.536034, 37.554863, 30.147999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082172, 37.558849, 30.629574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845402, 37.873981, 30.697638>,  <40.703339, 38.063061, 30.738476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845402, 37.873981, 30.697638>,  <41.082172, 37.558849, 30.629574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845402, 37.873981, 30.697638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150679, -0.315560, 0.936866,
		0.791784, 0.528913, 0.305496,
		-0.591923, 0.787828, 0.170159,
		40.667824, 38.110329, 30.748686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369045, 37.891758, 31.322163>,  <41.082172, 37.558849, 30.629574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369045, 37.891758, 31.322163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981441, 37.956799, 31.247770>,  <40.748878, 37.995823, 31.203135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981441, 37.956799, 31.247770>,  <41.369045, 37.891758, 31.322163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981441, 37.956799, 31.247770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230310, -0.322266, 0.918206,
		0.089369, 0.932580, 0.349727,
		-0.969005, 0.162605, -0.185982,
		40.690739, 38.005581, 31.191977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127975, 38.233730, 31.880911>,  <41.369045, 37.891758, 31.322163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127975, 38.233730, 31.880911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802021, 38.067749, 31.719034>,  <40.606449, 37.968163, 31.621908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802021, 38.067749, 31.719034>,  <41.127975, 38.233730, 31.880911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802021, 38.067749, 31.719034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306281, -0.284494, 0.908436,
		-0.492089, 0.864221, 0.104739,
		-0.814887, -0.414952, -0.404691,
		40.557556, 37.943264, 31.597628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707039, 38.301430, 32.454430>,  <41.127975, 38.233730, 31.880911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707039, 38.301430, 32.454430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505657, 38.056156, 32.210938>,  <40.384830, 37.908993, 32.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505657, 38.056156, 32.210938>,  <40.707039, 38.301430, 32.454430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505657, 38.056156, 32.210938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291067, -0.542984, 0.787685,
		-0.813522, 0.573740, 0.094889,
		-0.503450, -0.613180, -0.608727,
		40.354622, 37.872204, 32.028320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940197, 38.246189, 32.681995>,  <40.707039, 38.301430, 32.454430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940197, 38.246189, 32.681995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074459, 37.918964, 32.495190>,  <40.155018, 37.722630, 32.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074459, 37.918964, 32.495190>,  <39.940197, 38.246189, 32.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074459, 37.918964, 32.495190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317197, -0.564983, 0.761696,
		-0.886974, -0.107530, -0.449127,
		0.335654, -0.818066, -0.467017,
		40.175156, 37.673546, 32.355083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448460, 37.807194, 32.829201>,  <39.940197, 38.246189, 32.681995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448460, 37.807194, 32.829201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737198, 37.559692, 32.705212>,  <39.910442, 37.411190, 32.630817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737198, 37.559692, 32.705212>,  <39.448460, 37.807194, 32.829201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737198, 37.559692, 32.705212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252576, -0.652548, 0.714414,
		-0.644307, -0.437414, -0.627325,
		0.721854, -0.618749, -0.309961,
		39.953751, 37.374065, 32.612221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240318, 37.053047, 32.959183>,  <39.448460, 37.807194, 32.829201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240318, 37.053047, 32.959183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638382, 37.022190, 32.934822>,  <39.877220, 37.003677, 32.920204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638382, 37.022190, 32.934822>,  <39.240318, 37.053047, 32.959183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638382, 37.022190, 32.934822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013230, -0.719170, 0.694709,
		-0.097393, -0.690539, -0.716708,
		0.995158, -0.077142, -0.060906,
		39.936928, 36.999046, 32.916550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403061, 36.352165, 32.729385>,  <39.240318, 37.053047, 32.959183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403061, 36.352165, 32.729385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728329, 36.497883, 32.910954>,  <39.923489, 36.585312, 33.019894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728329, 36.497883, 32.910954>,  <39.403061, 36.352165, 32.729385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728329, 36.497883, 32.910954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000683, -0.779303, 0.626647,
		0.582029, -0.509879, -0.633455,
		0.813168, 0.364293, 0.453925,
		39.972279, 36.607170, 33.047131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820343, 35.790768, 32.780445>,  <39.403061, 36.352165, 32.729385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820343, 35.790768, 32.780445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994190, 36.049267, 33.031353>,  <40.098499, 36.204369, 33.181900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994190, 36.049267, 33.031353>,  <39.820343, 35.790768, 32.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994190, 36.049267, 33.031353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135617, -0.735512, 0.663800,
		0.890348, -0.203428, -0.407306,
		0.434614, 0.646250, 0.627273,
		40.124573, 36.243141, 33.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472672, 35.575371, 32.959610>,  <39.820343, 35.790768, 32.780445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472672, 35.575371, 32.959610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310673, 35.811249, 33.239105>,  <40.213474, 35.952774, 33.406803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310673, 35.811249, 33.239105>,  <40.472672, 35.575371, 32.959610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310673, 35.811249, 33.239105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038694, -0.774589, 0.631280,
		0.913498, 0.228632, 0.336526,
		-0.405000, 0.589694, 0.698739,
		40.189171, 35.988155, 33.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709244, 35.179142, 33.527412>,  <40.472672, 35.575371, 32.959610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709244, 35.179142, 33.527412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454315, 35.440228, 33.691254>,  <40.301357, 35.596878, 33.789558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454315, 35.440228, 33.691254>,  <40.709244, 35.179142, 33.527412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454315, 35.440228, 33.691254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192986, -0.649799, 0.735199,
		0.746038, 0.389513, 0.540099,
		-0.637325, 0.652718, 0.409605,
		40.263119, 35.636044, 33.814137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906223, 35.283333, 34.285263>,  <40.709244, 35.179142, 33.527412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906223, 35.283333, 34.285263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518501, 35.343517, 34.207478>,  <40.285870, 35.379627, 34.160805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518501, 35.343517, 34.207478>,  <40.906223, 35.283333, 34.285263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518501, 35.343517, 34.207478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243055, -0.705732, 0.665483,
		-0.037112, 0.692319, 0.720637,
		-0.969302, 0.150457, -0.194462,
		40.227711, 35.388653, 34.149139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572086, 35.403461, 34.914410>,  <40.906223, 35.283333, 34.285263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572086, 35.403461, 34.914410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283806, 35.274364, 34.668995>,  <40.110840, 35.196907, 34.521744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283806, 35.274364, 34.668995>,  <40.572086, 35.403461, 34.914410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283806, 35.274364, 34.668995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282422, -0.671563, 0.685012,
		-0.633115, 0.666963, 0.392843,
		-0.720697, -0.322744, -0.613541,
		40.067596, 35.177540, 34.484932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136307, 35.267178, 35.356693>,  <40.572086, 35.403461, 34.914410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136307, 35.267178, 35.356693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996437, 35.085072, 35.029167>,  <39.912514, 34.975807, 34.832653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996437, 35.085072, 35.029167>,  <40.136307, 35.267178, 35.356693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996437, 35.085072, 35.029167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425042, -0.701777, 0.571706,
		-0.834905, 0.547943, 0.051888,
		-0.349676, -0.455266, -0.818816,
		39.891533, 34.948490, 34.783524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424282, 35.105007, 35.556911>,  <40.136307, 35.267178, 35.356693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424282, 35.105007, 35.556911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544910, 34.873730, 35.253662>,  <39.617287, 34.734962, 35.071712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544910, 34.873730, 35.253662>,  <39.424282, 35.105007, 35.556911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544910, 34.873730, 35.253662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418985, -0.794616, 0.439360,
		-0.856449, 0.185140, -0.481891,
		0.301575, -0.578194, -0.758119,
		39.635384, 34.700272, 35.026226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948246, 35.245705, 36.130512>,  <39.424282, 35.105007, 35.556911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948246, 35.245705, 36.130512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100155, 35.296341, 36.497063>,  <39.191299, 35.326725, 36.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100155, 35.296341, 36.497063>,  <38.948246, 35.245705, 36.130512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100155, 35.296341, 36.497063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900506, 0.277401, 0.334869,
		-0.211812, -0.952378, 0.219346,
		0.379769, 0.126593, 0.916378,
		39.214085, 35.334320, 36.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540165, 34.771156, 36.581886>,  <38.948246, 35.245705, 36.130512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540165, 34.771156, 36.581886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710651, 35.047680, 36.815273>,  <38.812943, 35.213593, 36.955303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710651, 35.047680, 36.815273>,  <38.540165, 34.771156, 36.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710651, 35.047680, 36.815273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901744, 0.273280, 0.334926,
		0.072089, -0.668886, 0.739861,
		0.426217, 0.691310, 0.583464,
		38.838516, 35.255074, 36.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241314, 34.673485, 37.154812>,  <38.540165, 34.771156, 36.581886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241314, 34.673485, 37.154812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400162, 35.039032, 37.188606>,  <38.495468, 35.258362, 37.208885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400162, 35.039032, 37.188606>,  <38.241314, 34.673485, 37.154812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400162, 35.039032, 37.188606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888085, 0.359415, 0.286577,
		0.231529, -0.188836, 0.954325,
		0.397115, 0.913872, 0.084487,
		38.519295, 35.313194, 37.213951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853260, 34.969425, 37.759007>,  <38.241314, 34.673485, 37.154812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853260, 34.969425, 37.759007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002575, 35.240192, 37.505253>,  <38.092163, 35.402653, 37.353001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002575, 35.240192, 37.505253>,  <37.853260, 34.969425, 37.759007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002575, 35.240192, 37.505253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869209, 0.494190, 0.015867,
		0.324245, 0.545486, 0.772859,
		0.373283, 0.676921, -0.634380,
		38.114559, 35.443268, 37.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576908, 35.604012, 38.001545>,  <37.853260, 34.969425, 37.759007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576908, 35.604012, 38.001545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681881, 35.702316, 37.628292>,  <37.744865, 35.761299, 37.404343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681881, 35.702316, 37.628292>,  <37.576908, 35.604012, 38.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681881, 35.702316, 37.628292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790865, 0.608835, -0.062071,
		0.552867, 0.754268, 0.354143,
		0.262433, 0.245762, -0.933129,
		37.760612, 35.776047, 37.348354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046108, 36.198872, 38.015938>,  <37.576908, 35.604012, 38.001545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046108, 36.198872, 38.015938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018169, 36.163689, 37.618469>,  <38.001404, 36.142578, 37.379990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018169, 36.163689, 37.618469>,  <38.046108, 36.198872, 38.015938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018169, 36.163689, 37.618469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766302, 0.642474, -0.003003,
		0.638672, 0.761243, -0.112277,
		-0.069849, -0.087955, -0.993673,
		37.997215, 36.137302, 37.320366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966469, 36.881790, 37.733665>,  <38.046108, 36.198872, 38.015938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966469, 36.881790, 37.733665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825974, 36.638073, 37.449299>,  <37.741676, 36.491844, 37.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825974, 36.638073, 37.449299>,  <37.966469, 36.881790, 37.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825974, 36.638073, 37.449299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769099, 0.620777, -0.152059,
		0.533967, 0.493355, -0.686644,
		-0.351234, -0.609291, -0.710913,
		37.720604, 36.455284, 37.236023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707863, 37.353924, 37.215752>,  <37.966469, 36.881790, 37.733665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707863, 37.353924, 37.215752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536385, 37.008995, 37.107952>,  <37.433498, 36.802040, 37.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536385, 37.008995, 37.107952>,  <37.707863, 37.353924, 37.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536385, 37.008995, 37.107952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812051, 0.498522, -0.303395,
		0.395973, 0.088781, -0.913960,
		-0.428694, -0.862319, -0.269496,
		37.407776, 36.750298, 37.027103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497959, 37.449078, 36.578819>,  <37.707863, 37.353924, 37.215752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497959, 37.449078, 36.578819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267399, 37.171364, 36.751209>,  <37.129063, 37.004734, 36.854641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267399, 37.171364, 36.751209>,  <37.497959, 37.449078, 36.578819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267399, 37.171364, 36.751209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816451, 0.511398, -0.268103,
		-0.034258, -0.506401, -0.861617,
		-0.576397, -0.694284, 0.430971,
		37.094479, 36.963078, 36.880501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010284, 37.268871, 36.149269>,  <37.497959, 37.449078, 36.578819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010284, 37.268871, 36.149269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830494, 37.116333, 36.472389>,  <36.722622, 37.024811, 36.666264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830494, 37.116333, 36.472389>,  <37.010284, 37.268871, 36.149269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830494, 37.116333, 36.472389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880317, 0.342672, -0.328052,
		-0.151709, -0.858573, -0.489731,
		-0.449474, -0.381350, 0.807803,
		36.695652, 37.001926, 36.714729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418087, 36.871540, 35.961811>,  <37.010284, 37.268871, 36.149269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418087, 36.871540, 35.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316879, 36.990032, 36.330208>,  <36.256153, 37.061127, 36.551247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316879, 36.990032, 36.330208>,  <36.418087, 36.871540, 35.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316879, 36.990032, 36.330208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870015, 0.346704, -0.350529,
		-0.423150, -0.889968, 0.170005,
		-0.253018, 0.296233, 0.920993,
		36.240974, 37.078903, 36.606506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020878, 36.515728, 36.464684>,  <36.418087, 36.871540, 35.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020878, 36.515728, 36.464684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985260, 36.655918, 36.837616>,  <35.963890, 36.740032, 37.061375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985260, 36.655918, 36.837616>,  <36.020878, 36.515728, 36.464684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985260, 36.655918, 36.837616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687025, 0.656117, -0.312260,
		-0.721157, -0.668339, 0.182360,
		-0.089046, 0.350474, 0.932330,
		35.958546, 36.761059, 37.117313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342175, 36.486446, 36.615852>,  <36.020878, 36.515728, 36.464684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342175, 36.486446, 36.615852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519840, 36.776058, 36.826946>,  <35.626438, 36.949825, 36.953602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519840, 36.776058, 36.826946>,  <35.342175, 36.486446, 36.615852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519840, 36.776058, 36.826946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827959, 0.556769, -0.067020,
		-0.342353, -0.407178, 0.846759,
		0.444160, 0.724026, 0.527739,
		35.653088, 36.993267, 36.985268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936848, 36.690475, 37.179829>,  <35.342175, 36.486446, 36.615852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936848, 36.690475, 37.179829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182152, 36.994530, 37.093933>,  <35.329334, 37.176960, 37.042397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182152, 36.994530, 37.093933>,  <34.936848, 36.690475, 37.179829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182152, 36.994530, 37.093933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787041, 0.611077, -0.084563,
		0.066945, 0.220870, 0.973003,
		0.613257, 0.760132, -0.214743,
		35.366131, 37.222569, 37.029510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652115, 37.171421, 37.620895>,  <34.936848, 36.690475, 37.179829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652115, 37.171421, 37.620895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849785, 37.346043, 37.320171>,  <34.968388, 37.450817, 37.139736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849785, 37.346043, 37.320171>,  <34.652115, 37.171421, 37.620895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849785, 37.346043, 37.320171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736216, 0.670070, -0.094827,
		0.462366, 0.600352, 0.652530,
		0.494171, 0.436558, -0.751806,
		34.998035, 37.477009, 37.094631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770351, 37.835892, 37.854088>,  <34.652115, 37.171421, 37.620895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770351, 37.835892, 37.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777592, 37.829136, 37.454212>,  <34.781937, 37.825085, 37.214287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777592, 37.829136, 37.454212>,  <34.770351, 37.835892, 37.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777592, 37.829136, 37.454212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740386, 0.671726, -0.024751,
		0.671938, 0.740608, -0.000346,
		0.018099, -0.016887, -0.999694,
		34.783020, 37.824070, 37.154305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790337, 38.501892, 37.791206>,  <34.770351, 37.835892, 37.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790337, 38.501892, 37.791206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700619, 38.348763, 37.432735>,  <34.646786, 38.256886, 37.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700619, 38.348763, 37.432735>,  <34.790337, 38.501892, 37.791206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700619, 38.348763, 37.432735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653321, 0.741418, -0.153202,
		0.723092, 0.551128, -0.416408,
		-0.224299, -0.382828, -0.896177,
		34.633327, 38.233913, 37.163883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887829, 39.081116, 37.312679>,  <34.790337, 38.501892, 37.791206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887829, 39.081116, 37.312679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619755, 38.835938, 37.145275>,  <34.458908, 38.688831, 37.044834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619755, 38.835938, 37.145275>,  <34.887829, 39.081116, 37.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619755, 38.835938, 37.145275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554074, 0.788369, -0.267351,
		0.493812, 0.052711, -0.867970,
		-0.670188, -0.612941, -0.418512,
		34.418697, 38.652054, 37.019722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793236, 39.346493, 36.621281>,  <34.887829, 39.081116, 37.312679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793236, 39.346493, 36.621281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476189, 39.162235, 36.781063>,  <34.285961, 39.051682, 36.876934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476189, 39.162235, 36.781063>,  <34.793236, 39.346493, 36.621281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476189, 39.162235, 36.781063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572523, 0.787619, -0.227757,
		-0.209705, -0.409222, -0.888010,
		-0.792617, -0.460644, 0.399457,
		34.238403, 39.024040, 36.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223293, 39.394402, 36.230995>,  <34.793236, 39.346493, 36.621281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223293, 39.394402, 36.230995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063137, 39.310829, 36.587879>,  <33.967041, 39.260685, 36.802010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063137, 39.310829, 36.587879>,  <34.223293, 39.394402, 36.230995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063137, 39.310829, 36.587879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712366, 0.683407, -0.159655,
		-0.576384, -0.699503, -0.422465,
		-0.400395, -0.208928, 0.892207,
		33.943020, 39.248150, 36.855541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500286, 39.202736, 36.219429>,  <34.223293, 39.394402, 36.230995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500286, 39.202736, 36.219429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610306, 39.417736, 36.538288>,  <33.676315, 39.546734, 36.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610306, 39.417736, 36.538288>,  <33.500286, 39.202736, 36.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610306, 39.417736, 36.538288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601136, 0.743214, -0.293716,
		-0.750323, -0.398408, 0.527528,
		0.275047, 0.537498, 0.797148,
		33.692822, 39.578987, 36.777431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181824, 39.845474, 36.554462>,  <33.500286, 39.202736, 36.219429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181824, 39.845474, 36.554462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978233, 39.809849, 36.896927>,  <32.856079, 39.788471, 37.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978233, 39.809849, 36.896927>,  <33.181824, 39.845474, 36.554462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978233, 39.809849, 36.896927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751562, -0.530874, 0.391570,
		0.419636, 0.842757, 0.337145,
		-0.508980, -0.089068, 0.856158,
		32.825539, 39.783127, 37.153774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400589, 40.208134, 37.132252>,  <33.181824, 39.845474, 36.554462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400589, 40.208134, 37.132252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232883, 39.845959, 37.158813>,  <33.132259, 39.628654, 37.174751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232883, 39.845959, 37.158813>,  <33.400589, 40.208134, 37.132252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232883, 39.845959, 37.158813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850032, -0.365814, 0.378980,
		-0.318850, 0.215337, 0.923019,
		-0.419261, -0.905434, 0.066403,
		33.107105, 39.574329, 37.178734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807262, 39.898621, 37.737347>,  <33.400589, 40.208134, 37.132252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807262, 39.898621, 37.737347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629143, 39.644798, 37.484665>,  <33.522270, 39.492504, 37.333057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629143, 39.644798, 37.484665>,  <33.807262, 39.898621, 37.737347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629143, 39.644798, 37.484665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768512, -0.632890, 0.094018,
		-0.459456, -0.443603, 0.769491,
		-0.445296, -0.634560, -0.631699,
		33.495552, 39.454430, 37.295155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668655, 39.230057, 38.121628>,  <33.807262, 39.898621, 37.737347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668655, 39.230057, 38.121628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756840, 39.216671, 37.731701>,  <33.809750, 39.208641, 37.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756840, 39.216671, 37.731701>,  <33.668655, 39.230057, 38.121628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756840, 39.216671, 37.731701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789580, -0.580656, 0.198498,
		-0.572678, -0.813461, -0.101592,
		0.220460, -0.033460, -0.974822,
		33.822979, 39.206635, 37.439255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484337, 38.640198, 37.604439>,  <33.668655, 39.230057, 38.121628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484337, 38.640198, 37.604439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520294, 38.802452, 37.240597>,  <33.541870, 38.899807, 37.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520294, 38.802452, 37.240597>,  <33.484337, 38.640198, 37.604439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520294, 38.802452, 37.240597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471000, -0.822031, -0.320037,
		-0.877541, -0.399652, -0.264954,
		0.089897, 0.405639, -0.909602,
		33.547264, 38.924145, 36.967716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205894, 38.207809, 37.109001>,  <33.484337, 38.640198, 37.604439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205894, 38.207809, 37.109001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508396, 38.425499, 36.963726>,  <33.689896, 38.556114, 36.876560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508396, 38.425499, 36.963726>,  <33.205894, 38.207809, 37.109001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508396, 38.425499, 36.963726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547480, -0.830307, -0.104190,
		-0.358263, -0.120047, -0.925870,
		0.756250, 0.544223, -0.363192,
		33.735271, 38.588764, 36.854767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506039, 37.917088, 36.544579>,  <33.205894, 38.207809, 37.109001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506039, 37.917088, 36.544579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787712, 38.142288, 36.717625>,  <33.956715, 38.277409, 36.821453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787712, 38.142288, 36.717625>,  <33.506039, 37.917088, 36.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787712, 38.142288, 36.717625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670922, -0.727026, -0.145933,
		0.232360, 0.393013, -0.889691,
		0.704182, 0.563004, 0.432613,
		33.998966, 38.311188, 36.847408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114838, 37.715271, 36.112766>,  <33.506039, 37.917088, 36.544579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114838, 37.715271, 36.112766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294407, 37.901718, 36.417713>,  <34.402149, 38.013588, 36.600681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294407, 37.901718, 36.417713>,  <34.114838, 37.715271, 36.112766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294407, 37.901718, 36.417713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825884, -0.542161, -0.154847,
		0.341147, 0.699138, -0.628351,
		0.448927, 0.466119, 0.762363,
		34.429085, 38.041553, 36.646423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842606, 37.833839, 35.844322>,  <34.114838, 37.715271, 36.112766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842606, 37.833839, 35.844322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833172, 37.818859, 36.243931>,  <34.827511, 37.809872, 36.483696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833172, 37.818859, 36.243931>,  <34.842606, 37.833839, 35.844322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833172, 37.818859, 36.243931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881781, -0.471649, 0.003136,
		0.471070, 0.880991, 0.044143,
		-0.023583, -0.037447, 0.999020,
		34.826096, 37.807625, 36.543636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432442, 38.177814, 36.038086>,  <34.842606, 37.833839, 35.844322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432442, 38.177814, 36.038086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308495, 37.932289, 36.328526>,  <35.234127, 37.784973, 36.502789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308495, 37.932289, 36.328526>,  <35.432442, 38.177814, 36.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308495, 37.932289, 36.328526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888075, -0.459601, -0.009532,
		0.339566, 0.641877, 0.687524,
		-0.309868, -0.613809, 0.726099,
		35.215534, 37.748146, 36.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079266, 38.044067, 36.302151>,  <35.432442, 38.177814, 36.038086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079266, 38.044067, 36.302151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847450, 37.781979, 36.495987>,  <35.708363, 37.624725, 36.612289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847450, 37.781979, 36.495987>,  <36.079266, 38.044067, 36.302151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847450, 37.781979, 36.495987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809486, -0.531547, 0.249379,
		0.094185, 0.536793, 0.838440,
		-0.579536, -0.655218, 0.484590,
		35.673588, 37.585415, 36.641365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143951, 38.260132, 36.961967>,  <36.079266, 38.044067, 36.302151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143951, 38.260132, 36.961967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910141, 37.938225, 37.003284>,  <35.769855, 37.745079, 37.028072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910141, 37.938225, 37.003284>,  <36.143951, 38.260132, 36.961967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910141, 37.938225, 37.003284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809891, -0.571029, 0.134172,
		-0.048997, 0.162080, 0.985560,
		-0.584530, -0.804771, 0.103289,
		35.734783, 37.696793, 37.034271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313694, 37.922787, 37.548721>,  <36.143951, 38.260132, 36.961967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313694, 37.922787, 37.548721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126888, 37.632824, 37.346172>,  <36.014805, 37.458847, 37.224644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126888, 37.632824, 37.346172>,  <36.313694, 37.922787, 37.548721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126888, 37.632824, 37.346172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702589, -0.651910, 0.285275,
		-0.536905, -0.222543, 0.813761,
		-0.467014, -0.724905, -0.506370,
		35.986786, 37.415352, 37.194260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220943, 37.213253, 37.963749>,  <36.313694, 37.922787, 37.548721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220943, 37.213253, 37.963749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221081, 37.126682, 37.573231>,  <36.221161, 37.074738, 37.338921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221081, 37.126682, 37.573231>,  <36.220943, 37.213253, 37.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221081, 37.126682, 37.573231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635909, -0.753425, 0.167245,
		-0.771764, -0.620894, 0.137372,
		0.000341, -0.216430, -0.976298,
		36.221184, 37.061752, 37.280342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210419, 36.547882, 37.850323>,  <36.220943, 37.213253, 37.963749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210419, 36.547882, 37.850323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338070, 36.670708, 37.491688>,  <36.414661, 36.744404, 37.276508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338070, 36.670708, 37.491688>,  <36.210419, 36.547882, 37.850323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338070, 36.670708, 37.491688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657086, -0.753428, -0.024150,
		-0.682929, -0.581428, -0.442210,
		0.319132, 0.307062, -0.896587,
		36.433811, 36.762825, 37.222713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429668, 35.958649, 37.395237>,  <36.210419, 36.547882, 37.850323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429668, 35.958649, 37.395237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612225, 36.272099, 37.226654>,  <36.721760, 36.460171, 37.125504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612225, 36.272099, 37.226654>,  <36.429668, 35.958649, 37.395237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612225, 36.272099, 37.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791469, -0.573962, -0.210106,
		-0.406548, -0.237683, -0.882171,
		0.456395, 0.783629, -0.421462,
		36.749142, 36.507187, 37.100216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640743, 35.183693, 37.337936>,  <36.429668, 35.958649, 37.395237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640743, 35.183693, 37.337936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753159, 34.807270, 37.413216>,  <36.820610, 34.581417, 37.458385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753159, 34.807270, 37.413216>,  <36.640743, 35.183693, 37.337936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753159, 34.807270, 37.413216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822980, -0.337204, -0.457162,
		0.493680, -0.026405, -0.869243,
		0.281041, -0.941061, 0.188202,
		36.837471, 34.524952, 37.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765858, 35.656952, 36.769066>,  <36.640743, 35.183693, 37.337936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765858, 35.656952, 36.769066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964802, 35.997364, 36.836456>,  <37.084167, 36.201611, 36.876892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964802, 35.997364, 36.836456>,  <36.765858, 35.656952, 36.769066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964802, 35.997364, 36.836456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849834, -0.516968, 0.102592,
		0.174406, 0.092152, -0.980352,
		0.497357, 0.851030, 0.168476,
		37.114010, 36.252674, 36.886997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335072, 35.687035, 36.267895>,  <36.765858, 35.656952, 36.769066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335072, 35.687035, 36.267895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426220, 35.901272, 36.593155>,  <37.480911, 36.029812, 36.788311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426220, 35.901272, 36.593155>,  <37.335072, 35.687035, 36.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426220, 35.901272, 36.593155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891499, -0.450583, 0.046952,
		0.391539, 0.714226, -0.580154,
		0.227873, 0.535590, 0.813153,
		37.494583, 36.061951, 36.837101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941475, 36.157475, 36.155510>,  <37.335072, 35.687035, 36.267895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941475, 36.157475, 36.155510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882862, 36.012951, 36.523853>,  <37.847694, 35.926235, 36.744862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882862, 36.012951, 36.523853>,  <37.941475, 36.157475, 36.155510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882862, 36.012951, 36.523853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909109, -0.416143, -0.018613,
		0.389935, 0.834434, 0.389449,
		-0.146535, -0.361309, 0.920860,
		37.838902, 35.904560, 36.800110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654984, 36.090546, 36.315472>,  <37.941475, 36.157475, 36.155510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654984, 36.090546, 36.315472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448204, 35.889011, 36.592289>,  <38.324139, 35.768089, 36.758377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448204, 35.889011, 36.592289>,  <38.654984, 36.090546, 36.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448204, 35.889011, 36.592289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753811, -0.651020, 0.089116,
		0.405632, 0.567735, 0.716338,
		-0.516944, -0.503835, 0.692040,
		38.293121, 35.737862, 36.799900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322422, 36.464977, 36.803551>,  <38.654984, 36.090546, 36.315472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322422, 36.464977, 36.803551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311718, 36.197659, 37.100918>,  <38.305298, 36.037266, 37.279339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311718, 36.197659, 37.100918>,  <38.322422, 36.464977, 36.803551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311718, 36.197659, 37.100918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993606, -0.099379, -0.053575,
		0.109684, 0.737227, 0.666683,
		-0.026757, -0.668296, 0.743414,
		38.303692, 35.997169, 37.323940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872429, 36.578091, 37.361263>,  <38.322422, 36.464977, 36.803551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872429, 36.578091, 37.361263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765697, 36.192997, 37.343616>,  <38.701660, 35.961941, 37.333031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765697, 36.192997, 37.343616>,  <38.872429, 36.578091, 37.361263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765697, 36.192997, 37.343616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921659, -0.241528, -0.303658,
		0.281688, -0.121682, 0.951759,
		-0.266826, -0.962735, -0.044114,
		38.685650, 35.904175, 37.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345329, 36.153473, 37.781757>,  <38.872429, 36.578091, 37.361263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345329, 36.153473, 37.781757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185997, 35.879025, 37.538261>,  <39.090397, 35.714355, 37.392162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185997, 35.879025, 37.538261>,  <39.345329, 36.153473, 37.781757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185997, 35.879025, 37.538261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900063, -0.420226, -0.115311,
		-0.176691, -0.593837, 0.784945,
		-0.398330, -0.686125, -0.608741,
		39.066498, 35.673187, 37.355640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614979, 35.474064, 37.972042>,  <39.345329, 36.153473, 37.781757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614979, 35.474064, 37.972042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492641, 35.449028, 37.592033>,  <39.419239, 35.434006, 37.364029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492641, 35.449028, 37.592033>,  <39.614979, 35.474064, 37.972042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492641, 35.449028, 37.592033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932872, -0.219131, -0.285888,
		-0.190284, -0.973686, 0.125413,
		-0.305847, -0.062594, -0.950021,
		39.400887, 35.430248, 37.307026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830421, 34.830437, 37.717773>,  <39.614979, 35.474064, 37.972042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830421, 34.830437, 37.717773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812038, 35.076084, 37.402622>,  <39.801006, 35.223473, 37.213531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812038, 35.076084, 37.402622>,  <39.830421, 34.830437, 37.717773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812038, 35.076084, 37.402622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909116, -0.301158, -0.287772,
		-0.414000, -0.729498, -0.544459,
		-0.045961, 0.614114, -0.787878,
		39.798252, 35.260319, 37.166260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817551, 34.406555, 37.181564>,  <39.830421, 34.830437, 37.717773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817551, 34.406555, 37.181564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967239, 34.752285, 37.047161>,  <40.057053, 34.959724, 36.966518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967239, 34.752285, 37.047161>,  <39.817551, 34.406555, 37.181564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967239, 34.752285, 37.047161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774167, -0.490652, -0.399907,
		-0.510513, -0.110475, -0.852744,
		0.374221, 0.864324, -0.336011,
		40.079506, 35.011581, 36.946358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019821, 34.391109, 36.439484>,  <39.817551, 34.406555, 37.181564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019821, 34.391109, 36.439484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221153, 34.673439, 36.638870>,  <40.341953, 34.842838, 36.758503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221153, 34.673439, 36.638870>,  <40.019821, 34.391109, 36.439484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221153, 34.673439, 36.638870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841282, -0.531963, -0.096227,
		0.197249, 0.467788, -0.861549,
		0.503326, 0.705825, 0.498471,
		40.372150, 34.885185, 36.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554783, 34.611065, 35.999027>,  <40.019821, 34.391109, 36.439484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554783, 34.611065, 35.999027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668190, 34.633472, 36.381958>,  <40.736237, 34.646915, 36.611717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668190, 34.633472, 36.381958>,  <40.554783, 34.611065, 35.999027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668190, 34.633472, 36.381958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785857, -0.585696, -0.198468,
		0.549587, 0.808593, -0.210076,
		0.283520, 0.056015, 0.957329,
		40.753246, 34.650276, 36.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241161, 34.915474, 36.082127>,  <40.554783, 34.611065, 35.999027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241161, 34.915474, 36.082127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167709, 34.672691, 36.391418>,  <41.123638, 34.527023, 36.576992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167709, 34.672691, 36.391418>,  <41.241161, 34.915474, 36.082127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167709, 34.672691, 36.391418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792365, -0.556922, -0.248989,
		0.581754, 0.566958, 0.583198,
		-0.183630, -0.606956, 0.773230,
		41.112621, 34.490604, 36.623386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781456, 34.872971, 36.466377>,  <41.241161, 34.915474, 36.082127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781456, 34.872971, 36.466377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602428, 34.521992, 36.535397>,  <41.495010, 34.311405, 36.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602428, 34.521992, 36.535397>,  <41.781456, 34.872971, 36.466377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602428, 34.521992, 36.535397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850343, -0.477316, -0.221554,
		0.276761, 0.047563, 0.959761,
		-0.447572, -0.877444, 0.172547,
		41.468159, 34.258759, 36.587162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999825, 34.456928, 36.974487>,  <41.781456, 34.872971, 36.466377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999825, 34.456928, 36.974487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893055, 34.232685, 36.660934>,  <41.828991, 34.098141, 36.472801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893055, 34.232685, 36.660934>,  <41.999825, 34.456928, 36.974487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893055, 34.232685, 36.660934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959771, -0.228170, -0.163641,
		-0.087120, -0.796026, 0.598960,
		-0.266927, -0.560607, -0.783881,
		41.812977, 34.064503, 36.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398033, 33.674614, 36.985291>,  <41.999825, 34.456928, 36.974487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398033, 33.674614, 36.985291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305851, 33.856430, 36.641132>,  <42.250542, 33.965519, 36.434635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305851, 33.856430, 36.641132>,  <42.398033, 33.674614, 36.985291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305851, 33.856430, 36.641132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971724, 0.060760, -0.228170,
		-0.051434, -0.888652, -0.455689,
		-0.230451, 0.454539, -0.860399,
		42.236717, 33.992790, 36.383011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554195, 33.311588, 36.313896>,  <42.398033, 33.674614, 36.985291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554195, 33.311588, 36.313896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574768, 33.707905, 36.263794>,  <42.587112, 33.945694, 36.233734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574768, 33.707905, 36.263794>,  <42.554195, 33.311588, 36.313896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574768, 33.707905, 36.263794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963156, -0.082362, -0.256022,
		-0.263980, -0.107470, -0.958522,
		0.051431, 0.990791, -0.125253,
		42.590199, 34.005142, 36.226219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608551, 33.452385, 35.635235>,  <42.554195, 33.311588, 36.313896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608551, 33.452385, 35.635235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812870, 33.717548, 35.854195>,  <42.935463, 33.876644, 35.985569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812870, 33.717548, 35.854195>,  <42.608551, 33.452385, 35.635235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812870, 33.717548, 35.854195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843113, -0.261794, -0.469706,
		-0.168066, 0.701442, -0.692628,
		0.510797, 0.662905, 0.547396,
		42.966110, 33.916420, 36.018414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234119, 33.221260, 35.406822>,  <42.608551, 33.452385, 35.635235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234119, 33.221260, 35.406822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280106, 33.548347, 35.632431>,  <43.307697, 33.744598, 35.767796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280106, 33.548347, 35.632431>,  <43.234119, 33.221260, 35.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280106, 33.548347, 35.632431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987212, -0.030933, -0.156383,
		-0.110430, 0.574788, -0.810817,
		0.114968, 0.817718, 0.564022,
		43.314594, 33.793663, 35.801636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590027, 33.801674, 35.005653>,  <43.234119, 33.221260, 35.406822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590027, 33.801674, 35.005653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637699, 33.825691, 35.402077>,  <43.666302, 33.840103, 35.639931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637699, 33.825691, 35.402077>,  <43.590027, 33.801674, 35.005653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637699, 33.825691, 35.402077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975732, 0.177590, -0.128097,
		-0.183694, 0.982271, -0.037425,
		0.119180, 0.060048, 0.991055,
		43.673454, 33.843704, 35.699394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794174, 34.580051, 35.337780>,  <43.590027, 33.801674, 35.005653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794174, 34.580051, 35.337780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955276, 34.312298, 35.587486>,  <44.051937, 34.151646, 35.737312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955276, 34.312298, 35.587486>,  <43.794174, 34.580051, 35.337780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955276, 34.312298, 35.587486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903050, 0.401850, -0.151715,
		-0.149307, 0.624850, 0.766335,
		0.402751, -0.669387, 0.624270,
		44.076103, 34.111481, 35.774769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198616, 34.951073, 35.757442>,  <43.794174, 34.580051, 35.337780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198616, 34.951073, 35.757442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340481, 34.578835, 35.721195>,  <44.425598, 34.355492, 35.699448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340481, 34.578835, 35.721195>,  <44.198616, 34.951073, 35.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340481, 34.578835, 35.721195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882385, 0.365181, -0.296717,
		0.309214, 0.025276, 0.950657,
		0.354661, -0.930594, -0.090616,
		44.446880, 34.299656, 35.694012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841480, 35.026871, 36.016701>,  <44.198616, 34.951073, 35.757442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841480, 35.026871, 36.016701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803341, 34.722500, 35.759987>,  <44.780457, 34.539875, 35.605957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803341, 34.722500, 35.759987>,  <44.841480, 35.026871, 36.016701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803341, 34.722500, 35.759987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732936, 0.382596, -0.562517,
		0.673582, -0.524027, 0.521232,
		-0.095353, -0.760931, -0.641788,
		44.774734, 34.494221, 35.567451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465519, 34.553177, 35.872581>,  <44.841480, 35.026871, 36.016701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465519, 34.553177, 35.872581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231342, 34.582565, 35.549629>,  <45.090836, 34.600197, 35.355858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231342, 34.582565, 35.549629>,  <45.465519, 34.553177, 35.872581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231342, 34.582565, 35.549629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656803, 0.626793, -0.419215,
		0.475262, -0.775715, -0.415202,
		-0.585437, 0.073469, -0.807382,
		45.055710, 34.604607, 35.307415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844738, 34.358929, 35.195400>,  <45.465519, 34.553177, 35.872581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844738, 34.358929, 35.195400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565155, 34.644764, 35.183964>,  <45.397404, 34.816265, 35.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565155, 34.644764, 35.183964>,  <45.844738, 34.358929, 35.195400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565155, 34.644764, 35.183964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683512, 0.655737, -0.320656,
		-0.210388, -0.243669, -0.946764,
		-0.698962, 0.714587, -0.028591,
		45.355465, 34.859138, 35.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457718, 34.509644, 35.589417>,  <45.844738, 34.358929, 35.195400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457718, 34.509644, 35.589417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804161, 34.316402, 35.538097>,  <47.012028, 34.200459, 35.507305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804161, 34.316402, 35.538097>,  <46.457718, 34.509644, 35.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804161, 34.316402, 35.538097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430531, 0.851411, -0.299572,
		0.253955, 0.204229, 0.945409,
		0.866112, -0.483105, -0.128293,
		47.063995, 34.171471, 35.499611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933258, 34.955757, 35.638844>,  <46.457718, 34.509644, 35.589417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933258, 34.955757, 35.638844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.112679, 34.675140, 35.417343>,  <47.220329, 34.506771, 35.284443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.112679, 34.675140, 35.417343>,  <46.933258, 34.955757, 35.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112679, 34.675140, 35.417343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527791, 0.707921, -0.469345,
		0.721279, -0.081741, 0.687805,
		0.448547, -0.701546, -0.553751,
		47.247242, 34.464676, 35.251217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685665, 34.849018, 35.588367>,  <46.933258, 34.955757, 35.638844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685665, 34.849018, 35.588367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538071, 34.773762, 35.224289>,  <47.449512, 34.728607, 35.005844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538071, 34.773762, 35.224289>,  <47.685665, 34.849018, 35.588367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538071, 34.773762, 35.224289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498672, 0.786334, -0.364699,
		0.784325, -0.588460, -0.196340,
		-0.368999, -0.188133, -0.910190,
		47.427376, 34.717319, 34.951229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.215286, 34.898212, 35.028526>,  <47.685665, 34.849018, 35.588367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.215286, 34.898212, 35.028526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.845417, 35.002213, 34.917263>,  <47.623493, 35.064613, 34.850506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.845417, 35.002213, 34.917263>,  <48.215286, 34.898212, 35.028526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.845417, 35.002213, 34.917263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378210, 0.711479, -0.592245,
		0.043920, -0.652838, -0.756223,
		-0.924677, 0.260000, -0.278158,
		47.568012, 35.080212, 34.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.839565, 35.851917, 25.931273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477833, 36.007584, 25.861156>,  <40.260792, 36.100983, 25.819086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477833, 36.007584, 25.861156>,  <40.839565, 35.851917, 25.931273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477833, 36.007584, 25.861156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383701, -0.561360, 0.733245,
		0.186954, 0.730359, 0.656981,
		-0.904335, 0.389167, -0.175291,
		40.206532, 36.124332, 25.808569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521614, 36.126431, 26.552361>,  <40.839565, 35.851917, 25.931273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521614, 36.126431, 26.552361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216427, 36.034641, 26.310625>,  <40.033314, 35.979568, 26.165585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216427, 36.034641, 26.310625>,  <40.521614, 36.126431, 26.552361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216427, 36.034641, 26.310625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414907, -0.543064, 0.730023,
		-0.495716, 0.807727, 0.319128,
		-0.762966, -0.229475, -0.604338,
		39.987537, 35.965797, 26.129324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900661, 36.281841, 26.903446>,  <40.521614, 36.126431, 26.552361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900661, 36.281841, 26.903446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789486, 36.026943, 26.615929>,  <39.722782, 35.874004, 26.443417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789486, 36.026943, 26.615929>,  <39.900661, 36.281841, 26.903446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789486, 36.026943, 26.615929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469947, -0.562416, 0.680322,
		-0.837796, 0.526882, -0.143156,
		-0.277936, -0.637247, -0.718796,
		39.706104, 35.835770, 26.400290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234898, 36.150169, 27.086147>,  <39.900661, 36.281841, 26.903446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234898, 36.150169, 27.086147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330273, 35.842964, 26.848391>,  <39.387497, 35.658642, 26.705736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330273, 35.842964, 26.848391>,  <39.234898, 36.150169, 27.086147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330273, 35.842964, 26.848391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449838, -0.629772, 0.633272,
		-0.860692, 0.116382, -0.495645,
		0.238442, -0.768013, -0.594392,
		39.401806, 35.612560, 26.670073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614288, 35.757862, 26.967283>,  <39.234898, 36.150169, 27.086147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614288, 35.757862, 26.967283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923004, 35.510021, 26.910107>,  <39.108234, 35.361317, 26.875801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923004, 35.510021, 26.910107>,  <38.614288, 35.757862, 26.967283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923004, 35.510021, 26.910107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429776, -0.673959, 0.600892,
		-0.468653, -0.402329, -0.786445,
		0.771788, -0.619606, -0.142942,
		39.154541, 35.324139, 26.867224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250290, 35.109535, 26.886116>,  <38.614288, 35.757862, 26.967283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250290, 35.109535, 26.886116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631092, 35.043018, 26.988907>,  <38.859573, 35.003109, 27.050581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631092, 35.043018, 26.988907>,  <38.250290, 35.109535, 26.886116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631092, 35.043018, 26.988907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296580, -0.708736, 0.640105,
		0.075686, -0.685596, -0.724037,
		0.952004, -0.166288, 0.256976,
		38.916695, 34.993134, 27.066000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178082, 34.481045, 26.905750>,  <38.250290, 35.109535, 26.886116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178082, 34.481045, 26.905750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525925, 34.557003, 27.088057>,  <38.734631, 34.602577, 27.197441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525925, 34.557003, 27.088057>,  <38.178082, 34.481045, 26.905750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525925, 34.557003, 27.088057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201402, -0.706367, 0.678589,
		0.450803, -0.681897, -0.576015,
		0.869606, 0.189899, 0.455768,
		38.786808, 34.613972, 27.224787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496277, 33.894146, 27.014526>,  <38.178082, 34.481045, 26.905750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496277, 33.894146, 27.014526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687088, 34.118008, 27.285591>,  <38.801575, 34.252327, 27.448231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687088, 34.118008, 27.285591>,  <38.496277, 33.894146, 27.014526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687088, 34.118008, 27.285591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107484, -0.728110, 0.676980,
		0.872290, -0.395778, -0.287176,
		0.477029, 0.559656, 0.677663,
		38.830196, 34.285904, 27.488890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947235, 33.477726, 27.384245>,  <38.496277, 33.894146, 27.014526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947235, 33.477726, 27.384245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904266, 33.787125, 27.634096>,  <38.878483, 33.972763, 27.784008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904266, 33.787125, 27.634096>,  <38.947235, 33.477726, 27.384245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904266, 33.787125, 27.634096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038669, -0.631040, 0.774786,
		0.993461, 0.059077, 0.097700,
		-0.107424, 0.773498, 0.624629,
		38.872040, 34.019173, 27.821486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396515, 33.337688, 28.015306>,  <38.947235, 33.477726, 27.384245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396515, 33.337688, 28.015306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122833, 33.603893, 28.134613>,  <38.958626, 33.763615, 28.206198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122833, 33.603893, 28.134613>,  <39.396515, 33.337688, 28.015306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122833, 33.603893, 28.134613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053356, -0.453568, 0.889623,
		0.727336, 0.592770, 0.345842,
		-0.684204, 0.665508, 0.298268,
		38.917572, 33.803547, 28.224094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694344, 33.669582, 28.616295>,  <39.396515, 33.337688, 28.015306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694344, 33.669582, 28.616295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296963, 33.711464, 28.634607>,  <39.058537, 33.736591, 28.645594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296963, 33.711464, 28.634607>,  <39.694344, 33.669582, 28.616295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296963, 33.711464, 28.634607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011532, -0.490439, 0.871399,
		0.113688, 0.865163, 0.488434,
		-0.993450, 0.104700, 0.045780,
		38.998928, 33.742874, 28.648342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551918, 33.979176, 29.335411>,  <39.694344, 33.669582, 28.616295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551918, 33.979176, 29.335411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215401, 33.803143, 29.209835>,  <39.013493, 33.697521, 29.134489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215401, 33.803143, 29.209835>,  <39.551918, 33.979176, 29.335411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215401, 33.803143, 29.209835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062218, -0.498060, 0.864908,
		-0.536992, 0.747171, 0.391631,
		-0.841290, -0.440082, -0.313942,
		38.963013, 33.671120, 29.115652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101658, 34.013390, 29.861742>,  <39.551918, 33.979176, 29.335411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101658, 34.013390, 29.861742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957695, 33.721386, 29.629347>,  <38.871315, 33.546185, 29.489910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957695, 33.721386, 29.629347>,  <39.101658, 34.013390, 29.861742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957695, 33.721386, 29.629347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170560, -0.560744, 0.810232,
		-0.917264, 0.390705, 0.077307,
		-0.359911, -0.730011, -0.580989,
		38.849720, 33.502384, 29.455050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546116, 33.763351, 30.203560>,  <39.101658, 34.013390, 29.861742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546116, 33.763351, 30.203560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616608, 33.459633, 29.952990>,  <38.658905, 33.277401, 29.802647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616608, 33.459633, 29.952990>,  <38.546116, 33.763351, 30.203560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616608, 33.459633, 29.952990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009394, -0.637653, 0.770266,
		-0.984304, -0.129861, -0.119507,
		0.176232, -0.759299, -0.626425,
		38.669476, 33.231842, 29.765062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137844, 33.266308, 30.430307>,  <38.546116, 33.763351, 30.203560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137844, 33.266308, 30.430307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433861, 33.079193, 30.237015>,  <38.611469, 32.966923, 30.121038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433861, 33.079193, 30.237015>,  <38.137844, 33.266308, 30.430307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433861, 33.079193, 30.237015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054505, -0.674418, 0.736335,
		-0.670318, -0.571276, -0.473620,
		0.740069, -0.467764, -0.483213,
		38.655872, 32.938858, 30.092045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963322, 32.665298, 30.541769>,  <38.137844, 33.266308, 30.430307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963322, 32.665298, 30.541769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357071, 32.644215, 30.474554>,  <38.593319, 32.631565, 30.434225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357071, 32.644215, 30.474554>,  <37.963322, 32.665298, 30.541769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357071, 32.644215, 30.474554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100481, -0.615533, 0.781680,
		-0.144634, -0.786347, -0.600616,
		0.984370, -0.052707, -0.168040,
		38.652382, 32.628403, 30.424143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097847, 31.987318, 30.729746>,  <37.963322, 32.665298, 30.541769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097847, 31.987318, 30.729746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436493, 32.200096, 30.736353>,  <38.639683, 32.327763, 30.740316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436493, 32.200096, 30.736353>,  <38.097847, 31.987318, 30.729746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436493, 32.200096, 30.736353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239747, -0.408911, 0.880519,
		0.475142, -0.741503, -0.473723,
		0.846618, 0.531945, 0.016518,
		38.690479, 32.359680, 30.741308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601906, 31.516987, 30.801718>,  <38.097847, 31.987318, 30.729746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601906, 31.516987, 30.801718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737766, 31.864817, 30.945095>,  <38.819283, 32.073513, 31.031122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737766, 31.864817, 30.945095>,  <38.601906, 31.516987, 30.801718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737766, 31.864817, 30.945095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276839, -0.456643, 0.845480,
		0.898888, -0.187936, -0.395830,
		0.339649, 0.869573, 0.358443,
		38.839661, 32.125687, 31.052628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198963, 31.321106, 31.136312>,  <38.601906, 31.516987, 30.801718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198963, 31.321106, 31.136312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142673, 31.690565, 31.278900>,  <39.108898, 31.912241, 31.364452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142673, 31.690565, 31.278900>,  <39.198963, 31.321106, 31.136312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142673, 31.690565, 31.278900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373373, -0.283955, 0.883155,
		0.916946, 0.257377, -0.304906,
		-0.140724, 0.923649, 0.356469,
		39.100456, 31.967659, 31.385841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775078, 31.400021, 31.566450>,  <39.198963, 31.321106, 31.136312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775078, 31.400021, 31.566450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501984, 31.659649, 31.700665>,  <39.338127, 31.815426, 31.781193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501984, 31.659649, 31.700665>,  <39.775078, 31.400021, 31.566450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501984, 31.659649, 31.700665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292842, -0.177649, 0.939513,
		0.669417, 0.739695, -0.068788,
		-0.682733, 0.649070, 0.335535,
		39.297165, 31.854370, 31.801325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120281, 31.795599, 32.100872>,  <39.775078, 31.400021, 31.566450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120281, 31.795599, 32.100872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738304, 31.878967, 32.185390>,  <39.509117, 31.928988, 32.236099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738304, 31.878967, 32.185390>,  <40.120281, 31.795599, 32.100872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738304, 31.878967, 32.185390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190108, -0.117141, 0.974750,
		0.227910, 0.970999, 0.072240,
		-0.954943, 0.208421, 0.211292,
		39.451820, 31.941494, 32.248779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095394, 32.305592, 32.734333>,  <40.120281, 31.795599, 32.100872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095394, 32.305592, 32.734333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276894, 32.475197, 33.047848>,  <40.385792, 32.576962, 33.235958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276894, 32.475197, 33.047848>,  <40.095394, 32.305592, 32.734333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276894, 32.475197, 33.047848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027294, 0.872518, -0.487819,
		-0.890713, 0.242738, 0.384328,
		0.453746, 0.424017, 0.783788,
		40.413017, 32.602402, 33.282986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684151, 32.885967, 32.901901>,  <40.095394, 32.305592, 32.734333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684151, 32.885967, 32.901901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050442, 32.937939, 33.053986>,  <40.270218, 32.969120, 33.145237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050442, 32.937939, 33.053986>,  <39.684151, 32.885967, 32.901901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050442, 32.937939, 33.053986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028063, 0.923284, -0.383090,
		-0.400818, 0.361477, 0.841831,
		0.915728, 0.129925, 0.380213,
		40.325161, 32.976917, 33.168049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667458, 33.559391, 33.077736>,  <39.684151, 32.885967, 32.901901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667458, 33.559391, 33.077736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053020, 33.453106, 33.071072>,  <40.284359, 33.389336, 33.067074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053020, 33.453106, 33.071072>,  <39.667458, 33.559391, 33.077736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053020, 33.453106, 33.071072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207562, 0.789196, -0.578003,
		0.166734, 0.553683, 0.815865,
		0.963908, -0.265715, -0.016663,
		40.342194, 33.373390, 33.066074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010113, 34.147293, 33.088760>,  <39.667458, 33.559391, 33.077736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010113, 34.147293, 33.088760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317081, 33.925770, 32.959545>,  <40.501263, 33.792854, 32.882015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317081, 33.925770, 32.959545>,  <40.010113, 34.147293, 33.088760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317081, 33.925770, 32.959545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320984, 0.768037, -0.554156,
		0.555001, 0.321584, 0.767175,
		0.767426, -0.553808, -0.323038,
		40.547310, 33.759628, 32.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565208, 34.549194, 33.072094>,  <40.010113, 34.147293, 33.088760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565208, 34.549194, 33.072094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693436, 34.254749, 32.833641>,  <40.770374, 34.078083, 32.690571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.693436, 34.254749, 32.833641>,  <40.565208, 34.549194, 33.072094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693436, 34.254749, 32.833641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365481, 0.676736, -0.639103,
		0.873875, -0.012996, 0.485978,
		0.320572, -0.736111, -0.596132,
		40.789608, 34.033916, 32.654800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249901, 34.695049, 32.868198>,  <40.565208, 34.549194, 33.072094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249901, 34.695049, 32.868198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.080605, 34.449150, 32.601978>,  <40.979027, 34.301609, 32.442245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.080605, 34.449150, 32.601978>,  <41.249901, 34.695049, 32.868198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080605, 34.449150, 32.601978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205125, 0.650492, -0.731289,
		0.882491, -0.446031, -0.149215,
		-0.423241, -0.614748, -0.665546,
		40.953632, 34.264725, 32.402313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708687, 34.471439, 32.431755>,  <41.249901, 34.695049, 32.868198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708687, 34.471439, 32.431755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370953, 34.435345, 32.220490>,  <41.168312, 34.413689, 32.093731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370953, 34.435345, 32.220490>,  <41.708687, 34.471439, 32.431755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370953, 34.435345, 32.220490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394797, 0.561670, -0.727092,
		0.362268, -0.822425, -0.438610,
		-0.844332, -0.090240, -0.528166,
		41.117653, 34.408272, 32.062038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991177, 34.208309, 31.819696>,  <41.708687, 34.471439, 32.431755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991177, 34.208309, 31.819696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620029, 34.335899, 31.742424>,  <41.397343, 34.412453, 31.696060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620029, 34.335899, 31.742424>,  <41.991177, 34.208309, 31.819696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620029, 34.335899, 31.742424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331962, 0.470488, -0.817583,
		-0.169902, -0.822736, -0.542438,
		-0.927866, 0.318978, -0.193180,
		41.341671, 34.431591, 31.684469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920021, 33.996025, 31.171095>,  <41.991177, 34.208309, 31.819696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920021, 33.996025, 31.171095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642262, 34.274452, 31.244083>,  <41.475605, 34.441509, 31.287876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642262, 34.274452, 31.244083>,  <41.920021, 33.996025, 31.171095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642262, 34.274452, 31.244083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203038, 0.432800, -0.878328,
		-0.690351, -0.572862, -0.441865,
		-0.694400, 0.696070, 0.182472,
		41.433941, 34.483273, 31.298824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445351, 33.975121, 30.597778>,  <41.920021, 33.996025, 31.171095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445351, 33.975121, 30.597778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410980, 34.347202, 30.740511>,  <41.390358, 34.570454, 30.826151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410980, 34.347202, 30.740511>,  <41.445351, 33.975121, 30.597778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410980, 34.347202, 30.740511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227101, 0.367015, -0.902067,
		-0.970073, 0.003525, -0.242788,
		-0.085928, 0.930208, 0.356832,
		41.385201, 34.626266, 30.847561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200527, 34.329529, 30.095869>,  <41.445351, 33.975121, 30.597778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200527, 34.329529, 30.095869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.347954, 34.631847, 30.312359>,  <41.436409, 34.813240, 30.442253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.347954, 34.631847, 30.312359>,  <41.200527, 34.329529, 30.095869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347954, 34.631847, 30.312359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267026, 0.471598, -0.840412,
		-0.890423, 0.454271, -0.028001,
		0.368570, 0.755799, 0.541224,
		41.458527, 34.858585, 30.474726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857883, 34.970123, 29.836845>,  <41.200527, 34.329529, 30.095869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857883, 34.970123, 29.836845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189022, 35.089760, 30.026676>,  <41.387703, 35.161541, 30.140574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189022, 35.089760, 30.026676>,  <40.857883, 34.970123, 29.836845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189022, 35.089760, 30.026676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334850, 0.415279, -0.845825,
		-0.450057, 0.859122, 0.243636,
		0.827843, 0.299087, 0.474576,
		41.437374, 35.179485, 30.169048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930901, 35.642475, 29.631683>,  <40.857883, 34.970123, 29.836845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930901, 35.642475, 29.631683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.285873, 35.522675, 29.771835>,  <41.498856, 35.450794, 29.855927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.285873, 35.522675, 29.771835>,  <40.930901, 35.642475, 29.631683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285873, 35.522675, 29.771835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452805, 0.424209, -0.784229,
		0.086245, 0.854601, 0.512072,
		0.887429, -0.299505, 0.350382,
		41.552101, 35.432823, 29.876949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302837, 36.216038, 29.589773>,  <40.930901, 35.642475, 29.631683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302837, 36.216038, 29.589773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.568829, 35.917332, 29.594721>,  <41.728424, 35.738110, 29.597689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.568829, 35.917332, 29.594721>,  <41.302837, 36.216038, 29.589773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568829, 35.917332, 29.594721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506481, 0.438717, -0.742296,
		0.548894, 0.499873, 0.669958,
		0.664976, -0.746763, 0.012367,
		41.768322, 35.693302, 29.598431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958988, 36.541660, 29.488409>,  <41.302837, 36.216038, 29.589773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958988, 36.541660, 29.488409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.011356, 36.157158, 29.391380>,  <42.042778, 35.926456, 29.333162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.011356, 36.157158, 29.391380>,  <41.958988, 36.541660, 29.488409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011356, 36.157158, 29.391380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603322, 0.271405, -0.749894,
		0.786678, -0.048175, 0.615481,
		0.130918, -0.961259, -0.242573,
		42.050632, 35.868782, 29.318609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696327, 36.475300, 29.345442>,  <41.958988, 36.541660, 29.488409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696327, 36.475300, 29.345442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.535473, 36.149929, 29.177338>,  <42.438961, 35.954704, 29.076475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.535473, 36.149929, 29.177338>,  <42.696327, 36.475300, 29.345442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535473, 36.149929, 29.177338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460205, 0.217236, -0.860825,
		0.791516, -0.539575, 0.286985,
		-0.402136, -0.813429, -0.420261,
		42.414833, 35.905899, 29.051260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319054, 36.046383, 28.993870>,  <42.696327, 36.475300, 29.345442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319054, 36.046383, 28.993870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.964245, 35.946957, 28.838223>,  <42.751362, 35.887302, 28.744835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.964245, 35.946957, 28.838223>,  <43.319054, 36.046383, 28.993870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964245, 35.946957, 28.838223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360952, 0.152252, -0.920072,
		0.287940, -0.956575, -0.045331,
		-0.887020, -0.248564, -0.389117,
		42.698139, 35.872387, 28.721487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460442, 35.620338, 28.521488>,  <43.319054, 36.046383, 28.993870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460442, 35.620338, 28.521488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.100430, 35.750195, 28.405174>,  <42.884422, 35.828110, 28.335386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.100430, 35.750195, 28.405174>,  <43.460442, 35.620338, 28.521488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100430, 35.750195, 28.405174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387469, 0.290552, -0.874898,
		-0.199538, -0.900105, -0.387293,
		-0.900029, 0.324640, -0.290787,
		42.830421, 35.847588, 28.317938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431660, 35.489044, 27.752995>,  <43.460442, 35.620338, 28.521488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431660, 35.489044, 27.752995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.152943, 35.757103, 27.855276>,  <42.985714, 35.917938, 27.916645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.152943, 35.757103, 27.855276>,  <43.431660, 35.489044, 27.752995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152943, 35.757103, 27.855276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234927, 0.550050, -0.801408,
		-0.677713, -0.498340, -0.540705,
		-0.696788, 0.670151, 0.255703,
		42.943905, 35.958149, 27.931988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.973782, 35.570229, 27.012955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928989, 35.883953, 27.257027>,  <42.902115, 36.072189, 27.403469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928989, 35.883953, 27.257027>,  <42.973782, 35.570229, 27.012955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928989, 35.883953, 27.257027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060466, 0.618281, -0.783627,
		-0.991869, -0.050857, -0.116661,
		-0.111982, 0.784310, 0.610179,
		42.895393, 36.119247, 27.440081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387318, 35.878468, 26.733187>,  <42.973782, 35.570229, 27.012955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387318, 35.878468, 26.733187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547695, 36.170597, 26.954407>,  <42.643921, 36.345875, 27.087139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547695, 36.170597, 26.954407>,  <42.387318, 35.878468, 26.733187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547695, 36.170597, 26.954407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264183, 0.670229, -0.693542,
		-0.877182, 0.131969, 0.461667,
		0.400948, 0.730327, 0.553049,
		42.667980, 36.389694, 27.120321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878632, 36.370178, 26.680313>,  <42.387318, 35.878468, 26.733187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878632, 36.370178, 26.680313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207165, 36.560204, 26.806633>,  <42.404285, 36.674217, 26.882423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.207165, 36.560204, 26.806633>,  <41.878632, 36.370178, 26.680313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207165, 36.560204, 26.806633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142406, 0.706816, -0.692915,
		-0.552390, 0.524142, 0.648182,
		0.821332, 0.475065, 0.315797,
		42.453564, 36.702724, 26.901373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665668, 37.030064, 26.538921>,  <41.878632, 36.370178, 26.680313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665668, 37.030064, 26.538921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063278, 37.043148, 26.580585>,  <42.301842, 37.050999, 26.605583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063278, 37.043148, 26.580585>,  <41.665668, 37.030064, 26.538921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063278, 37.043148, 26.580585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052499, 0.693275, -0.718759,
		-0.095724, 0.719931, 0.687413,
		0.994023, 0.032714, 0.104158,
		42.361485, 37.052963, 26.611834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742462, 37.735180, 26.683485>,  <41.665668, 37.030064, 26.538921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742462, 37.735180, 26.683485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.082821, 37.578869, 26.543047>,  <42.287037, 37.485081, 26.458784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.082821, 37.578869, 26.543047>,  <41.742462, 37.735180, 26.683485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082821, 37.578869, 26.543047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006905, 0.659953, -0.751276,
		0.525290, 0.641681, 0.558852,
		0.850895, -0.390779, -0.351097,
		42.338089, 37.461636, 26.437717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252430, 38.286140, 26.507042>,  <41.742462, 37.735180, 26.683485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252430, 38.286140, 26.507042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396996, 37.993877, 26.275345>,  <42.483734, 37.818520, 26.136326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396996, 37.993877, 26.275345>,  <42.252430, 38.286140, 26.507042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396996, 37.993877, 26.275345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009673, 0.624140, -0.781253,
		0.932354, 0.276756, 0.232643,
		0.361418, -0.730654, -0.579242,
		42.505421, 37.774681, 26.101572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728287, 38.614506, 26.079941>,  <42.252430, 38.286140, 26.507042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728287, 38.614506, 26.079941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.678604, 38.266373, 25.889326>,  <42.648792, 38.057491, 25.774958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.678604, 38.266373, 25.889326>,  <42.728287, 38.614506, 26.079941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678604, 38.266373, 25.889326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203413, 0.447722, -0.870728,
		0.971182, -0.205086, 0.121426,
		-0.124209, -0.870336, -0.476537,
		42.641342, 38.005272, 25.746365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212132, 38.626774, 25.523857>,  <42.728287, 38.614506, 26.079941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212132, 38.626774, 25.523857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969193, 38.337486, 25.392359>,  <42.823429, 38.163914, 25.313459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969193, 38.337486, 25.392359>,  <43.212132, 38.626774, 25.523857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969193, 38.337486, 25.392359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179667, 0.278044, -0.943616,
		0.773850, -0.632171, -0.038931,
		-0.607351, -0.723223, -0.328745,
		42.786987, 38.120518, 25.293736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561890, 38.243931, 24.927650>,  <43.212132, 38.626774, 25.523857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561890, 38.243931, 24.927650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169209, 38.185745, 24.878502>,  <42.933601, 38.150833, 24.849012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169209, 38.185745, 24.878502>,  <43.561890, 38.243931, 24.927650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169209, 38.185745, 24.878502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045665, 0.446611, -0.893562,
		0.184856, -0.882825, -0.431797,
		-0.981704, -0.145463, -0.122873,
		42.874699, 38.142105, 24.841640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495937, 37.989738, 24.187542>,  <43.561890, 38.243931, 24.927650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495937, 37.989738, 24.187542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138065, 38.153465, 24.259113>,  <42.923344, 38.251701, 24.302055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.138065, 38.153465, 24.259113>,  <43.495937, 37.989738, 24.187542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138065, 38.153465, 24.259113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012472, 0.423277, -0.905915,
		-0.446540, -0.808269, -0.383801,
		-0.894677, 0.409314, 0.178929,
		42.869663, 38.276260, 24.312792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182552, 38.120716, 23.532194>,  <43.495937, 37.989738, 24.187542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182552, 38.120716, 23.532194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.948486, 38.332825, 23.777599>,  <42.808048, 38.460091, 23.924843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.948486, 38.332825, 23.777599>,  <43.182552, 38.120716, 23.532194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948486, 38.332825, 23.777599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221173, 0.623519, -0.749871,
		-0.780170, -0.574490, -0.247580,
		-0.585165, 0.530268, 0.613513,
		42.772938, 38.491905, 23.961653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497368, 38.160553, 23.219587>,  <43.182552, 38.120716, 23.532194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497368, 38.160553, 23.219587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.552078, 38.477932, 23.456818>,  <42.584904, 38.668358, 23.599155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.552078, 38.477932, 23.456818>,  <42.497368, 38.160553, 23.219587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552078, 38.477932, 23.456818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126658, 0.607794, -0.783929,
		-0.982472, 0.032103, 0.183626,
		0.136773, 0.793446, 0.593074,
		42.593109, 38.715965, 23.634741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004242, 38.527851, 22.968933>,  <42.497368, 38.160553, 23.219587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004242, 38.527851, 22.968933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.241951, 38.788380, 23.157663>,  <42.384579, 38.944695, 23.270901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.241951, 38.788380, 23.157663>,  <42.004242, 38.527851, 22.968933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241951, 38.788380, 23.157663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238120, 0.702844, -0.670305,
		-0.768203, 0.285994, 0.572775,
		0.594275, 0.651320, 0.471826,
		42.420235, 38.983776, 23.299212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683826, 39.117092, 22.859371>,  <42.004242, 38.527851, 22.968933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683826, 39.117092, 22.859371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060410, 39.220940, 22.945395>,  <42.286358, 39.283249, 22.997009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060410, 39.220940, 22.945395>,  <41.683826, 39.117092, 22.859371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060410, 39.220940, 22.945395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080116, 0.791941, -0.605318,
		-0.327469, 0.552653, 0.766380,
		0.941459, 0.259623, 0.215060,
		42.342846, 39.298828, 23.009912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674679, 39.878151, 23.071074>,  <41.683826, 39.117092, 22.859371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674679, 39.878151, 23.071074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.053864, 39.813988, 22.961065>,  <42.281376, 39.775490, 22.895060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.053864, 39.813988, 22.961065>,  <41.674679, 39.878151, 23.071074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053864, 39.813988, 22.961065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115681, 0.978306, -0.171860,
		0.296621, 0.131102, 0.945953,
		0.947963, -0.160406, -0.275020,
		42.338253, 39.765865, 22.878559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098206, 40.347321, 23.420759>,  <41.674679, 39.878151, 23.071074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098206, 40.347321, 23.420759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295200, 40.224430, 23.095043>,  <42.413395, 40.150696, 22.899612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295200, 40.224430, 23.095043>,  <42.098206, 40.347321, 23.420759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295200, 40.224430, 23.095043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243308, 0.946919, -0.210110,
		0.835620, -0.094648, 0.541093,
		0.492485, -0.307224, -0.814292,
		42.442947, 40.132263, 22.850756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415855, 41.026455, 23.231527>,  <42.098206, 40.347321, 23.420759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415855, 41.026455, 23.231527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457600, 40.809250, 22.898243>,  <42.482647, 40.678925, 22.698273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457600, 40.809250, 22.898243>,  <42.415855, 41.026455, 23.231527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457600, 40.809250, 22.898243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112418, 0.838858, -0.532616,
		0.988165, -0.038082, 0.148592,
		0.104365, -0.543017, -0.833211,
		42.488911, 40.646343, 22.648279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032887, 41.307880, 22.904922>,  <42.415855, 41.026455, 23.231527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032887, 41.307880, 22.904922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809734, 41.123211, 22.629059>,  <42.675842, 41.012409, 22.463541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809734, 41.123211, 22.629059>,  <43.032887, 41.307880, 22.904922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809734, 41.123211, 22.629059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058045, 0.807250, -0.587348,
		0.827894, -0.367696, -0.423545,
		-0.557872, -0.461678, -0.689660,
		42.642372, 40.984707, 22.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312523, 41.645527, 22.289072>,  <43.032887, 41.307880, 22.904922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312523, 41.645527, 22.289072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.979675, 41.458672, 22.169497>,  <42.779968, 41.346558, 22.097752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.979675, 41.458672, 22.169497>,  <43.312523, 41.645527, 22.289072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979675, 41.458672, 22.169497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070594, 0.623846, -0.778352,
		0.550090, -0.626576, -0.552090,
		-0.832116, -0.467138, -0.298939,
		42.730042, 41.318531, 22.079815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405842, 41.582706, 21.588787>,  <43.312523, 41.645527, 22.289072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405842, 41.582706, 21.588787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.009129, 41.554291, 21.631359>,  <42.771103, 41.537239, 21.656902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.009129, 41.554291, 21.631359>,  <43.405842, 41.582706, 21.588787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009129, 41.554291, 21.631359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127207, 0.637627, -0.759770,
		-0.013888, -0.767062, -0.641422,
		-0.991779, -0.071042, 0.106431,
		42.711594, 41.532978, 21.663288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092163, 41.210472, 21.003527>,  <43.405842, 41.582706, 21.588787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092163, 41.210472, 21.003527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813519, 41.447784, 21.164896>,  <42.646332, 41.590172, 21.261717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813519, 41.447784, 21.164896>,  <43.092163, 41.210472, 21.003527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813519, 41.447784, 21.164896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000944, 0.561545, -0.827445,
		-0.717446, -0.576790, -0.390620,
		-0.696613, 0.593279, 0.403423,
		42.604534, 41.625767, 21.285923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674088, 41.379528, 20.405464>,  <43.092163, 41.210472, 21.003527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674088, 41.379528, 20.405464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599155, 41.650890, 20.689627>,  <42.554195, 41.813705, 20.860125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599155, 41.650890, 20.689627>,  <42.674088, 41.379528, 20.405464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599155, 41.650890, 20.689627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044644, 0.728343, -0.683757,
		-0.981282, -0.096373, -0.166728,
		-0.187331, 0.678402, 0.710407,
		42.542957, 41.854412, 20.902748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120991, 41.773369, 20.214766>,  <42.674088, 41.379528, 20.405464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120991, 41.773369, 20.214766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361328, 41.980309, 20.458515>,  <42.505531, 42.104473, 20.604765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361328, 41.980309, 20.458515>,  <42.120991, 41.773369, 20.214766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361328, 41.980309, 20.458515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106155, 0.703926, -0.702296,
		-0.792289, 0.486656, 0.368027,
		0.600840, 0.517353, 0.609374,
		42.541580, 42.135513, 20.641327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554974, 41.571594, 19.656382>,  <42.120991, 41.773369, 20.214766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554974, 41.571594, 19.656382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157661, 41.578056, 19.610556>,  <40.919273, 41.581936, 19.583059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157661, 41.578056, 19.610556>,  <41.554974, 41.571594, 19.656382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157661, 41.578056, 19.610556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083599, -0.784776, 0.614116,
		-0.079984, 0.619569, 0.780856,
		-0.993284, 0.016159, -0.114565,
		40.859676, 41.582905, 19.576185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216980, 41.189114, 20.222904>,  <41.554974, 41.571594, 19.656382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216980, 41.189114, 20.222904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899403, 41.218105, 19.981443>,  <40.708855, 41.235500, 19.836567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899403, 41.218105, 19.981443>,  <41.216980, 41.189114, 20.222904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899403, 41.218105, 19.981443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431473, -0.766674, 0.475439,
		-0.428344, 0.637932, 0.639972,
		-0.793947, 0.072479, -0.603651,
		40.661217, 41.239849, 19.800348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716293, 41.220051, 20.758976>,  <41.216980, 41.189114, 20.222904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716293, 41.220051, 20.758976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542042, 41.109425, 20.416342>,  <40.437492, 41.043049, 20.210762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542042, 41.109425, 20.416342>,  <40.716293, 41.220051, 20.758976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542042, 41.109425, 20.416342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443219, -0.762364, 0.471549,
		-0.783443, 0.585076, 0.209530,
		-0.435630, -0.276564, -0.856585,
		40.411354, 41.026455, 20.159367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059719, 41.092430, 20.976109>,  <40.716293, 41.220051, 20.758976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059719, 41.092430, 20.976109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129459, 40.878239, 20.645567>,  <40.171303, 40.749725, 20.447241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129459, 40.878239, 20.645567>,  <40.059719, 41.092430, 20.976109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129459, 40.878239, 20.645567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266360, -0.833571, 0.483955,
		-0.947973, 0.135729, -0.287966,
		0.174353, -0.535479, -0.826356,
		40.181767, 40.717594, 20.397659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562630, 40.587181, 21.128468>,  <40.059719, 41.092430, 20.976109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562630, 40.587181, 21.128468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779190, 40.440842, 20.825670>,  <39.909126, 40.353039, 20.643991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779190, 40.440842, 20.825670>,  <39.562630, 40.587181, 21.128468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779190, 40.440842, 20.825670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142582, -0.927275, 0.346167,
		-0.828584, -0.079483, -0.554194,
		0.541404, -0.365847, -0.756993,
		39.941612, 40.331089, 20.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144054, 40.140194, 20.630413>,  <39.562630, 40.587181, 21.128468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144054, 40.140194, 20.630413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524277, 40.016151, 20.623718>,  <39.752411, 39.941727, 20.619701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524277, 40.016151, 20.623718>,  <39.144054, 40.140194, 20.630413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524277, 40.016151, 20.623718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258540, -0.820048, 0.510566,
		-0.172055, -0.480994, -0.859676,
		0.950555, -0.310106, -0.016737,
		39.809444, 39.923119, 20.618696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067001, 39.438812, 20.453934>,  <39.144054, 40.140194, 20.630413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067001, 39.438812, 20.453934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420593, 39.497711, 20.631428>,  <39.632748, 39.533051, 20.737925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420593, 39.497711, 20.631428>,  <39.067001, 39.438812, 20.453934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420593, 39.497711, 20.631428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230116, -0.689155, 0.687104,
		0.406973, -0.709496, -0.575316,
		0.883979, 0.147243, 0.443734,
		39.685787, 39.541885, 20.764547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265022, 38.703758, 20.622305>,  <39.067001, 39.438812, 20.453934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265022, 38.703758, 20.622305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518677, 38.932968, 20.829962>,  <39.670872, 39.070496, 20.954556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518677, 38.932968, 20.829962>,  <39.265022, 38.703758, 20.622305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518677, 38.932968, 20.829962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030020, -0.689145, 0.724001,
		0.772636, -0.443532, -0.454215,
		0.634138, 0.573025, 0.519144,
		39.708920, 39.104877, 20.985704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779938, 38.257046, 20.850285>,  <39.265022, 38.703758, 20.622305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779938, 38.257046, 20.850285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788441, 38.583889, 21.080723>,  <39.793541, 38.779995, 21.218987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788441, 38.583889, 21.080723>,  <39.779938, 38.257046, 20.850285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788441, 38.583889, 21.080723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027844, -0.576486, 0.816633,
		0.999386, -0.001315, -0.035003,
		0.021253, 0.817106, 0.576095,
		39.794815, 38.829021, 21.253551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260586, 38.065056, 21.354221>,  <39.779938, 38.257046, 20.850285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260586, 38.065056, 21.354221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051468, 38.356491, 21.531240>,  <39.925999, 38.531353, 21.637451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051468, 38.356491, 21.531240>,  <40.260586, 38.065056, 21.354221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051468, 38.356491, 21.531240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128798, -0.445671, 0.885882,
		0.842674, 0.520132, 0.139152,
		-0.522792, 0.728588, 0.442548,
		39.894630, 38.575066, 21.664005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647621, 38.389252, 21.867331>,  <40.260586, 38.065056, 21.354221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647621, 38.389252, 21.867331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277328, 38.491402, 21.978910>,  <40.055153, 38.552692, 22.045858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277328, 38.491402, 21.978910>,  <40.647621, 38.389252, 21.867331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277328, 38.491402, 21.978910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241125, -0.169680, 0.955546,
		0.291350, 0.951838, 0.095501,
		-0.925729, 0.255371, 0.278948,
		39.999611, 38.568012, 22.062595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722740, 38.892544, 22.344852>,  <40.647621, 38.389252, 21.867331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722740, 38.892544, 22.344852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364288, 38.727753, 22.410858>,  <40.149216, 38.628880, 22.450462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364288, 38.727753, 22.410858>,  <40.722740, 38.892544, 22.344852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364288, 38.727753, 22.410858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228099, -0.108611, 0.967561,
		-0.380690, 0.904698, 0.191301,
		-0.896128, -0.411977, 0.165014,
		40.095451, 38.604160, 22.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632885, 39.079044, 23.034359>,  <40.722740, 38.892544, 22.344852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632885, 39.079044, 23.034359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373352, 38.784019, 22.959503>,  <40.217632, 38.607006, 22.914589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373352, 38.784019, 22.959503>,  <40.632885, 39.079044, 23.034359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373352, 38.784019, 22.959503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148772, -0.364149, 0.919382,
		-0.746247, 0.568682, 0.345999,
		-0.648831, -0.737561, -0.187141,
		40.178703, 38.562752, 22.903360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293633, 38.900162, 23.692753>,  <40.632885, 39.079044, 23.034359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293633, 38.900162, 23.692753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186523, 38.587700, 23.467154>,  <40.122257, 38.400223, 23.331795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186523, 38.587700, 23.467154>,  <40.293633, 38.900162, 23.692753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186523, 38.587700, 23.467154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004558, -0.586393, 0.810014,
		-0.963472, 0.214327, 0.160580,
		-0.267771, -0.781158, -0.563996,
		40.106194, 38.353352, 23.297955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584305, 38.527534, 23.900249>,  <40.293633, 38.900162, 23.692753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584305, 38.527534, 23.900249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773983, 38.250870, 23.682356>,  <39.887791, 38.084869, 23.551619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773983, 38.250870, 23.682356>,  <39.584305, 38.527534, 23.900249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773983, 38.250870, 23.682356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055515, -0.640982, 0.765546,
		-0.878667, -0.332779, -0.342350,
		0.474197, -0.691665, -0.544735,
		39.916241, 38.043369, 23.518936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357712, 37.928719, 24.245907>,  <39.584305, 38.527534, 23.900249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357712, 37.928719, 24.245907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670242, 37.797291, 24.033657>,  <39.857761, 37.718433, 23.906307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670242, 37.797291, 24.033657>,  <39.357712, 37.928719, 24.245907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670242, 37.797291, 24.033657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122222, -0.753184, 0.646355,
		-0.612032, -0.569871, -0.548328,
		0.781331, -0.328573, -0.530624,
		39.904640, 37.698719, 23.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250507, 37.243191, 24.077435>,  <39.357712, 37.928719, 24.245907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250507, 37.243191, 24.077435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640049, 37.333321, 24.088972>,  <39.873775, 37.387398, 24.095894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640049, 37.333321, 24.088972>,  <39.250507, 37.243191, 24.077435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640049, 37.333321, 24.088972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134960, -0.676040, 0.724401,
		0.182724, -0.701570, -0.688776,
		0.973857, 0.225322, 0.028845,
		39.932205, 37.400917, 24.097626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533581, 36.667088, 23.914024>,  <39.250507, 37.243191, 24.077435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533581, 36.667088, 23.914024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802490, 36.856712, 24.141464>,  <39.963837, 36.970490, 24.277927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802490, 36.856712, 24.141464>,  <39.533581, 36.667088, 23.914024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802490, 36.856712, 24.141464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060818, -0.730102, 0.680626,
		0.737797, -0.492151, -0.461999,
		0.672278, 0.474066, 0.568599,
		40.004173, 36.998932, 24.312044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794125, 36.093716, 24.280468>,  <39.533581, 36.667088, 23.914024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794125, 36.093716, 24.280468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952583, 36.399147, 24.484436>,  <40.047661, 36.582405, 24.606817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.952583, 36.399147, 24.484436>,  <39.794125, 36.093716, 24.280468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952583, 36.399147, 24.484436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037849, -0.568465, 0.821836,
		0.917405, -0.306270, -0.254099,
		0.396150, 0.763574, 0.509921,
		40.071430, 36.628220, 24.637413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446075, 35.759975, 24.601992>,  <39.794125, 36.093716, 24.280468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446075, 35.759975, 24.601992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328533, 36.083092, 24.806395>,  <40.258007, 36.276962, 24.929037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328533, 36.083092, 24.806395>,  <40.446075, 35.759975, 24.601992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328533, 36.083092, 24.806395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010377, -0.537275, 0.843343,
		0.955795, 0.242515, 0.166262,
		-0.293852, 0.807788, 0.511007,
		40.240379, 36.325428, 24.959698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809414, 35.675499, 25.132944>,  <40.446075, 35.759975, 24.601992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809414, 35.675499, 25.132944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521389, 35.926109, 25.252262>,  <40.348576, 36.076473, 25.323853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521389, 35.926109, 25.252262>,  <40.809414, 35.675499, 25.132944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521389, 35.926109, 25.252262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120850, -0.536535, 0.835180,
		0.683306, 0.565331, 0.462054,
		-0.720062, 0.626522, 0.298297,
		40.305370, 36.114067, 25.341751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.715221, 35.032230, 30.324812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357262, 35.133759, 30.177986>,  <42.142487, 35.194675, 30.089891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357262, 35.133759, 30.177986>,  <42.715221, 35.032230, 30.324812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357262, 35.133759, 30.177986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430432, -0.273715, 0.860121,
		0.117843, 0.927716, 0.354198,
		-0.894897, 0.253818, -0.367063,
		42.088791, 35.209904, 30.067867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407188, 35.504486, 30.926903>,  <42.715221, 35.032230, 30.324812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407188, 35.504486, 30.926903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113445, 35.375153, 30.688179>,  <41.937199, 35.297554, 30.544945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113445, 35.375153, 30.688179>,  <42.407188, 35.504486, 30.926903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113445, 35.375153, 30.688179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578549, -0.161661, 0.799467,
		-0.354972, 0.932375, -0.068346,
		-0.734354, -0.323329, -0.596810,
		41.893139, 35.278152, 30.509136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872601, 35.814934, 31.220058>,  <42.407188, 35.504486, 30.926903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872601, 35.814934, 31.220058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720634, 35.525723, 30.989273>,  <41.629456, 35.352196, 30.850801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720634, 35.525723, 30.989273>,  <41.872601, 35.814934, 31.220058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720634, 35.525723, 30.989273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605622, -0.277044, 0.745968,
		-0.699203, 0.632829, -0.332630,
		-0.379918, -0.723031, -0.576965,
		41.606659, 35.308815, 30.816183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238808, 35.759186, 31.403429>,  <41.872601, 35.814934, 31.220058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238808, 35.759186, 31.403429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289532, 35.407894, 31.218979>,  <41.319965, 35.197121, 31.108309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289532, 35.407894, 31.218979>,  <41.238808, 35.759186, 31.403429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289532, 35.407894, 31.218979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372222, -0.473037, 0.798553,
		-0.919440, 0.070381, -0.386880,
		0.126806, -0.878227, -0.461127,
		41.327572, 35.144424, 31.080641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579338, 35.482887, 31.435217>,  <41.238808, 35.759186, 31.403429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579338, 35.482887, 31.435217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854984, 35.196453, 31.390776>,  <41.020370, 35.024593, 31.364111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854984, 35.196453, 31.390776>,  <40.579338, 35.482887, 31.435217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854984, 35.196453, 31.390776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460802, -0.551354, 0.695465,
		-0.559257, -0.428070, -0.709921,
		0.689125, -0.716077, -0.111093,
		41.061718, 34.981628, 31.357445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161774, 34.882656, 31.434568>,  <40.579338, 35.482887, 31.435217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161774, 34.882656, 31.434568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531464, 34.746616, 31.504009>,  <40.753277, 34.664993, 31.545673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531464, 34.746616, 31.504009>,  <40.161774, 34.882656, 31.434568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531464, 34.746616, 31.504009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354123, -0.593344, 0.722870,
		-0.142843, -0.729571, -0.668821,
		0.924226, -0.340101, 0.173603,
		40.808731, 34.644585, 31.556089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115025, 34.148560, 31.318407>,  <40.161774, 34.882656, 31.434568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115025, 34.148560, 31.318407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423279, 34.230377, 31.559834>,  <40.608231, 34.279469, 31.704689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423279, 34.230377, 31.559834>,  <40.115025, 34.148560, 31.318407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423279, 34.230377, 31.559834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241622, -0.782603, 0.573717,
		0.589699, -0.587959, -0.553678,
		0.770632, 0.204540, 0.603565,
		40.654469, 34.291740, 31.740902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516945, 33.535912, 31.408802>,  <40.115025, 34.148560, 31.318407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516945, 33.535912, 31.408802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618214, 33.769886, 31.717022>,  <40.678974, 33.910271, 31.901955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.618214, 33.769886, 31.717022>,  <40.516945, 33.535912, 31.408802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618214, 33.769886, 31.717022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030080, -0.791355, 0.610616,
		0.966954, -0.177768, -0.182754,
		0.253171, 0.584940, 0.770551,
		40.694164, 33.945370, 31.948187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198910, 33.132904, 31.806929>,  <40.516945, 33.535912, 31.408802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198910, 33.132904, 31.806929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050571, 33.398525, 32.066624>,  <40.961571, 33.557899, 32.222443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050571, 33.398525, 32.066624>,  <41.198910, 33.132904, 31.806929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050571, 33.398525, 32.066624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057681, -0.681267, 0.729759,
		0.926903, 0.308074, 0.214338,
		-0.370841, 0.664052, 0.649239,
		40.939320, 33.597740, 32.261395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416569, 32.840443, 32.429573>,  <41.198910, 33.132904, 31.806929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416569, 32.840443, 32.429573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165909, 33.128693, 32.548237>,  <41.015511, 33.301643, 32.619434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165909, 33.128693, 32.548237>,  <41.416569, 32.840443, 32.429573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165909, 33.128693, 32.548237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113449, -0.460973, 0.880132,
		0.770995, 0.517884, 0.370625,
		-0.626654, 0.720625, 0.296655,
		40.977913, 33.344879, 32.637234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678631, 33.022137, 33.070763>,  <41.416569, 32.840443, 32.429573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678631, 33.022137, 33.070763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292328, 33.121834, 33.041943>,  <41.060547, 33.181652, 33.024651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292328, 33.121834, 33.041943>,  <41.678631, 33.022137, 33.070763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292328, 33.121834, 33.041943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222559, -0.653154, 0.723780,
		0.133335, 0.715032, 0.686259,
		-0.965758, 0.249239, -0.072049,
		41.002602, 33.196606, 33.020329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448490, 33.248573, 33.747532>,  <41.678631, 33.022137, 33.070763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448490, 33.248573, 33.747532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111725, 33.147064, 33.557045>,  <40.909664, 33.086159, 33.442753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111725, 33.147064, 33.557045>,  <41.448490, 33.248573, 33.747532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111725, 33.147064, 33.557045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197666, -0.676137, 0.709765,
		-0.502103, 0.691693, 0.519088,
		-0.841915, -0.253769, -0.476215,
		40.859150, 33.070934, 33.414181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966652, 33.137531, 34.323257>,  <41.448490, 33.248573, 33.747532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966652, 33.137531, 34.323257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822540, 32.959206, 33.995487>,  <40.736073, 32.852211, 33.798824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822540, 32.959206, 33.995487>,  <40.966652, 33.137531, 34.323257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822540, 32.959206, 33.995487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325383, -0.763187, 0.558276,
		-0.874258, 0.467760, 0.129900,
		-0.360277, -0.445810, -0.819423,
		40.714458, 32.825462, 33.749660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218948, 33.045921, 34.351814>,  <40.966652, 33.137531, 34.323257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218948, 33.045921, 34.351814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402657, 32.773941, 34.123169>,  <40.512882, 32.610752, 33.985981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402657, 32.773941, 34.123169>,  <40.218948, 33.045921, 34.351814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402657, 32.773941, 34.123169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405472, -0.733012, 0.546156,
		-0.790359, -0.019058, -0.612348,
		0.459267, -0.679949, -0.571615,
		40.540436, 32.569958, 33.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011414, 33.783741, 34.128937>,  <40.218948, 33.045921, 34.351814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011414, 33.783741, 34.128937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871780, 34.059273, 34.383072>,  <39.788002, 34.224594, 34.535553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871780, 34.059273, 34.383072>,  <40.011414, 33.783741, 34.128937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871780, 34.059273, 34.383072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107968, 0.703035, -0.702912,
		-0.930851, -0.176779, -0.319790,
		-0.349084, 0.688833, 0.635334,
		39.767056, 34.265923, 34.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440876, 34.319561, 33.778667>,  <40.011414, 33.783741, 34.128937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440876, 34.319561, 33.778667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579796, 34.526169, 34.091740>,  <39.663147, 34.650135, 34.279583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579796, 34.526169, 34.091740>,  <39.440876, 34.319561, 33.778667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579796, 34.526169, 34.091740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053258, 0.844149, -0.533457,
		-0.936240, 0.143587, 0.320684,
		0.347303, 0.516523, 0.782678,
		39.683987, 34.681126, 34.326542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981766, 34.871773, 33.835133>,  <39.440876, 34.319561, 33.778667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981766, 34.871773, 33.835133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327835, 34.975761, 34.006660>,  <39.535477, 35.038155, 34.109577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327835, 34.975761, 34.006660>,  <38.981766, 34.871773, 33.835133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327835, 34.975761, 34.006660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052138, 0.897127, -0.438686,
		-0.498749, 0.357183, 0.789728,
		0.865177, 0.259969, 0.428818,
		39.587387, 35.053753, 34.135307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946308, 35.615589, 34.160110>,  <38.981766, 34.871773, 33.835133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946308, 35.615589, 34.160110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338787, 35.545345, 34.128098>,  <39.574276, 35.503201, 34.108891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338787, 35.545345, 34.128098>,  <38.946308, 35.615589, 34.160110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338787, 35.545345, 34.128098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118870, 0.876658, -0.466197,
		0.152029, 0.447920, 0.881053,
		0.981202, -0.175606, -0.080033,
		39.633148, 35.492664, 34.104088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255527, 36.289848, 34.233261>,  <38.946308, 35.615589, 34.160110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255527, 36.289848, 34.233261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580906, 36.108356, 34.087688>,  <39.776131, 35.999462, 34.000347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580906, 36.108356, 34.087688>,  <39.255527, 36.289848, 34.233261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580906, 36.108356, 34.087688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249237, 0.837237, -0.486739,
		0.525541, 0.305230, 0.794129,
		0.813442, -0.453728, -0.363928,
		39.824940, 35.972237, 33.978512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805927, 36.746262, 34.434380>,  <39.255527, 36.289848, 34.233261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805927, 36.746262, 34.434380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908550, 36.498035, 34.137981>,  <39.970123, 36.349098, 33.960144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908550, 36.498035, 34.137981>,  <39.805927, 36.746262, 34.434380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908550, 36.498035, 34.137981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276049, 0.781771, -0.559135,
		0.926269, -0.061100, 0.371877,
		0.256559, -0.620565, -0.740997,
		39.985519, 36.311867, 33.915684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481792, 37.132755, 34.199776>,  <39.805927, 36.746262, 34.434380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481792, 37.132755, 34.199776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409836, 36.866726, 33.909863>,  <40.366661, 36.707108, 33.735912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409836, 36.866726, 33.909863>,  <40.481792, 37.132755, 34.199776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409836, 36.866726, 33.909863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177397, 0.702793, -0.688922,
		0.967558, -0.252506, -0.008444,
		-0.179891, -0.665074, -0.724787,
		40.355869, 36.667202, 33.692425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048981, 37.146744, 33.599308>,  <40.481792, 37.132755, 34.199776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048981, 37.146744, 33.599308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.710587, 36.989510, 33.455196>,  <40.507549, 36.895168, 33.368729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.710587, 36.989510, 33.455196>,  <41.048981, 37.146744, 33.599308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710587, 36.989510, 33.455196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118746, 0.519821, -0.845982,
		0.519821, -0.758467, -0.393082,
		0.845982, 0.393082, 0.360278,
		40.456791, 36.871586, 33.347115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232117, 36.923420, 32.916946>,  <41.048981, 37.146744, 33.599308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232117, 36.923420, 32.916946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.832401, 36.936668, 32.909702>,  <40.592571, 36.944618, 32.905354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.832401, 36.936668, 32.909702>,  <41.232117, 36.923420, 32.916946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832401, 36.936668, 32.909702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029452, 0.383883, -0.922912,
		-0.023618, -0.922787, -0.384585,
		-0.999287, 0.033124, -0.018112,
		40.532616, 36.946606, 32.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968529, 36.621010, 32.283001>,  <41.232117, 36.923420, 32.916946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968529, 36.621010, 32.283001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660797, 36.857315, 32.380272>,  <40.476158, 36.999096, 32.438637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660797, 36.857315, 32.380272>,  <40.968529, 36.621010, 32.283001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660797, 36.857315, 32.380272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027109, 0.410498, -0.911458,
		-0.638279, -0.694618, -0.331823,
		-0.769328, 0.590760, 0.243182,
		40.430000, 37.034542, 32.453228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479408, 36.606239, 31.707150>,  <40.968529, 36.621010, 32.283001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479408, 36.606239, 31.707150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432579, 36.945683, 31.913511>,  <40.404480, 37.149349, 32.037327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.432579, 36.945683, 31.913511>,  <40.479408, 36.606239, 31.707150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432579, 36.945683, 31.913511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114274, 0.504515, -0.855807,
		-0.986527, -0.159147, 0.037909,
		-0.117074, 0.848609, 0.515904,
		40.397457, 37.200264, 32.068283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925117, 36.928120, 31.317434>,  <40.479408, 36.606239, 31.707150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925117, 36.928120, 31.317434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063934, 37.233894, 31.534761>,  <40.147224, 37.417358, 31.665157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063934, 37.233894, 31.534761>,  <39.925117, 36.928120, 31.317434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063934, 37.233894, 31.534761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205479, 0.627224, -0.751244,
		-0.915064, 0.149070, 0.374748,
		0.347039, 0.764440, 0.543320,
		40.168045, 37.463226, 31.697758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506866, 37.488297, 30.906313>,  <39.925117, 36.928120, 31.317434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506866, 37.488297, 30.906313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810883, 37.622276, 31.129078>,  <39.993294, 37.702663, 31.262737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810883, 37.622276, 31.129078>,  <39.506866, 37.488297, 30.906313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810883, 37.622276, 31.129078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240647, 0.650976, -0.719944,
		-0.603679, 0.681205, 0.414163,
		0.760040, 0.334948, 0.556911,
		40.038895, 37.722759, 31.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443600, 38.196484, 31.029799>,  <39.506866, 37.488297, 30.906313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443600, 38.196484, 31.029799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834236, 38.121803, 31.072523>,  <40.068619, 38.076996, 31.098158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834236, 38.121803, 31.072523>,  <39.443600, 38.196484, 31.029799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834236, 38.121803, 31.072523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204329, 0.650146, -0.731820,
		0.067186, 0.736515, 0.673076,
		0.976594, -0.186696, 0.106811,
		40.127213, 38.065796, 31.104567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403889, 38.913395, 31.349871>,  <39.443600, 38.196484, 31.029799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403889, 38.913395, 31.349871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052837, 38.881840, 31.160746>,  <38.842209, 38.862907, 31.047272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052837, 38.881840, 31.160746>,  <39.403889, 38.913395, 31.349871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052837, 38.881840, 31.160746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411851, -0.380583, 0.827971,
		-0.245262, 0.921376, 0.301518,
		-0.877625, -0.078889, -0.472811,
		38.789551, 38.858173, 31.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877155, 39.142418, 31.809990>,  <39.403889, 38.913395, 31.349871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877155, 39.142418, 31.809990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629055, 38.953743, 31.559294>,  <38.480194, 38.840538, 31.408876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629055, 38.953743, 31.559294>,  <38.877155, 39.142418, 31.809990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629055, 38.953743, 31.559294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593360, -0.240454, 0.768183,
		-0.513045, 0.848347, -0.130740,
		-0.620249, -0.471689, -0.626739,
		38.442982, 38.812237, 31.371273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084251, 39.334030, 31.877460>,  <38.877155, 39.142418, 31.809990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084251, 39.334030, 31.877460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129894, 38.969921, 31.718267>,  <38.157280, 38.751457, 31.622751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129894, 38.969921, 31.718267>,  <38.084251, 39.334030, 31.877460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129894, 38.969921, 31.718267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544450, -0.392382, 0.741357,
		-0.830995, 0.132083, -0.540371,
		0.114111, -0.910269, -0.397981,
		38.164127, 38.696842, 31.598873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507195, 39.100224, 32.033283>,  <38.084251, 39.334030, 31.877460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507195, 39.100224, 32.033283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694309, 38.760063, 31.936960>,  <37.806580, 38.555965, 31.879168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694309, 38.760063, 31.936960>,  <37.507195, 39.100224, 32.033283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694309, 38.760063, 31.936960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597338, -0.505002, 0.623025,
		-0.651430, -0.147602, -0.744213,
		0.467788, -0.850404, -0.240805,
		37.834644, 38.504944, 31.864719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981625, 38.541718, 31.896858>,  <37.507195, 39.100224, 32.033283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981625, 38.541718, 31.896858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.326042, 38.378445, 32.018181>,  <37.532692, 38.280479, 32.090977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.326042, 38.378445, 32.018181>,  <36.981625, 38.541718, 31.896858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326042, 38.378445, 32.018181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502377, -0.590220, 0.631868,
		-0.078897, -0.696440, -0.713264,
		0.861042, -0.408181, 0.303309,
		37.584354, 38.255989, 32.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870193, 37.791691, 32.125584>,  <36.981625, 38.541718, 31.896858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870193, 37.791691, 32.125584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229927, 37.869183, 32.282387>,  <37.445766, 37.915676, 32.376469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229927, 37.869183, 32.282387>,  <36.870193, 37.791691, 32.125584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229927, 37.869183, 32.282387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104822, -0.774839, 0.623408,
		0.424513, -0.601742, -0.676531,
		0.899334, 0.193729, 0.392005,
		37.499725, 37.927299, 32.399990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265305, 37.086163, 32.204868>,  <36.870193, 37.791691, 32.125584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265305, 37.086163, 32.204868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422466, 37.366093, 32.443485>,  <37.516762, 37.534050, 32.586655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422466, 37.366093, 32.443485>,  <37.265305, 37.086163, 32.204868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422466, 37.366093, 32.443485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036609, -0.660105, 0.750281,
		0.918850, -0.272950, -0.284979,
		0.392905, 0.699829, 0.596545,
		37.540337, 37.576042, 32.622448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694351, 36.652187, 32.572010>,  <37.265305, 37.086163, 32.204868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694351, 36.652187, 32.572010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662781, 36.989208, 32.785133>,  <37.643837, 37.191422, 32.913006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662781, 36.989208, 32.785133>,  <37.694351, 36.652187, 32.572010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662781, 36.989208, 32.785133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039011, -0.536676, 0.842886,
		0.996117, 0.045744, 0.075229,
		-0.078930, 0.842548, 0.532807,
		37.639103, 37.241974, 32.944977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993946, 36.469090, 33.202526>,  <37.694351, 36.652187, 32.572010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993946, 36.469090, 33.202526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800030, 36.800507, 33.314590>,  <37.683681, 36.999359, 33.381828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800030, 36.800507, 33.314590>,  <37.993946, 36.469090, 33.202526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800030, 36.800507, 33.314590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045087, -0.343569, 0.938044,
		0.873467, 0.442124, 0.203916,
		-0.484791, 0.828545, 0.280162,
		37.654591, 37.049068, 33.398640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263592, 36.546700, 33.923553>,  <37.993946, 36.469090, 33.202526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263592, 36.546700, 33.923553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923489, 36.746727, 33.857834>,  <37.719425, 36.866745, 33.818401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923489, 36.746727, 33.857834>,  <38.263592, 36.546700, 33.923553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923489, 36.746727, 33.857834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275086, -0.156033, 0.948674,
		0.448765, 0.851814, 0.270230,
		-0.850258, 0.500068, -0.164299,
		37.668411, 36.896748, 33.808544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135666, 36.963593, 34.520908>,  <38.263592, 36.546700, 33.923553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135666, 36.963593, 34.520908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798672, 36.868370, 34.327599>,  <37.596478, 36.811237, 34.211613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798672, 36.868370, 34.327599>,  <38.135666, 36.963593, 34.520908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798672, 36.868370, 34.327599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441257, -0.209701, 0.872535,
		-0.309053, 0.948344, 0.071627,
		-0.842484, -0.238054, -0.483272,
		37.545925, 36.796955, 34.182617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567562, 37.437717, 34.694660>,  <38.135666, 36.963593, 34.520908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567562, 37.437717, 34.694660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467022, 37.059227, 34.613205>,  <37.406696, 36.832130, 34.564331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.467022, 37.059227, 34.613205>,  <37.567562, 37.437717, 34.694660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467022, 37.059227, 34.613205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118665, -0.178683, 0.976724,
		-0.960594, 0.269667, -0.067372,
		-0.251352, -0.946230, -0.203642,
		37.391617, 36.775356, 34.552113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.212967, 41.775696, 28.533585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007198, 41.489437, 28.344599>,  <38.883739, 41.317680, 28.231207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007198, 41.489437, 28.344599>,  <39.212967, 41.775696, 28.533585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007198, 41.489437, 28.344599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201463, -0.434675, 0.877765,
		-0.833539, 0.546721, 0.079427,
		-0.514417, -0.715650, -0.472463,
		38.852875, 41.274742, 28.202860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458801, 41.611649, 28.864525>,  <39.212967, 41.775696, 28.533585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458801, 41.611649, 28.864525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589550, 41.290516, 28.665079>,  <38.667999, 41.097836, 28.545412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589550, 41.290516, 28.665079>,  <38.458801, 41.611649, 28.864525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589550, 41.290516, 28.665079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269076, -0.584821, 0.765234,
		-0.905953, -0.115970, -0.407185,
		0.326874, -0.802830, -0.498616,
		38.687611, 41.049667, 28.515495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048920, 41.093029, 29.164761>,  <38.458801, 41.611649, 28.864525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048920, 41.093029, 29.164761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295082, 40.862793, 28.949362>,  <38.442780, 40.724651, 28.820122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295082, 40.862793, 28.949362>,  <38.048920, 41.093029, 29.164761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295082, 40.862793, 28.949362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056041, -0.713410, 0.698502,
		-0.786216, -0.399684, -0.471292,
		0.615405, -0.575586, -0.538496,
		38.479702, 40.690117, 28.787813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680122, 40.440006, 29.180485>,  <38.048920, 41.093029, 29.164761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680122, 40.440006, 29.180485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070446, 40.394020, 29.106104>,  <38.304642, 40.366428, 29.061476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070446, 40.394020, 29.106104>,  <37.680122, 40.440006, 29.180485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070446, 40.394020, 29.106104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005325, -0.837806, 0.545942,
		-0.218557, -0.533725, -0.816927,
		0.975809, -0.114969, -0.185951,
		38.363190, 40.359528, 29.050318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794998, 39.748989, 29.106497>,  <37.680122, 40.440006, 29.180485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794998, 39.748989, 29.106497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168968, 39.873539, 29.174566>,  <38.393353, 39.948269, 29.215408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168968, 39.873539, 29.174566>,  <37.794998, 39.748989, 29.106497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168968, 39.873539, 29.174566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118370, -0.725784, 0.677662,
		0.334514, -0.613421, -0.715412,
		0.934927, 0.311371, 0.170174,
		38.449448, 39.966949, 29.225618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228085, 39.113800, 29.141024>,  <37.794998, 39.748989, 29.106497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228085, 39.113800, 29.141024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413456, 39.404499, 29.343830>,  <38.524681, 39.578918, 29.465513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413456, 39.404499, 29.343830>,  <38.228085, 39.113800, 29.141024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413456, 39.404499, 29.343830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217413, -0.647930, 0.730013,
		0.859048, -0.228078, -0.458276,
		0.463431, 0.726751, 0.507016,
		38.552486, 39.622524, 29.495935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838135, 38.847218, 29.323004>,  <38.228085, 39.113800, 29.141024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838135, 38.847218, 29.323004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823296, 39.135437, 29.599966>,  <38.814392, 39.308369, 29.766144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823296, 39.135437, 29.599966>,  <38.838135, 38.847218, 29.323004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823296, 39.135437, 29.599966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180357, -0.676678, 0.713847,
		0.982902, 0.151361, -0.104855,
		-0.037096, 0.720553, 0.692407,
		38.812168, 39.351604, 29.807688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278259, 38.649998, 29.822762>,  <38.838135, 38.847218, 29.323004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278259, 38.649998, 29.822762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026806, 38.900169, 30.007650>,  <38.875935, 39.050274, 30.118584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026806, 38.900169, 30.007650>,  <39.278259, 38.649998, 29.822762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026806, 38.900169, 30.007650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033315, -0.572142, 0.819478,
		0.776984, 0.530554, 0.338834,
		-0.628638, 0.625433, 0.462220,
		38.838215, 39.087799, 30.146317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555904, 38.798794, 30.497118>,  <39.278259, 38.649998, 29.822762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555904, 38.798794, 30.497118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167999, 38.894760, 30.514997>,  <38.935257, 38.952339, 30.525724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167999, 38.894760, 30.514997>,  <39.555904, 38.798794, 30.497118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167999, 38.894760, 30.514997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085271, -0.504714, 0.859065,
		0.228665, 0.829279, 0.509911,
		-0.969763, 0.239919, 0.044697,
		38.877071, 38.966736, 30.528406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044743, 39.234856, 30.942188>,  <39.555904, 38.798794, 30.497118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044743, 39.234856, 30.942188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252678, 38.897758, 30.886251>,  <40.377441, 38.695499, 30.852690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252678, 38.897758, 30.886251>,  <40.044743, 39.234856, 30.942188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252678, 38.897758, 30.886251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401446, 0.385493, -0.830805,
		0.754060, 0.375748, 0.538709,
		0.519842, -0.842739, -0.139843,
		40.408630, 38.644936, 30.844299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676914, 39.447903, 30.777081>,  <40.044743, 39.234856, 30.942188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676914, 39.447903, 30.777081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718452, 39.073677, 30.642057>,  <40.743374, 38.849144, 30.561043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718452, 39.073677, 30.642057>,  <40.676914, 39.447903, 30.777081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718452, 39.073677, 30.642057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507415, 0.341735, -0.791042,
		0.855422, -0.089139, 0.510204,
		0.103842, -0.935559, -0.337558,
		40.749603, 38.793011, 30.540791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229836, 39.509350, 30.354303>,  <40.676914, 39.447903, 30.777081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229836, 39.509350, 30.354303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058437, 39.167763, 30.236237>,  <40.955597, 38.962811, 30.165396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058437, 39.167763, 30.236237>,  <41.229836, 39.509350, 30.354303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058437, 39.167763, 30.236237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373595, 0.129991, -0.918438,
		0.822689, -0.503821, 0.263339,
		-0.428497, -0.853971, -0.295168,
		40.929890, 38.911572, 30.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796059, 39.017120, 30.212034>,  <41.229836, 39.509350, 30.354303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796059, 39.017120, 30.212034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449474, 38.942688, 30.026728>,  <41.241524, 38.898029, 29.915543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449474, 38.942688, 30.026728>,  <41.796059, 39.017120, 30.212034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449474, 38.942688, 30.026728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412359, 0.256347, -0.874212,
		0.281439, -0.948502, -0.145379,
		-0.866460, -0.186089, -0.463270,
		41.189537, 38.886864, 29.887747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032036, 38.678513, 29.509346>,  <41.796059, 39.017120, 30.212034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032036, 38.678513, 29.509346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657196, 38.815865, 29.484253>,  <41.432293, 38.898273, 29.469196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657196, 38.815865, 29.484253>,  <42.032036, 38.678513, 29.509346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657196, 38.815865, 29.484253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190980, 0.353927, -0.915567,
		-0.292180, -0.869959, -0.397243,
		-0.937101, 0.343376, -0.062735,
		41.376064, 38.918877, 29.465433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811970, 38.418560, 28.901434>,  <42.032036, 38.678513, 29.509346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811970, 38.418560, 28.901434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563396, 38.727631, 28.953278>,  <41.414253, 38.913071, 28.984385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563396, 38.727631, 28.953278>,  <41.811970, 38.418560, 28.901434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563396, 38.727631, 28.953278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321588, 0.402416, -0.857113,
		-0.714425, -0.490957, -0.498557,
		-0.621433, 0.772673, 0.129610,
		41.376968, 38.959431, 28.992161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583794, 38.529045, 28.237444>,  <41.811970, 38.418560, 28.901434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583794, 38.529045, 28.237444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457741, 38.859238, 28.424749>,  <41.382111, 39.057354, 28.537132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457741, 38.859238, 28.424749>,  <41.583794, 38.529045, 28.237444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457741, 38.859238, 28.424749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146598, 0.529821, -0.835343,
		-0.937658, -0.194595, -0.287976,
		-0.315129, 0.825483, 0.468264,
		41.363201, 39.106884, 28.565229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103428, 38.918488, 27.793999>,  <41.583794, 38.529045, 28.237444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103428, 38.918488, 27.793999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252625, 39.191380, 28.045534>,  <41.342144, 39.355114, 28.196455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252625, 39.191380, 28.045534>,  <41.103428, 38.918488, 27.793999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252625, 39.191380, 28.045534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252523, 0.577521, -0.776338,
		-0.892809, 0.448366, 0.043133,
		0.372994, 0.682230, 0.628839,
		41.364521, 39.396049, 28.234186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936974, 39.554314, 27.652943>,  <41.103428, 38.918488, 27.793999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936974, 39.554314, 27.652943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273922, 39.625187, 27.856516>,  <41.476093, 39.667709, 27.978661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273922, 39.625187, 27.856516>,  <40.936974, 39.554314, 27.652943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273922, 39.625187, 27.856516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300950, 0.628740, -0.717018,
		-0.447031, 0.757160, 0.476311,
		0.842373, 0.177184, 0.508933,
		41.526634, 39.678341, 28.009195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976826, 40.223835, 27.614447>,  <40.936974, 39.554314, 27.652943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976826, 40.223835, 27.614447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350437, 40.102772, 27.690331>,  <41.574604, 40.030136, 27.735861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350437, 40.102772, 27.690331>,  <40.976826, 40.223835, 27.614447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350437, 40.102772, 27.690331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337840, 0.576047, -0.744335,
		0.115993, 0.759323, 0.640293,
		0.934029, -0.302654, 0.189712,
		41.630646, 40.011974, 27.747244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328739, 40.778442, 27.550789>,  <40.976826, 40.223835, 27.614447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328739, 40.778442, 27.550789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611568, 40.497601, 27.517092>,  <41.781265, 40.329094, 27.496874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611568, 40.497601, 27.517092>,  <41.328739, 40.778442, 27.550789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611568, 40.497601, 27.517092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526330, 0.602087, -0.600389,
		0.472261, 0.380176, 0.795258,
		0.707069, -0.702109, -0.084244,
		41.823689, 40.286968, 27.491819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003956, 41.164482, 27.652773>,  <41.328739, 40.778442, 27.550789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003956, 41.164482, 27.652773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087727, 40.821560, 27.464657>,  <42.137989, 40.615807, 27.351788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087727, 40.821560, 27.464657>,  <42.003956, 41.164482, 27.652773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087727, 40.821560, 27.464657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648817, 0.481656, -0.589104,
		0.731559, -0.181759, 0.657104,
		0.209423, -0.857305, -0.470288,
		42.150555, 40.564369, 27.323570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731647, 41.149387, 27.538296>,  <42.003956, 41.164482, 27.652773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731647, 41.149387, 27.538296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568226, 40.902447, 27.269382>,  <42.470173, 40.754284, 27.108034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568226, 40.902447, 27.269382>,  <42.731647, 41.149387, 27.538296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568226, 40.902447, 27.269382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593978, 0.379424, -0.709385,
		0.693019, -0.689143, 0.211677,
		-0.408552, -0.617349, -0.672284,
		42.445660, 40.717243, 27.067698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300270, 40.942696, 27.082642>,  <42.731647, 41.149387, 27.538296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300270, 40.942696, 27.082642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958302, 40.879364, 26.885042>,  <42.753120, 40.841366, 26.766481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958302, 40.879364, 26.885042>,  <43.300270, 40.942696, 27.082642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958302, 40.879364, 26.885042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438992, 0.286556, -0.851570,
		0.276362, -0.944895, -0.175493,
		-0.854933, -0.158302, -0.493994,
		42.701824, 40.831863, 26.736841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.893955, 36.718063, 23.512398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977455, 36.973881, 23.808348>,  <37.027554, 37.127369, 23.985918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.977455, 36.973881, 23.808348>,  <36.893955, 36.718063, 23.512398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977455, 36.973881, 23.808348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153049, -0.725855, 0.670605,
		0.965920, -0.253223, -0.053639,
		0.208747, 0.639541, 0.739873,
		37.040081, 37.165745, 24.030310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353325, 36.319584, 23.968748>,  <36.893955, 36.718063, 23.512398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353325, 36.319584, 23.968748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210613, 36.617641, 24.194126>,  <37.124989, 36.796478, 24.329353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210613, 36.617641, 24.194126>,  <37.353325, 36.319584, 23.968748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210613, 36.617641, 24.194126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031547, -0.612401, 0.789917,
		0.933657, 0.264049, 0.241998,
		-0.356777, 0.745146, 0.563443,
		37.103580, 36.841187, 24.363159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754601, 36.374584, 24.602825>,  <37.353325, 36.319584, 23.968748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754601, 36.374584, 24.602825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.390575, 36.523857, 24.674963>,  <37.172161, 36.613422, 24.718246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.390575, 36.523857, 24.674963>,  <37.754601, 36.374584, 24.602825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390575, 36.523857, 24.674963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071241, -0.569483, 0.818910,
		0.408307, 0.732410, 0.544850,
		-0.910060, 0.373182, 0.180347,
		37.117558, 36.635811, 24.729067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875454, 36.382668, 25.243000>,  <37.754601, 36.374584, 24.602825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875454, 36.382668, 25.243000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477501, 36.411980, 25.215189>,  <37.238728, 36.429565, 25.198502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477501, 36.411980, 25.215189>,  <37.875454, 36.382668, 25.243000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477501, 36.411980, 25.215189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096022, -0.472330, 0.876176,
		0.031366, 0.878371, 0.476950,
		-0.994885, 0.073279, -0.069528,
		37.179035, 36.433964, 25.194330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628006, 36.569244, 25.822020>,  <37.875454, 36.382668, 25.243000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628006, 36.569244, 25.822020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271473, 36.431721, 25.703821>,  <37.057552, 36.349205, 25.632902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271473, 36.431721, 25.703821>,  <37.628006, 36.569244, 25.822020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271473, 36.431721, 25.703821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083793, -0.515637, 0.852700,
		-0.445538, 0.784801, 0.430795,
		-0.891333, -0.343813, -0.295497,
		37.004074, 36.328575, 25.615171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102211, 36.662537, 26.367311>,  <37.628006, 36.569244, 25.822020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102211, 36.662537, 26.367311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929199, 36.378986, 26.144453>,  <36.825394, 36.208855, 26.010738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929199, 36.378986, 26.144453>,  <37.102211, 36.662537, 26.367311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929199, 36.378986, 26.144453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392842, -0.408031, 0.824127,
		-0.811540, 0.575326, -0.101994,
		-0.432525, -0.708880, -0.557146,
		36.799442, 36.166321, 25.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383839, 36.680637, 26.495337>,  <37.102211, 36.662537, 26.367311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383839, 36.680637, 26.495337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461372, 36.312935, 26.358282>,  <36.507893, 36.092316, 26.276049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461372, 36.312935, 26.358282>,  <36.383839, 36.680637, 26.495337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461372, 36.312935, 26.358282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319634, -0.389382, 0.863838,
		-0.927503, -0.057924, -0.369301,
		0.193836, -0.919254, -0.342638,
		36.519524, 36.037159, 26.255491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862728, 36.326675, 26.809538>,  <36.383839, 36.680637, 26.495337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862728, 36.326675, 26.809538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125076, 36.044662, 26.701639>,  <36.282486, 35.875454, 26.636900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125076, 36.044662, 26.701639>,  <35.862728, 36.326675, 26.809538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125076, 36.044662, 26.701639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227979, -0.525655, 0.819581,
		-0.719623, -0.476044, -0.505495,
		0.655872, -0.705032, -0.269746,
		36.321838, 35.833153, 26.620716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567314, 35.694569, 26.787701>,  <35.862728, 36.326675, 26.809538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567314, 35.694569, 26.787701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953857, 35.593884, 26.808847>,  <36.185783, 35.533474, 26.821535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953857, 35.593884, 26.808847>,  <35.567314, 35.694569, 26.787701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953857, 35.593884, 26.808847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178513, -0.508404, 0.842412,
		-0.185165, -0.823509, -0.536233,
		0.966357, -0.251710, 0.052868,
		36.243763, 35.518372, 26.824707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568378, 34.981228, 27.026913>,  <35.567314, 35.694569, 26.787701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568378, 34.981228, 27.026913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942780, 35.093948, 27.111280>,  <36.167419, 35.161583, 27.161901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942780, 35.093948, 27.111280>,  <35.568378, 34.981228, 27.026913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942780, 35.093948, 27.111280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076407, -0.422266, 0.903246,
		0.343604, -0.861555, -0.373710,
		0.936001, 0.281805, 0.210921,
		36.223579, 35.178490, 27.174557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826389, 34.388420, 27.320404>,  <35.568378, 34.981228, 27.026913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826389, 34.388420, 27.320404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059994, 34.689224, 27.442659>,  <36.200157, 34.869705, 27.516012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059994, 34.689224, 27.442659>,  <35.826389, 34.388420, 27.320404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059994, 34.689224, 27.442659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146278, -0.467851, 0.871618,
		0.798458, -0.464326, -0.383232,
		0.584010, 0.752009, 0.305639,
		36.235195, 34.914825, 27.534351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454857, 34.187408, 27.523829>,  <35.826389, 34.388420, 27.320404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454857, 34.187408, 27.523829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394608, 34.525726, 27.728548>,  <36.358456, 34.728718, 27.851379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394608, 34.525726, 27.728548>,  <36.454857, 34.187408, 27.523829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394608, 34.525726, 27.728548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346599, -0.439665, 0.828592,
		0.925841, 0.302198, -0.226927,
		-0.150627, 0.845796, 0.511801,
		36.349419, 34.779465, 27.882088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877769, 34.019184, 28.038490>,  <36.454857, 34.187408, 27.523829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877769, 34.019184, 28.038490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710239, 34.356010, 28.174442>,  <36.609722, 34.558105, 28.256014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710239, 34.356010, 28.174442>,  <36.877769, 34.019184, 28.038490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710239, 34.356010, 28.174442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290707, -0.230256, 0.928694,
		0.860277, 0.487764, -0.148357,
		-0.418823, 0.842062, 0.339880,
		36.584591, 34.608627, 28.276407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380199, 34.404133, 28.397287>,  <36.877769, 34.019184, 28.038490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380199, 34.404133, 28.397287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010246, 34.462589, 28.537703>,  <36.788273, 34.497665, 28.621952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010246, 34.462589, 28.537703>,  <37.380199, 34.404133, 28.397287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010246, 34.462589, 28.537703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294023, -0.310535, 0.903946,
		0.241118, 0.939260, 0.244239,
		-0.924885, 0.146146, 0.351040,
		36.732780, 34.506432, 28.643015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021866, 34.619526, 28.726198>,  <37.380199, 34.404133, 28.397287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021866, 34.619526, 28.726198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305508, 34.379162, 28.578642>,  <38.475693, 34.234943, 28.490108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305508, 34.379162, 28.578642>,  <38.021866, 34.619526, 28.726198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305508, 34.379162, 28.578642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239181, 0.697141, -0.675860,
		0.663301, 0.391021, 0.638070,
		0.709101, -0.600913, -0.368890,
		38.518238, 34.198887, 28.467976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679127, 35.005795, 28.653584>,  <38.021866, 34.619526, 28.726198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679127, 35.005795, 28.653584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734295, 34.708099, 28.392174>,  <38.767395, 34.529484, 28.235329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734295, 34.708099, 28.392174>,  <38.679127, 35.005795, 28.653584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734295, 34.708099, 28.392174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422474, 0.640995, -0.640812,
		0.895821, -0.187719, 0.402824,
		0.137916, -0.744236, -0.653523,
		38.775669, 34.484829, 28.196117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276047, 35.258801, 28.244234>,  <38.679127, 35.005795, 28.653584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276047, 35.258801, 28.244234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114876, 34.965004, 28.025810>,  <39.018173, 34.788727, 27.894756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114876, 34.965004, 28.025810>,  <39.276047, 35.258801, 28.244234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114876, 34.965004, 28.025810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414873, 0.385239, -0.824301,
		0.815802, -0.558676, 0.149497,
		-0.402925, -0.734488, -0.546058,
		38.993999, 34.744659, 27.861994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824318, 34.859791, 27.932148>,  <39.276047, 35.258801, 28.244234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824318, 34.859791, 27.932148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509010, 34.794941, 27.694712>,  <39.319828, 34.756031, 27.552250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509010, 34.794941, 27.694712>,  <39.824318, 34.859791, 27.932148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509010, 34.794941, 27.694712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503347, 0.384994, -0.773577,
		0.353941, -0.908568, -0.221876,
		-0.788268, -0.162120, -0.593591,
		39.272530, 34.746304, 27.516634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127773, 34.589180, 27.311094>,  <39.824318, 34.859791, 27.932148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127773, 34.589180, 27.311094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760937, 34.719982, 27.219864>,  <39.540836, 34.798462, 27.165127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.760937, 34.719982, 27.219864>,  <40.127773, 34.589180, 27.311094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760937, 34.719982, 27.219864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340190, 0.343536, -0.875359,
		-0.207893, -0.880370, -0.426296,
		-0.917088, 0.327003, -0.228075,
		39.485809, 34.818085, 27.151442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313915, 34.906887, 26.598692>,  <40.127773, 34.589180, 27.311094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313915, 34.906887, 26.598692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928528, 34.986732, 26.670116>,  <39.697296, 35.034641, 26.712971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928528, 34.986732, 26.670116>,  <40.313915, 34.906887, 26.598692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928528, 34.986732, 26.670116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042399, 0.544615, -0.837614,
		-0.264450, -0.814584, -0.516255,
		-0.963467, 0.199618, 0.178561,
		39.639488, 35.046619, 26.723684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966377, 34.640152, 26.031261>,  <40.313915, 34.906887, 26.598692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966377, 34.640152, 26.031261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.807728, 34.952942, 26.223597>,  <39.712540, 35.140617, 26.338997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.807728, 34.952942, 26.223597>,  <39.966377, 34.640152, 26.031261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807728, 34.952942, 26.223597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037376, 0.537118, -0.842678,
		-0.917222, -0.316250, -0.242258,
		-0.396619, 0.781978, 0.480836,
		39.688744, 35.187534, 26.367847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371964, 34.911438, 25.535130>,  <39.966377, 34.640152, 26.031261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371964, 34.911438, 25.535130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488739, 35.184166, 25.803425>,  <39.558804, 35.347801, 25.964403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488739, 35.184166, 25.803425>,  <39.371964, 34.911438, 25.535130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488739, 35.184166, 25.803425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011486, 0.698741, -0.715283,
		-0.956368, 0.216524, 0.196159,
		0.291940, 0.681820, 0.670740,
		39.576321, 35.388714, 26.004646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074272, 35.532658, 25.288675>,  <39.371964, 34.911438, 25.535130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074272, 35.532658, 25.288675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358578, 35.654495, 25.542303>,  <39.529160, 35.727596, 25.694481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358578, 35.654495, 25.542303>,  <39.074272, 35.532658, 25.288675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358578, 35.654495, 25.542303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216782, 0.762675, -0.609370,
		-0.669198, 0.570571, 0.476049,
		0.710760, 0.304590, 0.634070,
		39.571804, 35.745872, 25.732525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987782, 36.189217, 25.364264>,  <39.074272, 35.532658, 25.288675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987782, 36.189217, 25.364264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367699, 36.176300, 25.488750>,  <39.595650, 36.168549, 25.563442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367699, 36.176300, 25.488750>,  <38.987782, 36.189217, 25.364264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367699, 36.176300, 25.488750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246719, 0.689027, -0.681448,
		-0.192430, 0.724015, 0.662399,
		0.949790, -0.032295, 0.311218,
		39.652637, 36.166611, 25.582115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258671, 36.878677, 25.566240>,  <38.987782, 36.189217, 25.364264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258671, 36.878677, 25.566240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598415, 36.673370, 25.517004>,  <39.802261, 36.550186, 25.487463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598415, 36.673370, 25.517004>,  <39.258671, 36.878677, 25.566240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598415, 36.673370, 25.517004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359448, 0.733239, -0.577198,
		0.386511, 0.446002, 0.807274,
		0.849357, -0.513266, -0.123090,
		39.853222, 36.519390, 25.480078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754356, 37.335777, 25.600477>,  <39.258671, 36.878677, 25.566240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754356, 37.335777, 25.600477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939117, 37.029751, 25.421001>,  <40.049973, 36.846134, 25.313316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939117, 37.029751, 25.421001>,  <39.754356, 37.335777, 25.600477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939117, 37.029751, 25.421001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347243, 0.621495, -0.702258,
		0.816132, 0.168569, 0.552732,
		0.461900, -0.765068, -0.448687,
		40.077686, 36.800232, 25.286396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413071, 37.648712, 25.358068>,  <39.754356, 37.335777, 25.600477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413071, 37.648712, 25.358068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310749, 37.339340, 25.126076>,  <40.249355, 37.153717, 24.986879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310749, 37.339340, 25.126076>,  <40.413071, 37.648712, 25.358068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310749, 37.339340, 25.126076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366359, 0.477637, -0.798526,
		0.894621, -0.416744, 0.161172,
		-0.255799, -0.773425, -0.579983,
		40.234009, 37.107311, 24.952082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060749, 37.504139, 24.937370>,  <40.413071, 37.648712, 25.358068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060749, 37.504139, 24.937370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.750908, 37.342556, 24.742720>,  <40.565002, 37.245605, 24.625929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.750908, 37.342556, 24.742720>,  <41.060749, 37.504139, 24.937370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750908, 37.342556, 24.742720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219812, 0.549508, -0.806055,
		0.593016, -0.731341, -0.336857,
		-0.774606, -0.403958, -0.486624,
		40.518528, 37.221367, 24.596731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818684, 37.317062, 24.908274>,  <41.060749, 37.504139, 24.937370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818684, 37.317062, 24.908274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118988, 37.562824, 25.005325>,  <42.299171, 37.710281, 25.063557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118988, 37.562824, 25.005325>,  <41.818684, 37.317062, 24.908274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118988, 37.562824, 25.005325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192470, -0.554817, 0.809403,
		0.631916, -0.560967, -0.534788,
		0.750757, 0.614405, 0.242628,
		42.344215, 37.747147, 25.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339916, 36.899384, 25.090721>,  <41.818684, 37.317062, 24.908274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339916, 36.899384, 25.090721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.444607, 37.232559, 25.285744>,  <42.507423, 37.432465, 25.402758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.444607, 37.232559, 25.285744>,  <42.339916, 36.899384, 25.090721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444607, 37.232559, 25.285744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153231, -0.534621, 0.831084,
		0.952900, -0.142810, -0.267557,
		0.261729, 0.832938, 0.487557,
		42.523125, 37.482441, 25.432011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962963, 36.765869, 25.432962>,  <42.339916, 36.899384, 25.090721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962963, 36.765869, 25.432962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.800285, 37.058620, 25.651669>,  <42.702679, 37.234272, 25.782892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.800285, 37.058620, 25.651669>,  <42.962963, 36.765869, 25.432962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800285, 37.058620, 25.651669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200116, -0.512591, 0.834987,
		0.891377, 0.449001, 0.062007,
		-0.406694, 0.731880, 0.546764,
		42.678276, 37.278183, 25.815699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451408, 36.946915, 25.840771>,  <42.962963, 36.765869, 25.432962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451408, 36.946915, 25.840771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128662, 37.093964, 26.025730>,  <42.935013, 37.182194, 26.136705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128662, 37.093964, 26.025730>,  <43.451408, 36.946915, 25.840771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128662, 37.093964, 26.025730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199285, -0.567478, 0.798908,
		0.556099, 0.736764, 0.384619,
		-0.806870, 0.367624, 0.462400,
		42.886600, 37.204250, 26.164450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661552, 37.228626, 26.582050>,  <43.451408, 36.946915, 25.840771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661552, 37.228626, 26.582050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.269928, 37.148804, 26.598104>,  <43.034954, 37.100910, 26.607737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.269928, 37.148804, 26.598104>,  <43.661552, 37.228626, 26.582050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269928, 37.148804, 26.598104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153557, -0.594652, 0.789182,
		-0.133621, 0.778823, 0.612846,
		-0.979064, -0.199558, 0.040135,
		42.976208, 37.088936, 26.610146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509769, 37.319290, 27.281034>,  <43.661552, 37.228626, 26.582050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509769, 37.319290, 27.281034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181129, 37.122429, 27.165968>,  <42.983944, 37.004311, 27.096928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181129, 37.122429, 27.165968>,  <43.509769, 37.319290, 27.281034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181129, 37.122429, 27.165968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003132, -0.500722, 0.865602,
		-0.570051, 0.712083, 0.409854,
		-0.821604, -0.492153, -0.287668,
		42.934647, 36.974785, 27.079668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202358, 37.339684, 27.838037>,  <43.509769, 37.319290, 27.281034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202358, 37.339684, 27.838037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016624, 37.058987, 27.621910>,  <42.905186, 36.890568, 27.492233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016624, 37.058987, 27.621910>,  <43.202358, 37.339684, 27.838037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016624, 37.058987, 27.621910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168519, -0.528927, 0.831768,
		-0.869480, 0.477272, 0.127341,
		-0.464334, -0.701746, -0.540321,
		42.877323, 36.848461, 27.459814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608086, 37.184265, 28.198175>,  <43.202358, 37.339684, 27.838037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608086, 37.184265, 28.198175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.664928, 36.876457, 27.949131>,  <42.699036, 36.691772, 27.799704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.664928, 36.876457, 27.949131>,  <42.608086, 37.184265, 28.198175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664928, 36.876457, 27.949131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389950, -0.621651, 0.679330,
		-0.909805, 0.146250, -0.388415,
		0.142107, -0.769520, -0.622612,
		42.707561, 36.645603, 27.762348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060020, 36.846432, 28.229221>,  <42.608086, 37.184265, 28.198175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060020, 36.846432, 28.229221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.336002, 36.577473, 28.122007>,  <42.501591, 36.416096, 28.057678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.336002, 36.577473, 28.122007>,  <42.060020, 36.846432, 28.229221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336002, 36.577473, 28.122007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333969, -0.624226, 0.706263,
		-0.642212, -0.397767, -0.655245,
		0.689949, -0.672401, -0.268043,
		42.542988, 36.375751, 28.041595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602852, 36.263367, 28.058823>,  <42.060020, 36.846432, 28.229221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602852, 36.263367, 28.058823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.979088, 36.175396, 28.162300>,  <42.204830, 36.122616, 28.224386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.979088, 36.175396, 28.162300>,  <41.602852, 36.263367, 28.058823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979088, 36.175396, 28.162300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338326, -0.671452, 0.659309,
		0.028703, -0.707663, -0.705967,
		0.940591, -0.219923, 0.258693,
		42.261265, 36.109421, 28.239908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588459, 35.523483, 28.125404>,  <41.602852, 36.263367, 28.058823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588459, 35.523483, 28.125404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.906250, 35.655006, 28.329638>,  <42.096924, 35.733921, 28.452177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.906250, 35.655006, 28.329638>,  <41.588459, 35.523483, 28.125404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906250, 35.655006, 28.329638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191279, -0.662474, 0.724252,
		0.576387, -0.673064, -0.463426,
		0.794475, 0.328806, 0.510584,
		42.144592, 35.753647, 28.482813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899864, 34.864155, 28.511232>,  <41.588459, 35.523483, 28.125404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899864, 34.864155, 28.511232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.060940, 35.190094, 28.678020>,  <42.157585, 35.385658, 28.778093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.060940, 35.190094, 28.678020>,  <41.899864, 34.864155, 28.511232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060940, 35.190094, 28.678020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409017, -0.247344, 0.878365,
		0.818870, -0.524255, 0.233685,
		0.402687, 0.814848, 0.416972,
		42.181747, 35.434547, 28.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290386, 34.641926, 29.002472>,  <41.899864, 34.864155, 28.511232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290386, 34.641926, 29.002472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.237831, 35.018822, 29.125706>,  <42.206299, 35.244961, 29.199646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.237831, 35.018822, 29.125706>,  <42.290386, 34.641926, 29.002472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237831, 35.018822, 29.125706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228161, -0.331176, 0.915568,
		0.964718, 0.049998, 0.258494,
		-0.131383, 0.942244, 0.308084,
		42.198418, 35.301495, 29.218130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573872, 34.634602, 29.651138>,  <42.290386, 34.641926, 29.002472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573872, 34.634602, 29.651138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.315044, 34.939011, 29.632616>,  <42.159748, 35.121655, 29.621504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.315044, 34.939011, 29.632616>,  <42.573872, 34.634602, 29.651138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315044, 34.939011, 29.632616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392749, -0.280655, 0.875775,
		0.653487, 0.584876, 0.480494,
		-0.647072, 0.761021, -0.046305,
		42.120922, 35.167316, 29.618725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.578331, 40.882450, 26.415936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186134, 40.941662, 26.364199>,  <42.950817, 40.977188, 26.333157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186134, 40.941662, 26.364199>,  <43.578331, 40.882450, 26.415936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186134, 40.941662, 26.364199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175764, 0.365521, -0.914058,
		-0.088030, -0.918957, -0.384407,
		-0.980489, 0.148030, -0.129343,
		42.891987, 40.986069, 26.325396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420055, 40.633198, 25.718966>,  <43.578331, 40.882450, 26.415936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420055, 40.633198, 25.718966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108791, 40.872017, 25.796942>,  <42.922035, 41.015308, 25.843727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.108791, 40.872017, 25.796942>,  <43.420055, 40.633198, 25.718966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108791, 40.872017, 25.796942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211628, 0.541480, -0.813642,
		-0.591342, -0.591886, -0.547709,
		-0.778157, 0.597051, 0.194941,
		42.875343, 41.051132, 25.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012089, 40.725105, 25.043272>,  <43.420055, 40.633198, 25.718966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012089, 40.725105, 25.043272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.922005, 41.025375, 25.291714>,  <42.867954, 41.205536, 25.440779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.922005, 41.025375, 25.291714>,  <43.012089, 40.725105, 25.043272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922005, 41.025375, 25.291714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127581, 0.609273, -0.782630,
		-0.965922, -0.255494, -0.041441,
		-0.225206, 0.750672, 0.621106,
		42.854443, 41.250576, 25.478046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364052, 41.009640, 24.707996>,  <43.012089, 40.725105, 25.043272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364052, 41.009640, 24.707996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518532, 41.281780, 24.957144>,  <42.611221, 41.445065, 25.106632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518532, 41.281780, 24.957144>,  <42.364052, 41.009640, 24.707996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518532, 41.281780, 24.957144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066860, 0.652835, -0.754544,
		-0.919987, 0.333053, 0.206639,
		0.386204, 0.680355, 0.622867,
		42.634392, 41.485886, 25.144005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141376, 41.669662, 24.485043>,  <42.364052, 41.009640, 24.707996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141376, 41.669662, 24.485043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.458298, 41.753395, 24.714281>,  <42.648449, 41.803635, 24.851824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.458298, 41.753395, 24.714281>,  <42.141376, 41.669662, 24.485043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458298, 41.753395, 24.714281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144006, 0.848605, -0.509049,
		-0.592894, 0.485849, 0.642205,
		0.792300, 0.209331, 0.573098,
		42.695988, 41.816193, 24.886211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093899, 42.405746, 24.539791>,  <42.141376, 41.669662, 24.485043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093899, 42.405746, 24.539791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.468983, 42.299923, 24.629866>,  <42.694035, 42.236431, 24.683910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.468983, 42.299923, 24.629866>,  <42.093899, 42.405746, 24.539791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468983, 42.299923, 24.629866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346161, 0.656413, -0.670295,
		0.029516, 0.706493, 0.707104,
		0.937711, -0.264556, 0.225186,
		42.750298, 42.220554, 24.697422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277924, 43.026554, 24.556944>,  <42.093899, 42.405746, 24.539791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277924, 43.026554, 24.556944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.611763, 42.806488, 24.545874>,  <42.812065, 42.674446, 24.539232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.611763, 42.806488, 24.545874>,  <42.277924, 43.026554, 24.556944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611763, 42.806488, 24.545874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340088, 0.554125, -0.759793,
		0.433350, 0.624708, 0.649576,
		0.834595, -0.550169, -0.027674,
		42.862141, 42.641438, 24.537571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873760, 43.548367, 24.537275>,  <42.277924, 43.026554, 24.556944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873760, 43.548367, 24.537275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.986164, 43.200508, 24.374922>,  <43.053608, 42.991791, 24.277510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.986164, 43.200508, 24.374922>,  <42.873760, 43.548367, 24.537275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986164, 43.200508, 24.374922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149954, 0.457521, -0.876464,
		0.947917, 0.185431, 0.258975,
		0.281010, -0.869649, -0.405886,
		43.070469, 42.939613, 24.253157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227985, 43.811661, 24.030663>,  <42.873760, 43.548367, 24.537275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227985, 43.811661, 24.030663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.161274, 43.430870, 23.927959>,  <43.121246, 43.202396, 23.866339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.161274, 43.430870, 23.927959>,  <43.227985, 43.811661, 24.030663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161274, 43.430870, 23.927959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223982, 0.217016, -0.950124,
		0.960217, -0.215969, 0.177032,
		-0.166778, -0.951978, -0.256756,
		43.111240, 43.145275, 23.850933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681919, 43.659222, 23.561781>,  <43.227985, 43.811661, 24.030663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681919, 43.659222, 23.561781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.395885, 43.388889, 23.490335>,  <43.224266, 43.226688, 23.447468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.395885, 43.388889, 23.490335>,  <43.681919, 43.659222, 23.561781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395885, 43.388889, 23.490335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074472, 0.180405, -0.980769,
		0.695058, -0.714636, -0.078674,
		-0.715086, -0.675832, -0.178613,
		43.181358, 43.186138, 23.436752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972618, 43.191242, 23.093811>,  <43.681919, 43.659222, 23.561781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972618, 43.191242, 23.093811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574642, 43.175774, 23.056730>,  <43.335857, 43.166492, 23.034481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574642, 43.175774, 23.056730>,  <43.972618, 43.191242, 23.093811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574642, 43.175774, 23.056730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075025, 0.327565, -0.941845,
		0.066783, -0.944037, -0.323008,
		-0.994943, -0.038666, -0.092702,
		43.276161, 43.164173, 23.028919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822750, 42.739136, 22.416245>,  <43.972618, 43.191242, 23.093811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822750, 42.739136, 22.416245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.514080, 42.972771, 22.516926>,  <43.328876, 43.112953, 22.577335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.514080, 42.972771, 22.516926>,  <43.822750, 42.739136, 22.416245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514080, 42.972771, 22.516926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094772, 0.285736, -0.953611,
		-0.628914, -0.759734, -0.165141,
		-0.771677, 0.584089, 0.251704,
		43.282578, 43.147999, 22.592438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518593, 42.766125, 21.815557>,  <43.822750, 42.739136, 22.416245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518593, 42.766125, 21.815557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375076, 43.060062, 22.045782>,  <43.288967, 43.236423, 22.183916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375076, 43.060062, 22.045782>,  <43.518593, 42.766125, 21.815557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375076, 43.060062, 22.045782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173567, 0.553339, -0.814672,
		-0.917137, -0.392199, -0.070991,
		-0.358795, 0.734844, 0.575561,
		43.267437, 43.280514, 22.218451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878624, 42.895218, 21.836197>,  <43.518593, 42.766125, 21.815557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878624, 42.895218, 21.836197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041935, 43.251617, 21.915636>,  <43.139919, 43.465458, 21.963299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041935, 43.251617, 21.915636>,  <42.878624, 42.895218, 21.836197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041935, 43.251617, 21.915636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283197, 0.330446, -0.900336,
		-0.867820, 0.311343, 0.387240,
		0.408275, 0.890994, 0.198597,
		43.164417, 43.518917, 21.975216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125137, 42.738041, 21.827662>,  <42.878624, 42.895218, 21.836197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125137, 42.738041, 21.827662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.228081, 42.477192, 21.542423>,  <42.289845, 42.320683, 21.371281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.228081, 42.477192, 21.542423>,  <42.125137, 42.738041, 21.827662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228081, 42.477192, 21.542423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047865, -0.745650, 0.664617,
		-0.965131, -0.136911, -0.223111,
		0.257356, -0.652121, -0.713096,
		42.305286, 42.281555, 21.328495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632473, 42.247742, 21.859804>,  <42.125137, 42.738041, 21.827662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632473, 42.247742, 21.859804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.954929, 42.076637, 21.696268>,  <42.148403, 41.973972, 21.598146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.954929, 42.076637, 21.696268>,  <41.632473, 42.247742, 21.859804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954929, 42.076637, 21.696268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086500, -0.768707, 0.633725,
		-0.585363, -0.475509, -0.656690,
		0.806144, -0.427763, -0.408841,
		42.196774, 41.948307, 21.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453964, 41.634491, 21.837816>,  <41.632473, 42.247742, 21.859804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453964, 41.634491, 21.837816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846672, 41.595318, 21.772650>,  <42.082294, 41.571815, 21.733551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.846672, 41.595318, 21.772650>,  <41.453964, 41.634491, 21.837816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846672, 41.595318, 21.772650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002049, -0.862463, 0.506115,
		-0.190073, -0.496554, -0.846939,
		0.981768, -0.097934, -0.162914,
		42.141201, 41.565937, 21.723776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578575, 40.962780, 21.670725>,  <41.453964, 41.634491, 21.837816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578575, 40.962780, 21.670725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941799, 41.062214, 21.805563>,  <42.159733, 41.121876, 21.886465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941799, 41.062214, 21.805563>,  <41.578575, 40.962780, 21.670725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941799, 41.062214, 21.805563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117684, -0.923832, 0.364259,
		0.401970, -0.291098, -0.868149,
		0.908059, 0.248588, 0.337095,
		42.214218, 41.136791, 21.906693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949463, 40.330547, 21.540720>,  <41.578575, 40.962780, 21.670725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949463, 40.330547, 21.540720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159363, 40.531643, 21.815496>,  <42.285305, 40.652298, 21.980362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159363, 40.531643, 21.815496>,  <41.949463, 40.330547, 21.540720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159363, 40.531643, 21.815496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206461, -0.858047, 0.470245,
		0.825839, -0.104935, -0.554057,
		0.524752, 0.502737, 0.686943,
		42.316788, 40.682465, 22.021580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568832, 39.863369, 21.607325>,  <41.949463, 40.330547, 21.540720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568832, 39.863369, 21.607325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544426, 40.119358, 21.913712>,  <42.529781, 40.272953, 22.097544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544426, 40.119358, 21.913712>,  <42.568832, 39.863369, 21.607325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544426, 40.119358, 21.913712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342133, -0.707498, 0.618378,
		0.937668, 0.299795, -0.175787,
		-0.061017, 0.639976, 0.765968,
		42.526119, 40.311352, 22.143501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224617, 39.900349, 21.898760>,  <42.568832, 39.863369, 21.607325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224617, 39.900349, 21.898760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948914, 39.947304, 22.184736>,  <42.783489, 39.975475, 22.356321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948914, 39.947304, 22.184736>,  <43.224617, 39.900349, 21.898760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948914, 39.947304, 22.184736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327143, -0.830041, 0.451675,
		0.646449, 0.545210, 0.533713,
		-0.689261, 0.117385, 0.714940,
		42.742134, 39.982521, 22.399218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518032, 39.510983, 22.462763>,  <43.224617, 39.900349, 21.898760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518032, 39.510983, 22.462763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.149052, 39.582565, 22.599619>,  <42.927662, 39.625515, 22.681732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.149052, 39.582565, 22.599619>,  <43.518032, 39.510983, 22.462763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149052, 39.582565, 22.599619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133457, -0.683723, 0.717434,
		0.362314, 0.707459, 0.606819,
		-0.922452, 0.178952, 0.342138,
		42.872314, 39.636250, 22.702261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605766, 39.654781, 23.204287>,  <43.518032, 39.510983, 22.462763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605766, 39.654781, 23.204287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.221962, 39.554298, 23.153318>,  <42.991680, 39.494007, 23.122738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.221962, 39.554298, 23.153318>,  <43.605766, 39.654781, 23.204287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221962, 39.554298, 23.153318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060509, -0.625627, 0.777772,
		-0.275102, 0.738570, 0.615495,
		-0.959509, -0.251210, -0.127421,
		42.934109, 39.478935, 23.115091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352016, 39.715832, 23.993013>,  <43.605766, 39.654781, 23.204287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352016, 39.715832, 23.993013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.053131, 39.546158, 23.788370>,  <42.873798, 39.444355, 23.665585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.053131, 39.546158, 23.788370>,  <43.352016, 39.715832, 23.993013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053131, 39.546158, 23.788370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050087, -0.731682, 0.679804,
		-0.662693, 0.533584, 0.525477,
		-0.747214, -0.424182, -0.511606,
		42.828968, 39.418903, 23.634888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710323, 39.823040, 24.306376>,  <43.352016, 39.715832, 23.993013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710323, 39.823040, 24.306376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.689899, 39.475807, 24.108860>,  <42.677647, 39.267467, 23.990351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.689899, 39.475807, 24.108860>,  <42.710323, 39.823040, 24.306376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689899, 39.475807, 24.108860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183351, -0.477880, 0.859077,
		-0.981721, 0.134400, -0.134763,
		-0.051059, -0.868083, -0.493787,
		42.674583, 39.215382, 23.960724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213623, 39.399094, 24.655064>,  <42.710323, 39.823040, 24.306376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213623, 39.399094, 24.655064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.369507, 39.098495, 24.442133>,  <42.463039, 38.918137, 24.314375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.369507, 39.098495, 24.442133>,  <42.213623, 39.399094, 24.655064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369507, 39.098495, 24.442133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108587, -0.611492, 0.783764,
		-0.914512, -0.247639, -0.319910,
		0.389713, -0.751500, -0.532327,
		42.486420, 38.873047, 24.282434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732006, 38.729153, 24.646381>,  <42.213623, 39.399094, 24.655064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732006, 38.729153, 24.646381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101891, 38.601276, 24.563713>,  <42.323822, 38.524551, 24.514112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.101891, 38.601276, 24.563713>,  <41.732006, 38.729153, 24.646381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101891, 38.601276, 24.563713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084740, -0.702148, 0.706971,
		-0.371122, -0.636229, -0.676373,
		0.924709, -0.319688, -0.206668,
		42.379303, 38.505371, 24.501713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611958, 38.031937, 24.700560>,  <41.732006, 38.729153, 24.646381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611958, 38.031937, 24.700560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.007484, 38.068432, 24.747751>,  <42.244801, 38.090328, 24.776066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.007484, 38.068432, 24.747751>,  <41.611958, 38.031937, 24.700560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007484, 38.068432, 24.747751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031943, -0.643144, 0.765079,
		0.145683, -0.760290, -0.633036,
		0.988816, 0.091238, 0.117981,
		42.304131, 38.095802, 24.783146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221100, 37.484356, 24.132486>,  <41.611958, 38.031937, 24.700560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221100, 37.484356, 24.132486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822044, 37.461697, 24.147976>,  <40.582611, 37.448101, 24.157270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822044, 37.461697, 24.147976>,  <41.221100, 37.484356, 24.132486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822044, 37.461697, 24.147976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057487, 0.381811, -0.922451,
		0.037474, -0.922503, -0.384167,
		-0.997643, -0.056653, 0.038724,
		40.522751, 37.444702, 24.159594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046257, 37.380753, 23.325340>,  <41.221100, 37.484356, 24.132486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046257, 37.380753, 23.325340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688747, 37.466022, 23.483189>,  <40.474243, 37.517185, 23.577898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688747, 37.466022, 23.483189>,  <41.046257, 37.380753, 23.325340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688747, 37.466022, 23.483189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265080, 0.458674, -0.848145,
		-0.361804, -0.862656, -0.353443,
		-0.893773, 0.213172, 0.394623,
		40.420616, 37.529972, 23.601576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508022, 37.110146, 22.876867>,  <41.046257, 37.380753, 23.325340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508022, 37.110146, 22.876867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.358952, 37.410038, 23.095594>,  <40.269508, 37.589973, 23.226830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.358952, 37.410038, 23.095594>,  <40.508022, 37.110146, 22.876867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358952, 37.410038, 23.095594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218697, 0.501706, -0.836937,
		-0.901822, -0.431495, -0.023010,
		-0.372679, 0.749735, 0.546816,
		40.247147, 37.634960, 23.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927643, 37.296177, 22.535902>,  <40.508022, 37.110146, 22.876867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927643, 37.296177, 22.535902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949440, 37.606812, 22.786961>,  <39.962517, 37.793194, 22.937595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949440, 37.606812, 22.786961>,  <39.927643, 37.296177, 22.535902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949440, 37.606812, 22.786961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484074, 0.570321, -0.663631,
		-0.873329, -0.267667, 0.407003,
		0.054490, 0.776588, 0.627648,
		39.965786, 37.839787, 22.975254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309200, 37.601997, 22.722431>,  <39.927643, 37.296177, 22.535902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309200, 37.601997, 22.722431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562634, 37.905975, 22.780466>,  <39.714695, 38.088364, 22.815287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562634, 37.905975, 22.780466>,  <39.309200, 37.601997, 22.722431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562634, 37.905975, 22.780466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511063, 0.551897, -0.658957,
		-0.580845, 0.343357, 0.738055,
		0.633588, 0.759944, 0.145089,
		39.752708, 38.133957, 22.823994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898838, 38.208698, 22.753311>,  <39.309200, 37.601997, 22.722431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898838, 38.208698, 22.753311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267757, 38.331528, 22.659447>,  <39.489109, 38.405224, 22.603128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267757, 38.331528, 22.659447>,  <38.898838, 38.208698, 22.753311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267757, 38.331528, 22.659447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371155, 0.534548, -0.759278,
		-0.107716, 0.787379, 0.606986,
		0.922302, 0.307072, -0.234660,
		39.544449, 38.423649, 22.589048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785580, 38.860191, 22.530416>,  <38.898838, 38.208698, 22.753311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785580, 38.860191, 22.530416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142151, 38.756554, 22.381704>,  <39.356094, 38.694370, 22.292477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142151, 38.756554, 22.381704>,  <38.785580, 38.860191, 22.530416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142151, 38.756554, 22.381704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190171, 0.530795, -0.825889,
		0.411320, 0.806925, 0.423895,
		0.891432, -0.259091, -0.371780,
		39.409580, 38.678825, 22.270170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547855, 39.555283, 22.566994>,  <38.785580, 38.860191, 22.530416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547855, 39.555283, 22.566994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178349, 39.517700, 22.418489>,  <37.956646, 39.495152, 22.329388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178349, 39.517700, 22.418489>,  <38.547855, 39.555283, 22.566994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178349, 39.517700, 22.418489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230305, -0.638248, 0.734574,
		-0.305977, 0.764075, 0.567950,
		-0.923763, -0.093961, -0.371259,
		37.901218, 39.489513, 22.307112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145535, 39.616352, 23.086250>,  <38.547855, 39.555283, 22.566994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145535, 39.616352, 23.086250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.905754, 39.419441, 22.833801>,  <37.761887, 39.301292, 22.682331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.905754, 39.419441, 22.833801>,  <38.145535, 39.616352, 23.086250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905754, 39.419441, 22.833801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260390, -0.625666, 0.735349,
		-0.756869, 0.605147, 0.246874,
		-0.599455, -0.492279, -0.631122,
		37.725918, 39.271759, 22.644464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485092, 39.607437, 23.406109>,  <38.145535, 39.616352, 23.086250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485092, 39.607437, 23.406109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513031, 39.297436, 23.154875>,  <37.529797, 39.111435, 23.004135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513031, 39.297436, 23.154875>,  <37.485092, 39.607437, 23.406109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513031, 39.297436, 23.154875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275721, -0.620095, 0.734480,
		-0.958696, 0.121872, -0.256999,
		0.069852, -0.775003, -0.628085,
		37.533985, 39.064934, 22.966450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915058, 39.161896, 23.668283>,  <37.485092, 39.607437, 23.406109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915058, 39.161896, 23.668283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103691, 38.892288, 23.440844>,  <37.216873, 38.730526, 23.304379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103691, 38.892288, 23.440844>,  <36.915058, 39.161896, 23.668283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103691, 38.892288, 23.440844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321445, -0.731833, 0.600911,
		-0.821145, -0.100607, -0.561782,
		0.471586, -0.674017, -0.568602,
		37.245167, 38.690083, 23.270264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489597, 38.579502, 23.665728>,  <36.915058, 39.161896, 23.668283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489597, 38.579502, 23.665728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840755, 38.422672, 23.555765>,  <37.051449, 38.328575, 23.489788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840755, 38.422672, 23.555765>,  <36.489597, 38.579502, 23.665728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840755, 38.422672, 23.555765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172378, -0.794368, 0.582466,
		-0.446747, -0.463957, -0.764958,
		0.877897, -0.392076, -0.274906,
		37.104126, 38.305050, 23.473293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312572, 37.947662, 23.366690>,  <36.489597, 38.579502, 23.665728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312572, 37.947662, 23.366690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690495, 37.936218, 23.497246>,  <36.917248, 37.929352, 23.575581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690495, 37.936218, 23.497246>,  <36.312572, 37.947662, 23.366690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690495, 37.936218, 23.497246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214640, -0.806706, 0.550596,
		0.247547, -0.590260, -0.768318,
		0.944802, -0.028614, 0.326391,
		36.973934, 37.927635, 23.595163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436184, 37.275303, 23.339350>,  <36.312572, 37.947662, 23.366690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436184, 37.275303, 23.339350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720718, 37.421947, 23.579218>,  <36.891438, 37.509933, 23.723139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720718, 37.421947, 23.579218>,  <36.436184, 37.275303, 23.339350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720718, 37.421947, 23.579218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137431, -0.764173, 0.630201,
		0.689289, -0.530695, -0.493197,
		0.711332, 0.366609, 0.599670,
		36.934116, 37.531929, 23.759119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.660191, 43.612076, 22.020102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029743, 43.575237, 22.168676>,  <40.251472, 43.553135, 22.257822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029743, 43.575237, 22.168676>,  <39.660191, 43.612076, 22.020102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029743, 43.575237, 22.168676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372933, -0.434389, 0.819894,
		0.085841, -0.896005, -0.435668,
		0.923879, -0.092095, 0.371439,
		40.306908, 43.547607, 22.280107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932888, 42.895248, 22.093485>,  <39.660191, 43.612076, 22.020102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932888, 42.895248, 22.093485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160381, 43.101204, 22.350056>,  <40.296879, 43.224777, 22.503998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160381, 43.101204, 22.350056>,  <39.932888, 42.895248, 22.093485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160381, 43.101204, 22.350056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243296, -0.639626, 0.729168,
		0.785715, -0.570760, -0.238506,
		0.568734, 0.514891, 0.641427,
		40.331001, 43.255672, 22.542484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364063, 42.455914, 22.392288>,  <39.932888, 42.895248, 22.093485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364063, 42.455914, 22.392288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370609, 42.755745, 22.656973>,  <40.374538, 42.935642, 22.815784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370609, 42.755745, 22.656973>,  <40.364063, 42.455914, 22.392288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370609, 42.755745, 22.656973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229422, -0.641330, 0.732162,
		0.973190, -0.163795, 0.161472,
		0.016368, 0.749578, 0.661714,
		40.375519, 42.980618, 22.855488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720078, 42.146870, 22.859840>,  <40.364063, 42.455914, 22.392288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720078, 42.146870, 22.859840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578953, 42.474064, 23.041573>,  <40.494278, 42.670380, 23.150612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578953, 42.474064, 23.041573>,  <40.720078, 42.146870, 22.859840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578953, 42.474064, 23.041573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381286, -0.569095, 0.728527,
		0.854486, 0.083802, 0.512671,
		-0.352811, 0.817990, 0.454331,
		40.473110, 42.719460, 23.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001328, 41.960735, 23.550150>,  <40.720078, 42.146870, 22.859840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001328, 41.960735, 23.550150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735500, 42.258034, 23.580959>,  <40.576004, 42.436413, 23.599445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.735500, 42.258034, 23.580959>,  <41.001328, 41.960735, 23.550150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735500, 42.258034, 23.580959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238153, -0.308386, 0.920968,
		0.708257, 0.593705, 0.381950,
		-0.664572, 0.743244, 0.077024,
		40.536129, 42.481007, 23.604067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086239, 42.273380, 24.164795>,  <41.001328, 41.960735, 23.550150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086239, 42.273380, 24.164795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705677, 42.373455, 24.092972>,  <40.477341, 42.433498, 24.049877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705677, 42.373455, 24.092972>,  <41.086239, 42.273380, 24.164795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705677, 42.373455, 24.092972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242392, -0.248742, 0.937749,
		0.189945, 0.935701, 0.297296,
		-0.951403, 0.250183, -0.179559,
		40.420258, 42.448509, 24.039104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770420, 42.655209, 24.862276>,  <41.086239, 42.273380, 24.164795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770420, 42.655209, 24.862276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446724, 42.566048, 24.644855>,  <40.252506, 42.512550, 24.514402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446724, 42.566048, 24.644855>,  <40.770420, 42.655209, 24.862276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446724, 42.566048, 24.644855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456646, -0.343432, 0.820688,
		-0.369608, 0.912342, 0.176129,
		-0.809237, -0.222904, -0.543553,
		40.203953, 42.499176, 24.481791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183475, 43.035110, 25.154974>,  <40.770420, 42.655209, 24.862276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183475, 43.035110, 25.154974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022133, 42.723995, 24.962160>,  <39.925327, 42.537327, 24.846472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022133, 42.723995, 24.962160>,  <40.183475, 43.035110, 25.154974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022133, 42.723995, 24.962160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614930, -0.159701, 0.772241,
		-0.677619, 0.607903, -0.413868,
		-0.403353, -0.777785, -0.482034,
		39.901127, 42.490658, 24.817551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386475, 43.035297, 25.279430>,  <40.183475, 43.035110, 25.154974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386475, 43.035297, 25.279430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510006, 42.672142, 25.166035>,  <39.584126, 42.454250, 25.097998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510006, 42.672142, 25.166035>,  <39.386475, 43.035297, 25.279430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510006, 42.672142, 25.166035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551128, -0.413736, 0.724624,
		-0.775167, -0.067546, -0.628135,
		0.308828, -0.907888, -0.283488,
		39.602654, 42.399776, 25.080988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850368, 42.682037, 25.366879>,  <39.386475, 43.035297, 25.279430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850368, 42.682037, 25.366879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139740, 42.405975, 25.359617>,  <39.313362, 42.240337, 25.355261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139740, 42.405975, 25.359617>,  <38.850368, 42.682037, 25.366879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139740, 42.405975, 25.359617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516813, -0.558793, 0.648580,
		-0.457765, -0.459822, -0.760930,
		0.723433, -0.690156, -0.018154,
		39.356770, 42.198929, 25.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521561, 42.114841, 25.243231>,  <38.850368, 42.682037, 25.366879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521561, 42.114841, 25.243231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.870441, 42.007809, 25.407021>,  <39.079769, 41.943588, 25.505295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.870441, 42.007809, 25.407021>,  <38.521561, 42.114841, 25.243231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870441, 42.007809, 25.407021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462760, -0.722618, 0.513495,
		0.158492, -0.637358, -0.754092,
		0.872200, -0.267579, 0.409473,
		39.132103, 41.927536, 25.529863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432983, 41.413944, 25.341562>,  <38.521561, 42.114841, 25.243231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432983, 41.413944, 25.341562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733997, 41.529644, 25.578215>,  <38.914604, 41.599064, 25.720205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733997, 41.529644, 25.578215>,  <38.432983, 41.413944, 25.341562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733997, 41.529644, 25.578215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298769, -0.650655, 0.698130,
		0.586882, -0.702127, -0.403220,
		0.752534, 0.289251, 0.591631,
		38.959759, 41.616421, 25.755703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178524, 40.753662, 25.102810>,  <38.432983, 41.413944, 25.341562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178524, 40.753662, 25.102810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.780010, 40.720047, 25.110296>,  <37.540901, 40.699879, 25.114788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.780010, 40.720047, 25.110296>,  <38.178524, 40.753662, 25.102810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780010, 40.720047, 25.110296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065203, 0.594505, -0.801444,
		0.056222, -0.799688, -0.597777,
		-0.996287, -0.084036, 0.018718,
		37.481125, 40.694836, 25.115911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137333, 40.645947, 24.387852>,  <38.178524, 40.753662, 25.102810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137333, 40.645947, 24.387852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768227, 40.726875, 24.519045>,  <37.546764, 40.775433, 24.597761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.768227, 40.726875, 24.519045>,  <38.137333, 40.645947, 24.387852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768227, 40.726875, 24.519045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193559, 0.492615, -0.848449,
		-0.333228, -0.846402, -0.415406,
		-0.922764, 0.202321, 0.327982,
		37.491398, 40.787571, 24.617439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676407, 40.501427, 23.759909>,  <38.137333, 40.645947, 24.387852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676407, 40.501427, 23.759909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.467422, 40.737877, 24.005705>,  <37.342033, 40.879749, 24.153183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.467422, 40.737877, 24.005705>,  <37.676407, 40.501427, 23.759909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467422, 40.737877, 24.005705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211614, 0.608233, -0.765031,
		-0.825986, -0.529734, -0.192687,
		-0.522462, 0.591130, 0.614491,
		37.310684, 40.915215, 24.190052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034363, 40.523209, 23.485836>,  <37.676407, 40.501427, 23.759909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034363, 40.523209, 23.485836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.084476, 40.855938, 23.702124>,  <37.114544, 41.055576, 23.831896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.084476, 40.855938, 23.702124>,  <37.034363, 40.523209, 23.485836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084476, 40.855938, 23.702124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233302, 0.554429, -0.798861,
		-0.964300, -0.026067, 0.263526,
		0.125282, 0.831823, 0.540717,
		37.122063, 41.105484, 23.864338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402618, 40.884575, 23.438765>,  <37.034363, 40.523209, 23.485836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402618, 40.884575, 23.438765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.690464, 41.143757, 23.538612>,  <36.863171, 41.299267, 23.598522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.690464, 41.143757, 23.538612>,  <36.402618, 40.884575, 23.438765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690464, 41.143757, 23.538612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334220, 0.638319, -0.693431,
		-0.608651, 0.415573, 0.675902,
		0.719612, 0.647957, 0.249621,
		36.906349, 41.338142, 23.613499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122673, 41.526279, 23.507349>,  <36.402618, 40.884575, 23.438765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122673, 41.526279, 23.507349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497574, 41.614723, 23.399519>,  <36.722515, 41.667789, 23.334820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.497574, 41.614723, 23.399519>,  <36.122673, 41.526279, 23.507349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497574, 41.614723, 23.399519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347783, 0.647609, -0.677975,
		0.024672, 0.729186, 0.683870,
		0.937250, 0.221112, -0.269577,
		36.778748, 41.681057, 23.318645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169987, 42.239388, 23.538044>,  <36.122673, 41.526279, 23.507349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169987, 42.239388, 23.538044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468582, 42.141220, 23.290648>,  <36.647739, 42.082321, 23.142210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.468582, 42.141220, 23.290648>,  <36.169987, 42.239388, 23.538044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468582, 42.141220, 23.290648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227460, 0.779387, -0.583795,
		0.625316, 0.576477, 0.525979,
		0.746486, -0.245417, -0.618489,
		36.692528, 42.067596, 23.105101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412720, 42.884518, 23.301823>,  <36.169987, 42.239388, 23.538044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412720, 42.884518, 23.301823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566364, 42.633621, 23.030815>,  <36.658550, 42.483086, 22.868212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566364, 42.633621, 23.030815>,  <36.412720, 42.884518, 23.301823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566364, 42.633621, 23.030815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295066, 0.611933, -0.733808,
		0.874867, 0.481778, 0.049975,
		0.384114, -0.627238, -0.677517,
		36.681599, 42.445450, 22.827560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788589, 43.352951, 22.869354>,  <36.412720, 42.884518, 23.301823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788589, 43.352951, 22.869354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765026, 43.019886, 22.649099>,  <36.750889, 42.820045, 22.516947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765026, 43.019886, 22.649099>,  <36.788589, 43.352951, 22.869354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765026, 43.019886, 22.649099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175270, 0.551652, -0.815451,
		0.982757, 0.048476, -0.178436,
		-0.058905, -0.832664, -0.550636,
		36.747353, 42.770088, 22.483908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192902, 43.498333, 22.297136>,  <36.788589, 43.352951, 22.869354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192902, 43.498333, 22.297136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960968, 43.195541, 22.176622>,  <36.821808, 43.013866, 22.104313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960968, 43.195541, 22.176622>,  <37.192902, 43.498333, 22.297136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960968, 43.195541, 22.176622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025442, 0.352793, -0.935356,
		0.814337, -0.550017, -0.185302,
		-0.579835, -0.756980, -0.301286,
		36.787018, 42.968449, 22.086237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609489, 43.139133, 21.703703>,  <37.192902, 43.498333, 22.297136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609489, 43.139133, 21.703703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.213799, 43.082504, 21.688824>,  <36.976383, 43.048527, 21.679895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.213799, 43.082504, 21.688824>,  <37.609489, 43.139133, 21.703703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213799, 43.082504, 21.688824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041005, 0.511974, -0.858022,
		0.140514, -0.847255, -0.512264,
		-0.989229, -0.141569, -0.037198,
		36.917030, 43.040031, 21.677664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507835, 43.098980, 20.985670>,  <37.609489, 43.139133, 21.703703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507835, 43.098980, 20.985670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152084, 43.150215, 21.161217>,  <36.938633, 43.180958, 21.266544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152084, 43.150215, 21.161217>,  <37.507835, 43.098980, 20.985670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152084, 43.150215, 21.161217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317864, 0.516704, -0.794971,
		-0.328594, -0.846528, -0.418828,
		-0.889375, 0.128092, 0.438867,
		36.885273, 43.188644, 21.292877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135426, 42.892567, 20.457279>,  <37.507835, 43.098980, 20.985670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135426, 42.892567, 20.457279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916508, 43.140804, 20.681894>,  <36.785156, 43.289749, 20.816664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.916508, 43.140804, 20.681894>,  <37.135426, 42.892567, 20.457279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916508, 43.140804, 20.681894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146061, 0.589823, -0.794214,
		-0.824095, -0.516689, -0.232163,
		-0.547297, 0.620597, 0.561538,
		36.752319, 43.326984, 20.850355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293106, 42.238331, 20.157404>,  <37.135426, 42.892567, 20.457279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293106, 42.238331, 20.157404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.335079, 41.870247, 20.006561>,  <37.360264, 41.649399, 19.916056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.335079, 41.870247, 20.006561>,  <37.293106, 42.238331, 20.157404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335079, 41.870247, 20.006561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125436, -0.388419, 0.912906,
		-0.986537, -0.048491, -0.156185,
		0.104933, -0.920206, -0.377107,
		37.366558, 41.594185, 19.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897114, 41.881565, 20.552937>,  <37.293106, 42.238331, 20.157404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897114, 41.881565, 20.552937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139042, 41.615395, 20.377941>,  <37.284199, 41.455692, 20.272943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139042, 41.615395, 20.377941>,  <36.897114, 41.881565, 20.552937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139042, 41.615395, 20.377941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066753, -0.589792, 0.804792,
		-0.793559, -0.457552, -0.401138,
		0.604822, -0.665427, -0.437492,
		37.320488, 41.415768, 20.246695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571728, 41.316723, 20.585340>,  <36.897114, 41.881565, 20.552937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571728, 41.316723, 20.585340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959080, 41.228642, 20.538443>,  <37.191490, 41.175793, 20.510303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959080, 41.228642, 20.538443>,  <36.571728, 41.316723, 20.585340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959080, 41.228642, 20.538443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039331, -0.598863, 0.799885,
		-0.246352, -0.769983, -0.588589,
		0.968382, -0.220203, -0.117247,
		37.249596, 41.162582, 20.503269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694401, 40.509182, 20.624823>,  <36.571728, 41.316723, 20.585340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694401, 40.509182, 20.624823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048904, 40.664967, 20.725115>,  <37.261608, 40.758438, 20.785290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048904, 40.664967, 20.725115>,  <36.694401, 40.509182, 20.624823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048904, 40.664967, 20.725115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098889, -0.687926, 0.719013,
		0.452511, -0.612437, -0.648193,
		0.886259, 0.389460, 0.250731,
		37.314781, 40.781803, 20.800335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016598, 39.905724, 20.711414>,  <36.694401, 40.509182, 20.624823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016598, 39.905724, 20.711414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239071, 40.191692, 20.880907>,  <37.372555, 40.363274, 20.982603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.239071, 40.191692, 20.880907>,  <37.016598, 39.905724, 20.711414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239071, 40.191692, 20.880907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292665, -0.645700, 0.705280,
		0.777824, -0.268252, -0.568358,
		0.556181, 0.714922, 0.423733,
		37.405926, 40.406170, 21.008026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623989, 39.614479, 20.812262>,  <37.016598, 39.905724, 20.711414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623989, 39.614479, 20.812262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584332, 39.918514, 21.069147>,  <37.560535, 40.100937, 21.223278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584332, 39.918514, 21.069147>,  <37.623989, 39.614479, 20.812262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584332, 39.918514, 21.069147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348044, -0.578140, 0.737983,
		0.932221, 0.296685, -0.207225,
		-0.099143, 0.760087, 0.642214,
		37.554588, 40.146542, 21.261812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208530, 39.463387, 21.108616>,  <37.623989, 39.614479, 20.812262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208530, 39.463387, 21.108616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.978580, 39.688435, 21.346264>,  <37.840611, 39.823463, 21.488853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.978580, 39.688435, 21.346264>,  <38.208530, 39.463387, 21.108616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978580, 39.688435, 21.346264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197342, -0.609328, 0.767968,
		0.794088, 0.558731, 0.239259,
		-0.574875, 0.562618, 0.594121,
		37.806118, 39.857220, 21.524500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555046, 39.508400, 21.758751>,  <38.208530, 39.463387, 21.108616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555046, 39.508400, 21.758751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176216, 39.598591, 21.850151>,  <37.948917, 39.652706, 21.904991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176216, 39.598591, 21.850151>,  <38.555046, 39.508400, 21.758751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176216, 39.598591, 21.850151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020333, -0.668237, 0.743671,
		0.320370, 0.708957, 0.628285,
		-0.947074, 0.225475, 0.228498,
		37.892094, 39.666233, 21.918701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285954, 39.587086, 22.139608>,  <38.555046, 39.508400, 21.758751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285954, 39.587086, 22.139608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479889, 39.260498, 22.014185>,  <39.596249, 39.064545, 21.938931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479889, 39.260498, 22.014185>,  <39.285954, 39.587086, 22.139608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479889, 39.260498, 22.014185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408065, 0.528273, -0.744588,
		0.773575, 0.233050, 0.589296,
		0.484835, -0.816465, -0.313559,
		39.625340, 39.015560, 21.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914749, 39.900925, 22.020517>,  <39.285954, 39.587086, 22.139608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914749, 39.900925, 22.020517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918919, 39.565098, 21.803253>,  <39.921421, 39.363602, 21.672894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918919, 39.565098, 21.803253>,  <39.914749, 39.900925, 22.020517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918919, 39.565098, 21.803253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356678, 0.510583, -0.782359,
		0.934169, -0.185578, 0.304776,
		0.010425, -0.839563, -0.543162,
		39.922047, 39.313229, 21.640305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571377, 39.825314, 21.673807>,  <39.914749, 39.900925, 22.020517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571377, 39.825314, 21.673807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300587, 39.613804, 21.469023>,  <40.138111, 39.486900, 21.346151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300587, 39.613804, 21.469023>,  <40.571377, 39.825314, 21.673807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300587, 39.613804, 21.469023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285264, 0.452720, -0.844790,
		0.678475, -0.717947, -0.155642,
		-0.676976, -0.528769, -0.511963,
		40.097492, 39.455173, 21.315434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931904, 39.547356, 21.174166>,  <40.571377, 39.825314, 21.673807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931904, 39.547356, 21.174166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.547817, 39.553570, 21.062641>,  <40.317364, 39.557297, 20.995726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.547817, 39.553570, 21.062641>,  <40.931904, 39.547356, 21.174166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547817, 39.553570, 21.062641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245119, 0.525197, -0.814914,
		0.133770, -0.850839, -0.508113,
		-0.960220, 0.015537, -0.278813,
		40.259750, 39.558231, 20.978998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038395, 39.649395, 20.410185>,  <40.931904, 39.547356, 21.174166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038395, 39.649395, 20.410185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657627, 39.725117, 20.506523>,  <40.429165, 39.770550, 20.564325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657627, 39.725117, 20.506523>,  <41.038395, 39.649395, 20.410185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657627, 39.725117, 20.506523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006287, 0.773969, -0.633193,
		-0.306274, -0.604264, -0.735568,
		-0.951923, 0.189306, 0.240845,
		40.372051, 39.781910, 20.578777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659634, 39.742325, 19.726961>,  <41.038395, 39.649395, 20.410185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659634, 39.742325, 19.726961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426502, 39.940567, 19.984547>,  <40.286625, 40.059513, 20.139097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426502, 39.940567, 19.984547>,  <40.659634, 39.742325, 19.726961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426502, 39.940567, 19.984547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142009, 0.842402, -0.519801,
		-0.800091, -0.211506, -0.561356,
		-0.582828, 0.495606, 0.643962,
		40.251656, 40.089249, 20.177734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260551, 40.085587, 19.287413>,  <40.659634, 39.742325, 19.726961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260551, 40.085587, 19.287413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220573, 40.284367, 19.632214>,  <40.196587, 40.403633, 19.839094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220573, 40.284367, 19.632214>,  <40.260551, 40.085587, 19.287413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220573, 40.284367, 19.632214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032029, 0.864286, -0.501980,
		-0.994477, -0.077781, -0.070466,
		-0.099948, 0.496951, 0.862004,
		40.190590, 40.433453, 19.890814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863483, 40.661285, 19.003235>,  <40.260551, 40.085587, 19.287413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863483, 40.661285, 19.003235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986423, 40.782459, 19.364071>,  <40.060188, 40.855164, 19.580572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986423, 40.782459, 19.364071>,  <39.863483, 40.661285, 19.003235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986423, 40.782459, 19.364071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100827, 0.932271, -0.347425,
		-0.946241, 0.197735, 0.255986,
		0.307346, 0.302938, 0.902090,
		40.078629, 40.873341, 19.634699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616512, 41.339207, 19.089258>,  <39.863483, 40.661285, 19.003235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616512, 41.339207, 19.089258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943718, 41.310833, 19.317579>,  <40.140041, 41.293808, 19.454573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943718, 41.310833, 19.317579>,  <39.616512, 41.339207, 19.089258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943718, 41.310833, 19.317579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276346, 0.918797, -0.281858,
		-0.504460, 0.388304, 0.771194,
		0.818017, -0.070931, 0.570803,
		40.189125, 41.289555, 19.488821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.244030, 31.634016, 32.639065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620846, 31.763676, 32.673679>,  <38.846935, 31.841471, 32.694447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620846, 31.763676, 32.673679>,  <38.244030, 31.634016, 32.639065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620846, 31.763676, 32.673679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054726, 0.402943, -0.913587,
		-0.331008, 0.855900, 0.397328,
		0.942040, 0.324149, 0.086538,
		38.903458, 31.860920, 32.699642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282467, 32.321224, 32.584881>,  <38.244030, 31.634016, 32.639065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282467, 32.321224, 32.584881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633224, 32.170254, 32.465809>,  <38.843678, 32.079674, 32.394367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633224, 32.170254, 32.465809>,  <38.282467, 32.321224, 32.584881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633224, 32.170254, 32.465809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092395, 0.475387, -0.874912,
		0.471725, 0.794706, 0.381991,
		0.876891, -0.377424, -0.297679,
		38.896294, 32.057026, 32.376507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531010, 32.839439, 32.177715>,  <38.282467, 32.321224, 32.584881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531010, 32.839439, 32.177715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782631, 32.547665, 32.070221>,  <38.933601, 32.372601, 32.005726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782631, 32.547665, 32.070221>,  <38.531010, 32.839439, 32.177715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782631, 32.547665, 32.070221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004667, 0.349236, -0.937023,
		0.777352, 0.588179, 0.223091,
		0.629049, -0.729438, -0.268734,
		38.971344, 32.328835, 31.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116875, 33.147545, 31.817406>,  <38.531010, 32.839439, 32.177715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116875, 33.147545, 31.817406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107513, 32.775890, 31.669809>,  <39.101898, 32.552898, 31.581251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107513, 32.775890, 31.669809>,  <39.116875, 33.147545, 31.817406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107513, 32.775890, 31.669809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030169, 0.368267, -0.929230,
		0.999271, -0.032878, 0.019412,
		-0.023402, -0.929139, -0.368991,
		39.100494, 32.497150, 31.559113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578617, 33.132187, 31.385893>,  <39.116875, 33.147545, 31.817406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578617, 33.132187, 31.385893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.327816, 32.845322, 31.264214>,  <39.177334, 32.673203, 31.191206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.327816, 32.845322, 31.264214>,  <39.578617, 33.132187, 31.385893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327816, 32.845322, 31.264214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020503, 0.375165, -0.926731,
		0.778747, -0.587301, -0.220525,
		-0.627003, -0.717168, -0.304200,
		39.139713, 32.630173, 31.172953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817089, 33.006199, 30.722565>,  <39.578617, 33.132187, 31.385893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817089, 33.006199, 30.722565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.472027, 32.804188, 30.711506>,  <39.264988, 32.682980, 30.704870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.472027, 32.804188, 30.711506>,  <39.817089, 33.006199, 30.722565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472027, 32.804188, 30.711506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018429, 0.086012, -0.996124,
		0.505451, -0.858805, -0.083506,
		-0.862658, -0.505031, -0.027648,
		39.213230, 32.652679, 30.703211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882790, 32.446373, 30.194704>,  <39.817089, 33.006199, 30.722565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882790, 32.446373, 30.194704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496590, 32.539371, 30.241613>,  <39.264870, 32.595173, 30.269758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496590, 32.539371, 30.241613>,  <39.882790, 32.446373, 30.194704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496590, 32.539371, 30.241613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113576, 0.029271, -0.993098,
		-0.234328, -0.972156, -0.001854,
		-0.965500, 0.232500, 0.117272,
		39.206940, 32.609119, 30.276794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621693, 32.359020, 29.436132>,  <39.882790, 32.446373, 30.194704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621693, 32.359020, 29.436132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322117, 32.527485, 29.640762>,  <39.142372, 32.628563, 29.763540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322117, 32.527485, 29.640762>,  <39.621693, 32.359020, 29.436132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322117, 32.527485, 29.640762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402542, 0.324070, -0.856118,
		-0.526349, -0.847114, -0.073176,
		-0.748944, 0.421161, 0.511573,
		39.097435, 32.653831, 29.794233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007076, 32.181931, 29.028200>,  <39.621693, 32.359020, 29.436132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007076, 32.181931, 29.028200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918217, 32.504150, 29.247925>,  <38.864899, 32.697483, 29.379759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918217, 32.504150, 29.247925>,  <39.007076, 32.181931, 29.028200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918217, 32.504150, 29.247925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424852, 0.427114, -0.798169,
		-0.877581, -0.410691, 0.247354,
		-0.222153, 0.805547, 0.549310,
		38.851570, 32.745815, 29.412718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380810, 32.565804, 28.666536>,  <39.007076, 32.181931, 29.028200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380810, 32.565804, 28.666536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513500, 32.840546, 28.925205>,  <38.593113, 33.005390, 29.080406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513500, 32.840546, 28.925205>,  <38.380810, 32.565804, 28.666536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513500, 32.840546, 28.925205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249904, 0.724979, -0.641836,
		-0.909673, 0.051309, 0.412144,
		0.331728, 0.686857, 0.646672,
		38.613018, 33.046604, 29.119207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845409, 33.093826, 28.623219>,  <38.380810, 32.565804, 28.666536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845409, 33.093826, 28.623219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197964, 33.238716, 28.744511>,  <38.409496, 33.325649, 28.817286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197964, 33.238716, 28.744511>,  <37.845409, 33.093826, 28.623219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197964, 33.238716, 28.744511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140716, 0.814075, -0.563455,
		-0.450952, 0.453952, 0.768486,
		0.881386, 0.362229, 0.303230,
		38.462379, 33.347385, 28.835480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711769, 33.825401, 28.802153>,  <37.845409, 33.093826, 28.623219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711769, 33.825401, 28.802153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100376, 33.793716, 28.712811>,  <38.333538, 33.774704, 28.659206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.100376, 33.793716, 28.712811>,  <37.711769, 33.825401, 28.802153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100376, 33.793716, 28.712811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051972, 0.848327, -0.526916,
		0.231215, 0.523514, 0.820044,
		0.971513, -0.079212, -0.223354,
		38.391830, 33.769955, 28.645803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487919, 34.436363, 29.181200>,  <37.711769, 33.825401, 28.802153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487919, 34.436363, 29.181200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088696, 34.411457, 29.181973>,  <36.849163, 34.396515, 29.182436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088696, 34.411457, 29.181973>,  <37.487919, 34.436363, 29.181200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088696, 34.411457, 29.181973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014391, -0.200308, 0.979627,
		-0.060609, 0.977753, 0.200815,
		-0.998058, -0.062265, 0.001930,
		36.789280, 34.392776, 29.182552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132732, 34.891144, 29.772381>,  <37.487919, 34.436363, 29.181200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132732, 34.891144, 29.772381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895004, 34.585564, 29.671848>,  <36.752369, 34.402214, 29.611528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895004, 34.585564, 29.671848>,  <37.132732, 34.891144, 29.772381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895004, 34.585564, 29.671848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370675, -0.017130, 0.928605,
		-0.713713, 0.645048, -0.272997,
		-0.594318, -0.763950, -0.251329,
		36.716709, 34.356380, 29.596449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582253, 35.002979, 30.217567>,  <37.132732, 34.891144, 29.772381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582253, 35.002979, 30.217567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510735, 34.629086, 30.094732>,  <36.467823, 34.404751, 30.021030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510735, 34.629086, 30.094732>,  <36.582253, 35.002979, 30.217567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510735, 34.629086, 30.094732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446309, -0.201106, 0.871989,
		-0.876836, 0.292960, -0.381225,
		-0.178791, -0.934736, -0.307088,
		36.457096, 34.348663, 30.002605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876320, 34.810875, 30.521763>,  <36.582253, 35.002979, 30.217567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876320, 34.810875, 30.521763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052361, 34.465340, 30.423706>,  <36.157986, 34.258018, 30.364872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052361, 34.465340, 30.423706>,  <35.876320, 34.810875, 30.521763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052361, 34.465340, 30.423706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420897, -0.439607, 0.793468,
		-0.793195, -0.246026, -0.557058,
		0.440100, -0.863839, -0.245142,
		36.184391, 34.206188, 30.350163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328510, 34.294037, 30.721756>,  <35.876320, 34.810875, 30.521763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328510, 34.294037, 30.721756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691647, 34.127895, 30.698751>,  <35.909527, 34.028210, 30.684950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691647, 34.127895, 30.698751>,  <35.328510, 34.294037, 30.721756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691647, 34.127895, 30.698751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111415, -0.371158, 0.921861,
		-0.404251, -0.830492, -0.383228,
		0.907837, -0.415361, -0.057512,
		35.963997, 34.003288, 30.681499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213631, 33.660305, 31.066885>,  <35.328510, 34.294037, 30.721756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213631, 33.660305, 31.066885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609604, 33.711575, 31.042860>,  <35.847187, 33.742336, 31.028444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609604, 33.711575, 31.042860>,  <35.213631, 33.660305, 31.066885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609604, 33.711575, 31.042860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103149, -0.362609, 0.926215,
		0.096938, -0.923085, -0.372179,
		0.989931, 0.128175, -0.060064,
		35.906582, 33.750027, 31.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471161, 32.992161, 31.261305>,  <35.213631, 33.660305, 31.066885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471161, 32.992161, 31.261305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749805, 33.271591, 31.326706>,  <35.916992, 33.439247, 31.365946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749805, 33.271591, 31.326706>,  <35.471161, 32.992161, 31.261305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749805, 33.271591, 31.326706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032768, -0.258633, 0.965420,
		0.716703, -0.667161, -0.203057,
		0.696608, 0.698573, 0.163501,
		35.958786, 33.481163, 31.375757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026821, 32.611874, 31.578520>,  <35.471161, 32.992161, 31.261305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026821, 32.611874, 31.578520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074059, 32.998520, 31.669477>,  <36.102402, 33.230507, 31.724052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074059, 32.998520, 31.669477>,  <36.026821, 32.611874, 31.578520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074059, 32.998520, 31.669477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158709, -0.244428, 0.956591,
		0.980237, -0.076879, -0.182277,
		0.118095, 0.966615, 0.227396,
		36.109486, 33.288506, 31.737696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259418, 32.642342, 32.237713>,  <36.026821, 32.611874, 31.578520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259418, 32.642342, 32.237713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160458, 33.029671, 32.224190>,  <36.101082, 33.262070, 32.216076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160458, 33.029671, 32.224190>,  <36.259418, 32.642342, 32.237713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160458, 33.029671, 32.224190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015081, 0.038741, 0.999135,
		0.968795, 0.246680, -0.024188,
		-0.247404, 0.968322, -0.033812,
		36.086235, 33.320168, 32.214046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735142, 33.029598, 32.699150>,  <36.259418, 32.642342, 32.237713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735142, 33.029598, 32.699150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438061, 33.291664, 32.643799>,  <36.259811, 33.448906, 32.610588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438061, 33.291664, 32.643799>,  <36.735142, 33.029598, 32.699150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438061, 33.291664, 32.643799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139385, 0.353383, 0.925036,
		0.654953, 0.667740, -0.353779,
		-0.742703, 0.655167, -0.138376,
		36.215248, 33.488213, 32.602287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986557, 33.659515, 32.795666>,  <36.735142, 33.029598, 32.699150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986557, 33.659515, 32.795666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594975, 33.705067, 32.863411>,  <36.360027, 33.732399, 32.904057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594975, 33.705067, 32.863411>,  <36.986557, 33.659515, 32.795666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594975, 33.705067, 32.863411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196842, 0.307665, 0.930911,
		0.053903, 0.944655, -0.323605,
		-0.978952, 0.113878, 0.169364,
		36.301289, 33.739231, 32.914219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966141, 34.214237, 33.110420>,  <36.986557, 33.659515, 32.795666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966141, 34.214237, 33.110420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608799, 34.057129, 33.197742>,  <36.394394, 33.962864, 33.250137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608799, 34.057129, 33.197742>,  <36.966141, 34.214237, 33.110420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608799, 34.057129, 33.197742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003135, 0.480360, 0.877066,
		-0.449349, 0.784212, -0.427899,
		-0.893351, -0.392767, 0.218308,
		36.340794, 33.939301, 33.263233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571918, 34.782574, 33.382652>,  <36.966141, 34.214237, 33.110420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571918, 34.782574, 33.382652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442825, 34.427254, 33.513355>,  <36.365368, 34.214062, 33.591778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442825, 34.427254, 33.513355>,  <36.571918, 34.782574, 33.382652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442825, 34.427254, 33.513355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097637, 0.312144, 0.945004,
		-0.941441, 0.336887, -0.014008,
		-0.322732, -0.888298, 0.326758,
		36.346004, 34.160763, 33.611382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059479, 34.901192, 33.931492>,  <36.571918, 34.782574, 33.382652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059479, 34.901192, 33.931492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208782, 34.533192, 33.979282>,  <36.298363, 34.312389, 34.007957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.208782, 34.533192, 33.979282>,  <36.059479, 34.901192, 33.931492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208782, 34.533192, 33.979282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322744, 0.249512, 0.913006,
		-0.869779, -0.302224, 0.390057,
		0.373256, -0.920002, 0.119479,
		36.320759, 34.257191, 34.015125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358261, 34.469120, 33.747883>,  <36.059479, 34.901192, 33.931492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358261, 34.469120, 33.747883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032413, 34.651577, 33.891174>,  <34.836903, 34.761051, 33.977150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032413, 34.651577, 33.891174>,  <35.358261, 34.469120, 33.747883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032413, 34.651577, 33.891174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036955, 0.575573, -0.816915,
		-0.578815, -0.678715, -0.452017,
		-0.814622, 0.456138, 0.358232,
		34.788029, 34.788418, 33.998642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772198, 34.649441, 33.213448>,  <35.358261, 34.469120, 33.747883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772198, 34.649441, 33.213448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784458, 34.935322, 33.492947>,  <34.791817, 35.106850, 33.660648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784458, 34.935322, 33.492947>,  <34.772198, 34.649441, 33.213448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784458, 34.935322, 33.492947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100289, 0.697752, -0.709284,
		-0.994486, -0.048335, 0.093066,
		0.030654, 0.714707, 0.698752,
		34.793655, 35.149734, 33.702572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242340, 35.255196, 33.088413>,  <34.772198, 34.649441, 33.213448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242340, 35.255196, 33.088413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544983, 35.383148, 33.316528>,  <34.726566, 35.459923, 33.453396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544983, 35.383148, 33.316528>,  <34.242340, 35.255196, 33.088413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544983, 35.383148, 33.316528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156934, 0.757834, -0.633293,
		-0.634763, 0.568648, 0.523179,
		0.756603, 0.319886, 0.570285,
		34.771965, 35.479115, 33.487614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197773, 35.963608, 33.253201>,  <34.242340, 35.255196, 33.088413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197773, 35.963608, 33.253201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591640, 35.894516, 33.262917>,  <34.827961, 35.853062, 33.268745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591640, 35.894516, 33.262917>,  <34.197773, 35.963608, 33.253201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591640, 35.894516, 33.262917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135478, 0.669643, -0.730222,
		0.109863, 0.722318, 0.682779,
		0.984670, -0.172726, 0.024289,
		34.887043, 35.842697, 33.270203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413319, 36.585751, 33.244564>,  <34.197773, 35.963608, 33.253201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413319, 36.585751, 33.244564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680401, 36.325642, 33.099609>,  <34.840649, 36.169579, 33.012638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680401, 36.325642, 33.099609>,  <34.413319, 36.585751, 33.244564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680401, 36.325642, 33.099609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162915, 0.602640, -0.781207,
		0.726384, 0.462574, 0.508322,
		0.667701, -0.650269, -0.362387,
		34.880711, 36.130562, 32.990894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013641, 36.979458, 33.045280>,  <34.413319, 36.585751, 33.244564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013641, 36.979458, 33.045280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072063, 36.639408, 32.842911>,  <35.107117, 36.435379, 32.721489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072063, 36.639408, 32.842911>,  <35.013641, 36.979458, 33.045280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072063, 36.639408, 32.842911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309283, 0.525012, -0.792910,
		0.939687, -0.040663, 0.339611,
		0.146058, -0.850123, -0.505923,
		35.115879, 36.384373, 32.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620670, 37.066910, 32.703873>,  <35.013641, 36.979458, 33.045280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620670, 37.066910, 32.703873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459110, 36.763840, 32.498821>,  <35.362175, 36.581997, 32.375790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459110, 36.763840, 32.498821>,  <35.620670, 37.066910, 32.703873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459110, 36.763840, 32.498821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340138, 0.395813, -0.853017,
		0.849217, -0.518899, 0.097846,
		-0.403901, -0.757678, -0.512629,
		35.337940, 36.536537, 32.345032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125256, 36.827736, 32.224819>,  <35.620670, 37.066910, 32.703873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125256, 36.827736, 32.224819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761398, 36.729462, 32.090836>,  <35.543083, 36.670498, 32.010445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761398, 36.729462, 32.090836>,  <36.125256, 36.827736, 32.224819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761398, 36.729462, 32.090836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221794, 0.394535, -0.891711,
		0.351227, -0.885428, -0.304395,
		-0.909641, -0.245680, -0.334954,
		35.488506, 36.655758, 31.990349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270683, 36.571018, 31.650743>,  <36.125256, 36.827736, 32.224819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270683, 36.571018, 31.650743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877712, 36.612286, 31.588537>,  <35.641930, 36.637047, 31.551212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877712, 36.612286, 31.588537>,  <36.270683, 36.571018, 31.650743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877712, 36.612286, 31.588537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186263, 0.489978, -0.851603,
		-0.011659, -0.865609, -0.500586,
		-0.982431, 0.103169, -0.155518,
		35.582981, 36.643238, 31.541882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121609, 36.256607, 30.984983>,  <36.270683, 36.571018, 31.650743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121609, 36.256607, 30.984983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809345, 36.497826, 31.050589>,  <35.621986, 36.642555, 31.089951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809345, 36.497826, 31.050589>,  <36.121609, 36.256607, 30.984983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809345, 36.497826, 31.050589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079851, 0.356537, -0.930862,
		-0.619830, -0.713593, -0.326490,
		-0.780663, 0.603047, 0.164011,
		35.575146, 36.678741, 31.099792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756660, 36.181133, 30.346029>,  <36.121609, 36.256607, 30.984983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756660, 36.181133, 30.346029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615433, 36.507626, 30.528946>,  <35.530697, 36.703522, 30.638695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615433, 36.507626, 30.528946>,  <35.756660, 36.181133, 30.346029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615433, 36.507626, 30.528946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140104, 0.437131, -0.888419,
		-0.925048, -0.377739, -0.039980,
		-0.353067, 0.816229, 0.457290,
		35.509514, 36.752495, 30.666132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091682, 36.455009, 30.047926>,  <35.756660, 36.181133, 30.346029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091682, 36.455009, 30.047926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290947, 36.765656, 30.202175>,  <35.410507, 36.952042, 30.294725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290947, 36.765656, 30.202175>,  <35.091682, 36.455009, 30.047926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290947, 36.765656, 30.202175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203488, 0.537030, -0.818652,
		-0.842867, 0.329354, 0.425561,
		0.498165, 0.776611, 0.385625,
		35.440395, 36.998638, 30.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931149, 36.872780, 29.567842>,  <35.091682, 36.455009, 30.047926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931149, 36.872780, 29.567842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179966, 37.102791, 29.780413>,  <35.329254, 37.240799, 29.907955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179966, 37.102791, 29.780413>,  <34.931149, 36.872780, 29.567842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179966, 37.102791, 29.780413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139285, 0.586624, -0.797792,
		-0.770498, 0.570277, 0.284810,
		0.622039, 0.575027, 0.531423,
		35.366577, 37.275299, 29.939840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741230, 37.491745, 29.373329>,  <34.931149, 36.872780, 29.567842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741230, 37.491745, 29.373329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118385, 37.544479, 29.495693>,  <35.344677, 37.576122, 29.569113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118385, 37.544479, 29.495693>,  <34.741230, 37.491745, 29.373329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118385, 37.544479, 29.495693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187194, 0.549918, -0.813971,
		-0.275539, 0.824748, 0.493831,
		0.942887, 0.131839, 0.305912,
		35.401253, 37.584030, 29.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858707, 38.297470, 29.522642>,  <34.741230, 37.491745, 29.373329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858707, 38.297470, 29.522642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214443, 38.119370, 29.481018>,  <35.427883, 38.012508, 29.456043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214443, 38.119370, 29.481018>,  <34.858707, 38.297470, 29.522642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214443, 38.119370, 29.481018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255365, 0.672433, -0.694710,
		0.379292, 0.591260, 0.711723,
		0.889341, -0.445247, -0.104061,
		35.481247, 37.985794, 29.449800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280876, 38.917667, 29.401785>,  <34.858707, 38.297470, 29.522642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280876, 38.917667, 29.401785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446564, 38.574875, 29.279139>,  <35.545975, 38.369202, 29.205551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446564, 38.574875, 29.279139>,  <35.280876, 38.917667, 29.401785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446564, 38.574875, 29.279139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363511, 0.464605, -0.807467,
		0.834436, 0.223008, 0.503968,
		0.414217, -0.856977, -0.306617,
		35.570827, 38.317783, 29.187153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010975, 39.162327, 29.179863>,  <35.280876, 38.917667, 29.401785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010975, 39.162327, 29.179863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952850, 38.792679, 29.038509>,  <35.917976, 38.570889, 28.953697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952850, 38.792679, 29.038509>,  <36.010975, 39.162327, 29.179863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952850, 38.792679, 29.038509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437484, 0.260346, -0.860713,
		0.887408, -0.279667, 0.366459,
		-0.145307, -0.924124, -0.353384,
		35.909260, 38.515442, 28.932495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643879, 38.942165, 28.983156>,  <36.010975, 39.162327, 29.179863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643879, 38.942165, 28.983156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374554, 38.750145, 28.758226>,  <36.212959, 38.634933, 28.623268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374554, 38.750145, 28.758226>,  <36.643879, 38.942165, 28.983156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374554, 38.750145, 28.758226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446161, 0.342670, -0.826751,
		0.589572, -0.807546, -0.016545,
		-0.673309, -0.480048, -0.562324,
		36.172562, 38.606133, 28.589529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017258, 38.787746, 28.465895>,  <36.643879, 38.942165, 28.983156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017258, 38.787746, 28.465895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646294, 38.746571, 28.322050>,  <36.423717, 38.721863, 28.235743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646294, 38.746571, 28.322050>,  <37.017258, 38.787746, 28.465895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646294, 38.746571, 28.322050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316321, 0.297293, -0.900865,
		0.199643, -0.949221, -0.243150,
		-0.927407, -0.102938, -0.359611,
		36.368073, 38.715687, 28.214167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048683, 38.380783, 27.888275>,  <37.017258, 38.787746, 28.465895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048683, 38.380783, 27.888275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701172, 38.573582, 27.842833>,  <36.492664, 38.689262, 27.815567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701172, 38.573582, 27.842833>,  <37.048683, 38.380783, 27.888275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701172, 38.573582, 27.842833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305634, 0.341386, -0.888844,
		-0.389638, -0.806928, -0.443903,
		-0.868775, 0.481999, -0.113607,
		36.440540, 38.718182, 27.808750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841141, 38.139931, 27.228559>,  <37.048683, 38.380783, 27.888275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841141, 38.139931, 27.228559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649319, 38.474926, 27.333359>,  <36.534225, 38.675922, 27.396238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649319, 38.474926, 27.333359>,  <36.841141, 38.139931, 27.228559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649319, 38.474926, 27.333359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186585, 0.389059, -0.902119,
		-0.857447, -0.383728, -0.342837,
		-0.479552, 0.837488, 0.262000,
		36.505451, 38.726173, 27.411959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337635, 38.388229, 26.606050>,  <36.841141, 38.139931, 27.228559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337635, 38.388229, 26.606050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410248, 38.708954, 26.833786>,  <36.453815, 38.901390, 26.970427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410248, 38.708954, 26.833786>,  <36.337635, 38.388229, 26.606050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410248, 38.708954, 26.833786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238459, 0.525788, -0.816507,
		-0.954035, 0.283986, -0.095751,
		0.181532, 0.801810, 0.569339,
		36.464706, 38.949497, 27.004587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128376, 38.906986, 26.164598>,  <36.337635, 38.388229, 26.606050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128376, 38.906986, 26.164598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322460, 39.104935, 26.452951>,  <36.438911, 39.223705, 26.625963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322460, 39.104935, 26.452951>,  <36.128376, 38.906986, 26.164598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322460, 39.104935, 26.452951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366753, 0.633229, -0.681552,
		-0.793768, 0.595079, 0.125750,
		0.485206, 0.494875, 0.720884,
		36.468021, 39.253399, 26.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855648, 39.607311, 26.271553>,  <36.128376, 38.906986, 26.164598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855648, 39.607311, 26.271553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234756, 39.614838, 26.398907>,  <36.462223, 39.619354, 26.475319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234756, 39.614838, 26.398907>,  <35.855648, 39.607311, 26.271553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234756, 39.614838, 26.398907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205836, 0.726458, -0.655660,
		-0.243627, 0.686953, 0.684647,
		0.947775, 0.018812, 0.318385,
		36.519089, 39.620480, 26.494423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088730, 40.229385, 26.368311>,  <35.855648, 39.607311, 26.271553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088730, 40.229385, 26.368311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446213, 40.053246, 26.333956>,  <36.660702, 39.947559, 26.313343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446213, 40.053246, 26.333956>,  <36.088730, 40.229385, 26.368311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446213, 40.053246, 26.333956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271873, 0.683839, -0.677089,
		0.356890, 0.581769, 0.730872,
		0.893708, -0.440351, -0.085888,
		36.714325, 39.921139, 26.308189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744644, 40.665062, 26.542795>,  <36.088730, 40.229385, 26.368311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744644, 40.665062, 26.542795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897091, 40.383045, 26.303574>,  <36.988560, 40.213837, 26.160042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897091, 40.383045, 26.303574>,  <36.744644, 40.665062, 26.542795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897091, 40.383045, 26.303574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291057, 0.705481, -0.646206,
		0.877515, 0.072214, 0.474080,
		0.381120, -0.705040, -0.598052,
		37.011425, 40.171532, 26.124159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314621, 41.043056, 26.321718>,  <36.744644, 40.665062, 26.542795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314621, 41.043056, 26.321718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294781, 40.715343, 26.093224>,  <37.282875, 40.518715, 25.956127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294781, 40.715343, 26.093224>,  <37.314621, 41.043056, 26.321718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294781, 40.715343, 26.093224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185679, 0.554405, -0.811270,
		0.981358, -0.146308, 0.124623,
		-0.049604, -0.819285, -0.571236,
		37.279900, 40.469559, 25.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930786, 40.984501, 25.866364>,  <37.314621, 41.043056, 26.321718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930786, 40.984501, 25.866364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637821, 40.773270, 25.694452>,  <37.462044, 40.646530, 25.591305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637821, 40.773270, 25.694452>,  <37.930786, 40.984501, 25.866364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637821, 40.773270, 25.694452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048454, 0.589198, -0.806535,
		0.679141, -0.611536, -0.405945,
		-0.732407, -0.528081, -0.429780,
		37.418098, 40.614845, 25.565519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659931, 40.770428, 25.776354>,  <37.930786, 40.984501, 25.866364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659931, 40.770428, 25.776354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834774, 41.085468, 25.950077>,  <38.939678, 41.274494, 26.054312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834774, 41.085468, 25.950077>,  <38.659931, 40.770428, 25.776354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834774, 41.085468, 25.950077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262616, -0.350077, 0.899155,
		0.860216, -0.507082, 0.053815,
		0.437106, 0.787600, 0.434309,
		38.965904, 41.321747, 26.080370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161831, 40.512955, 26.408241>,  <38.659931, 40.770428, 25.776354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161831, 40.512955, 26.408241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113541, 40.901810, 26.488613>,  <39.084564, 41.135124, 26.536837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113541, 40.901810, 26.488613>,  <39.161831, 40.512955, 26.408241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113541, 40.901810, 26.488613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329916, -0.230198, 0.915513,
		0.936258, 0.044239, 0.348516,
		-0.120729, 0.972138, 0.200929,
		39.077320, 41.193451, 26.548891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551056, 40.630001, 26.926493>,  <39.161831, 40.512955, 26.408241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551056, 40.630001, 26.926493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286800, 40.928425, 26.959846>,  <39.128246, 41.107479, 26.979858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286800, 40.928425, 26.959846>,  <39.551056, 40.630001, 26.926493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286800, 40.928425, 26.959846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079680, -0.180132, 0.980410,
		0.746465, 0.641051, 0.178448,
		-0.660637, 0.746060, 0.083383,
		39.088608, 41.152245, 26.984861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679485, 40.980057, 27.487745>,  <39.551056, 40.630001, 26.926493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679485, 40.980057, 27.487745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318043, 41.138695, 27.422997>,  <39.101177, 41.233879, 27.384148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.318043, 41.138695, 27.422997>,  <39.679485, 40.980057, 27.487745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318043, 41.138695, 27.422997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167961, 0.019588, 0.985599,
		0.394057, 0.917783, 0.048913,
		-0.903608, 0.396598, -0.161871,
		39.046959, 41.257675, 27.374435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670193, 41.468414, 28.016430>,  <39.679485, 40.980057, 27.487745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670193, 41.468414, 28.016430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.294407, 41.402245, 27.896406>,  <39.068935, 41.362541, 27.824392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.294407, 41.402245, 27.896406>,  <39.670193, 41.468414, 28.016430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294407, 41.402245, 27.896406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262285, -0.216288, 0.940439,
		-0.220474, 0.962213, 0.159806,
		-0.939467, -0.165427, -0.300060,
		39.012566, 41.352615, 27.806389>
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
