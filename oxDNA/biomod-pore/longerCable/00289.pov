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
	<24.612555, 34.967613, 34.794540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214539, 34.946724, 34.760662>,  <23.975729, 34.934189, 34.740337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214539, 34.946724, 34.760662>,  <24.612555, 34.967613, 34.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214539, 34.946724, 34.760662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095449, -0.260653, -0.960703,
		0.028097, -0.964019, 0.264345,
		-0.995038, -0.052225, -0.084691,
		23.916027, 34.931057, 34.735256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425823, 34.283348, 34.530949>,  <24.612555, 34.967613, 34.794540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425823, 34.283348, 34.530949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130732, 34.543633, 34.459030>,  <23.953676, 34.699802, 34.415878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130732, 34.543633, 34.459030>,  <24.425823, 34.283348, 34.530949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130732, 34.543633, 34.459030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012775, -0.279732, -0.959993,
		-0.674975, -0.705919, 0.214680,
		-0.737730, 0.650713, -0.179794,
		23.909412, 34.738846, 34.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006172, 34.576847, 34.310558>,  <24.425823, 34.283348, 34.530949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006172, 34.576847, 34.310558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303829, 34.330952, 34.205986>,  <25.482424, 34.183414, 34.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303829, 34.330952, 34.205986>,  <25.006172, 34.576847, 34.310558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303829, 34.330952, 34.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082730, 0.303526, -0.949225,
		0.662878, 0.727987, 0.175009,
		0.744143, -0.614741, -0.261427,
		25.527073, 34.146530, 34.127560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071213, 34.830090, 33.608875>,  <25.006172, 34.576847, 34.310558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071213, 34.830090, 33.608875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293020, 34.500458, 33.655174>,  <25.426105, 34.302677, 33.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293020, 34.500458, 33.655174>,  <25.071213, 34.830090, 33.608875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293020, 34.500458, 33.655174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265385, 0.043296, -0.963170,
		0.788721, 0.564812, 0.242708,
		0.554518, -0.824083, 0.115744,
		25.459375, 34.253231, 33.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786526, 34.992393, 33.412666>,  <25.071213, 34.830090, 33.608875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786526, 34.992393, 33.412666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698257, 34.605995, 33.358768>,  <25.645296, 34.374157, 33.326431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698257, 34.605995, 33.358768>,  <25.786526, 34.992393, 33.412666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698257, 34.605995, 33.358768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106674, 0.161221, -0.981136,
		0.969497, -0.202134, -0.138624,
		-0.220670, -0.965997, -0.134741,
		25.632057, 34.316196, 33.318348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325754, 34.601635, 32.891045>,  <25.786526, 34.992393, 33.412666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325754, 34.601635, 32.891045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963964, 34.431221, 32.899269>,  <25.746891, 34.328972, 32.904202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963964, 34.431221, 32.899269>,  <26.325754, 34.601635, 32.891045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963964, 34.431221, 32.899269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012947, -0.075600, -0.997054,
		0.426334, -0.901542, 0.073894,
		-0.904473, -0.426035, 0.020559,
		25.692623, 34.303410, 32.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264427, 33.911350, 32.475121>,  <26.325754, 34.601635, 32.891045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264427, 33.911350, 32.475121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897207, 34.069798, 32.481770>,  <25.676876, 34.164867, 32.485760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897207, 34.069798, 32.481770>,  <26.264427, 33.911350, 32.475121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897207, 34.069798, 32.481770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001186, 0.044673, -0.999001,
		-0.396467, -0.917112, -0.041482,
		-0.918049, 0.396120, 0.016624,
		25.621792, 34.188633, 32.486755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858065, 33.436829, 32.003536>,  <26.264427, 33.911350, 32.475121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858065, 33.436829, 32.003536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768318, 33.818943, 32.080566>,  <25.714470, 34.048210, 32.126785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768318, 33.818943, 32.080566>,  <25.858065, 33.436829, 32.003536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768318, 33.818943, 32.080566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237111, 0.245194, -0.940031,
		-0.945218, -0.165248, -0.281522,
		-0.224366, 0.955287, 0.192580,
		25.701008, 34.105530, 32.138340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301815, 33.641884, 31.589701>,  <25.858065, 33.436829, 32.003536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301815, 33.641884, 31.589701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542976, 33.947239, 31.682432>,  <25.687674, 34.130451, 31.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542976, 33.947239, 31.682432>,  <25.301815, 33.641884, 31.589701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542976, 33.947239, 31.682432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212463, 0.126460, -0.968952,
		-0.769005, 0.633438, -0.085949,
		0.602902, 0.763390, 0.231831,
		25.723846, 34.176254, 31.751982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109678, 34.127918, 31.192274>,  <25.301815, 33.641884, 31.589701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109678, 34.127918, 31.192274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487661, 34.227844, 31.276791>,  <25.714451, 34.287800, 31.327501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487661, 34.227844, 31.276791>,  <25.109678, 34.127918, 31.192274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487661, 34.227844, 31.276791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155129, 0.226499, -0.961579,
		-0.288078, 0.941429, 0.175278,
		0.944958, 0.249819, 0.211292,
		25.771149, 34.302792, 31.340178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095966, 34.822811, 30.959181>,  <25.109678, 34.127918, 31.192274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095966, 34.822811, 30.959181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459463, 34.658092, 30.986351>,  <25.677561, 34.559261, 31.002653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459463, 34.658092, 30.986351>,  <25.095966, 34.822811, 30.959181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459463, 34.658092, 30.986351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144780, 0.158388, -0.976705,
		0.391445, 0.897405, 0.203553,
		0.908740, -0.411797, 0.067926,
		25.732086, 34.534554, 31.006729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654713, 35.227146, 30.587065>,  <25.095966, 34.822811, 30.959181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654713, 35.227146, 30.587065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753761, 34.839611, 30.589235>,  <25.813190, 34.607090, 30.590538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753761, 34.839611, 30.589235>,  <25.654713, 35.227146, 30.587065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753761, 34.839611, 30.589235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139365, 0.030078, -0.989784,
		0.958781, 0.245846, 0.142471,
		0.247620, -0.968842, 0.005424,
		25.828047, 34.548958, 30.590862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420391, 35.012955, 30.354980>,  <25.654713, 35.227146, 30.587065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420391, 35.012955, 30.354980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129519, 34.750488, 30.274332>,  <25.954996, 34.593006, 30.225943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129519, 34.750488, 30.274332>,  <26.420391, 35.012955, 30.354980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129519, 34.750488, 30.274332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160514, 0.123036, -0.979335,
		0.667417, -0.744516, 0.015855,
		-0.727179, -0.656170, -0.201622,
		25.911366, 34.553638, 30.213846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631943, 34.424480, 30.009279>,  <26.420391, 35.012955, 30.354980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631943, 34.424480, 30.009279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258894, 34.534603, 29.915966>,  <26.035065, 34.600677, 29.859978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258894, 34.534603, 29.915966>,  <26.631943, 34.424480, 30.009279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258894, 34.534603, 29.915966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289911, 0.186713, -0.938664,
		-0.214867, -0.943050, -0.253948,
		-0.932622, 0.275311, -0.233282,
		25.979107, 34.617195, 29.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679283, 33.916344, 30.532511>,  <26.631943, 34.424480, 30.009279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679283, 33.916344, 30.532511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466606, 34.251442, 30.582273>,  <26.338999, 34.452503, 30.612131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466606, 34.251442, 30.582273>,  <26.679283, 33.916344, 30.532511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466606, 34.251442, 30.582273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203335, -0.268859, 0.941472,
		0.822166, 0.475279, 0.313294,
		-0.531693, 0.837750, 0.124406,
		26.307098, 34.502766, 30.619595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020754, 34.164459, 31.102266>,  <26.679283, 33.916344, 30.532511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020754, 34.164459, 31.102266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647146, 34.303036, 31.067423>,  <26.422981, 34.386181, 31.046516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647146, 34.303036, 31.067423>,  <27.020754, 34.164459, 31.102266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647146, 34.303036, 31.067423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113294, -0.056025, 0.991981,
		0.338785, 0.936397, 0.091578,
		-0.934018, 0.346443, -0.087108,
		26.366941, 34.406967, 31.041290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016338, 34.625706, 31.685581>,  <27.020754, 34.164459, 31.102266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016338, 34.625706, 31.685581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636042, 34.549240, 31.587973>,  <26.407864, 34.503361, 31.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636042, 34.549240, 31.587973>,  <27.016338, 34.625706, 31.685581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636042, 34.549240, 31.587973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258873, 0.056617, 0.964251,
		-0.170516, 0.979923, -0.103315,
		-0.950741, -0.191166, -0.244022,
		26.350819, 34.491890, 31.514767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521906, 35.129566, 32.015469>,  <27.016338, 34.625706, 31.685581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521906, 35.129566, 32.015469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286396, 34.816257, 31.935633>,  <26.145090, 34.628273, 31.887732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286396, 34.816257, 31.935633>,  <26.521906, 35.129566, 32.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286396, 34.816257, 31.935633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258677, -0.051350, 0.964598,
		-0.765787, 0.619561, -0.172380,
		-0.588776, -0.783267, -0.199589,
		26.109764, 34.581276, 31.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838495, 35.299179, 32.018921>,  <26.521906, 35.129566, 32.015469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838495, 35.299179, 32.018921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903692, 34.919621, 32.127010>,  <25.942810, 34.691883, 32.191864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903692, 34.919621, 32.127010>,  <25.838495, 35.299179, 32.018921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903692, 34.919621, 32.127010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398269, 0.187304, 0.897942,
		-0.902672, -0.253978, -0.347389,
		0.162990, -0.948900, 0.270226,
		25.952589, 34.634949, 32.208076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251144, 35.158905, 31.718697>,  <25.838495, 35.299179, 32.018921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251144, 35.158905, 31.718697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164927, 34.768311, 31.719950>,  <25.113195, 34.533955, 31.720701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164927, 34.768311, 31.719950>,  <25.251144, 35.158905, 31.718697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164927, 34.768311, 31.719950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052656, 0.014826, 0.998503,
		-0.975074, 0.215056, -0.054613,
		-0.215543, -0.976489, 0.003132,
		25.100264, 34.475365, 31.720890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735598, 35.092529, 32.147293>,  <25.251144, 35.158905, 31.718697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735598, 35.092529, 32.147293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920406, 34.737835, 32.153332>,  <25.031292, 34.525017, 32.156956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920406, 34.737835, 32.153332>,  <24.735598, 35.092529, 32.147293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920406, 34.737835, 32.153332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048056, -0.008036, 0.998812,
		-0.885566, -0.462198, -0.046326,
		0.462021, -0.886740, 0.015095,
		25.059013, 34.471813, 32.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427429, 34.681885, 32.675617>,  <24.735598, 35.092529, 32.147293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427429, 34.681885, 32.675617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786835, 34.514858, 32.621494>,  <25.002478, 34.414642, 32.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786835, 34.514858, 32.621494>,  <24.427429, 34.681885, 32.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786835, 34.514858, 32.621494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069001, -0.170053, 0.983016,
		-0.433487, -0.892590, -0.123982,
		0.898514, -0.417570, -0.135305,
		25.056389, 34.389587, 32.580902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372644, 33.938137, 33.019180>,  <24.427429, 34.681885, 32.675617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372644, 33.938137, 33.019180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748131, 34.072533, 32.988403>,  <24.973423, 34.153172, 32.969936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748131, 34.072533, 32.988403>,  <24.372644, 33.938137, 33.019180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748131, 34.072533, 32.988403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087038, -0.015080, 0.996091,
		0.333516, -0.941745, -0.043400,
		0.938718, 0.335990, -0.076938,
		25.029747, 34.173328, 32.965321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724316, 33.642967, 33.461971>,  <24.372644, 33.938137, 33.019180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724316, 33.642967, 33.461971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952194, 33.961658, 33.381302>,  <25.088921, 34.152874, 33.332901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952194, 33.961658, 33.381302>,  <24.724316, 33.642967, 33.461971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952194, 33.961658, 33.381302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388806, -0.045082, 0.920216,
		0.724069, -0.602656, -0.335455,
		0.569697, 0.796727, -0.201674,
		25.123104, 34.200676, 33.320801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233068, 33.066483, 33.074856>,  <24.724316, 33.642967, 33.461971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233068, 33.066483, 33.074856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369808, 33.430473, 33.168736>,  <25.451853, 33.648869, 33.225063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369808, 33.430473, 33.168736>,  <25.233068, 33.066483, 33.074856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369808, 33.430473, 33.168736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090870, -0.280588, 0.955517,
		0.935351, -0.305317, -0.178608,
		0.341851, 0.909974, 0.234704,
		25.472364, 33.703465, 33.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799473, 33.043140, 33.612133>,  <25.233068, 33.066483, 33.074856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799473, 33.043140, 33.612133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707893, 33.430386, 33.652794>,  <25.652946, 33.662735, 33.677193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707893, 33.430386, 33.652794>,  <25.799473, 33.043140, 33.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707893, 33.430386, 33.652794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274624, -0.035952, 0.960879,
		0.933897, 0.247908, -0.257637,
		-0.228947, 0.968116, 0.101657,
		25.639210, 33.720821, 33.683292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394613, 33.293484, 33.836937>,  <25.799473, 33.043140, 33.612133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394613, 33.293484, 33.836937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094885, 33.537964, 33.938885>,  <25.915049, 33.684650, 34.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094885, 33.537964, 33.938885>,  <26.394613, 33.293484, 33.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094885, 33.537964, 33.938885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341230, 0.026524, 0.939606,
		0.567524, 0.791034, -0.228434,
		-0.749319, 0.611197, 0.254871,
		25.870089, 33.721321, 34.015347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930616, 32.833897, 33.872028>,  <26.394613, 33.293484, 33.836937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930616, 32.833897, 33.872028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254040, 32.737106, 33.657486>,  <27.448093, 32.679031, 33.528759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254040, 32.737106, 33.657486>,  <26.930616, 32.833897, 33.872028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254040, 32.737106, 33.657486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353372, -0.529164, 0.771437,
		-0.470490, -0.813286, -0.342353,
		0.808559, -0.241975, -0.536358,
		27.496609, 32.664513, 33.496578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932356, 32.108276, 33.747272>,  <26.930616, 32.833897, 33.872028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932356, 32.108276, 33.747272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268084, 32.323223, 33.780197>,  <27.469521, 32.452190, 33.799953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268084, 32.323223, 33.780197>,  <26.932356, 32.108276, 33.747272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268084, 32.323223, 33.780197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171871, -0.405935, 0.897595,
		0.515754, -0.739223, -0.433068,
		0.839320, 0.537370, 0.082311,
		27.519880, 32.484432, 33.804890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488237, 31.654900, 33.720062>,  <26.932356, 32.108276, 33.747272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488237, 31.654900, 33.720062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607428, 31.972242, 33.932400>,  <27.678942, 32.162647, 34.059803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607428, 31.972242, 33.932400>,  <27.488237, 31.654900, 33.720062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607428, 31.972242, 33.932400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069388, -0.572635, 0.816868,
		0.952048, -0.206572, -0.225681,
		0.297975, 0.793358, 0.530843,
		27.696819, 32.210251, 34.091652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870695, 31.247023, 34.151581>,  <27.488237, 31.654900, 33.720062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870695, 31.247023, 34.151581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803991, 31.610424, 34.304848>,  <27.763969, 31.828465, 34.396809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803991, 31.610424, 34.304848>,  <27.870695, 31.247023, 34.151581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803991, 31.610424, 34.304848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165744, -0.357250, 0.919185,
		0.971968, 0.216789, -0.091004,
		-0.166758, 0.908502, 0.383167,
		27.753963, 31.882975, 34.419796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374205, 31.419319, 34.533596>,  <27.870695, 31.247023, 34.151581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374205, 31.419319, 34.533596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053408, 31.601316, 34.688408>,  <27.860929, 31.710514, 34.781296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053408, 31.601316, 34.688408>,  <28.374205, 31.419319, 34.533596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053408, 31.601316, 34.688408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144025, -0.481525, 0.864517,
		0.579714, 0.749077, 0.320649,
		-0.801991, 0.454991, 0.387033,
		27.812811, 31.737814, 34.804516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705179, 31.566753, 35.305805>,  <28.374205, 31.419319, 34.533596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705179, 31.566753, 35.305805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317228, 31.662210, 35.325356>,  <28.084457, 31.719484, 35.337086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317228, 31.662210, 35.325356>,  <28.705179, 31.566753, 35.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317228, 31.662210, 35.325356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009008, -0.165378, 0.986189,
		0.243429, 0.956922, 0.158246,
		-0.969877, 0.238642, 0.048878,
		28.026266, 31.733803, 35.340019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592337, 32.004852, 35.906807>,  <28.705179, 31.566753, 35.305805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592337, 32.004852, 35.906807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254221, 31.815718, 35.807281>,  <28.051352, 31.702236, 35.747566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254221, 31.815718, 35.807281>,  <28.592337, 32.004852, 35.906807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254221, 31.815718, 35.807281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081878, -0.345543, 0.934824,
		-0.527999, 0.810569, 0.253368,
		-0.845289, -0.472841, -0.248814,
		28.000635, 31.673866, 35.732635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091448, 32.192734, 36.465618>,  <28.592337, 32.004852, 35.906807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091448, 32.192734, 36.465618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882076, 31.932077, 36.246025>,  <27.756453, 31.775684, 36.114269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882076, 31.932077, 36.246025>,  <28.091448, 32.192734, 36.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882076, 31.932077, 36.246025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369737, -0.406773, 0.835362,
		-0.767668, 0.640234, -0.028019,
		-0.523430, -0.651641, -0.548985,
		27.725046, 31.736586, 36.081329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315212, 32.135944, 36.589497>,  <28.091448, 32.192734, 36.465618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315212, 32.135944, 36.589497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451704, 31.784000, 36.457188>,  <27.533600, 31.572834, 36.377804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451704, 31.784000, 36.457188>,  <27.315212, 32.135944, 36.589497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451704, 31.784000, 36.457188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275578, -0.430069, 0.859708,
		-0.898676, -0.202207, -0.389223,
		0.341231, -0.879860, -0.330769,
		27.554073, 31.520042, 36.357956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026857, 31.673834, 36.978237>,  <27.315212, 32.135944, 36.589497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026857, 31.673834, 36.978237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260532, 31.423164, 36.771935>,  <27.400738, 31.272762, 36.648155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260532, 31.423164, 36.771935>,  <27.026857, 31.673834, 36.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260532, 31.423164, 36.771935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035352, -0.615214, 0.787567,
		-0.810848, -0.478320, -0.337246,
		0.584188, -0.626675, -0.515755,
		27.435789, 31.235163, 36.617207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696611, 31.028316, 37.121555>,  <27.026857, 31.673834, 36.978237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696611, 31.028316, 37.121555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052153, 30.915060, 36.977459>,  <27.265478, 30.847107, 36.891003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052153, 30.915060, 36.977459>,  <26.696611, 31.028316, 37.121555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052153, 30.915060, 36.977459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097699, -0.651016, 0.752750,
		-0.447653, -0.704280, -0.550996,
		0.888854, -0.283139, -0.360237,
		27.318810, 30.830118, 36.869389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807434, 30.215672, 37.055298>,  <26.696611, 31.028316, 37.121555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807434, 30.215672, 37.055298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134571, 30.422737, 37.155819>,  <27.330854, 30.546976, 37.216133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134571, 30.422737, 37.155819>,  <26.807434, 30.215672, 37.055298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134571, 30.422737, 37.155819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072240, -0.525630, 0.847641,
		0.570887, -0.675084, -0.467280,
		0.817845, 0.517663, 0.251307,
		27.379925, 30.578035, 37.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881121, 30.583241, 37.729694>,  <26.807434, 30.215672, 37.055298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881121, 30.583241, 37.729694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072001, 30.525763, 38.076481>,  <27.186529, 30.491276, 38.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072001, 30.525763, 38.076481>,  <26.881121, 30.583241, 37.729694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072001, 30.525763, 38.076481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439079, 0.893562, -0.093575,
		-0.761243, 0.425321, 0.489502,
		0.477200, -0.143697, 0.866967,
		27.215160, 30.482653, 38.336571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557873, 30.713139, 38.043476>,  <26.881121, 30.583241, 37.729694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557873, 30.713139, 38.043476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787113, 30.408804, 37.921703>,  <27.924658, 30.226202, 37.848640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787113, 30.408804, 37.921703>,  <27.557873, 30.713139, 38.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787113, 30.408804, 37.921703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115223, 0.292990, -0.949147,
		0.811343, 0.579036, 0.080247,
		0.573102, -0.760838, -0.304434,
		27.959044, 30.180553, 37.830372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104265, 30.987675, 37.669891>,  <27.557873, 30.713139, 38.043476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104265, 30.987675, 37.669891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992565, 30.621870, 37.552803>,  <27.925545, 30.402388, 37.482552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992565, 30.621870, 37.552803>,  <28.104265, 30.987675, 37.669891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992565, 30.621870, 37.552803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065945, 0.322391, -0.944307,
		0.957951, -0.244394, -0.150336,
		-0.279250, -0.914514, -0.292718,
		27.908791, 30.347515, 37.464989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660376, 30.769846, 37.166359>,  <28.104265, 30.987675, 37.669891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660376, 30.769846, 37.166359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279797, 30.648739, 37.144176>,  <28.051449, 30.576075, 37.130867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279797, 30.648739, 37.144176>,  <28.660376, 30.769846, 37.166359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279797, 30.648739, 37.144176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072578, 0.395757, -0.915483,
		0.299125, -0.867011, -0.398517,
		-0.951450, -0.302767, -0.055455,
		27.994362, 30.557909, 37.127541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503054, 30.490921, 36.492859>,  <28.660376, 30.769846, 37.166359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503054, 30.490921, 36.492859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134712, 30.603157, 36.601151>,  <27.913708, 30.670498, 36.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134712, 30.603157, 36.601151>,  <28.503054, 30.490921, 36.492859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134712, 30.603157, 36.601151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078877, 0.545931, -0.834109,
		-0.381842, -0.789448, -0.480591,
		-0.920855, 0.280590, 0.270729,
		27.858456, 30.687334, 36.682369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043175, 30.372828, 35.846714>,  <28.503054, 30.490921, 36.492859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043175, 30.372828, 35.846714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882303, 30.651831, 36.083942>,  <27.785780, 30.819233, 36.226280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882303, 30.651831, 36.083942>,  <28.043175, 30.372828, 35.846714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882303, 30.651831, 36.083942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191954, 0.569134, -0.799525,
		-0.895212, -0.435395, -0.095005,
		-0.402180, 0.697508, 0.593072,
		27.761650, 30.861082, 36.261864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318501, 30.506828, 35.630554>,  <28.043175, 30.372828, 35.846714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318501, 30.506828, 35.630554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484634, 30.826138, 35.805031>,  <27.584314, 31.017723, 35.909718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484634, 30.826138, 35.805031>,  <27.318501, 30.506828, 35.630554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484634, 30.826138, 35.805031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263853, 0.564605, -0.782051,
		-0.870562, 0.209725, 0.445127,
		0.415336, 0.798271, 0.436187,
		27.609236, 31.065619, 35.935886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833181, 31.095627, 35.500736>,  <27.318501, 30.506828, 35.630554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833181, 31.095627, 35.500736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172915, 31.290281, 35.582535>,  <27.376755, 31.407074, 35.631615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172915, 31.290281, 35.582535>,  <26.833181, 31.095627, 35.500736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172915, 31.290281, 35.582535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270224, 0.733639, -0.623500,
		-0.453447, 0.474298, 0.754604,
		0.849332, 0.486636, 0.204500,
		27.427713, 31.436272, 35.643887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718204, 31.884848, 35.420170>,  <26.833181, 31.095627, 35.500736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718204, 31.884848, 35.420170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115187, 31.837517, 35.407330>,  <27.353376, 31.809118, 35.399624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115187, 31.837517, 35.407330>,  <26.718204, 31.884848, 35.420170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115187, 31.837517, 35.407330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054824, 0.662482, -0.747069,
		0.109665, 0.739673, 0.663971,
		0.992455, -0.118329, -0.032099,
		27.412924, 31.802017, 35.397701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836615, 32.517513, 35.289986>,  <26.718204, 31.884848, 35.420170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836615, 32.517513, 35.289986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144438, 32.296700, 35.161587>,  <27.329132, 32.164211, 35.084549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144438, 32.296700, 35.161587>,  <26.836615, 32.517513, 35.289986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144438, 32.296700, 35.161587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074511, 0.576865, -0.813434,
		0.634215, 0.602067, 0.485063,
		0.769558, -0.552034, -0.320996,
		27.375305, 32.131088, 35.065289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387741, 32.968952, 35.144138>,  <26.836615, 32.517513, 35.289986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387741, 32.968952, 35.144138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492090, 32.652412, 34.922974>,  <27.554699, 32.462490, 34.790276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492090, 32.652412, 34.922974>,  <27.387741, 32.968952, 35.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492090, 32.652412, 34.922974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255878, 0.608942, -0.750810,
		0.930845, 0.054388, 0.361344,
		0.260873, -0.791348, -0.552914,
		27.570353, 32.415009, 34.757099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976620, 33.163612, 34.910858>,  <27.387741, 32.968952, 35.144138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976620, 33.163612, 34.910858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852499, 32.884861, 34.652225>,  <27.778027, 32.717609, 34.497044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852499, 32.884861, 34.652225>,  <27.976620, 33.163612, 34.910858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852499, 32.884861, 34.652225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012069, 0.677216, -0.735685,
		0.950561, -0.236088, -0.201731,
		-0.310302, -0.696879, -0.646585,
		27.759409, 32.675797, 34.458252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320499, 33.363689, 34.262081>,  <27.976620, 33.163612, 34.910858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320499, 33.363689, 34.262081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044701, 33.085754, 34.180309>,  <27.879221, 32.918991, 34.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044701, 33.085754, 34.180309>,  <28.320499, 33.363689, 34.262081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044701, 33.085754, 34.180309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161197, 0.422386, -0.891967,
		0.706123, -0.582054, -0.403240,
		-0.689497, -0.694840, -0.204431,
		27.837851, 32.877304, 34.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616995, 32.852238, 33.799961>,  <28.320499, 33.363689, 34.262081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616995, 32.852238, 33.799961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225170, 32.922222, 33.760262>,  <27.990076, 32.964211, 33.736443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225170, 32.922222, 33.760262>,  <28.616995, 32.852238, 33.799961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225170, 32.922222, 33.760262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182158, 0.562298, -0.806622,
		-0.085318, -0.808215, -0.582675,
		-0.979561, 0.174958, -0.099248,
		27.931301, 32.974709, 33.730488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938702, 33.013214, 33.084778>,  <28.616995, 32.852238, 33.799961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938702, 33.013214, 33.084778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285217, 32.983875, 32.887127>,  <29.493126, 32.966270, 32.768536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285217, 32.983875, 32.887127>,  <28.938702, 33.013214, 33.084778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285217, 32.983875, 32.887127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392759, 0.711237, 0.582994,
		0.308679, -0.699114, 0.644947,
		0.866290, -0.073350, -0.494128,
		29.545105, 32.961872, 32.738888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564783, 32.991489, 33.570545>,  <28.938702, 33.013214, 33.084778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564783, 32.991489, 33.570545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689507, 33.137863, 33.219807>,  <29.764341, 33.225689, 33.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689507, 33.137863, 33.219807>,  <29.564783, 32.991489, 33.570545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689507, 33.137863, 33.219807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369104, 0.803726, 0.466677,
		0.875521, -0.469163, 0.115538,
		0.311808, 0.365939, -0.876849,
		29.783049, 33.247646, 32.956753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231373, 33.273857, 33.682079>,  <29.564783, 32.991489, 33.570545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231373, 33.273857, 33.682079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147797, 33.443230, 33.329475>,  <30.097651, 33.544853, 33.117912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147797, 33.443230, 33.329475>,  <30.231373, 33.273857, 33.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147797, 33.443230, 33.329475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355927, 0.872505, 0.334740,
		0.910857, -0.243811, -0.333011,
		-0.208941, 0.423428, -0.881506,
		30.085114, 33.570259, 33.065025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728903, 33.716862, 33.528305>,  <30.231373, 33.273857, 33.682079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728903, 33.716862, 33.528305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443262, 33.876953, 33.298565>,  <30.271877, 33.973007, 33.160721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443262, 33.876953, 33.298565>,  <30.728903, 33.716862, 33.528305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443262, 33.876953, 33.298565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327760, 0.916119, 0.230868,
		0.618574, -0.023387, -0.785378,
		-0.714101, 0.400224, -0.574352,
		30.229033, 33.997021, 33.126259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037743, 34.261528, 33.174500>,  <30.728903, 33.716862, 33.528305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037743, 34.261528, 33.174500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645948, 34.341000, 33.161030>,  <30.410872, 34.388683, 33.152946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645948, 34.341000, 33.161030>,  <31.037743, 34.261528, 33.174500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645948, 34.341000, 33.161030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185966, 0.955588, 0.228623,
		0.077605, 0.217670, -0.972933,
		-0.979487, 0.198675, -0.033679,
		30.352102, 34.400600, 33.150925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850420, 34.702473, 32.644104>,  <31.037743, 34.261528, 33.174500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850420, 34.702473, 32.644104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596062, 34.742920, 32.950153>,  <30.443447, 34.767189, 33.133781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596062, 34.742920, 32.950153>,  <30.850420, 34.702473, 32.644104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596062, 34.742920, 32.950153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318197, 0.937548, 0.140548,
		-0.703128, 0.332834, -0.628358,
		-0.635895, 0.101118, 0.765123,
		30.405293, 34.773254, 33.179691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762308, 35.432262, 32.705978>,  <30.850420, 34.702473, 32.644104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762308, 35.432262, 32.705978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666363, 35.288738, 33.066803>,  <30.608795, 35.202625, 33.283298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666363, 35.288738, 33.066803>,  <30.762308, 35.432262, 32.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666363, 35.288738, 33.066803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263177, 0.870364, 0.416178,
		-0.934454, 0.337228, -0.114337,
		-0.239862, -0.358808, 0.902066,
		30.594404, 35.181095, 33.337421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177057, 35.752838, 32.465424>,  <30.762308, 35.432262, 32.705978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177057, 35.752838, 32.465424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968931, 35.658737, 32.793797>,  <29.844055, 35.602276, 32.990822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968931, 35.658737, 32.793797>,  <30.177057, 35.752838, 32.465424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968931, 35.658737, 32.793797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848332, 0.032064, -0.528493,
		0.098007, -0.971405, -0.216255,
		-0.520315, -0.235252, 0.820932,
		29.812836, 35.588161, 33.040077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789593, 35.289585, 32.256287>,  <30.177057, 35.752838, 32.465424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789593, 35.289585, 32.256287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600143, 35.463146, 32.562859>,  <29.486475, 35.567284, 32.746799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600143, 35.463146, 32.562859>,  <29.789593, 35.289585, 32.256287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600143, 35.463146, 32.562859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743828, 0.268899, -0.611893,
		-0.471595, -0.859895, 0.195395,
		-0.473622, 0.433906, 0.766426,
		29.458057, 35.593319, 32.792786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172457, 35.193920, 32.142963>,  <29.789593, 35.289585, 32.256287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172457, 35.193920, 32.142963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146446, 35.511238, 32.385109>,  <29.130840, 35.701630, 32.530396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146446, 35.511238, 32.385109>,  <29.172457, 35.193920, 32.142963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146446, 35.511238, 32.385109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708097, 0.390761, -0.588136,
		-0.703114, -0.466899, 0.536317,
		-0.065028, 0.793291, 0.605359,
		29.126938, 35.749226, 32.566715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323326, 34.535583, 32.391670>,  <29.172457, 35.193920, 32.142963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323326, 34.535583, 32.391670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618559, 34.366215, 32.601795>,  <29.795698, 34.264591, 32.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618559, 34.366215, 32.601795>,  <29.323326, 34.535583, 32.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618559, 34.366215, 32.601795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035031, -0.801563, -0.596883,
		0.673803, 0.422145, -0.606451,
		0.738080, -0.423426, 0.525308,
		29.839983, 34.239185, 32.759388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740376, 34.128933, 31.927567>,  <29.323326, 34.535583, 32.391670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740376, 34.128933, 31.927567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834742, 33.955944, 32.275661>,  <29.891361, 33.852150, 32.484520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834742, 33.955944, 32.275661>,  <29.740376, 34.128933, 31.927567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834742, 33.955944, 32.275661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046718, -0.889433, -0.454671,
		0.970650, 0.147919, -0.189625,
		0.235913, -0.432468, 0.870239,
		29.905516, 33.826202, 32.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281456, 33.611588, 31.762785>,  <29.740376, 34.128933, 31.927567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281456, 33.611588, 31.762785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106937, 33.509518, 32.107929>,  <30.002226, 33.448277, 32.315018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106937, 33.509518, 32.107929>,  <30.281456, 33.611588, 31.762785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106937, 33.509518, 32.107929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070919, -0.946210, -0.315686,
		0.897004, -0.198926, 0.394730,
		-0.436295, -0.255178, 0.862862,
		29.976049, 33.432964, 32.366787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705105, 33.116219, 32.074867>,  <30.281456, 33.611588, 31.762785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705105, 33.116219, 32.074867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315182, 33.073917, 32.153423>,  <30.081228, 33.048538, 32.200558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315182, 33.073917, 32.153423>,  <30.705105, 33.116219, 32.074867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315182, 33.073917, 32.153423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039568, -0.948482, -0.314349,
		0.219515, -0.298658, 0.928771,
		-0.974806, -0.105754, 0.196389,
		30.022739, 33.042191, 32.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568573, 32.405640, 32.465244>,  <30.705105, 33.116219, 32.074867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568573, 32.405640, 32.465244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261768, 32.551765, 32.254250>,  <30.077686, 32.639439, 32.127651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261768, 32.551765, 32.254250>,  <30.568573, 32.405640, 32.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261768, 32.551765, 32.254250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150185, -0.901477, -0.405937,
		-0.623812, -0.232136, 0.746305,
		-0.767009, 0.365312, -0.527488,
		30.031666, 32.661358, 32.096004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915163, 32.825882, 32.892761>,  <30.568573, 32.405640, 32.465244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915163, 32.825882, 32.892761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077156, 32.761211, 32.532795>,  <31.174351, 32.722408, 32.316814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077156, 32.761211, 32.532795>,  <30.915163, 32.825882, 32.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077156, 32.761211, 32.532795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037842, 0.980434, -0.193175,
		0.913542, 0.112288, 0.390939,
		0.404981, -0.161679, -0.899917,
		31.198650, 32.712708, 32.262821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407997, 33.344063, 33.150150>,  <30.915163, 32.825882, 32.892761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407997, 33.344063, 33.150150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774368, 33.467236, 33.253113>,  <31.994190, 33.541138, 33.314892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774368, 33.467236, 33.253113>,  <31.407997, 33.344063, 33.150150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774368, 33.467236, 33.253113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196075, 0.216301, -0.956435,
		-0.350191, 0.926496, 0.137738,
		0.915926, 0.307927, 0.257410,
		32.049145, 33.559612, 33.330338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660557, 33.875450, 32.744961>,  <31.407997, 33.344063, 33.150150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660557, 33.875450, 32.744961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028870, 33.805000, 32.884182>,  <32.249859, 33.762730, 32.967716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028870, 33.805000, 32.884182>,  <31.660557, 33.875450, 32.744961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028870, 33.805000, 32.884182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388034, 0.504823, -0.771092,
		-0.039900, 0.845065, 0.533173,
		0.920781, -0.176122, 0.348056,
		32.305103, 33.752163, 32.988598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047283, 34.512184, 32.605247>,  <31.660557, 33.875450, 32.744961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047283, 34.512184, 32.605247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324211, 34.230072, 32.666264>,  <32.490368, 34.060806, 32.702873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324211, 34.230072, 32.666264>,  <32.047283, 34.512184, 32.605247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324211, 34.230072, 32.666264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615191, 0.466420, -0.635604,
		0.377132, 0.533883, 0.756796,
		0.692323, -0.705281, 0.152538,
		32.531906, 34.018486, 32.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705494, 34.851044, 32.606674>,  <32.047283, 34.512184, 32.605247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705494, 34.851044, 32.606674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765541, 34.466209, 32.515587>,  <32.801567, 34.235310, 32.460934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765541, 34.466209, 32.515587>,  <32.705494, 34.851044, 32.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765541, 34.466209, 32.515587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509182, 0.272668, -0.816325,
		0.847467, 0.006589, 0.530808,
		0.150113, -0.962085, -0.227722,
		32.810574, 34.177586, 32.447269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336529, 34.898399, 32.343418>,  <32.705494, 34.851044, 32.606674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336529, 34.898399, 32.343418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190048, 34.544182, 32.229080>,  <33.102161, 34.331650, 32.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190048, 34.544182, 32.229080>,  <33.336529, 34.898399, 32.343418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190048, 34.544182, 32.229080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375585, 0.140392, -0.916093,
		0.851371, -0.442834, 0.281186,
		-0.366200, -0.885544, -0.285847,
		33.080189, 34.278519, 32.143326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915218, 34.473209, 32.105083>,  <33.336529, 34.898399, 32.343418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915218, 34.473209, 32.105083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568592, 34.358231, 31.941896>,  <33.360619, 34.289242, 31.843985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568592, 34.358231, 31.941896>,  <33.915218, 34.473209, 32.105083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568592, 34.358231, 31.941896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387236, 0.128402, -0.912996,
		0.314827, -0.949149, 0.000043,
		-0.866563, -0.287453, -0.407969,
		33.308624, 34.271996, 31.819506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130566, 34.166832, 31.581518>,  <33.915218, 34.473209, 32.105083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130566, 34.166832, 31.581518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748493, 34.208759, 31.470778>,  <33.519249, 34.233917, 31.404333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748493, 34.208759, 31.470778>,  <34.130566, 34.166832, 31.581518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748493, 34.208759, 31.470778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292189, 0.183662, -0.938559,
		-0.047533, -0.977385, -0.206057,
		-0.955178, 0.104821, -0.276851,
		33.461941, 34.240204, 31.387722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076130, 33.714581, 31.048384>,  <34.130566, 34.166832, 31.581518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076130, 33.714581, 31.048384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769520, 33.968025, 31.006481>,  <33.585552, 34.120090, 30.981340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769520, 33.968025, 31.006481>,  <34.076130, 33.714581, 31.048384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769520, 33.968025, 31.006481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194952, 0.074152, -0.978006,
		-0.611907, -0.770090, -0.180363,
		-0.766527, 0.633611, -0.104757,
		33.539562, 34.158108, 30.975054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657082, 33.448555, 30.517599>,  <34.076130, 33.714581, 31.048384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657082, 33.448555, 30.517599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545292, 33.831188, 30.550678>,  <33.478218, 34.060768, 30.570526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545292, 33.831188, 30.550678>,  <33.657082, 33.448555, 30.517599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545292, 33.831188, 30.550678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071030, 0.106492, -0.991773,
		-0.957522, -0.271300, -0.097709,
		-0.279473, 0.956585, 0.082698,
		33.461449, 34.118164, 30.575487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054119, 33.577766, 29.968563>,  <33.657082, 33.448555, 30.517599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054119, 33.577766, 29.968563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226482, 33.930374, 30.045759>,  <33.329903, 34.141937, 30.092077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226482, 33.930374, 30.045759>,  <33.054119, 33.577766, 29.968563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226482, 33.930374, 30.045759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110435, 0.160740, -0.980799,
		-0.895611, 0.443950, -0.028086,
		0.430912, 0.881516, 0.192988,
		33.355755, 34.194828, 30.103655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901947, 33.989880, 29.421741>,  <33.054119, 33.577766, 29.968563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901947, 33.989880, 29.421741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193596, 34.192577, 29.605736>,  <33.368584, 34.314198, 29.716133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193596, 34.192577, 29.605736>,  <32.901947, 33.989880, 29.421741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193596, 34.192577, 29.605736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363961, 0.282084, -0.887671,
		-0.579580, 0.814639, 0.021238,
		0.729122, 0.506747, 0.459988,
		33.412334, 34.344601, 29.743732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838604, 34.723236, 29.292845>,  <32.901947, 33.989880, 29.421741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838604, 34.723236, 29.292845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229767, 34.698330, 29.372660>,  <33.464466, 34.683384, 29.420549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229767, 34.698330, 29.372660>,  <32.838604, 34.723236, 29.292845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229767, 34.698330, 29.372660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205754, 0.455094, -0.866346,
		-0.036862, 0.888264, 0.457853,
		0.977909, -0.062270, 0.199539,
		33.523140, 34.679649, 29.432522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173458, 35.424053, 29.246897>,  <32.838604, 34.723236, 29.292845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173458, 35.424053, 29.246897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455341, 35.149128, 29.176487>,  <33.624474, 34.984173, 29.134241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455341, 35.149128, 29.176487>,  <33.173458, 35.424053, 29.246897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455341, 35.149128, 29.176487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246144, 0.469531, -0.847911,
		0.665430, 0.554203, 0.500061,
		0.704710, -0.687313, -0.176026,
		33.666756, 34.942936, 29.123678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739006, 35.885822, 29.077013>,  <33.173458, 35.424053, 29.246897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739006, 35.885822, 29.077013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824142, 35.515778, 28.951237>,  <33.875225, 35.293751, 28.875771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824142, 35.515778, 28.951237>,  <33.739006, 35.885822, 29.077013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824142, 35.515778, 28.951237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243729, 0.361910, -0.899787,
		0.946199, 0.114877, 0.302506,
		0.212845, -0.925108, -0.314440,
		33.887997, 35.238247, 28.856905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341633, 35.933475, 28.631649>,  <33.739006, 35.885822, 29.077013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341633, 35.933475, 28.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152836, 35.596905, 28.526411>,  <34.039558, 35.394962, 28.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152836, 35.596905, 28.526411>,  <34.341633, 35.933475, 28.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152836, 35.596905, 28.526411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093703, 0.248856, -0.963997,
		0.876609, -0.479652, -0.038614,
		-0.471992, -0.841430, -0.263094,
		34.011238, 35.344475, 28.447483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749393, 35.644897, 28.009613>,  <34.341633, 35.933475, 28.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749393, 35.644897, 28.009613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382427, 35.485764, 28.012890>,  <34.162247, 35.390282, 28.014856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382427, 35.485764, 28.012890>,  <34.749393, 35.644897, 28.009613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382427, 35.485764, 28.012890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095949, 0.201190, -0.974842,
		0.386183, -0.895124, -0.222748,
		-0.917418, -0.397840, 0.008190,
		34.107201, 35.366413, 28.015347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787117, 35.192142, 27.385401>,  <34.749393, 35.644897, 28.009613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787117, 35.192142, 27.385401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400089, 35.266300, 27.454021>,  <34.167873, 35.310795, 27.495193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400089, 35.266300, 27.454021>,  <34.787117, 35.192142, 27.385401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400089, 35.266300, 27.454021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026278, 0.601604, -0.798362,
		-0.251222, -0.776981, -0.577224,
		-0.967573, 0.185398, 0.171554,
		34.109818, 35.321918, 27.505487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355133, 34.928658, 26.840538>,  <34.787117, 35.192142, 27.385401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355133, 34.928658, 26.840538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110443, 35.209045, 26.987200>,  <33.963631, 35.377277, 27.075197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110443, 35.209045, 26.987200>,  <34.355133, 34.928658, 26.840538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110443, 35.209045, 26.987200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078062, 0.407737, -0.909756,
		-0.787211, -0.585141, -0.194703,
		-0.611724, 0.700971, 0.366653,
		33.926926, 35.419338, 27.097195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851822, 35.073143, 26.299015>,  <34.355133, 34.928658, 26.840538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851822, 35.073143, 26.299015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838848, 35.385223, 26.548889>,  <33.831066, 35.572472, 26.698814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838848, 35.385223, 26.548889>,  <33.851822, 35.073143, 26.299015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838848, 35.385223, 26.548889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204703, 0.606580, -0.768217,
		-0.978287, -0.152791, 0.140037,
		-0.032432, 0.780202, 0.624686,
		33.829117, 35.619286, 26.736296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299633, 35.441433, 26.083233>,  <33.851822, 35.073143, 26.299015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299633, 35.441433, 26.083233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521130, 35.693703, 26.300718>,  <33.654026, 35.845062, 26.431210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521130, 35.693703, 26.300718>,  <33.299633, 35.441433, 26.083233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521130, 35.693703, 26.300718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067470, 0.616832, -0.784198,
		-0.829950, 0.470928, 0.299014,
		0.553742, 0.630671, 0.543713,
		33.687252, 35.882904, 26.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168602, 36.042248, 25.839211>,  <33.299633, 35.441433, 26.083233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168602, 36.042248, 25.839211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507107, 36.132320, 26.032343>,  <33.710209, 36.186363, 26.148222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507107, 36.132320, 26.032343>,  <33.168602, 36.042248, 25.839211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507107, 36.132320, 26.032343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098708, 0.824317, -0.557457,
		-0.523536, 0.519416, 0.675364,
		0.846266, 0.225185, 0.482830,
		33.760986, 36.199875, 26.177193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237827, 36.763344, 25.828108>,  <33.168602, 36.042248, 25.839211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237827, 36.763344, 25.828108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614342, 36.713158, 25.953482>,  <33.840252, 36.683048, 26.028706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614342, 36.713158, 25.953482>,  <33.237827, 36.763344, 25.828108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614342, 36.713158, 25.953482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276718, 0.818561, -0.503374,
		-0.193410, 0.560551, 0.805217,
		0.941286, -0.125461, 0.313433,
		33.896729, 36.675518, 26.047512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421688, 37.347107, 26.089769>,  <33.237827, 36.763344, 25.828108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421688, 37.347107, 26.089769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764679, 37.175556, 25.976076>,  <33.970474, 37.072624, 25.907860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764679, 37.175556, 25.976076>,  <33.421688, 37.347107, 26.089769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764679, 37.175556, 25.976076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293662, 0.861564, -0.414090,
		0.422478, 0.271607, 0.864721,
		0.857482, -0.428880, -0.284231,
		34.021923, 37.046894, 25.890806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933117, 37.799213, 26.124582>,  <33.421688, 37.347107, 26.089769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933117, 37.799213, 26.124582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100834, 37.539352, 25.870920>,  <34.201466, 37.383438, 25.718723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100834, 37.539352, 25.870920>,  <33.933117, 37.799213, 26.124582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100834, 37.539352, 25.870920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391633, 0.759617, -0.519236,
		0.819034, -0.030644, 0.572926,
		0.419292, -0.649649, -0.634153,
		34.226624, 37.344460, 25.680674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539845, 38.099758, 26.017052>,  <33.933117, 37.799213, 26.124582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539845, 38.099758, 26.017052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493576, 37.838966, 25.717306>,  <34.465816, 37.682491, 25.537458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493576, 37.838966, 25.717306>,  <34.539845, 38.099758, 26.017052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493576, 37.838966, 25.717306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391276, 0.663520, -0.637686,
		0.912976, -0.366967, 0.178356,
		-0.115667, -0.651979, -0.749363,
		34.458878, 37.643372, 25.492496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142963, 38.190884, 25.736668>,  <34.539845, 38.099758, 26.017052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142963, 38.190884, 25.736668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860664, 38.075916, 25.477650>,  <34.691284, 38.006935, 25.322239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860664, 38.075916, 25.477650>,  <35.142963, 38.190884, 25.736668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860664, 38.075916, 25.477650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198208, 0.797405, -0.569963,
		0.680175, -0.530597, -0.505795,
		-0.705745, -0.287422, -0.647544,
		34.648941, 37.989689, 25.283386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518669, 38.287579, 25.136568>,  <35.142963, 38.190884, 25.736668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518669, 38.287579, 25.136568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125050, 38.274246, 25.066673>,  <34.888878, 38.266247, 25.024736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125050, 38.274246, 25.066673>,  <35.518669, 38.287579, 25.136568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125050, 38.274246, 25.066673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090752, 0.750780, -0.654289,
		0.152997, -0.659711, -0.735780,
		-0.984051, -0.033330, -0.174737,
		34.829834, 38.264248, 25.014252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443398, 38.431515, 24.444975>,  <35.518669, 38.287579, 25.136568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443398, 38.431515, 24.444975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087742, 38.531597, 24.598249>,  <34.874348, 38.591648, 24.690214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087742, 38.531597, 24.598249>,  <35.443398, 38.431515, 24.444975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087742, 38.531597, 24.598249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058204, 0.892333, -0.447610,
		-0.453925, -0.375683, -0.807969,
		-0.889137, 0.250209, 0.383186,
		34.820999, 38.606659, 24.713205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115631, 38.828087, 23.952477>,  <35.443398, 38.431515, 24.444975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115631, 38.828087, 23.952477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934612, 38.915241, 24.298361>,  <34.826000, 38.967533, 24.505892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934612, 38.915241, 24.298361>,  <35.115631, 38.828087, 23.952477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934612, 38.915241, 24.298361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057363, 0.974794, -0.215606,
		-0.889894, -0.047969, -0.453639,
		-0.452547, 0.217888, 0.864712,
		34.798847, 38.980606, 24.557774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501022, 39.241886, 23.827259>,  <35.115631, 38.828087, 23.952477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501022, 39.241886, 23.827259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587555, 39.332626, 24.207098>,  <34.639477, 39.387070, 24.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587555, 39.332626, 24.207098>,  <34.501022, 39.241886, 23.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587555, 39.332626, 24.207098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237553, 0.955631, -0.174178,
		-0.946978, -0.187899, 0.260627,
		0.216335, 0.226855, 0.949598,
		34.652454, 39.400684, 24.491978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008583, 39.713322, 23.940041>,  <34.501022, 39.241886, 23.827259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008583, 39.713322, 23.940041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240719, 39.769238, 24.260956>,  <34.380001, 39.802788, 24.453505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240719, 39.769238, 24.260956>,  <34.008583, 39.713322, 23.940041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240719, 39.769238, 24.260956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113300, 0.989436, -0.090445,
		-0.806454, -0.038410, 0.590047,
		0.580340, 0.139792, 0.802287,
		34.414822, 39.811176, 24.501642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739330, 40.278725, 24.316645>,  <34.008583, 39.713322, 23.940041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739330, 40.278725, 24.316645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113899, 40.245247, 24.452946>,  <34.338638, 40.225159, 24.534727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113899, 40.245247, 24.452946>,  <33.739330, 40.278725, 24.316645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113899, 40.245247, 24.452946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111911, 0.991657, -0.063964,
		-0.332558, 0.098031, 0.937974,
		0.936419, -0.083698, 0.340754,
		34.394825, 40.220139, 24.555172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706947, 40.716190, 24.917181>,  <33.739330, 40.278725, 24.316645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706947, 40.716190, 24.917181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084324, 40.641174, 24.807823>,  <34.310749, 40.596165, 24.742208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084324, 40.641174, 24.807823>,  <33.706947, 40.716190, 24.917181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084324, 40.641174, 24.807823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158934, 0.979537, -0.123476,
		0.290958, 0.073040, 0.953944,
		0.943442, -0.187541, -0.273396,
		34.367355, 40.584911, 24.725805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151955, 41.268143, 25.243290>,  <33.706947, 40.716190, 24.917181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151955, 41.268143, 25.243290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393600, 41.144928, 24.949308>,  <34.538589, 41.070999, 24.772919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393600, 41.144928, 24.949308>,  <34.151955, 41.268143, 25.243290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393600, 41.144928, 24.949308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337696, 0.934324, -0.114020,
		0.721809, -0.179311, 0.668461,
		0.604113, -0.308037, -0.734956,
		34.574833, 41.052517, 24.728821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773094, 41.627720, 25.340622>,  <34.151955, 41.268143, 25.243290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773094, 41.627720, 25.340622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813080, 41.509785, 24.960501>,  <34.837070, 41.439026, 24.732428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813080, 41.509785, 24.960501>,  <34.773094, 41.627720, 25.340622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813080, 41.509785, 24.960501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388775, 0.890738, -0.235458,
		0.915894, -0.345916, 0.203668,
		0.099966, -0.294836, -0.950305,
		34.843071, 41.421333, 24.675409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447178, 41.838772, 25.126335>,  <34.773094, 41.627720, 25.340622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447178, 41.838772, 25.126335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212368, 41.795776, 24.805374>,  <35.071484, 41.769981, 24.612797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212368, 41.795776, 24.805374>,  <35.447178, 41.838772, 25.126335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212368, 41.795776, 24.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241795, 0.922629, -0.300483,
		0.772619, -0.370407, -0.515614,
		-0.587021, -0.107486, -0.802404,
		35.036263, 41.763531, 24.564653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894279, 41.955265, 24.590656>,  <35.447178, 41.838772, 25.126335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894279, 41.955265, 24.590656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525742, 42.010448, 24.445278>,  <35.304619, 42.043560, 24.358051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525742, 42.010448, 24.445278>,  <35.894279, 41.955265, 24.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525742, 42.010448, 24.445278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254144, 0.921217, -0.294569,
		0.294173, -0.363767, -0.883819,
		-0.921343, 0.137963, -0.363446,
		35.249340, 42.051838, 24.336245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033764, 42.190086, 23.926140>,  <35.894279, 41.955265, 24.590656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033764, 42.190086, 23.926140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658398, 42.299141, 24.011040>,  <35.433178, 42.364574, 24.061979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658398, 42.299141, 24.011040>,  <36.033764, 42.190086, 23.926140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658398, 42.299141, 24.011040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157933, 0.884840, -0.438310,
		-0.307307, -0.377794, -0.873403,
		-0.938413, 0.272635, 0.212252,
		35.376873, 42.380932, 24.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836281, 42.775291, 23.436569>,  <36.033764, 42.190086, 23.926140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836281, 42.775291, 23.436569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569447, 42.798164, 23.733685>,  <35.409348, 42.811886, 23.911953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569447, 42.798164, 23.733685>,  <35.836281, 42.775291, 23.436569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569447, 42.798164, 23.733685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089016, 0.983789, -0.155676,
		-0.739648, -0.169968, -0.651177,
		-0.667081, 0.057181, 0.742787,
		35.369324, 42.815319, 23.956520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179276, 43.209934, 23.189983>,  <35.836281, 42.775291, 23.436569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179276, 43.209934, 23.189983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178448, 43.207474, 23.589975>,  <35.177952, 43.205997, 23.829969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178448, 43.207474, 23.589975>,  <35.179276, 43.209934, 23.189983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178448, 43.207474, 23.589975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004610, 0.999970, 0.006144,
		-0.999987, -0.004597, -0.002110,
		-0.002082, -0.006153, 0.999979,
		35.177826, 43.205627, 23.889969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666843, 43.619720, 23.338449>,  <35.179276, 43.209934, 23.189983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666843, 43.619720, 23.338449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917774, 43.622887, 23.649937>,  <35.068333, 43.624786, 23.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917774, 43.622887, 23.649937>,  <34.666843, 43.619720, 23.338449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917774, 43.622887, 23.649937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086586, 0.994457, 0.059649,
		-0.773931, -0.104845, 0.624531,
		0.627323, 0.007912, 0.778719,
		35.105972, 43.625259, 23.883553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937790, 44.279346, 23.674854>,  <34.666843, 43.619720, 23.338449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937790, 44.279346, 23.674854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895882, 44.667377, 23.762466>,  <34.870735, 44.900196, 23.815033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895882, 44.667377, 23.762466>,  <34.937790, 44.279346, 23.674854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895882, 44.667377, 23.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366593, 0.167058, -0.915260,
		-0.924463, -0.176189, 0.338120,
		-0.104773, 0.970077, 0.219028,
		34.864449, 44.958401, 23.828175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290321, 44.481140, 23.343306>,  <34.937790, 44.279346, 23.674854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290321, 44.481140, 23.343306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480755, 44.828297, 23.400024>,  <34.595013, 45.036591, 23.434055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480755, 44.828297, 23.400024>,  <34.290321, 44.481140, 23.343306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480755, 44.828297, 23.400024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210696, 0.269118, -0.939778,
		-0.853789, 0.417532, 0.310984,
		0.476079, 0.867895, 0.141798,
		34.623577, 45.088665, 23.442564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796295, 45.136314, 23.188400>,  <34.290321, 44.481140, 23.343306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796295, 45.136314, 23.188400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178719, 45.249672, 23.158340>,  <34.408173, 45.317684, 23.140305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178719, 45.249672, 23.158340>,  <33.796295, 45.136314, 23.188400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178719, 45.249672, 23.158340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144992, 0.234234, -0.961307,
		-0.254825, 0.929959, 0.265030,
		0.956055, 0.283392, -0.075148,
		34.465534, 45.334690, 23.135796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885311, 45.908257, 22.979946>,  <33.796295, 45.136314, 23.188400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885311, 45.908257, 22.979946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177929, 45.657593, 22.872503>,  <34.353500, 45.507195, 22.808037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177929, 45.657593, 22.872503>,  <33.885311, 45.908257, 22.979946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177929, 45.657593, 22.872503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136373, 0.251518, -0.958197,
		0.668019, 0.737592, 0.098536,
		0.731542, -0.626656, -0.268606,
		34.397392, 45.469597, 22.791922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279434, 46.155399, 22.469061>,  <33.885311, 45.908257, 22.979946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279434, 46.155399, 22.469061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442318, 45.798618, 22.390469>,  <34.540051, 45.584549, 22.343313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442318, 45.798618, 22.390469>,  <34.279434, 46.155399, 22.469061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442318, 45.798618, 22.390469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320840, 0.341112, -0.883575,
		0.855126, 0.296763, 0.425078,
		0.407212, -0.891949, -0.196481,
		34.564480, 45.531033, 22.331524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830002, 46.217209, 22.039225>,  <34.279434, 46.155399, 22.469061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830002, 46.217209, 22.039225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737644, 45.835758, 21.961985>,  <34.682228, 45.606888, 21.915640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737644, 45.835758, 21.961985>,  <34.830002, 46.217209, 22.039225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737644, 45.835758, 21.961985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342072, 0.106233, -0.933650,
		0.910865, -0.281627, 0.301680,
		-0.230892, -0.953625, -0.193101,
		34.668377, 45.549671, 21.904055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545349, 46.149757, 21.779696>,  <34.830002, 46.217209, 22.039225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545349, 46.149757, 21.779696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661583, 45.779724, 21.681890>,  <35.731323, 45.557705, 21.623207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661583, 45.779724, 21.681890>,  <35.545349, 46.149757, 21.779696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661583, 45.779724, 21.681890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808791, 0.100919, 0.579373,
		-0.511290, -0.366118, 0.777522,
		0.290586, -0.925080, -0.244514,
		35.748760, 45.502201, 21.608536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865398, 45.898182, 22.403519>,  <35.545349, 46.149757, 21.779696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865398, 45.898182, 22.403519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010448, 45.635521, 22.139002>,  <36.097477, 45.477924, 21.980291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010448, 45.635521, 22.139002>,  <35.865398, 45.898182, 22.403519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010448, 45.635521, 22.139002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895034, 0.047687, 0.443441,
		-0.259653, -0.752681, 0.605022,
		0.362621, -0.656657, -0.661293,
		36.119236, 45.438522, 21.940615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688366, 45.646248, 23.092485>,  <35.865398, 45.898182, 22.403519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688366, 45.646248, 23.092485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294777, 45.576405, 23.106934>,  <35.058624, 45.534496, 23.115602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294777, 45.576405, 23.106934>,  <35.688366, 45.646248, 23.092485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294777, 45.576405, 23.106934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087272, -0.294959, 0.951516,
		-0.155490, 0.939420, 0.305471,
		-0.983975, -0.174611, 0.036122,
		34.999584, 45.524021, 23.117771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418549, 46.085144, 23.663340>,  <35.688366, 45.646248, 23.092485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418549, 46.085144, 23.663340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159542, 45.787846, 23.596039>,  <35.004139, 45.609467, 23.555658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159542, 45.787846, 23.596039>,  <35.418549, 46.085144, 23.663340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159542, 45.787846, 23.596039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048846, -0.179852, 0.982480,
		-0.760488, 0.644387, 0.080152,
		-0.647512, -0.743249, -0.168251,
		34.965290, 45.564873, 23.545563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807674, 46.219460, 24.099890>,  <35.418549, 46.085144, 23.663340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807674, 46.219460, 24.099890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805531, 45.825905, 24.028395>,  <34.804245, 45.589771, 23.985498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805531, 45.825905, 24.028395>,  <34.807674, 46.219460, 24.099890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805531, 45.825905, 24.028395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040921, -0.178373, 0.983111,
		-0.999148, 0.012581, -0.039306,
		-0.005357, -0.983882, -0.178736,
		34.803925, 45.530739, 23.974773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448055, 46.005913, 24.660704>,  <34.807674, 46.219460, 24.099890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448055, 46.005913, 24.660704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643093, 45.685474, 24.521851>,  <34.760117, 45.493214, 24.438540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643093, 45.685474, 24.521851>,  <34.448055, 46.005913, 24.660704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643093, 45.685474, 24.521851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200307, -0.284347, 0.937563,
		-0.849782, -0.526683, 0.021818,
		0.487594, -0.801094, -0.347131,
		34.789371, 45.445145, 24.417711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171497, 45.352798, 25.000006>,  <34.448055, 46.005913, 24.660704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171497, 45.352798, 25.000006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535767, 45.234730, 24.884388>,  <34.754330, 45.163891, 24.815018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535767, 45.234730, 24.884388>,  <34.171497, 45.352798, 25.000006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535767, 45.234730, 24.884388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235206, -0.204753, 0.950134,
		-0.339633, -0.933248, -0.117038,
		0.910675, -0.295168, -0.289046,
		34.808968, 45.146179, 24.797674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259174, 44.749813, 25.347862>,  <34.171497, 45.352798, 25.000006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259174, 44.749813, 25.347862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620869, 44.892979, 25.254688>,  <34.837883, 44.978878, 25.198784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620869, 44.892979, 25.254688>,  <34.259174, 44.749813, 25.347862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620869, 44.892979, 25.254688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371553, -0.390522, 0.842283,
		0.210503, -0.848167, -0.486109,
		0.904233, 0.357918, -0.232933,
		34.892139, 45.000355, 25.184809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661671, 44.316059, 25.668043>,  <34.259174, 44.749813, 25.347862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661671, 44.316059, 25.668043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902489, 44.626698, 25.593813>,  <35.046982, 44.813080, 25.549274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902489, 44.626698, 25.593813>,  <34.661671, 44.316059, 25.668043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902489, 44.626698, 25.593813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433489, -0.122723, 0.892763,
		0.670540, -0.617933, -0.410530,
		0.602049, 0.776594, -0.185577,
		35.083103, 44.859676, 25.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445648, 44.115101, 25.649504>,  <34.661671, 44.316059, 25.668043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445648, 44.115101, 25.649504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435123, 44.504124, 25.741978>,  <35.428810, 44.737537, 25.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435123, 44.504124, 25.741978>,  <35.445648, 44.115101, 25.649504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435123, 44.504124, 25.741978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333095, -0.209517, 0.919321,
		0.942526, 0.101196, -0.318440,
		-0.026313, 0.972554, 0.231183,
		35.427231, 44.795891, 25.811333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065609, 44.287903, 26.044796>,  <35.445648, 44.115101, 25.649504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065609, 44.287903, 26.044796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777115, 44.553711, 26.123001>,  <35.604019, 44.713196, 26.169924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777115, 44.553711, 26.123001>,  <36.065609, 44.287903, 26.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777115, 44.553711, 26.123001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242347, -0.022340, 0.969932,
		0.648910, 0.746933, -0.144933,
		-0.721237, 0.664523, 0.195514,
		35.560745, 44.753067, 26.181656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347790, 44.713844, 26.515549>,  <36.065609, 44.287903, 26.044796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347790, 44.713844, 26.515549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953434, 44.767864, 26.555103>,  <35.716820, 44.800278, 26.578836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953434, 44.767864, 26.555103>,  <36.347790, 44.713844, 26.515549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953434, 44.767864, 26.555103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090258, -0.068591, 0.993554,
		0.140963, 0.988462, 0.055434,
		-0.985892, 0.135051, 0.098885,
		35.657665, 44.808380, 26.584768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335430, 45.064217, 27.070223>,  <36.347790, 44.713844, 26.515549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335430, 45.064217, 27.070223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951431, 44.956322, 27.040184>,  <35.721031, 44.891582, 27.022161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951431, 44.956322, 27.040184>,  <36.335430, 45.064217, 27.070223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951431, 44.956322, 27.040184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071616, -0.022732, 0.997173,
		-0.270686, 0.962665, 0.002504,
		-0.960000, -0.269742, -0.075096,
		35.663433, 44.875401, 27.017654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924698, 45.550137, 27.483307>,  <36.335430, 45.064217, 27.070223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924698, 45.550137, 27.483307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707302, 45.217518, 27.437428>,  <35.576866, 45.017948, 27.409901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707302, 45.217518, 27.437428>,  <35.924698, 45.550137, 27.483307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707302, 45.217518, 27.437428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283373, 0.053135, 0.957537,
		-0.790138, 0.552914, -0.264515,
		-0.543490, -0.831543, -0.114697,
		35.544254, 44.968056, 27.403019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362396, 45.644428, 27.807213>,  <35.924698, 45.550137, 27.483307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362396, 45.644428, 27.807213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394104, 45.245689, 27.805571>,  <35.413128, 45.006447, 27.804585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394104, 45.245689, 27.805571>,  <35.362396, 45.644428, 27.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394104, 45.245689, 27.805571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370132, -0.033257, 0.928384,
		-0.925591, -0.072075, -0.371601,
		0.079271, -0.996845, -0.004105,
		35.417885, 44.946636, 27.804338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882679, 45.484409, 28.237480>,  <35.362396, 45.644428, 27.807213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882679, 45.484409, 28.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036831, 45.119110, 28.184626>,  <35.129322, 44.899929, 28.152912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036831, 45.119110, 28.184626>,  <34.882679, 45.484409, 28.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036831, 45.119110, 28.184626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396996, -0.293361, 0.869674,
		-0.832992, -0.282698, -0.475612,
		0.385381, -0.913248, -0.132137,
		35.152447, 44.845135, 28.144985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613884, 45.095200, 28.811462>,  <34.882679, 45.484409, 28.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613884, 45.095200, 28.811462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821136, 44.813259, 28.617668>,  <34.945488, 44.644096, 28.501392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821136, 44.813259, 28.617668>,  <34.613884, 45.095200, 28.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821136, 44.813259, 28.617668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387968, -0.698509, 0.601303,
		-0.762245, -0.123591, -0.635380,
		0.518134, -0.704848, -0.484486,
		34.976578, 44.601807, 28.472322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185238, 44.427509, 28.698095>,  <34.613884, 45.095200, 28.811462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185238, 44.427509, 28.698095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567879, 44.314671, 28.668892>,  <34.797462, 44.246967, 28.651369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567879, 44.314671, 28.668892>,  <34.185238, 44.427509, 28.698095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567879, 44.314671, 28.668892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256225, -0.933646, 0.250307,
		-0.138775, -0.220738, -0.965410,
		0.956604, -0.282099, -0.073008,
		34.854858, 44.230042, 28.646990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315063, 43.861084, 28.110096>,  <34.185238, 44.427509, 28.698095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315063, 43.861084, 28.110096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597652, 43.862530, 28.393188>,  <34.767204, 43.863396, 28.563044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597652, 43.862530, 28.393188>,  <34.315063, 43.861084, 28.110096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597652, 43.862530, 28.393188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248932, -0.934822, 0.253258,
		0.662518, -0.355097, -0.659527,
		0.706472, 0.003611, 0.707732,
		34.809593, 43.863613, 28.605509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600513, 43.221298, 28.127384>,  <34.315063, 43.861084, 28.110096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600513, 43.221298, 28.127384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718166, 43.335278, 28.492304>,  <34.788757, 43.403667, 28.711256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718166, 43.335278, 28.492304>,  <34.600513, 43.221298, 28.127384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718166, 43.335278, 28.492304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232103, -0.904653, 0.357394,
		0.927155, -0.316867, -0.199946,
		0.294128, 0.284952, 0.912300,
		34.806404, 43.420765, 28.765993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095638, 42.694614, 28.329573>,  <34.600513, 43.221298, 28.127384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095638, 42.694614, 28.329573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961475, 42.872105, 28.661983>,  <34.880978, 42.978600, 28.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961475, 42.872105, 28.661983>,  <35.095638, 42.694614, 28.329573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961475, 42.872105, 28.661983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012470, -0.879958, 0.474888,
		0.941991, 0.169644, 0.289610,
		-0.335406, 0.443729, 0.831028,
		34.860855, 43.005222, 28.911291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448677, 42.228966, 28.886600>,  <35.095638, 42.694614, 28.329573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448677, 42.228966, 28.886600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181702, 42.462154, 29.071932>,  <35.021515, 42.602066, 29.183130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181702, 42.462154, 29.071932>,  <35.448677, 42.228966, 28.886600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181702, 42.462154, 29.071932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230664, -0.753448, 0.615720,
		0.708037, 0.304083, 0.637351,
		-0.667441, 0.582967, 0.463328,
		34.981468, 42.637043, 29.210930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577461, 42.044662, 29.512888>,  <35.448677, 42.228966, 28.886600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577461, 42.044662, 29.512888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212673, 42.208755, 29.514904>,  <34.993801, 42.307209, 29.516113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212673, 42.208755, 29.514904>,  <35.577461, 42.044662, 29.512888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212673, 42.208755, 29.514904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287771, -0.648395, 0.704821,
		0.292408, 0.641323, 0.709368,
		-0.911968, 0.410231, 0.005041,
		34.939083, 42.331825, 29.516417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312477, 42.181961, 30.309629>,  <35.577461, 42.044662, 29.512888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312477, 42.181961, 30.309629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979900, 42.203465, 30.088428>,  <34.780354, 42.216366, 29.955708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979900, 42.203465, 30.088428>,  <35.312477, 42.181961, 30.309629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979900, 42.203465, 30.088428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442744, -0.665435, 0.600978,
		-0.335675, 0.744518, 0.577076,
		-0.831445, 0.053763, -0.553000,
		34.730469, 42.219593, 29.922529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724106, 42.323082, 30.786564>,  <35.312477, 42.181961, 30.309629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724106, 42.323082, 30.786564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609741, 42.133221, 30.453587>,  <34.541122, 42.019306, 30.253799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609741, 42.133221, 30.453587>,  <34.724106, 42.323082, 30.786564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609741, 42.133221, 30.453587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319888, -0.771598, 0.549826,
		-0.903287, 0.423489, 0.068772,
		-0.285909, -0.474651, -0.832444,
		34.523968, 41.990826, 30.203854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137859, 42.031445, 31.020411>,  <34.724106, 42.323082, 30.786564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137859, 42.031445, 31.020411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211975, 41.833603, 30.680756>,  <34.256443, 41.714897, 30.476963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211975, 41.833603, 30.680756>,  <34.137859, 42.031445, 31.020411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211975, 41.833603, 30.680756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282001, -0.854520, 0.436202,
		-0.941352, 0.158634, -0.297812,
		0.185290, -0.494602, -0.849138,
		34.267563, 41.685223, 30.426014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490669, 41.557770, 30.840157>,  <34.137859, 42.031445, 31.020411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490669, 41.557770, 30.840157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797211, 41.385849, 30.649174>,  <33.981136, 41.282696, 30.534584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797211, 41.385849, 30.649174>,  <33.490669, 41.557770, 30.840157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797211, 41.385849, 30.649174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207960, -0.869181, 0.448639,
		-0.607824, -0.244525, -0.755485,
		0.766357, -0.429804, -0.477458,
		34.027119, 41.256908, 30.505936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222000, 40.979416, 30.619703>,  <33.490669, 41.557770, 30.840157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222000, 40.979416, 30.619703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609169, 40.880405, 30.602491>,  <33.841473, 40.820999, 30.592163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609169, 40.880405, 30.602491>,  <33.222000, 40.979416, 30.619703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609169, 40.880405, 30.602491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187767, -0.826509, 0.530685,
		-0.166924, -0.505584, -0.846476,
		0.967926, -0.247524, -0.043032,
		33.899548, 40.806149, 30.589582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205242, 40.308945, 30.391609>,  <33.222000, 40.979416, 30.619703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205242, 40.308945, 30.391609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566917, 40.366180, 30.552595>,  <33.783920, 40.400524, 30.649187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566917, 40.366180, 30.552595>,  <33.205242, 40.308945, 30.391609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566917, 40.366180, 30.552595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106369, -0.837107, 0.536598,
		0.413688, -0.527992, -0.741678,
		0.904184, 0.143092, 0.402463,
		33.838173, 40.409107, 30.673334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554802, 39.672226, 30.323952>,  <33.205242, 40.308945, 30.391609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554802, 39.672226, 30.323952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748081, 39.875931, 30.608814>,  <33.864048, 39.998154, 30.779732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748081, 39.875931, 30.608814>,  <33.554802, 39.672226, 30.323952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748081, 39.875931, 30.608814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039704, -0.799839, 0.598900,
		0.874608, -0.317665, -0.366264,
		0.483202, 0.509261, 0.712158,
		33.893044, 40.028709, 30.822462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116360, 39.307068, 30.472919>,  <33.554802, 39.672226, 30.323952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116360, 39.307068, 30.472919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039082, 39.535847, 30.791805>,  <33.992714, 39.673115, 30.983137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039082, 39.535847, 30.791805>,  <34.116360, 39.307068, 30.472919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039082, 39.535847, 30.791805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009034, -0.811451, 0.584351,
		0.981119, 0.120095, 0.151600,
		-0.193194, 0.571948, 0.797215,
		33.981125, 39.707432, 31.030970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575062, 39.009628, 31.068251>,  <34.116360, 39.307068, 30.472919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575062, 39.009628, 31.068251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307606, 39.265770, 31.219444>,  <34.147133, 39.419453, 31.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307606, 39.265770, 31.219444>,  <34.575062, 39.009628, 31.068251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307606, 39.265770, 31.219444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156177, -0.617926, 0.770569,
		0.727002, 0.456199, 0.513177,
		-0.668638, 0.640351, 0.377985,
		34.107014, 39.457874, 31.332840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738110, 39.069153, 31.702604>,  <34.575062, 39.009628, 31.068251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738110, 39.069153, 31.702604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360027, 39.197895, 31.724474>,  <34.133179, 39.275143, 31.737597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360027, 39.197895, 31.724474>,  <34.738110, 39.069153, 31.702604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360027, 39.197895, 31.724474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178474, -0.649657, 0.738981,
		0.273368, 0.688732, 0.671504,
		-0.945207, 0.321860, 0.054675,
		34.076466, 39.294453, 31.740877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570782, 39.161083, 32.425365>,  <34.738110, 39.069153, 31.702604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570782, 39.161083, 32.425365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207626, 39.116161, 32.263813>,  <33.989731, 39.089207, 32.166882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207626, 39.116161, 32.263813>,  <34.570782, 39.161083, 32.425365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207626, 39.116161, 32.263813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263561, -0.596287, 0.758272,
		-0.325990, 0.794876, 0.511764,
		-0.907891, -0.112308, -0.403882,
		33.935261, 39.082470, 32.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134380, 39.190987, 32.956642>,  <34.570782, 39.161083, 32.425365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134380, 39.190987, 32.956642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963173, 38.990913, 32.655548>,  <33.860447, 38.870869, 32.474892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963173, 38.990913, 32.655548>,  <34.134380, 39.190987, 32.956642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963173, 38.990913, 32.655548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337370, -0.684252, 0.646514,
		-0.838440, 0.530671, 0.124124,
		-0.428018, -0.500187, -0.752737,
		33.834766, 38.840858, 32.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537090, 38.990692, 33.286762>,  <34.134380, 39.190987, 32.956642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537090, 38.990692, 33.286762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532845, 38.766407, 32.955585>,  <33.530296, 38.631836, 32.756878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532845, 38.766407, 32.955585>,  <33.537090, 38.990692, 33.286762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532845, 38.766407, 32.955585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436943, -0.742155, 0.508219,
		-0.899426, 0.367159, -0.237122,
		-0.010616, -0.560714, -0.827941,
		33.529659, 38.598194, 32.707203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873600, 38.660713, 33.245735>,  <33.537090, 38.990692, 33.286762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873600, 38.660713, 33.245735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115631, 38.451141, 33.005939>,  <33.260849, 38.325397, 32.862064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115631, 38.451141, 33.005939>,  <32.873600, 38.660713, 33.245735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115631, 38.451141, 33.005939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395048, -0.851306, 0.345275,
		-0.691244, 0.027908, -0.722082,
		0.605077, -0.523927, -0.599486,
		33.297153, 38.293964, 32.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466434, 38.214321, 32.763233>,  <32.873600, 38.660713, 33.245735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466434, 38.214321, 32.763233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826962, 38.046097, 32.804695>,  <33.043278, 37.945160, 32.829575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826962, 38.046097, 32.804695>,  <32.466434, 38.214321, 32.763233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826962, 38.046097, 32.804695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432750, -0.864054, 0.257174,
		-0.018591, -0.276655, -0.960789,
		0.901322, -0.420563, 0.103659,
		33.097359, 37.919930, 32.835793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505695, 37.502224, 32.540398>,  <32.466434, 38.214321, 32.763233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505695, 37.502224, 32.540398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831837, 37.473167, 32.770153>,  <33.027523, 37.455734, 32.908005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831837, 37.473167, 32.770153>,  <32.505695, 37.502224, 32.540398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831837, 37.473167, 32.770153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401296, -0.786023, 0.470244,
		0.417325, -0.613915, -0.670036,
		0.815354, -0.072639, 0.574389,
		33.076443, 37.451374, 32.942471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537495, 36.800610, 32.628101>,  <32.505695, 37.502224, 32.540398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537495, 36.800610, 32.628101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794010, 36.941509, 32.900764>,  <32.947922, 37.026051, 33.064362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794010, 36.941509, 32.900764>,  <32.537495, 36.800610, 32.628101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794010, 36.941509, 32.900764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112974, -0.835366, 0.537959,
		0.758934, -0.421999, -0.495920,
		0.641293, 0.352250, 0.681662,
		32.986397, 37.047184, 33.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073490, 36.384739, 32.623318>,  <32.537495, 36.800610, 32.628101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073490, 36.384739, 32.623318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093967, 36.558350, 32.983097>,  <33.106255, 36.662514, 33.198963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093967, 36.558350, 32.983097>,  <33.073490, 36.384739, 32.623318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093967, 36.558350, 32.983097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145694, -0.887745, 0.436671,
		0.988004, -0.153397, 0.017790,
		0.051191, 0.434025, 0.899445,
		33.109325, 36.688557, 33.252930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622425, 36.034641, 33.059673>,  <33.073490, 36.384739, 32.623318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622425, 36.034641, 33.059673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338058, 36.210243, 33.279446>,  <33.167439, 36.315605, 33.411308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338058, 36.210243, 33.279446>,  <33.622425, 36.034641, 33.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338058, 36.210243, 33.279446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251540, -0.888289, 0.384278,
		0.656756, 0.134983, 0.741924,
		-0.710914, 0.439001, 0.549436,
		33.124783, 36.341942, 33.444275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553604, 35.668915, 33.695580>,  <33.622425, 36.034641, 33.059673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553604, 35.668915, 33.695580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206402, 35.864052, 33.732628>,  <32.998081, 35.981136, 33.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206402, 35.864052, 33.732628>,  <33.553604, 35.668915, 33.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206402, 35.864052, 33.732628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431283, -0.833107, 0.346308,
		0.246104, 0.260652, 0.933538,
		-0.868002, 0.487846, 0.092616,
		32.946003, 36.010406, 33.760414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191982, 35.946926, 33.467171>,  <33.553604, 35.668915, 33.695580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191982, 35.946926, 33.467171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522392, 35.736282, 33.547535>,  <34.720638, 35.609898, 33.595753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522392, 35.736282, 33.547535>,  <34.191982, 35.946926, 33.467171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522392, 35.736282, 33.547535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563545, 0.777970, -0.277813,
		-0.010005, 0.342703, 0.939391,
		0.826025, -0.526610, 0.200912,
		34.770199, 35.578300, 33.607807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535301, 36.337360, 33.910145>,  <34.191982, 35.946926, 33.467171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535301, 36.337360, 33.910145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815098, 36.104160, 33.744823>,  <34.982975, 35.964241, 33.645630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815098, 36.104160, 33.744823>,  <34.535301, 36.337360, 33.910145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815098, 36.104160, 33.744823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559980, 0.806459, -0.189860,
		0.444004, -0.098639, 0.890579,
		0.699488, -0.583004, -0.413306,
		35.024944, 35.929260, 33.620831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173473, 36.564026, 34.229786>,  <34.535301, 36.337360, 33.910145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173473, 36.564026, 34.229786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280121, 36.374748, 33.893929>,  <35.344109, 36.261181, 33.692413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280121, 36.374748, 33.893929>,  <35.173473, 36.564026, 34.229786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280121, 36.374748, 33.893929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618189, 0.752330, -0.227687,
		0.739430, -0.458353, 0.493109,
		0.266620, -0.473193, -0.839644,
		35.360107, 36.232792, 33.642036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859390, 36.287956, 34.307301>,  <35.173473, 36.564026, 34.229786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859390, 36.287956, 34.307301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791824, 36.341293, 33.916672>,  <35.751286, 36.373295, 33.682297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791824, 36.341293, 33.916672>,  <35.859390, 36.287956, 34.307301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791824, 36.341293, 33.916672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545903, 0.837611, 0.019943,
		0.820645, -0.529744, -0.214275,
		-0.168915, 0.133339, -0.976570,
		35.741150, 36.381294, 33.623699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506115, 36.535126, 34.031551>,  <35.859390, 36.287956, 34.307301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506115, 36.535126, 34.031551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246632, 36.623615, 33.740284>,  <36.090942, 36.676708, 33.565521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246632, 36.623615, 33.740284>,  <36.506115, 36.535126, 34.031551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246632, 36.623615, 33.740284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532090, 0.815928, -0.226144,
		0.544109, -0.534156, -0.647011,
		-0.648711, 0.221221, -0.728173,
		36.052017, 36.689980, 33.521832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978920, 36.833710, 33.614891>,  <36.506115, 36.535126, 34.031551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978920, 36.833710, 33.614891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 36.959484, 33.477848>,  <36.412331, 37.034946, 33.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624802, 36.959484, 33.477848>,  <36.978920, 36.833710, 33.614891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624802, 36.959484, 33.477848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373627, 0.919589, -0.121482,
		0.276861, -0.235555, -0.931591,
		-0.885297, 0.314434, -0.342608,
		36.359211, 37.053814, 33.375065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140194, 37.214340, 32.992744>,  <36.978920, 36.833710, 33.614891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140194, 37.214340, 32.992744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776684, 37.339218, 33.103497>,  <36.558578, 37.414146, 33.169949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776684, 37.339218, 33.103497>,  <37.140194, 37.214340, 32.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776684, 37.339218, 33.103497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242110, 0.934902, -0.259499,
		-0.339870, -0.168790, -0.925201,
		-0.908774, 0.312197, 0.276880,
		36.504051, 37.432877, 33.186562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917007, 37.631977, 32.475098>,  <37.140194, 37.214340, 32.992744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917007, 37.631977, 32.475098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733284, 37.729431, 32.816784>,  <36.623051, 37.787903, 33.021793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733284, 37.729431, 32.816784>,  <36.917007, 37.631977, 32.475098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733284, 37.729431, 32.816784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177825, 0.967404, -0.180298,
		-0.870295, 0.069087, -0.487662,
		-0.459309, 0.243631, 0.854212,
		36.595490, 37.802521, 33.073048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733673, 38.316536, 32.328255>,  <36.917007, 37.631977, 32.475098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733673, 38.316536, 32.328255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598293, 38.293915, 32.703968>,  <36.517063, 38.280342, 32.929398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598293, 38.293915, 32.703968>,  <36.733673, 38.316536, 32.328255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598293, 38.293915, 32.703968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037981, 0.996558, 0.073682,
		-0.940217, 0.060613, -0.335139,
		-0.338451, -0.056548, 0.939283,
		36.496758, 38.276951, 32.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042084, 38.723248, 32.336254>,  <36.733673, 38.316536, 32.328255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042084, 38.723248, 32.336254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234184, 38.713459, 32.686970>,  <36.349445, 38.707584, 32.897400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234184, 38.713459, 32.686970>,  <36.042084, 38.723248, 32.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234184, 38.713459, 32.686970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068031, 0.997639, -0.009417,
		-0.874491, 0.064171, 0.480779,
		0.480248, -0.024473, 0.876791,
		36.378258, 38.706116, 32.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700966, 39.224232, 32.768585>,  <36.042084, 38.723248, 32.336254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700966, 39.224232, 32.768585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069035, 39.185230, 32.920258>,  <36.289875, 39.161831, 33.011261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069035, 39.185230, 32.920258>,  <35.700966, 39.224232, 32.768585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069035, 39.185230, 32.920258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154251, 0.980445, -0.122207,
		-0.359855, 0.170941, 0.917215,
		0.920169, -0.097505, 0.379186,
		36.345085, 39.155979, 33.034012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791592, 39.646412, 33.316566>,  <35.700966, 39.224232, 32.768585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791592, 39.646412, 33.316566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169090, 39.594288, 33.194996>,  <36.395588, 39.563011, 33.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169090, 39.594288, 33.194996>,  <35.791592, 39.646412, 33.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169090, 39.594288, 33.194996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034419, 0.952796, -0.301655,
		0.328887, 0.274224, 0.903678,
		0.943742, -0.130314, -0.303924,
		36.452213, 39.555195, 33.103817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052338, 40.179073, 33.431000>,  <35.791592, 39.646412, 33.316566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052338, 40.179073, 33.431000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335045, 40.048782, 33.179802>,  <36.504669, 39.970608, 33.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335045, 40.048782, 33.179802>,  <36.052338, 40.179073, 33.431000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335045, 40.048782, 33.179802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080469, 0.918947, -0.386084,
		0.702851, 0.222339, 0.675697,
		0.706771, -0.325732, -0.627991,
		36.547077, 39.951061, 32.991405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613396, 40.719791, 33.423672>,  <36.052338, 40.179073, 33.431000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613396, 40.719791, 33.423672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701263, 40.535374, 33.079769>,  <36.753983, 40.424725, 32.873428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701263, 40.535374, 33.079769>,  <36.613396, 40.719791, 33.423672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701263, 40.535374, 33.079769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304625, 0.869634, -0.388510,
		0.926795, -0.176560, 0.331477,
		0.219669, -0.461045, -0.859758,
		36.767162, 40.397060, 32.821842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145855, 41.152634, 33.151733>,  <36.613396, 40.719791, 33.423672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145855, 41.152634, 33.151733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006683, 40.935467, 32.846008>,  <36.923180, 40.805164, 32.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006683, 40.935467, 32.846008>,  <37.145855, 41.152634, 33.151733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006683, 40.935467, 32.846008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042226, 0.805352, -0.591292,
		0.936568, -0.238003, -0.257283,
		-0.347933, -0.542921, -0.764317,
		36.902302, 40.772591, 32.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733932, 41.185879, 32.575268>,  <37.145855, 41.152634, 33.151733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733932, 41.185879, 32.575268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371559, 41.115475, 32.421230>,  <37.154133, 41.073231, 32.328808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371559, 41.115475, 32.421230>,  <37.733932, 41.185879, 32.575268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371559, 41.115475, 32.421230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134920, 0.742090, -0.656581,
		0.401344, -0.646778, -0.648538,
		-0.905936, -0.176014, -0.385097,
		37.099777, 41.062672, 32.305702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885658, 41.125053, 31.805571>,  <37.733932, 41.185879, 32.575268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885658, 41.125053, 31.805571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490227, 41.180603, 31.828970>,  <37.252968, 41.213932, 31.843010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490227, 41.180603, 31.828970>,  <37.885658, 41.125053, 31.805571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490227, 41.180603, 31.828970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045951, 0.647520, -0.760662,
		-0.143514, -0.749287, -0.646508,
		-0.988581, 0.138874, 0.058498,
		37.193653, 41.222263, 31.846519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659317, 41.051147, 31.124464>,  <37.885658, 41.125053, 31.805571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659317, 41.051147, 31.124464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354904, 41.225418, 31.316721>,  <37.172256, 41.329979, 31.432076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354904, 41.225418, 31.316721>,  <37.659317, 41.051147, 31.124464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354904, 41.225418, 31.316721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091637, 0.661284, -0.744517,
		-0.642208, -0.610646, -0.463335,
		-0.761033, 0.435676, 0.480640,
		37.126595, 41.356121, 31.460913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100578, 41.100163, 30.571331>,  <37.659317, 41.051147, 31.124464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100578, 41.100163, 30.571331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048759, 41.381233, 30.851177>,  <37.017666, 41.549877, 31.019085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048759, 41.381233, 30.851177>,  <37.100578, 41.100163, 30.571331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048759, 41.381233, 30.851177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104549, 0.711310, -0.695060,
		-0.986046, -0.016900, -0.165614,
		-0.129549, 0.702675, 0.699617,
		37.009895, 41.592037, 31.061062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578453, 41.494545, 30.219660>,  <37.100578, 41.100163, 30.571331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578453, 41.494545, 30.219660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707760, 41.733650, 30.513103>,  <36.785343, 41.877113, 30.689169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707760, 41.733650, 30.513103>,  <36.578453, 41.494545, 30.219660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707760, 41.733650, 30.513103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133751, 0.796310, -0.589916,
		-0.936809, 0.092578, 0.337370,
		0.323264, 0.597762, 0.733608,
		36.804741, 41.912979, 30.733187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055218, 42.043976, 30.266470>,  <36.578453, 41.494545, 30.219660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055218, 42.043976, 30.266470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411736, 42.173340, 30.393593>,  <36.625645, 42.250957, 30.469868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411736, 42.173340, 30.393593>,  <36.055218, 42.043976, 30.266470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411736, 42.173340, 30.393593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085243, 0.807921, -0.583092,
		-0.445341, 0.492616, 0.747664,
		0.891294, 0.323408, 0.317809,
		36.679123, 42.270363, 30.488935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037361, 42.729008, 30.040419>,  <36.055218, 42.043976, 30.266470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037361, 42.729008, 30.040419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417782, 42.655293, 30.139652>,  <36.646034, 42.611061, 30.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417782, 42.655293, 30.139652>,  <36.037361, 42.729008, 30.040419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417782, 42.655293, 30.139652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309035, 0.574077, -0.758244,
		-0.002683, 0.797792, 0.602926,
		0.951047, -0.184291, 0.248086,
		36.703094, 42.600006, 30.214079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348225, 43.482998, 30.199633>,  <36.037361, 42.729008, 30.040419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348225, 43.482998, 30.199633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655159, 43.240707, 30.115461>,  <36.839321, 43.095333, 30.064959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655159, 43.240707, 30.115461>,  <36.348225, 43.482998, 30.199633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655159, 43.240707, 30.115461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290970, 0.621336, -0.727515,
		0.571424, 0.497024, 0.653025,
		0.767340, -0.605730, -0.210427,
		36.885361, 43.058987, 30.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006538, 43.936474, 30.204384>,  <36.348225, 43.482998, 30.199633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006538, 43.936474, 30.204384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053074, 43.602512, 29.989201>,  <37.080994, 43.402134, 29.860090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053074, 43.602512, 29.989201>,  <37.006538, 43.936474, 30.204384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053074, 43.602512, 29.989201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411481, 0.533484, -0.738971,
		0.903962, -0.135389, 0.405613,
		0.116340, -0.834904, -0.537960,
		37.087975, 43.352039, 29.827812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748688, 43.972748, 29.942852>,  <37.006538, 43.936474, 30.204384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748688, 43.972748, 29.942852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544430, 43.730350, 29.698879>,  <37.421875, 43.584911, 29.552496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544430, 43.730350, 29.698879>,  <37.748688, 43.972748, 29.942852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544430, 43.730350, 29.698879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527028, 0.339884, -0.778922,
		0.679327, -0.719202, 0.145816,
		-0.510643, -0.605992, -0.609932,
		37.391235, 43.548553, 29.515900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220322, 43.747318, 29.446793>,  <37.748688, 43.972748, 29.942852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220322, 43.747318, 29.446793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873703, 43.649853, 29.272564>,  <37.665733, 43.591373, 29.168026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873703, 43.649853, 29.272564>,  <38.220322, 43.747318, 29.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873703, 43.649853, 29.272564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404497, 0.168356, -0.898909,
		0.292366, -0.955135, -0.047326,
		-0.866547, -0.243667, -0.435571,
		37.613739, 43.576752, 29.141893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294456, 43.147499, 28.987318>,  <38.220322, 43.747318, 29.446793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294456, 43.147499, 28.987318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987747, 43.383400, 28.885927>,  <37.803722, 43.524940, 28.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987747, 43.383400, 28.885927>,  <38.294456, 43.147499, 28.987318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987747, 43.383400, 28.885927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478580, 0.262045, -0.838029,
		-0.427808, -0.763887, -0.483173,
		-0.766773, 0.589753, -0.253476,
		37.757713, 43.560326, 28.809885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152847, 42.888325, 28.384396>,  <38.294456, 43.147499, 28.987318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152847, 42.888325, 28.384396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011154, 43.260967, 28.416943>,  <37.926136, 43.484554, 28.436470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011154, 43.260967, 28.416943>,  <38.152847, 42.888325, 28.384396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011154, 43.260967, 28.416943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436095, 0.241534, -0.866881,
		-0.827247, -0.271598, -0.491830,
		-0.354237, 0.931609, 0.081366,
		37.904884, 43.540451, 28.441353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782284, 42.995682, 27.716230>,  <38.152847, 42.888325, 28.384396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782284, 42.995682, 27.716230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888229, 43.348076, 27.873051>,  <37.951797, 43.559513, 27.967142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888229, 43.348076, 27.873051>,  <37.782284, 42.995682, 27.716230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888229, 43.348076, 27.873051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217271, 0.341592, -0.914390,
		-0.939489, 0.327372, -0.100937,
		0.264866, 0.880989, 0.392050,
		37.967690, 43.612373, 27.990665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326843, 43.515930, 27.340054>,  <37.782284, 42.995682, 27.716230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326843, 43.515930, 27.340054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634369, 43.708946, 27.507904>,  <37.818882, 43.824757, 27.608614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634369, 43.708946, 27.507904>,  <37.326843, 43.515930, 27.340054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634369, 43.708946, 27.507904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168916, 0.479653, -0.861046,
		-0.616765, 0.732862, 0.287253,
		0.768809, 0.482542, 0.419625,
		37.865013, 43.853710, 27.633791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186943, 44.205868, 27.317997>,  <37.326843, 43.515930, 27.340054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186943, 44.205868, 27.317997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585049, 44.185944, 27.351400>,  <37.823910, 44.173988, 27.371443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585049, 44.185944, 27.351400>,  <37.186943, 44.205868, 27.317997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585049, 44.185944, 27.351400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097233, 0.505794, -0.857157,
		0.000459, 0.861215, 0.508240,
		0.995261, -0.049811, 0.083506,
		37.883629, 44.171001, 27.376451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293819, 44.770290, 27.035774>,  <37.186943, 44.205868, 27.317997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293819, 44.770290, 27.035774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651402, 44.591526, 27.022392>,  <37.865952, 44.484268, 27.014362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651402, 44.591526, 27.022392>,  <37.293819, 44.770290, 27.035774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651402, 44.591526, 27.022392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252932, 0.564748, -0.785548,
		0.369960, 0.693783, 0.617896,
		0.893955, -0.446907, -0.033454,
		37.919586, 44.457455, 27.012356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867527, 45.303398, 26.954531>,  <37.293819, 44.770290, 27.035774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867527, 45.303398, 26.954531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020496, 44.952587, 26.838205>,  <38.112278, 44.742100, 26.768410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020496, 44.952587, 26.838205>,  <37.867527, 45.303398, 26.954531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020496, 44.952587, 26.838205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317261, 0.420242, -0.850142,
		0.867810, 0.232853, 0.438959,
		0.382427, -0.877027, -0.290815,
		38.135223, 44.689480, 26.750961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488510, 45.407280, 26.777809>,  <37.867527, 45.303398, 26.954531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488510, 45.407280, 26.777809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380970, 45.085068, 26.566587>,  <38.316444, 44.891739, 26.439856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380970, 45.085068, 26.566587>,  <38.488510, 45.407280, 26.777809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380970, 45.085068, 26.566587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412488, 0.399128, -0.818871,
		0.870387, -0.437968, 0.224967,
		-0.268849, -0.805531, -0.528053,
		38.300316, 44.843407, 26.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155281, 45.210537, 26.357468>,  <38.488510, 45.407280, 26.777809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155281, 45.210537, 26.357468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831329, 45.039112, 26.197250>,  <38.636959, 44.936256, 26.101120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831329, 45.039112, 26.197250>,  <39.155281, 45.210537, 26.357468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831329, 45.039112, 26.197250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413744, 0.066715, -0.907946,
		0.415834, -0.901046, 0.123284,
		-0.809876, -0.428562, -0.400545,
		38.588367, 44.910545, 26.077087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326576, 44.919304, 25.820810>,  <39.155281, 45.210537, 26.357468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326576, 44.919304, 25.820810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940041, 44.944523, 25.721045>,  <38.708118, 44.959656, 25.661184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940041, 44.944523, 25.721045>,  <39.326576, 44.919304, 25.820810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940041, 44.944523, 25.721045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256285, 0.151550, -0.954647,
		-0.022390, -0.986436, -0.162608,
		-0.966342, 0.063049, -0.249416,
		38.650139, 44.963436, 25.646219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337669, 44.769588, 25.137072>,  <39.326576, 44.919304, 25.820810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337669, 44.769588, 25.137072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975468, 44.934601, 25.176809>,  <38.758144, 45.033607, 25.200651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975468, 44.934601, 25.176809>,  <39.337669, 44.769588, 25.137072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975468, 44.934601, 25.176809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036843, 0.309674, -0.950129,
		-0.422725, -0.856690, -0.295612,
		-0.905508, 0.412535, 0.099345,
		38.703815, 45.058361, 25.206614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942509, 44.547871, 24.569098>,  <39.337669, 44.769588, 25.137072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942509, 44.547871, 24.569098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759636, 44.874260, 24.710613>,  <38.649914, 45.070095, 24.795523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759636, 44.874260, 24.710613>,  <38.942509, 44.547871, 24.569098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759636, 44.874260, 24.710613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180717, 0.304268, -0.935287,
		-0.870820, -0.491531, 0.008355,
		-0.457180, 0.815977, 0.353791,
		38.622482, 45.119053, 24.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469482, 44.339104, 24.252342>,  <38.942509, 44.547871, 24.569098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469482, 44.339104, 24.252342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750347, 44.097889, 24.100916>,  <39.918865, 43.953159, 24.010059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750347, 44.097889, 24.100916>,  <39.469482, 44.339104, 24.252342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750347, 44.097889, 24.100916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127091, -0.629294, 0.766705,
		-0.700579, -0.490242, -0.518509,
		0.702166, -0.603035, -0.378565,
		39.960999, 43.916977, 23.987347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185211, 43.622696, 24.359648>,  <39.469482, 44.339104, 24.252342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185211, 43.622696, 24.359648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570530, 43.570274, 24.265934>,  <39.801720, 43.538822, 24.209705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570530, 43.570274, 24.265934>,  <39.185211, 43.622696, 24.359648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570530, 43.570274, 24.265934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055401, -0.756904, 0.651174,
		-0.262668, -0.640252, -0.721861,
		0.963295, -0.131051, -0.234285,
		39.859520, 43.530960, 24.195648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227432, 42.957985, 24.427023>,  <39.185211, 43.622696, 24.359648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227432, 42.957985, 24.427023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611801, 43.068619, 24.422447>,  <39.842422, 43.134998, 24.419703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611801, 43.068619, 24.422447>,  <39.227432, 42.957985, 24.427023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611801, 43.068619, 24.422447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178646, -0.588030, 0.788864,
		0.211463, -0.760080, -0.614461,
		0.960921, 0.276586, -0.011439,
		39.900078, 43.151596, 24.419016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565098, 42.359165, 24.581112>,  <39.227432, 42.957985, 24.427023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565098, 42.359165, 24.581112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848122, 42.637379, 24.631056>,  <40.017937, 42.804306, 24.661022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848122, 42.637379, 24.631056>,  <39.565098, 42.359165, 24.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848122, 42.637379, 24.631056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344052, -0.493405, 0.798862,
		0.617243, -0.522284, -0.588414,
		0.707559, 0.695536, 0.124858,
		40.060390, 42.846039, 24.668512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243710, 42.005802, 24.644979>,  <39.565098, 42.359165, 24.581112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243710, 42.005802, 24.644979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253254, 42.364086, 24.822578>,  <40.258980, 42.579056, 24.929138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253254, 42.364086, 24.822578>,  <40.243710, 42.005802, 24.644979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253254, 42.364086, 24.822578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301134, -0.429935, 0.851161,
		0.953283, 0.113395, -0.279986,
		0.023859, 0.895711, 0.443996,
		40.260410, 42.632801, 24.955778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812607, 42.028973, 25.047546>,  <40.243710, 42.005802, 24.644979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812607, 42.028973, 25.047546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570797, 42.315838, 25.186239>,  <40.425709, 42.487957, 25.269455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570797, 42.315838, 25.186239>,  <40.812607, 42.028973, 25.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570797, 42.315838, 25.186239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139474, -0.333259, 0.932462,
		0.784279, 0.612059, 0.101439,
		-0.604527, 0.717163, 0.346734,
		40.389439, 42.530987, 25.290260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138687, 42.392994, 25.696720>,  <40.812607, 42.028973, 25.047546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138687, 42.392994, 25.696720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742474, 42.433701, 25.733555>,  <40.504745, 42.458126, 25.755655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742474, 42.433701, 25.733555>,  <41.138687, 42.392994, 25.696720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742474, 42.433701, 25.733555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079639, -0.120239, 0.989545,
		0.111779, 0.987515, 0.110996,
		-0.990537, 0.101771, 0.092085,
		40.445312, 42.464233, 25.761181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033802, 42.744144, 26.397106>,  <41.138687, 42.392994, 25.696720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033802, 42.744144, 26.397106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685284, 42.576332, 26.295259>,  <40.476173, 42.475643, 26.234152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685284, 42.576332, 26.295259>,  <41.033802, 42.744144, 26.397106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685284, 42.576332, 26.295259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195561, -0.179037, 0.964210,
		-0.450105, 0.889908, 0.073950,
		-0.871299, -0.419534, -0.254617,
		40.423893, 42.450470, 26.218874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555065, 43.001984, 26.927061>,  <41.033802, 42.744144, 26.397106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555065, 43.001984, 26.927061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392097, 42.675838, 26.762529>,  <40.294315, 42.480152, 26.663811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392097, 42.675838, 26.762529>,  <40.555065, 43.001984, 26.927061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392097, 42.675838, 26.762529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329907, -0.288583, 0.898822,
		-0.851568, 0.501901, -0.151418,
		-0.407423, -0.815362, -0.411329,
		40.269871, 42.431229, 26.639132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975651, 43.023399, 27.151533>,  <40.555065, 43.001984, 26.927061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975651, 43.023399, 27.151533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050289, 42.639923, 27.065651>,  <40.095074, 42.409840, 27.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050289, 42.639923, 27.065651>,  <39.975651, 43.023399, 27.151533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050289, 42.639923, 27.065651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296198, -0.263274, 0.918125,
		-0.936722, -0.107724, -0.333087,
		0.186597, -0.958688, -0.214707,
		40.106270, 42.352318, 27.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425716, 42.673145, 27.360313>,  <39.975651, 43.023399, 27.151533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425716, 42.673145, 27.360313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704647, 42.387188, 27.339674>,  <39.872005, 42.215614, 27.327290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704647, 42.387188, 27.339674>,  <39.425716, 42.673145, 27.360313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704647, 42.387188, 27.339674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154333, -0.220062, 0.963200,
		-0.699939, -0.663704, -0.263787,
		0.697329, -0.714892, -0.051598,
		39.913845, 42.172722, 27.324194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050659, 41.966206, 27.462936>,  <39.425716, 42.673145, 27.360313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050659, 41.966206, 27.462936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436005, 41.895088, 27.543253>,  <39.667213, 41.852417, 27.591442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436005, 41.895088, 27.543253>,  <39.050659, 41.966206, 27.462936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436005, 41.895088, 27.543253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258316, -0.413803, 0.872949,
		-0.072120, -0.892836, -0.444571,
		0.963365, -0.177797, 0.200790,
		39.725014, 41.841747, 27.603489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046398, 41.351452, 27.832275>,  <39.050659, 41.966206, 27.462936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046398, 41.351452, 27.832275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398823, 41.526699, 27.903585>,  <39.610279, 41.631847, 27.946371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398823, 41.526699, 27.903585>,  <39.046398, 41.351452, 27.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398823, 41.526699, 27.903585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057604, -0.274712, 0.959800,
		0.469480, -0.855913, -0.216801,
		0.881062, 0.438118, 0.178276,
		39.663143, 41.658134, 27.957067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454929, 40.809589, 27.980755>,  <39.046398, 41.351452, 27.832275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454929, 40.809589, 27.980755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634045, 41.128963, 28.141747>,  <39.741512, 41.320587, 28.238342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634045, 41.128963, 28.141747>,  <39.454929, 40.809589, 27.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634045, 41.128963, 28.141747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197116, -0.527204, 0.826560,
		0.872142, -0.290788, -0.393459,
		0.447787, 0.798435, 0.402479,
		39.768379, 41.368492, 28.262489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216370, 40.601803, 28.231916>,  <39.454929, 40.809589, 27.980755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216370, 40.601803, 28.231916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060261, 40.917713, 28.421206>,  <39.966595, 41.107258, 28.534779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060261, 40.917713, 28.421206>,  <40.216370, 40.601803, 28.231916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060261, 40.917713, 28.421206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153894, -0.450795, 0.879261,
		0.907747, 0.415978, 0.054391,
		-0.390272, 0.789776, 0.473224,
		39.943180, 41.154648, 28.563173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597279, 40.638550, 28.709564>,  <40.216370, 40.601803, 28.231916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597279, 40.638550, 28.709564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301105, 40.885193, 28.816561>,  <40.123402, 41.033176, 28.880758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301105, 40.885193, 28.816561>,  <40.597279, 40.638550, 28.709564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301105, 40.885193, 28.816561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005555, -0.403581, 0.914927,
		0.672103, 0.675959, 0.302251,
		-0.740436, 0.616604, 0.267493,
		40.078976, 41.070175, 28.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792999, 40.978481, 29.456469>,  <40.597279, 40.638550, 28.709564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792999, 40.978481, 29.456469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395119, 40.981514, 29.415442>,  <40.156391, 40.983334, 29.390825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395119, 40.981514, 29.415442>,  <40.792999, 40.978481, 29.456469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395119, 40.981514, 29.415442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092231, -0.507061, 0.856962,
		-0.045508, 0.861877, 0.505071,
		-0.994697, 0.007585, -0.102567,
		40.096710, 40.983788, 29.384672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552738, 41.235477, 30.165316>,  <40.792999, 40.978481, 29.456469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552738, 41.235477, 30.165316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239429, 41.062462, 29.986700>,  <40.051445, 40.958652, 29.879530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239429, 41.062462, 29.986700>,  <40.552738, 41.235477, 30.165316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239429, 41.062462, 29.986700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124572, -0.594509, 0.794381,
		-0.609076, 0.677839, 0.411777,
		-0.783268, -0.432542, -0.446541,
		40.004448, 40.932697, 29.852737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096542, 41.257790, 30.629374>,  <40.552738, 41.235477, 30.165316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096542, 41.257790, 30.629374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946266, 40.984676, 30.378719>,  <39.856102, 40.820808, 30.228327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946266, 40.984676, 30.378719>,  <40.096542, 41.257790, 30.629374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946266, 40.984676, 30.378719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331369, -0.532495, 0.778873,
		-0.865479, 0.500260, -0.026201,
		-0.375687, -0.682780, -0.626634,
		39.833561, 40.779842, 30.190729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470688, 41.117863, 30.842018>,  <40.096542, 41.257790, 30.629374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470688, 41.117863, 30.842018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594906, 40.810791, 30.617792>,  <39.669437, 40.626549, 30.483257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594906, 40.810791, 30.617792>,  <39.470688, 41.117863, 30.842018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594906, 40.810791, 30.617792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302577, -0.638880, 0.707304,
		-0.901115, -0.050037, -0.430684,
		0.310547, -0.767677, -0.560564,
		39.688068, 40.580486, 30.449623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979076, 40.778679, 30.985855>,  <39.470688, 41.117863, 30.842018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979076, 40.778679, 30.985855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220192, 40.494747, 30.840096>,  <39.364861, 40.324387, 30.752640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220192, 40.494747, 30.840096>,  <38.979076, 40.778679, 30.985855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220192, 40.494747, 30.840096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491813, -0.690160, 0.530848,
		-0.628305, -0.140774, -0.765125,
		0.602788, -0.709833, -0.364397,
		39.401028, 40.281796, 30.730776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565147, 40.118973, 30.641060>,  <38.979076, 40.778679, 30.985855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565147, 40.118973, 30.641060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933262, 40.026596, 30.767382>,  <39.154133, 39.971169, 30.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933262, 40.026596, 30.767382>,  <38.565147, 40.118973, 30.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933262, 40.026596, 30.767382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376205, -0.743975, 0.552241,
		0.107414, -0.627029, -0.771555,
		0.920289, -0.230945, 0.315805,
		39.209347, 39.957314, 30.862123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612305, 39.329758, 30.706841>,  <38.565147, 40.118973, 30.641060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612305, 39.329758, 30.706841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926125, 39.475601, 30.907459>,  <39.114414, 39.563107, 31.027830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926125, 39.475601, 30.907459>,  <38.612305, 39.329758, 30.706841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926125, 39.475601, 30.907459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258762, -0.542544, 0.799180,
		0.563496, -0.756776, -0.331306,
		0.784548, 0.364605, 0.501546,
		39.161488, 39.584984, 31.057922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955318, 38.830929, 30.868349>,  <38.612305, 39.329758, 30.706841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955318, 38.830929, 30.868349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045631, 39.105888, 31.144464>,  <39.099819, 39.270866, 31.310135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045631, 39.105888, 31.144464>,  <38.955318, 38.830929, 30.868349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045631, 39.105888, 31.144464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213545, -0.656431, 0.723531,
		0.950485, -0.310768, -0.001419,
		0.225782, 0.687402, 0.690291,
		39.113365, 39.312107, 31.351551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432255, 38.560822, 31.440908>,  <38.955318, 38.830929, 30.868349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432255, 38.560822, 31.440908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371758, 38.881935, 31.671614>,  <39.335461, 39.074604, 31.810038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371758, 38.881935, 31.671614>,  <39.432255, 38.560822, 31.440908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371758, 38.881935, 31.671614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046998, -0.588656, 0.807016,
		0.987379, 0.094949, 0.126760,
		-0.151243, 0.802788, 0.576764,
		39.326385, 39.122772, 31.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910740, 38.524929, 32.069805>,  <39.432255, 38.560822, 31.440908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910740, 38.524929, 32.069805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590717, 38.755535, 32.136185>,  <39.398705, 38.893898, 32.176014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590717, 38.755535, 32.136185>,  <39.910740, 38.524929, 32.069805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590717, 38.755535, 32.136185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223971, -0.543656, 0.808873,
		0.556545, 0.609978, 0.564079,
		-0.800059, 0.576511, 0.165952,
		39.350700, 38.928490, 32.185970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001499, 38.863010, 32.747501>,  <39.910740, 38.524929, 32.069805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001499, 38.863010, 32.747501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607185, 38.841503, 32.683826>,  <39.370598, 38.828598, 32.645622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607185, 38.841503, 32.683826>,  <40.001499, 38.863010, 32.747501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607185, 38.841503, 32.683826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115887, -0.468415, 0.875875,
		-0.121661, 0.881871, 0.455524,
		-0.985783, -0.053771, -0.159185,
		39.311451, 38.825371, 32.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833637, 38.959927, 33.396172>,  <40.001499, 38.863010, 32.747501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833637, 38.959927, 33.396172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513817, 38.797367, 33.219280>,  <39.321926, 38.699833, 33.113148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513817, 38.797367, 33.219280>,  <39.833637, 38.959927, 33.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513817, 38.797367, 33.219280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206876, -0.504895, 0.838023,
		-0.563848, 0.761526, 0.319614,
		-0.799549, -0.406397, -0.442226,
		39.273952, 38.675449, 33.086613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198429, 39.079304, 33.908123>,  <39.833637, 38.959927, 33.396172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198429, 39.079304, 33.908123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158386, 38.781876, 33.643673>,  <39.134361, 38.603420, 33.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158386, 38.781876, 33.643673>,  <39.198429, 39.079304, 33.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158386, 38.781876, 33.643673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152160, -0.645205, 0.748704,
		-0.983273, 0.175549, -0.048549,
		-0.100110, -0.743568, -0.661124,
		39.128353, 38.558804, 33.445335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593128, 38.696507, 34.187847>,  <39.198429, 39.079304, 33.908123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593128, 38.696507, 34.187847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816673, 38.478039, 33.938248>,  <38.950802, 38.346958, 33.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816673, 38.478039, 33.938248>,  <38.593128, 38.696507, 34.187847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816673, 38.478039, 33.938248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009553, -0.756662, 0.653736,
		-0.829205, -0.359388, -0.428088,
		0.558863, -0.546171, -0.623995,
		38.984333, 38.314186, 33.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336117, 38.013863, 34.337727>,  <38.593128, 38.696507, 34.187847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336117, 38.013863, 34.337727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682598, 37.955566, 34.146542>,  <38.890488, 37.920589, 34.031830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682598, 37.955566, 34.146542>,  <38.336117, 38.013863, 34.337727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682598, 37.955566, 34.146542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060691, -0.918758, 0.390128,
		-0.495989, -0.366939, -0.786988,
		0.866205, -0.145736, -0.477964,
		38.942459, 37.911846, 34.003151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368088, 37.375092, 34.267357>,  <38.336117, 38.013863, 34.337727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368088, 37.375092, 34.267357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752140, 37.468910, 34.206520>,  <38.982571, 37.525200, 34.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752140, 37.468910, 34.206520>,  <38.368088, 37.375092, 34.267357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752140, 37.468910, 34.206520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278858, -0.841661, 0.462434,
		-0.019552, -0.486411, -0.873511,
		0.960133, 0.234544, -0.152095,
		39.040180, 37.539272, 34.160892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760300, 36.732403, 34.063450>,  <38.368088, 37.375092, 34.267357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760300, 36.732403, 34.063450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054012, 36.979832, 34.175308>,  <39.230240, 37.128288, 34.242424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054012, 36.979832, 34.175308>,  <38.760300, 36.732403, 34.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054012, 36.979832, 34.175308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463479, -0.757804, 0.459261,
		0.496003, -0.207616, -0.843135,
		0.734281, 0.618570, 0.279648,
		39.274296, 37.165401, 34.259201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408527, 36.361183, 33.955288>,  <38.760300, 36.732403, 34.063450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408527, 36.361183, 33.955288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474369, 36.640102, 34.234337>,  <39.513874, 36.807453, 34.401768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474369, 36.640102, 34.234337>,  <39.408527, 36.361183, 33.955288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474369, 36.640102, 34.234337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430210, -0.687205, 0.585379,
		0.887595, 0.203771, -0.413100,
		0.164601, 0.697300, 0.697625,
		39.523750, 36.849293, 34.443623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965660, 36.092781, 34.197132>,  <39.408527, 36.361183, 33.955288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965660, 36.092781, 34.197132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848595, 36.336216, 34.492149>,  <39.778355, 36.482277, 34.669159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848595, 36.336216, 34.492149>,  <39.965660, 36.092781, 34.197132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848595, 36.336216, 34.492149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280801, -0.682607, 0.674684,
		0.914057, 0.404557, 0.028880,
		-0.292662, 0.608590, 0.737542,
		39.760796, 36.518791, 34.713413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492878, 36.053806, 34.613998>,  <39.965660, 36.092781, 34.197132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492878, 36.053806, 34.613998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181965, 36.186108, 34.828075>,  <39.995415, 36.265488, 34.956520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181965, 36.186108, 34.828075>,  <40.492878, 36.053806, 34.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181965, 36.186108, 34.828075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221367, -0.652483, 0.724750,
		0.588919, 0.681810, 0.433946,
		-0.777285, 0.330758, 0.535190,
		39.948780, 36.285336, 34.988632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737610, 35.951694, 35.282169>,  <40.492878, 36.053806, 34.613998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737610, 35.951694, 35.282169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343529, 36.007851, 35.321503>,  <40.107082, 36.041546, 35.345104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343529, 36.007851, 35.321503>,  <40.737610, 35.951694, 35.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343529, 36.007851, 35.321503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009310, -0.529025, 0.848555,
		0.171152, 0.836913, 0.519889,
		-0.985201, 0.140392, 0.098335,
		40.047970, 36.049969, 35.351002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696323, 36.032902, 35.871502>,  <40.737610, 35.951694, 35.282169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696323, 36.032902, 35.871502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324436, 35.921642, 35.774952>,  <40.101303, 35.854885, 35.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324436, 35.921642, 35.774952>,  <40.696323, 36.032902, 35.871502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324436, 35.921642, 35.774952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004393, -0.646985, 0.762490,
		-0.368252, 0.709960, 0.600290,
		-0.929716, -0.278151, -0.241372,
		40.045521, 35.838196, 35.702541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447758, 35.927471, 36.466908>,  <40.696323, 36.032902, 35.871502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447758, 35.927471, 36.466908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190311, 35.722294, 36.239700>,  <40.035843, 35.599186, 36.103378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190311, 35.722294, 36.239700>,  <40.447758, 35.927471, 36.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190311, 35.722294, 36.239700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122550, -0.663520, 0.738053,
		-0.755472, 0.544635, 0.364191,
		-0.643618, -0.512946, -0.568016,
		39.997227, 35.568409, 36.069294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833385, 35.797287, 36.867756>,  <40.447758, 35.927471, 36.466908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833385, 35.797287, 36.867756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825916, 35.513168, 36.586296>,  <39.821434, 35.342697, 36.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825916, 35.513168, 36.586296>,  <39.833385, 35.797287, 36.867756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825916, 35.513168, 36.586296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007704, -0.703854, 0.710302,
		-0.999796, 0.007841, 0.018614,
		-0.018671, -0.710301, -0.703650,
		39.820316, 35.300079, 36.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288773, 35.286320, 36.996433>,  <39.833385, 35.797287, 36.867756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288773, 35.286320, 36.996433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553131, 35.096561, 36.763824>,  <39.711746, 34.982708, 36.624260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553131, 35.096561, 36.763824>,  <39.288773, 35.286320, 36.996433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553131, 35.096561, 36.763824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097463, -0.714052, 0.693275,
		-0.744120, -0.514861, -0.425680,
		0.660899, -0.474392, -0.581520,
		39.751400, 34.954243, 36.589367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134098, 34.569805, 37.025692>,  <39.288773, 35.286320, 36.996433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134098, 34.569805, 37.025692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510303, 34.581989, 36.890331>,  <39.736027, 34.589302, 36.809116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510303, 34.581989, 36.890331>,  <39.134098, 34.569805, 37.025692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510303, 34.581989, 36.890331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209867, -0.835349, 0.508083,
		-0.267202, -0.548876, -0.792047,
		0.940510, 0.030464, -0.338398,
		39.792458, 34.591129, 36.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234016, 33.899002, 36.725609>,  <39.134098, 34.569805, 37.025692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234016, 33.899002, 36.725609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571186, 34.078880, 36.843765>,  <39.773487, 34.186806, 36.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571186, 34.078880, 36.843765>,  <39.234016, 33.899002, 36.725609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571186, 34.078880, 36.843765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348194, -0.874485, 0.337693,
		0.410177, -0.181794, -0.893703,
		0.842921, 0.449696, 0.295394,
		39.824062, 34.213791, 36.932384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709473, 33.426113, 36.535172>,  <39.234016, 33.899002, 36.725609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709473, 33.426113, 36.535172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882248, 33.644833, 36.822067>,  <39.985912, 33.776066, 36.994205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882248, 33.644833, 36.822067>,  <39.709473, 33.426113, 36.535172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882248, 33.644833, 36.822067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297710, -0.837123, 0.458906,
		0.851349, 0.015309, -0.524377,
		0.431942, 0.546801, 0.717241,
		40.011829, 33.808872, 37.037239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271061, 32.975445, 36.681377>,  <39.709473, 33.426113, 36.535172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271061, 32.975445, 36.681377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288586, 33.239189, 36.981598>,  <40.299099, 33.397438, 37.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288586, 33.239189, 36.981598>,  <40.271061, 32.975445, 36.681377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288586, 33.239189, 36.981598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323963, -0.720049, 0.613660,
		0.945055, 0.216267, -0.245152,
		0.043808, 0.659362, 0.750548,
		40.301727, 33.436996, 37.206760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908146, 32.901299, 37.078857>,  <40.271061, 32.975445, 36.681377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908146, 32.901299, 37.078857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687771, 33.116962, 37.333660>,  <40.555546, 33.246361, 37.486542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687771, 33.116962, 37.333660>,  <40.908146, 32.901299, 37.078857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687771, 33.116962, 37.333660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272872, -0.604961, 0.748039,
		0.788672, 0.585947, 0.186178,
		-0.550942, 0.539155, 0.637005,
		40.522488, 33.278709, 37.524761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383778, 32.908760, 37.708099>,  <40.908146, 32.901299, 37.078857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383778, 32.908760, 37.708099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002361, 32.993809, 37.793465>,  <40.773510, 33.044838, 37.844685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002361, 32.993809, 37.793465>,  <41.383778, 32.908760, 37.708099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002361, 32.993809, 37.793465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027906, -0.643039, 0.765325,
		0.299958, 0.735726, 0.607233,
		-0.953544, 0.212620, 0.213416,
		40.716297, 33.057594, 37.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326809, 33.226646, 38.453072>,  <41.383778, 32.908760, 37.708099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326809, 33.226646, 38.453072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000393, 33.041447, 38.314678>,  <40.804543, 32.930328, 38.231644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000393, 33.041447, 38.314678>,  <41.326809, 33.226646, 38.453072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000393, 33.041447, 38.314678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141324, -0.420587, 0.896177,
		-0.560445, 0.780216, 0.277785,
		-0.816045, -0.463001, -0.345979,
		40.755581, 32.902546, 38.210884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019020, 33.137310, 39.170059>,  <41.326809, 33.226646, 38.453072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019020, 33.137310, 39.170059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826431, 32.844589, 38.977123>,  <40.710876, 32.668957, 38.861362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826431, 32.844589, 38.977123>,  <41.019020, 33.137310, 39.170059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826431, 32.844589, 38.977123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222584, -0.430193, 0.874866,
		-0.847726, 0.528586, 0.044239,
		-0.481473, -0.731800, -0.482341,
		40.681988, 32.625050, 38.832420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328674, 33.094494, 39.319672>,  <41.019020, 33.137310, 39.170059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328674, 33.094494, 39.319672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438900, 32.723175, 39.219803>,  <40.505035, 32.500385, 39.159882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438900, 32.723175, 39.219803>,  <40.328674, 33.094494, 39.319672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438900, 32.723175, 39.219803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209050, -0.311383, 0.927005,
		-0.938278, -0.203250, -0.279865,
		0.275559, -0.928294, -0.249675,
		40.521568, 32.444687, 39.144901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929310, 32.708065, 39.657364>,  <40.328674, 33.094494, 39.319672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929310, 32.708065, 39.657364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195240, 32.429070, 39.550400>,  <40.354797, 32.261673, 39.486221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195240, 32.429070, 39.550400>,  <39.929310, 32.708065, 39.657364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195240, 32.429070, 39.550400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097536, -0.435972, 0.894659,
		-0.740602, -0.568712, -0.357877,
		0.664828, -0.697492, -0.267411,
		40.394688, 32.219822, 39.470177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682648, 32.072464, 39.798748>,  <39.929310, 32.708065, 39.657364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682648, 32.072464, 39.798748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074112, 31.996088, 39.768402>,  <40.308990, 31.950262, 39.750195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074112, 31.996088, 39.768402>,  <39.682648, 32.072464, 39.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074112, 31.996088, 39.768402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055925, -0.602864, 0.795881,
		-0.197705, -0.774658, -0.600681,
		0.978665, -0.190943, -0.075867,
		40.367710, 31.938805, 39.745644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717983, 31.442738, 40.193314>,  <39.682648, 32.072464, 39.798748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717983, 31.442738, 40.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101337, 31.522667, 40.111755>,  <40.331348, 31.570623, 40.062820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101337, 31.522667, 40.111755>,  <39.717983, 31.442738, 40.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101337, 31.522667, 40.111755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281024, -0.534613, 0.797004,
		0.050257, -0.821134, -0.568519,
		0.958384, 0.199822, -0.203891,
		40.388851, 31.582613, 40.050587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078598, 30.798239, 40.101086>,  <39.717983, 31.442738, 40.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078598, 30.798239, 40.101086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279770, 31.111332, 40.247726>,  <40.400475, 31.299187, 40.335709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279770, 31.111332, 40.247726>,  <40.078598, 30.798239, 40.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279770, 31.111332, 40.247726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140512, -0.492544, 0.858870,
		0.852830, -0.380438, -0.357698,
		0.502929, 0.782731, 0.366600,
		40.430649, 31.346151, 40.357708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716690, 30.541506, 40.352844>,  <40.078598, 30.798239, 40.101086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716690, 30.541506, 40.352844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720875, 30.890848, 40.547630>,  <40.723385, 31.100454, 40.664501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720875, 30.890848, 40.547630>,  <40.716690, 30.541506, 40.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720875, 30.890848, 40.547630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127590, -0.484181, 0.865615,
		0.991772, 0.053076, -0.116497,
		0.010463, 0.873356, 0.486969,
		40.724014, 31.152855, 40.693722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259949, 30.607960, 40.759655>,  <40.716690, 30.541506, 40.352844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259949, 30.607960, 40.759655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058353, 30.888588, 40.961166>,  <40.937397, 31.056965, 41.082073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058353, 30.888588, 40.961166>,  <41.259949, 30.607960, 40.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058353, 30.888588, 40.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299008, -0.405479, 0.863818,
		0.810300, 0.585990, -0.005416,
		-0.503993, 0.701571, 0.503775,
		40.907154, 31.099060, 41.112301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734901, 30.857002, 41.246563>,  <41.259949, 30.607960, 40.759655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734901, 30.857002, 41.246563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360394, 30.931040, 41.365990>,  <41.135689, 30.975462, 41.437645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360394, 30.931040, 41.365990>,  <41.734901, 30.857002, 41.246563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360394, 30.931040, 41.365990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201256, -0.413988, 0.887756,
		0.287921, 0.891266, 0.350352,
		-0.936268, 0.185094, 0.298568,
		41.079514, 30.986568, 41.455559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742657, 31.135269, 41.982582>,  <41.734901, 30.857002, 41.246563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742657, 31.135269, 41.982582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365730, 31.014114, 41.925602>,  <41.139572, 30.941422, 41.891415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365730, 31.014114, 41.925602>,  <41.742657, 31.135269, 41.982582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365730, 31.014114, 41.925602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030734, -0.345502, 0.937914,
		-0.333298, 0.888194, 0.316265,
		-0.942320, -0.302885, -0.142453,
		41.083035, 30.923248, 41.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403259, 31.268822, 42.635971>,  <41.742657, 31.135269, 41.982582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403259, 31.268822, 42.635971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161770, 31.003729, 42.458748>,  <41.016876, 30.844673, 42.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161770, 31.003729, 42.458748>,  <41.403259, 31.268822, 42.635971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161770, 31.003729, 42.458748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214129, -0.400533, 0.890911,
		-0.767894, 0.632739, 0.099903,
		-0.603728, -0.662733, -0.443055,
		40.980652, 30.804909, 42.325832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858261, 31.230976, 43.016468>,  <41.403259, 31.268822, 42.635971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858261, 31.230976, 43.016468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918682, 30.886753, 42.821892>,  <40.954937, 30.680220, 42.705147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918682, 30.886753, 42.821892>,  <40.858261, 31.230976, 43.016468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918682, 30.886753, 42.821892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084163, -0.479106, 0.873712,
		-0.984936, -0.172919, 0.000056,
		0.151055, -0.860556, -0.486443,
		40.963997, 30.628586, 42.675961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835426, 30.699636, 43.536114>,  <40.858261, 31.230976, 43.016468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835426, 30.699636, 43.536114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939232, 30.490608, 43.211258>,  <41.001514, 30.365192, 43.016346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939232, 30.490608, 43.211258>,  <40.835426, 30.699636, 43.536114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939232, 30.490608, 43.211258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022525, -0.837449, 0.546052,
		-0.965475, -0.160004, -0.205563,
		0.259518, -0.522569, -0.812140,
		41.017086, 30.333838, 42.967617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321716, 30.123922, 43.511951>,  <40.835426, 30.699636, 43.536114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321716, 30.123922, 43.511951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688511, 30.046757, 43.372280>,  <40.908588, 30.000458, 43.288475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688511, 30.046757, 43.372280>,  <40.321716, 30.123922, 43.511951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688511, 30.046757, 43.372280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021179, -0.850521, 0.525514,
		-0.398366, -0.489282, -0.775827,
		0.916982, -0.192916, -0.349182,
		40.963604, 29.988882, 43.267525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881577, 29.553049, 43.712826>,  <40.321716, 30.123922, 43.511951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881577, 29.553049, 43.712826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623634, 29.497194, 43.412251>,  <40.468868, 29.463682, 43.231903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623634, 29.497194, 43.412251>,  <40.881577, 29.553049, 43.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623634, 29.497194, 43.412251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579740, 0.551321, -0.599956,
		0.498060, -0.822525, -0.274570,
		-0.644856, -0.139635, -0.751441,
		40.430180, 29.455303, 43.186817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271919, 29.441654, 43.098640>,  <40.881577, 29.553049, 43.712826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271919, 29.441654, 43.098640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902954, 29.588255, 43.049931>,  <40.681576, 29.676216, 43.020702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902954, 29.588255, 43.049931>,  <41.271919, 29.441654, 43.098640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902954, 29.588255, 43.049931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340649, 0.623531, -0.703681,
		-0.181968, -0.690568, -0.700002,
		-0.922413, 0.366502, -0.121779,
		40.626228, 29.698206, 43.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366657, 29.644527, 42.419559>,  <41.271919, 29.441654, 43.098640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366657, 29.644527, 42.419559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015522, 29.801849, 42.528893>,  <40.804840, 29.896242, 42.594494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015522, 29.801849, 42.528893>,  <41.366657, 29.644527, 42.419559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015522, 29.801849, 42.528893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119812, 0.732864, -0.669743,
		-0.463726, -0.555179, -0.690459,
		-0.877840, 0.393303, 0.273331,
		40.752171, 29.919840, 42.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956028, 29.725967, 41.802120>,  <41.366657, 29.644527, 42.419559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956028, 29.725967, 41.802120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837914, 29.983629, 42.084358>,  <40.767044, 30.138227, 42.253700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837914, 29.983629, 42.084358>,  <40.956028, 29.725967, 41.802120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837914, 29.983629, 42.084358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068261, 0.750867, -0.656917,
		-0.952968, -0.145812, -0.265690,
		-0.295284, 0.644157, 0.705598,
		40.749329, 30.176876, 42.296040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282673, 29.964128, 41.737503>,  <40.956028, 29.725967, 41.802120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282673, 29.964128, 41.737503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490963, 30.237808, 41.941742>,  <40.615936, 30.402016, 42.064285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490963, 30.237808, 41.941742>,  <40.282673, 29.964128, 41.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490963, 30.237808, 41.941742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066581, 0.628814, -0.774700,
		-0.851121, 0.369413, 0.372997,
		0.520730, 0.684198, 0.510602,
		40.647182, 30.443068, 42.094921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843864, 30.594593, 41.955788>,  <40.282673, 29.964128, 41.737503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843864, 30.594593, 41.955788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231583, 30.667604, 41.889881>,  <40.464214, 30.711412, 41.850338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231583, 30.667604, 41.889881>,  <39.843864, 30.594593, 41.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231583, 30.667604, 41.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238838, 0.539430, -0.807448,
		-0.058501, 0.822009, 0.566462,
		0.969296, 0.182530, -0.164770,
		40.522373, 30.722363, 41.840450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825272, 31.273371, 41.721107>,  <39.843864, 30.594593, 41.955788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825272, 31.273371, 41.721107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201920, 31.159748, 41.648815>,  <40.427910, 31.091576, 41.605438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201920, 31.159748, 41.648815>,  <39.825272, 31.273371, 41.721107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201920, 31.159748, 41.648815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004409, 0.526361, -0.850250,
		0.336647, 0.801409, 0.494380,
		0.941620, -0.284055, -0.180731,
		40.484406, 31.074532, 41.594597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152481, 31.924997, 41.605957>,  <39.825272, 31.273371, 41.721107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152481, 31.924997, 41.605957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365086, 31.624582, 41.449272>,  <40.492649, 31.444334, 41.355263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365086, 31.624582, 41.449272>,  <40.152481, 31.924997, 41.605957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365086, 31.624582, 41.449272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129019, 0.528828, -0.838865,
		0.837168, 0.395328, 0.377976,
		0.531512, -0.751037, -0.391713,
		40.524540, 31.399271, 41.331757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709915, 32.288670, 41.356869>,  <40.152481, 31.924997, 41.605957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709915, 32.288670, 41.356869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710865, 31.945013, 41.152172>,  <40.711433, 31.738819, 41.029354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710865, 31.945013, 41.152172>,  <40.709915, 32.288670, 41.356869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710865, 31.945013, 41.152172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298152, 0.489075, -0.819702,
		0.954516, -0.150629, 0.257315,
		0.002375, -0.859137, -0.511739,
		40.711578, 31.687271, 40.998650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213196, 32.277466, 40.794224>,  <40.709915, 32.288670, 41.356869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213196, 32.277466, 40.794224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963776, 31.991905, 40.666775>,  <40.814125, 31.820568, 40.590305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963776, 31.991905, 40.666775>,  <41.213196, 32.277466, 40.794224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963776, 31.991905, 40.666775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177143, 0.267941, -0.947010,
		0.761449, -0.646951, -0.040611,
		-0.623551, -0.713906, -0.318626,
		40.776711, 31.777733, 40.571186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629097, 31.855530, 40.276024>,  <41.213196, 32.277466, 40.794224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629097, 31.855530, 40.276024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237091, 31.800903, 40.218155>,  <41.001888, 31.768127, 40.183434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237091, 31.800903, 40.218155>,  <41.629097, 31.855530, 40.276024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237091, 31.800903, 40.218155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143549, 0.018074, -0.989478,
		0.137747, -0.990466, 0.001892,
		-0.980010, -0.136569, -0.144670,
		40.943089, 31.759933, 40.174755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577507, 31.479223, 39.632027>,  <41.629097, 31.855530, 40.276024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577507, 31.479223, 39.632027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198647, 31.603710, 39.663132>,  <40.971329, 31.678402, 39.681793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198647, 31.603710, 39.663132>,  <41.577507, 31.479223, 39.632027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198647, 31.603710, 39.663132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089891, -0.024811, -0.995642,
		-0.307933, -0.950014, 0.051476,
		-0.947152, 0.311219, 0.077758,
		40.914501, 31.697075, 39.686459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121693, 31.079021, 39.156250>,  <41.577507, 31.479223, 39.632027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121693, 31.079021, 39.156250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956020, 31.434088, 39.236752>,  <40.856617, 31.647127, 39.285053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956020, 31.434088, 39.236752>,  <41.121693, 31.079021, 39.156250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956020, 31.434088, 39.236752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000302, 0.221240, -0.975219,
		-0.910194, -0.403858, -0.091902,
		-0.414183, 0.887666, 0.201250,
		40.831764, 31.700388, 39.297127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746113, 31.274397, 38.591496>,  <41.121693, 31.079021, 39.156250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746113, 31.274397, 38.591496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694931, 31.629366, 38.768631>,  <40.664223, 31.842348, 38.874912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694931, 31.629366, 38.768631>,  <40.746113, 31.274397, 38.591496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694931, 31.629366, 38.768631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306443, 0.389287, -0.868648,
		-0.943250, -0.246849, 0.222135,
		-0.127951, 0.887424, 0.442840,
		40.656548, 31.895594, 38.901482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288193, 31.588453, 38.162746>,  <40.746113, 31.274397, 38.591496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288193, 31.588453, 38.162746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412380, 31.905262, 38.373009>,  <40.486893, 32.095348, 38.499168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412380, 31.905262, 38.373009>,  <40.288193, 31.588453, 38.162746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412380, 31.905262, 38.373009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227004, 0.598758, -0.768087,
		-0.923082, 0.119139, 0.365686,
		0.310466, 0.792020, 0.525658,
		40.505520, 32.142868, 38.530704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844372, 31.953871, 37.834278>,  <40.288193, 31.588453, 38.162746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844372, 31.953871, 37.834278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084648, 32.193424, 38.046131>,  <40.228813, 32.337158, 38.173244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084648, 32.193424, 38.046131>,  <39.844372, 31.953871, 37.834278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084648, 32.193424, 38.046131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141422, 0.731618, -0.666884,
		-0.786877, 0.325687, 0.524169,
		0.600687, 0.598884, 0.529634,
		40.264854, 32.373089, 38.205021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559093, 32.672611, 37.759769>,  <39.844372, 31.953871, 37.834278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559093, 32.672611, 37.759769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920902, 32.735188, 37.918449>,  <40.137985, 32.772732, 38.013657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920902, 32.735188, 37.918449>,  <39.559093, 32.672611, 37.759769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920902, 32.735188, 37.918449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036637, 0.898329, -0.437794,
		-0.424858, 0.410527, 0.806823,
		0.904519, 0.156440, 0.396702,
		40.192257, 32.782120, 38.037460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491779, 33.276634, 38.184132>,  <39.559093, 32.672611, 37.759769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491779, 33.276634, 38.184132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876652, 33.224705, 38.088333>,  <40.107574, 33.193546, 38.030853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876652, 33.224705, 38.088333>,  <39.491779, 33.276634, 38.184132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876652, 33.224705, 38.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003848, 0.872586, -0.488445,
		0.272396, 0.470892, 0.839084,
		0.962178, -0.129821, -0.239501,
		40.165306, 33.185757, 38.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842541, 33.957699, 38.343338>,  <39.491779, 33.276634, 38.184132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842541, 33.957699, 38.343338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092957, 33.765881, 38.097378>,  <40.243206, 33.650787, 37.949802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092957, 33.765881, 38.097378>,  <39.842541, 33.957699, 38.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092957, 33.765881, 38.097378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054284, 0.759835, -0.647846,
		0.777896, 0.438959, 0.449658,
		0.626044, -0.479547, -0.614901,
		40.280769, 33.622017, 37.912907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252625, 34.419727, 38.063396>,  <39.842541, 33.957699, 38.343338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252625, 34.419727, 38.063396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266273, 34.116276, 37.803143>,  <40.274464, 33.934204, 37.646992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266273, 34.116276, 37.803143>,  <40.252625, 34.419727, 38.063396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266273, 34.116276, 37.803143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016061, 0.651345, -0.758611,
		0.999289, 0.015433, 0.034407,
		0.034118, -0.758624, -0.650634,
		40.276508, 33.888687, 37.607952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775429, 34.612984, 37.736080>,  <40.252625, 34.419727, 38.063396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775429, 34.612984, 37.736080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578129, 34.344601, 37.514622>,  <40.459747, 34.183571, 37.381748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578129, 34.344601, 37.514622>,  <40.775429, 34.612984, 37.736080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578129, 34.344601, 37.514622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077619, 0.599971, -0.796247,
		0.866417, -0.435723, -0.243857,
		-0.493251, -0.670954, -0.553646,
		40.430153, 34.143314, 37.348530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064102, 34.615196, 37.084641>,  <40.775429, 34.612984, 37.736080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064102, 34.615196, 37.084641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700359, 34.460529, 37.023235>,  <40.482113, 34.367729, 36.986393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700359, 34.460529, 37.023235>,  <41.064102, 34.615196, 37.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700359, 34.460529, 37.023235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069309, 0.504644, -0.860541,
		0.410212, -0.771895, -0.485699,
		-0.909353, -0.386667, -0.153511,
		40.427555, 34.344528, 36.977180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956985, 34.486561, 36.328201>,  <41.064102, 34.615196, 37.084641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956985, 34.486561, 36.328201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576740, 34.508476, 36.450397>,  <40.348591, 34.521626, 36.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576740, 34.508476, 36.450397>,  <40.956985, 34.486561, 36.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576740, 34.508476, 36.450397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212003, 0.604254, -0.768070,
		-0.226673, -0.794906, -0.562799,
		-0.950618, 0.054786, 0.305491,
		40.291553, 34.524914, 36.542046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544640, 34.454174, 35.680527>,  <40.956985, 34.486561, 36.328201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544640, 34.454174, 35.680527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326767, 34.614925, 35.974960>,  <40.196045, 34.711376, 36.151619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326767, 34.614925, 35.974960>,  <40.544640, 34.454174, 35.680527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326767, 34.614925, 35.974960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315940, 0.714709, -0.623998,
		-0.776857, -0.572437, -0.262317,
		-0.544679, 0.401880, 0.736082,
		40.163364, 34.735489, 36.195786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354084, 33.785439, 35.391731>,  <40.544640, 34.454174, 35.680527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354084, 33.785439, 35.391731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234203, 33.867268, 35.018993>,  <40.162273, 33.916363, 34.795353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234203, 33.867268, 35.018993>,  <40.354084, 33.785439, 35.391731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234203, 33.867268, 35.018993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923863, -0.181456, -0.336972,
		-0.238023, -0.961886, -0.134612,
		-0.299702, 0.204571, -0.931842,
		40.144291, 33.928638, 34.739441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647655, 33.281254, 34.877415>,  <40.354084, 33.785439, 35.391731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647655, 33.281254, 34.877415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569843, 33.630764, 34.699127>,  <40.523155, 33.840469, 34.592155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569843, 33.630764, 34.699127>,  <40.647655, 33.281254, 34.877415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569843, 33.630764, 34.699127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918644, 0.002985, -0.395074,
		-0.343878, -0.486312, -0.803274,
		-0.194527, 0.873780, -0.445721,
		40.511486, 33.892899, 34.565411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849842, 33.321316, 34.060726>,  <40.647655, 33.281254, 34.877415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849842, 33.321316, 34.060726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845535, 33.678562, 34.240608>,  <40.842953, 33.892910, 34.348537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845535, 33.678562, 34.240608>,  <40.849842, 33.321316, 34.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845535, 33.678562, 34.240608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931529, 0.172450, -0.320181,
		-0.363509, 0.415464, -0.833817,
		-0.010768, 0.893113, 0.449703,
		40.842304, 33.946495, 34.375519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989059, 33.970997, 33.599476>,  <40.849842, 33.321316, 34.060726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989059, 33.970997, 33.599476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130291, 34.001003, 33.972507>,  <41.215031, 34.019009, 34.196327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130291, 34.001003, 33.972507>,  <40.989059, 33.970997, 33.599476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130291, 34.001003, 33.972507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904849, 0.226044, -0.360765,
		-0.237869, 0.971224, 0.011932,
		0.353081, 0.075018, 0.932580,
		41.236214, 34.023510, 34.252281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315884, 34.631096, 33.774250>,  <40.989059, 33.970997, 33.599476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315884, 34.631096, 33.774250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476704, 34.334408, 33.988987>,  <41.573196, 34.156395, 34.117828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476704, 34.334408, 33.988987>,  <41.315884, 34.631096, 33.774250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476704, 34.334408, 33.988987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886667, 0.169129, -0.430368,
		0.228419, 0.649030, 0.725662,
		0.402052, -0.741725, 0.536842,
		41.597321, 34.111889, 34.150040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750362, 34.778484, 34.313862>,  <41.315884, 34.631096, 33.774250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750362, 34.778484, 34.313862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881935, 34.436810, 34.152779>,  <41.960880, 34.231804, 34.056129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881935, 34.436810, 34.152779>,  <41.750362, 34.778484, 34.313862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881935, 34.436810, 34.152779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904609, 0.407415, -0.125283,
		0.271083, -0.323080, 0.906716,
		0.328933, -0.854186, -0.402704,
		41.980614, 34.180553, 34.031967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189671, 34.283329, 34.745461>,  <41.750362, 34.778484, 34.313862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189671, 34.283329, 34.745461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290726, 34.266186, 34.358814>,  <42.351360, 34.255898, 34.126827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290726, 34.266186, 34.358814>,  <42.189671, 34.283329, 34.745461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290726, 34.266186, 34.358814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871044, 0.445026, 0.207926,
		0.421256, -0.894491, 0.149764,
		0.252637, -0.042861, -0.966612,
		42.366516, 34.253326, 34.068832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938492, 34.059319, 34.498619>,  <42.189671, 34.283329, 34.745461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938492, 34.059319, 34.498619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814064, 34.354057, 34.258522>,  <42.739407, 34.530903, 34.114464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814064, 34.354057, 34.258522>,  <42.938492, 34.059319, 34.498619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814064, 34.354057, 34.258522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819600, 0.527725, 0.223075,
		0.481133, -0.422562, -0.768083,
		-0.311074, 0.736849, -0.600238,
		42.720741, 34.575111, 34.078449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421436, 34.336365, 33.905689>,  <42.938492, 34.059319, 34.498619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421436, 34.336365, 33.905689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191612, 34.635639, 34.038414>,  <43.053719, 34.815205, 34.118050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191612, 34.635639, 34.038414>,  <43.421436, 34.336365, 33.905689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191612, 34.635639, 34.038414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817271, 0.502607, 0.281878,
		0.044127, 0.433134, -0.900249,
		-0.574562, 0.748186, 0.331809,
		43.019245, 34.860096, 34.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612526, 34.830593, 33.433254>,  <43.421436, 34.336365, 33.905689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612526, 34.830593, 33.433254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511581, 34.930004, 33.807323>,  <43.451015, 34.989651, 34.031765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511581, 34.930004, 33.807323>,  <43.612526, 34.830593, 33.433254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511581, 34.930004, 33.807323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918210, 0.366429, 0.150400,
		-0.305296, 0.896641, -0.320669,
		-0.252358, 0.248525, 0.935174,
		43.435875, 35.004562, 34.087875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641266, 35.616760, 33.556755>,  <43.612526, 34.830593, 33.433254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641266, 35.616760, 33.556755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717545, 35.361641, 33.855244>,  <43.763313, 35.208569, 34.034336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717545, 35.361641, 33.855244>,  <43.641266, 35.616760, 33.556755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717545, 35.361641, 33.855244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872550, 0.458422, 0.168837,
		-0.449768, 0.618916, 0.643935,
		0.190698, -0.637803, 0.746219,
		43.774754, 35.170300, 34.079109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318066, 35.770374, 33.418720>,  <43.641266, 35.616760, 33.556755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318066, 35.770374, 33.418720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699707, 35.886600, 33.447735>,  <44.928692, 35.956337, 33.465141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699707, 35.886600, 33.447735>,  <44.318066, 35.770374, 33.418720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699707, 35.886600, 33.447735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203706, -0.807181, 0.554042,
		0.219534, -0.513837, -0.829323,
		0.954101, 0.290569, 0.072532,
		44.985939, 35.973770, 33.469494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811897, 35.288380, 33.264828>,  <44.318066, 35.770374, 33.418720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811897, 35.288380, 33.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982014, 35.543148, 33.522030>,  <45.084084, 35.696011, 33.676350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982014, 35.543148, 33.522030>,  <44.811897, 35.288380, 33.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982014, 35.543148, 33.522030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292720, -0.769074, 0.568190,
		0.856411, -0.053427, -0.513522,
		0.425293, 0.636923, 0.643004,
		45.109600, 35.734226, 33.714931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557720, 35.162544, 33.293137>,  <44.811897, 35.288380, 33.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557720, 35.162544, 33.293137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417072, 35.267941, 33.652454>,  <45.332684, 35.331177, 33.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417072, 35.267941, 33.652454>,  <45.557720, 35.162544, 33.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417072, 35.267941, 33.652454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263318, -0.892991, 0.365007,
		0.898346, 0.364881, 0.244614,
		-0.351622, 0.263492, 0.898295,
		45.311584, 35.346989, 33.921944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079491, 35.202038, 33.757473>,  <45.557720, 35.162544, 33.293137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079491, 35.202038, 33.757473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747593, 35.078449, 33.943405>,  <45.548454, 35.004295, 34.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747593, 35.078449, 33.943405>,  <46.079491, 35.202038, 33.757473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747593, 35.078449, 33.943405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508799, -0.761085, 0.402335,
		0.229466, 0.570339, 0.788707,
		-0.829741, -0.308971, 0.464831,
		45.498672, 34.985760, 34.082855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194126, 35.201622, 34.468430>,  <46.079491, 35.202038, 33.757473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194126, 35.201622, 34.468430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933357, 34.938808, 34.317009>,  <45.776897, 34.781120, 34.226154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933357, 34.938808, 34.317009>,  <46.194126, 35.201622, 34.468430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933357, 34.938808, 34.317009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598379, -0.752397, 0.275393,
		-0.465766, -0.046985, 0.883660,
		-0.651923, -0.657032, -0.378556,
		45.737782, 34.741699, 34.203442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366665, 34.574142, 34.853531>,  <46.194126, 35.201622, 34.468430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366665, 34.574142, 34.853531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078358, 34.323311, 34.971703>,  <45.905373, 34.172813, 35.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078358, 34.323311, 34.971703>,  <46.366665, 34.574142, 34.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078358, 34.323311, 34.971703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215828, -0.201988, -0.955311,
		0.658725, -0.752314, 0.010245,
		-0.720763, -0.627076, 0.295425,
		45.862129, 34.135189, 35.060329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435059, 33.858120, 34.549679>,  <46.366665, 34.574142, 34.853531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435059, 33.858120, 34.549679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042156, 33.924885, 34.583900>,  <45.806416, 33.964943, 34.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042156, 33.924885, 34.583900>,  <46.435059, 33.858120, 34.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042156, 33.924885, 34.583900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122804, -0.227539, -0.965994,
		-0.141769, -0.959357, 0.243999,
		-0.982253, 0.166912, 0.085555,
		45.747482, 33.974960, 34.609566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164066, 33.952759, 34.316948>,  <46.435059, 33.858120, 34.549679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164066, 33.952759, 34.316948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130035, 33.956333, 34.715481>,  <47.109619, 33.958477, 34.954601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130035, 33.956333, 34.715481>,  <47.164066, 33.952759, 34.316948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130035, 33.956333, 34.715481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846101, 0.528731, 0.067505,
		-0.526190, 0.848742, -0.052542,
		-0.085074, 0.008935, 0.996335,
		47.104511, 33.959015, 35.014381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470467, 34.664860, 34.398823>,  <47.164066, 33.952759, 34.316948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470467, 34.664860, 34.398823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504078, 34.426407, 34.718212>,  <47.524246, 34.283333, 34.909847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504078, 34.426407, 34.718212>,  <47.470467, 34.664860, 34.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504078, 34.426407, 34.718212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832745, 0.482078, 0.272278,
		-0.547242, 0.642047, 0.536937,
		0.084030, -0.596134, 0.798476,
		47.529285, 34.247566, 34.957756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391476, 35.024883, 35.009151>,  <47.470467, 34.664860, 34.398823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391476, 35.024883, 35.009151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646568, 34.716877, 35.016865>,  <47.799625, 34.532074, 35.021492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646568, 34.716877, 35.016865>,  <47.391476, 35.024883, 35.009151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646568, 34.716877, 35.016865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728618, 0.611186, 0.309138,
		-0.249825, -0.183099, 0.950822,
		0.637732, -0.770017, 0.019281,
		47.837887, 34.485870, 35.022648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.960136, 36.313770, 26.568327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586155, 36.386673, 26.446579>,  <37.361767, 36.430416, 26.373529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586155, 36.386673, 26.446579>,  <37.960136, 36.313770, 26.568327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586155, 36.386673, 26.446579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353860, -0.417806, 0.836792,
		0.025343, 0.890068, 0.455123,
		-0.934955, 0.182256, -0.304371,
		37.305668, 36.441349, 26.355268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550026, 36.603546, 27.098351>,  <37.960136, 36.313770, 26.568327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550026, 36.603546, 27.098351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280861, 36.433361, 26.856302>,  <37.119362, 36.331249, 26.711073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280861, 36.433361, 26.856302>,  <37.550026, 36.603546, 27.098351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280861, 36.433361, 26.856302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427957, -0.443327, 0.787601,
		-0.603360, 0.788951, 0.116241,
		-0.672911, -0.425461, -0.605123,
		37.078987, 36.305721, 26.674765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995308, 36.632706, 27.558270>,  <37.550026, 36.603546, 27.098351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995308, 36.632706, 27.558270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918941, 36.355099, 27.280594>,  <36.873123, 36.188534, 27.113989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918941, 36.355099, 27.280594>,  <36.995308, 36.632706, 27.558270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918941, 36.355099, 27.280594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523175, -0.526437, 0.670188,
		-0.830567, 0.491128, -0.262588,
		-0.190912, -0.694015, -0.694187,
		36.861668, 36.146893, 27.072338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354179, 36.434544, 27.654726>,  <36.995308, 36.632706, 27.558270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354179, 36.434544, 27.654726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505081, 36.108398, 27.479059>,  <36.595623, 35.912712, 27.373659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505081, 36.108398, 27.479059>,  <36.354179, 36.434544, 27.654726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505081, 36.108398, 27.479059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558135, -0.578584, 0.594749,
		-0.739028, 0.020741, -0.673355,
		0.377256, -0.815359, -0.439166,
		36.618259, 35.863792, 27.347309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817791, 35.985748, 27.559061>,  <36.354179, 36.434544, 27.654726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817791, 35.985748, 27.559061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129494, 35.739452, 27.512386>,  <36.316517, 35.591675, 27.484381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129494, 35.739452, 27.512386>,  <35.817791, 35.985748, 27.559061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129494, 35.739452, 27.512386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469479, -0.696899, 0.542145,
		-0.415140, -0.367690, -0.832144,
		0.779262, -0.615740, -0.116687,
		36.363274, 35.554729, 27.477381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554588, 35.280022, 27.329206>,  <35.817791, 35.985748, 27.559061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554588, 35.280022, 27.329206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919312, 35.214134, 27.479658>,  <36.138145, 35.174603, 27.569929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919312, 35.214134, 27.479658>,  <35.554588, 35.280022, 27.329206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919312, 35.214134, 27.479658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382046, -0.676026, 0.630102,
		0.150485, -0.718232, -0.679336,
		0.911808, -0.164717, 0.376130,
		36.192856, 35.164719, 27.592497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551659, 34.483288, 27.612566>,  <35.554588, 35.280022, 27.329206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551659, 34.483288, 27.612566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894875, 34.627449, 27.758921>,  <36.100803, 34.713947, 27.846733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894875, 34.627449, 27.758921>,  <35.551659, 34.483288, 27.612566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894875, 34.627449, 27.758921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003736, -0.716782, 0.697287,
		0.513569, -0.596934, -0.616374,
		0.858041, 0.360408, 0.365887,
		36.152287, 34.735573, 27.868687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078152, 33.860451, 27.785307>,  <35.551659, 34.483288, 27.612566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078152, 33.860451, 27.785307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165501, 34.174309, 28.017389>,  <36.217911, 34.362625, 28.156639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165501, 34.174309, 28.017389>,  <36.078152, 33.860451, 27.785307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165501, 34.174309, 28.017389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013737, -0.596969, 0.802146,
		0.975769, -0.167195, -0.141140,
		0.218371, 0.784648, 0.580207,
		36.231010, 34.409702, 28.191452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652599, 33.615574, 28.195539>,  <36.078152, 33.860451, 27.785307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652599, 33.615574, 28.195539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492123, 33.926044, 28.390104>,  <36.395836, 34.112328, 28.506844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492123, 33.926044, 28.390104>,  <36.652599, 33.615574, 28.195539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492123, 33.926044, 28.390104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113788, -0.484678, 0.867260,
		0.908900, 0.403283, 0.106128,
		-0.401190, 0.776176, 0.486412,
		36.371765, 34.158897, 28.536028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050652, 33.809078, 28.774483>,  <36.652599, 33.615574, 28.195539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050652, 33.809078, 28.774483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685505, 33.943954, 28.866554>,  <36.466419, 34.024879, 28.921797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685505, 33.943954, 28.866554>,  <37.050652, 33.809078, 28.774483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685505, 33.943954, 28.866554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073953, -0.417899, 0.905479,
		0.401511, 0.843601, 0.356549,
		-0.912864, 0.337192, 0.230177,
		36.411644, 34.045113, 28.935608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152798, 33.983387, 29.405910>,  <37.050652, 33.809078, 28.774483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152798, 33.983387, 29.405910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753529, 33.963951, 29.391569>,  <36.513966, 33.952290, 29.382963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753529, 33.963951, 29.391569>,  <37.152798, 33.983387, 29.405910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753529, 33.963951, 29.391569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028427, -0.145760, 0.988911,
		-0.053279, 0.988126, 0.144113,
		-0.998175, -0.048592, -0.035855,
		36.454075, 33.949375, 29.380812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954178, 34.314041, 30.007763>,  <37.152798, 33.983387, 29.405910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954178, 34.314041, 30.007763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619335, 34.117718, 29.911131>,  <36.418430, 33.999924, 29.853151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619335, 34.117718, 29.911131>,  <36.954178, 34.314041, 30.007763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619335, 34.117718, 29.911131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281746, 0.008288, 0.959453,
		-0.468904, 0.871229, -0.145221,
		-0.837107, -0.490807, -0.241579,
		36.368202, 33.970474, 29.838657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523220, 34.493668, 30.527292>,  <36.954178, 34.314041, 30.007763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523220, 34.493668, 30.527292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326294, 34.184509, 30.367168>,  <36.208138, 33.999012, 30.271095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326294, 34.184509, 30.367168>,  <36.523220, 34.493668, 30.527292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326294, 34.184509, 30.367168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371671, -0.229198, 0.899628,
		-0.787072, 0.591687, -0.174426,
		-0.492320, -0.772900, -0.400308,
		36.178596, 33.952641, 30.247076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820587, 34.646313, 30.546324>,  <36.523220, 34.493668, 30.527292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820587, 34.646313, 30.546324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867558, 34.249081, 30.545397>,  <35.895741, 34.010742, 30.544840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867558, 34.249081, 30.545397>,  <35.820587, 34.646313, 30.546324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867558, 34.249081, 30.545397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302264, -0.037963, 0.952468,
		-0.945964, -0.111144, -0.304630,
		0.117425, -0.993079, -0.002317,
		35.902786, 33.951157, 30.544703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242325, 34.285717, 30.940163>,  <35.820587, 34.646313, 30.546324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242325, 34.285717, 30.940163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518208, 33.999382, 30.896564>,  <35.683739, 33.827579, 30.870405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518208, 33.999382, 30.896564>,  <35.242325, 34.285717, 30.940163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518208, 33.999382, 30.896564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102996, -0.245986, 0.963786,
		-0.716724, -0.653505, -0.243387,
		0.689709, -0.715836, -0.108996,
		35.725121, 33.784630, 30.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956520, 33.639061, 31.305271>,  <35.242325, 34.285717, 30.940163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956520, 33.639061, 31.305271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350727, 33.580547, 31.270966>,  <35.587250, 33.545437, 31.250381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350727, 33.580547, 31.270966>,  <34.956520, 33.639061, 31.305271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350727, 33.580547, 31.270966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032475, -0.333580, 0.942162,
		-0.166435, -0.931303, -0.323998,
		0.985517, -0.146287, -0.085763,
		35.646381, 33.536659, 31.245237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044762, 33.069260, 31.546186>,  <34.956520, 33.639061, 31.305271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044762, 33.069260, 31.546186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416553, 33.214798, 31.570456>,  <35.639629, 33.302120, 31.585016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416553, 33.214798, 31.570456>,  <35.044762, 33.069260, 31.546186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416553, 33.214798, 31.570456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081054, -0.361915, 0.928681,
		0.359857, -0.858273, -0.365884,
		0.929480, 0.363848, 0.060671,
		35.695396, 33.323952, 31.588657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428738, 32.536945, 31.705563>,  <35.044762, 33.069260, 31.546186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428738, 32.536945, 31.705563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636887, 32.862671, 31.808403>,  <35.761776, 33.058105, 31.870108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636887, 32.862671, 31.808403>,  <35.428738, 32.536945, 31.705563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636887, 32.862671, 31.808403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008416, -0.305952, 0.952010,
		0.853895, -0.493240, -0.166064,
		0.520377, 0.814314, 0.257100,
		35.792999, 33.106964, 31.885532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023041, 32.261223, 31.933273>,  <35.428738, 32.536945, 31.705563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023041, 32.261223, 31.933273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983494, 32.609238, 32.126461>,  <35.959766, 32.818047, 32.242374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983494, 32.609238, 32.126461>,  <36.023041, 32.261223, 31.933273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983494, 32.609238, 32.126461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044305, -0.481020, 0.875590,
		0.994114, 0.107965, 0.009010,
		-0.098867, 0.870037, 0.482972,
		35.953835, 32.870247, 32.271351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146423, 31.961721, 32.473824>,  <36.023041, 32.261223, 31.933273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146423, 31.961721, 32.473824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024967, 32.328667, 32.576775>,  <35.952095, 32.548836, 32.638546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024967, 32.328667, 32.576775>,  <36.146423, 31.961721, 32.473824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024967, 32.328667, 32.576775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113595, -0.233352, 0.965734,
		0.945991, 0.322473, -0.033353,
		-0.303640, 0.917365, 0.257380,
		35.933876, 32.603878, 32.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564449, 32.198658, 32.949059>,  <36.146423, 31.961721, 32.473824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564449, 32.198658, 32.949059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250576, 32.434650, 33.025158>,  <36.062252, 32.576244, 33.070816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250576, 32.434650, 33.025158>,  <36.564449, 32.198658, 32.949059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250576, 32.434650, 33.025158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007472, -0.315879, 0.948770,
		0.619849, 0.743064, 0.252274,
		-0.784685, 0.589979, 0.190246,
		36.015171, 32.611645, 33.082233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772984, 32.582119, 33.506531>,  <36.564449, 32.198658, 32.949059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772984, 32.582119, 33.506531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374001, 32.557541, 33.492130>,  <36.134609, 32.542793, 33.483490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374001, 32.557541, 33.492130>,  <36.772984, 32.582119, 33.506531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374001, 32.557541, 33.492130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018441, -0.265396, 0.963963,
		-0.068787, 0.962179, 0.263589,
		-0.997461, -0.061447, -0.036000,
		36.074760, 32.539108, 33.481331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205738, 32.919842, 34.045662>,  <36.772984, 32.582119, 33.506531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205738, 32.919842, 34.045662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596676, 32.910118, 34.129757>,  <37.831238, 32.904285, 34.180214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596676, 32.910118, 34.129757>,  <37.205738, 32.919842, 34.045662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596676, 32.910118, 34.129757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047674, 0.993137, -0.106795,
		-0.206197, 0.114399, 0.971800,
		0.977348, -0.024309, 0.210236,
		37.889881, 32.902824, 34.192829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247257, 33.528896, 34.518990>,  <37.205738, 32.919842, 34.045662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247257, 33.528896, 34.518990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606575, 33.449642, 34.362118>,  <37.822166, 33.402092, 34.267994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606575, 33.449642, 34.362118>,  <37.247257, 33.528896, 34.518990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606575, 33.449642, 34.362118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145537, 0.976345, -0.159905,
		0.414584, 0.086566, 0.905885,
		0.898298, -0.198133, -0.392179,
		37.876064, 33.390202, 34.244465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549717, 34.093220, 34.741379>,  <37.247257, 33.528896, 34.518990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549717, 34.093220, 34.741379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755642, 33.937084, 34.436062>,  <37.879196, 33.843403, 34.252872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755642, 33.937084, 34.436062>,  <37.549717, 34.093220, 34.741379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755642, 33.937084, 34.436062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224404, 0.920647, -0.319455,
		0.827414, -0.006825, 0.561551,
		0.514810, -0.390336, -0.763288,
		37.910084, 33.819984, 34.207077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022274, 34.515625, 34.645721>,  <37.549717, 34.093220, 34.741379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022274, 34.515625, 34.645721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037991, 34.314846, 34.300117>,  <38.047421, 34.194378, 34.092754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.037991, 34.314846, 34.300117>,  <38.022274, 34.515625, 34.645721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037991, 34.314846, 34.300117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282340, 0.835015, -0.472264,
		0.958509, -0.225387, 0.174529,
		0.039292, -0.501947, -0.864006,
		38.049778, 34.164261, 34.040916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673019, 34.693569, 34.335743>,  <38.022274, 34.515625, 34.645721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673019, 34.693569, 34.335743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404400, 34.598633, 34.054974>,  <38.243229, 34.541672, 33.886513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404400, 34.598633, 34.054974>,  <38.673019, 34.693569, 34.335743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404400, 34.598633, 34.054974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189573, 0.860748, -0.472414,
		0.716301, -0.450314, -0.533039,
		-0.671547, -0.237341, -0.701922,
		38.202934, 34.527431, 33.844398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063644, 34.813141, 33.723392>,  <38.673019, 34.693569, 34.335743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063644, 34.813141, 33.723392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677803, 34.783989, 33.622025>,  <38.446297, 34.766499, 33.561203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677803, 34.783989, 33.622025>,  <39.063644, 34.813141, 33.723392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677803, 34.783989, 33.622025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085122, 0.823539, -0.560837,
		0.249576, -0.562558, -0.788188,
		-0.964607, -0.072879, -0.253421,
		38.388420, 34.762127, 33.545998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062557, 34.851734, 33.053856>,  <39.063644, 34.813141, 33.723392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062557, 34.851734, 33.053856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688629, 34.965767, 33.138561>,  <38.464272, 35.034187, 33.189384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688629, 34.965767, 33.138561>,  <39.062557, 34.851734, 33.053856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688629, 34.965767, 33.138561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082538, 0.754394, -0.651212,
		-0.345399, -0.591287, -0.728752,
		-0.934819, 0.285078, 0.211763,
		38.408184, 35.051289, 33.202091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750458, 34.904671, 32.323448>,  <39.062557, 34.851734, 33.053856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750458, 34.904671, 32.323448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508896, 35.110420, 32.566994>,  <38.363956, 35.233871, 32.713120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508896, 35.110420, 32.566994>,  <38.750458, 34.904671, 32.323448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508896, 35.110420, 32.566994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096761, 0.710927, -0.696578,
		-0.791158, -0.479584, -0.379563,
		-0.603909, 0.514376, 0.608860,
		38.327724, 35.264732, 32.749653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233833, 35.187511, 31.850424>,  <38.750458, 34.904671, 32.323448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233833, 35.187511, 31.850424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196415, 35.399799, 32.187370>,  <38.173965, 35.527172, 32.389538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196415, 35.399799, 32.187370>,  <38.233833, 35.187511, 31.850424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196415, 35.399799, 32.187370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106773, 0.835850, -0.538473,
		-0.989873, -0.140312, -0.021520,
		-0.093542, 0.530723, 0.842368,
		38.168354, 35.559017, 32.440079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692715, 35.585278, 31.699188>,  <38.233833, 35.187511, 31.850424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692715, 35.585278, 31.699188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914581, 35.762203, 31.981096>,  <38.047703, 35.868359, 32.150242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914581, 35.762203, 31.981096>,  <37.692715, 35.585278, 31.699188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914581, 35.762203, 31.981096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156156, 0.776625, -0.610303,
		-0.817287, 0.448570, 0.361700,
		0.554669, 0.442311, 0.704772,
		38.080982, 35.894897, 32.192528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328777, 36.225655, 31.812122>,  <37.692715, 35.585278, 31.699188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328777, 36.225655, 31.812122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715214, 36.242954, 31.913944>,  <37.947075, 36.253334, 31.975037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715214, 36.242954, 31.913944>,  <37.328777, 36.225655, 31.812122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715214, 36.242954, 31.913944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114017, 0.813081, -0.570876,
		-0.231664, 0.580541, 0.780579,
		0.966091, 0.043252, 0.254553,
		38.005043, 36.255928, 31.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486458, 36.950287, 31.840963>,  <37.328777, 36.225655, 31.812122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486458, 36.950287, 31.840963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855080, 36.795582, 31.854527>,  <38.076252, 36.702759, 31.862665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855080, 36.795582, 31.854527>,  <37.486458, 36.950287, 31.840963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855080, 36.795582, 31.854527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340323, 0.762691, -0.549985,
		0.186851, 0.518382, 0.834486,
		0.921557, -0.386760, 0.033908,
		38.131546, 36.679554, 31.864698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869007, 37.484356, 32.017014>,  <37.486458, 36.950287, 31.840963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869007, 37.484356, 32.017014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078568, 37.207180, 31.818876>,  <38.204304, 37.040874, 31.699993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078568, 37.207180, 31.818876>,  <37.869007, 37.484356, 32.017014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078568, 37.207180, 31.818876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339569, 0.703240, -0.624616,
		0.781167, 0.159032, 0.603727,
		0.523900, -0.692937, -0.495346,
		38.235737, 36.999298, 31.670273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624420, 37.771675, 31.936625>,  <37.869007, 37.484356, 32.017014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624420, 37.771675, 31.936625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584240, 37.471367, 31.675472>,  <38.560131, 37.291183, 31.518782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584240, 37.471367, 31.675472>,  <38.624420, 37.771675, 31.936625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584240, 37.471367, 31.675472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336113, 0.592013, -0.732495,
		0.936449, -0.293024, 0.192874,
		-0.100455, -0.750771, -0.652879,
		38.554104, 37.246136, 31.479609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285847, 37.743801, 31.505915>,  <38.624420, 37.771675, 31.936625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285847, 37.743801, 31.505915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013371, 37.547821, 31.288319>,  <38.849884, 37.430233, 31.157761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013371, 37.547821, 31.288319>,  <39.285847, 37.743801, 31.505915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013371, 37.547821, 31.288319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286442, 0.505449, -0.813924,
		0.673741, -0.710261, -0.203966,
		-0.681193, -0.489950, -0.543990,
		38.809013, 37.400837, 31.125122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621471, 37.528248, 30.863844>,  <39.285847, 37.743801, 31.505915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621471, 37.528248, 30.863844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236061, 37.500301, 30.760504>,  <39.004814, 37.483536, 30.698500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236061, 37.500301, 30.760504>,  <39.621471, 37.528248, 30.863844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236061, 37.500301, 30.760504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239029, 0.209544, -0.948133,
		0.120372, -0.975301, -0.185202,
		-0.963523, -0.069860, -0.258348,
		38.947006, 37.479343, 30.682999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741650, 37.233334, 30.169123>,  <39.621471, 37.528248, 30.863844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741650, 37.233334, 30.169123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.352345, 37.322273, 30.146093>,  <39.118759, 37.375637, 30.132275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.352345, 37.322273, 30.146093>,  <39.741650, 37.233334, 30.169123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352345, 37.322273, 30.146093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105875, 0.211869, -0.971546,
		-0.203823, -0.951669, -0.229746,
		-0.973266, 0.222348, -0.057574,
		39.060364, 37.388977, 30.128820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474258, 36.742943, 29.727291>,  <39.741650, 37.233334, 30.169123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474258, 36.742943, 29.727291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278957, 37.091969, 29.721094>,  <39.161777, 37.301384, 29.717375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278957, 37.091969, 29.721094>,  <39.474258, 36.742943, 29.727291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278957, 37.091969, 29.721094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177396, 0.081850, -0.980730,
		-0.854482, -0.481593, -0.194753,
		-0.488253, 0.872564, -0.015493,
		39.132481, 37.353737, 29.716446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.986702, 36.571182, 29.093939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962162, 36.963379, 29.168642>,  <38.947437, 37.198696, 29.213465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962162, 36.963379, 29.168642>,  <38.986702, 36.571182, 29.093939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962162, 36.963379, 29.168642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047112, 0.184057, -0.981786,
		-0.997004, -0.069029, 0.034902,
		-0.061348, 0.980489, 0.186758,
		38.943756, 37.257526, 29.224669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404293, 36.886902, 28.715090>,  <38.986702, 36.571182, 29.093939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404293, 36.886902, 28.715090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672192, 37.180561, 28.759766>,  <38.832932, 37.356754, 28.786572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672192, 37.180561, 28.759766>,  <38.404293, 36.886902, 28.715090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672192, 37.180561, 28.759766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063691, 0.206644, -0.976341,
		-0.739855, 0.646785, 0.185157,
		0.669745, 0.734144, 0.111692,
		38.873116, 37.400803, 28.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234947, 37.311634, 28.173716>,  <38.404293, 36.886902, 28.715090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234947, 37.311634, 28.173716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596680, 37.449299, 28.274698>,  <38.813721, 37.531898, 28.335289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596680, 37.449299, 28.274698>,  <38.234947, 37.311634, 28.173716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596680, 37.449299, 28.274698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136086, 0.328118, -0.934783,
		-0.404555, 0.879710, 0.249892,
		0.904332, 0.344164, 0.252458,
		38.867981, 37.552547, 28.350435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210972, 38.021446, 27.839426>,  <38.234947, 37.311634, 28.173716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210972, 38.021446, 27.839426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594257, 37.959942, 27.935911>,  <38.824230, 37.923038, 27.993803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594257, 37.959942, 27.935911>,  <38.210972, 38.021446, 27.839426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594257, 37.959942, 27.935911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285874, 0.484619, -0.826692,
		0.010219, 0.861104, 0.508326,
		0.958213, -0.153765, 0.241214,
		38.881721, 37.913811, 28.008276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540909, 38.657433, 27.790386>,  <38.210972, 38.021446, 27.839426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540909, 38.657433, 27.790386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836338, 38.389271, 27.761940>,  <39.013596, 38.228374, 27.744871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836338, 38.389271, 27.761940>,  <38.540909, 38.657433, 27.790386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836338, 38.389271, 27.761940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481780, 0.598653, -0.639923,
		0.471584, 0.438370, 0.765141,
		0.738577, -0.670407, -0.071117,
		39.057911, 38.188148, 27.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217819, 39.010769, 27.803982>,  <38.540909, 38.657433, 27.790386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217819, 39.010769, 27.803982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280510, 38.652779, 27.636908>,  <39.318127, 38.437984, 27.536663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280510, 38.652779, 27.636908>,  <39.217819, 39.010769, 27.803982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280510, 38.652779, 27.636908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626348, 0.417058, -0.658598,
		0.763626, -0.158394, 0.625929,
		0.156730, -0.894972, -0.417686,
		39.327530, 38.384289, 27.511602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919327, 38.959080, 27.726883>,  <39.217819, 39.010769, 27.803982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919327, 38.959080, 27.726883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728424, 38.713997, 27.474907>,  <39.613884, 38.566948, 27.323721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728424, 38.713997, 27.474907>,  <39.919327, 38.959080, 27.726883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728424, 38.713997, 27.474907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530409, 0.370693, -0.762400,
		0.700640, -0.697982, 0.148069,
		-0.477253, -0.612705, -0.629939,
		39.585247, 38.530186, 27.285925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366764, 38.848106, 27.219992>,  <39.919327, 38.959080, 27.726883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366764, 38.848106, 27.219992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040718, 38.696880, 27.044424>,  <39.845089, 38.606144, 26.939083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040718, 38.696880, 27.044424>,  <40.366764, 38.848106, 27.219992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040718, 38.696880, 27.044424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356845, 0.269168, -0.894545,
		0.456343, -0.885784, -0.084490,
		-0.815115, -0.378069, -0.438920,
		39.796185, 38.583462, 26.912748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627247, 38.548271, 26.612307>,  <40.366764, 38.848106, 27.219992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627247, 38.548271, 26.612307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241402, 38.620495, 26.535444>,  <40.009895, 38.663830, 26.489326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241402, 38.620495, 26.535444>,  <40.627247, 38.548271, 26.612307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241402, 38.620495, 26.535444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233334, 0.245127, -0.940993,
		-0.122800, -0.952529, -0.278582,
		-0.964611, 0.180557, -0.192156,
		39.952019, 38.674664, 26.477797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540863, 38.356392, 25.918043>,  <40.627247, 38.548271, 26.612307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540863, 38.356392, 25.918043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224503, 38.591770, 25.985228>,  <40.034687, 38.732998, 26.025537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224503, 38.591770, 25.985228>,  <40.540863, 38.356392, 25.918043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224503, 38.591770, 25.985228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110207, 0.406945, -0.906780,
		-0.601942, -0.698661, -0.386703,
		-0.790898, 0.588447, 0.167960,
		39.987232, 38.768303, 26.035616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198139, 38.292713, 25.359699>,  <40.540863, 38.356392, 25.918043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198139, 38.292713, 25.359699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023449, 38.625359, 25.496925>,  <39.918633, 38.824944, 25.579262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023449, 38.625359, 25.496925>,  <40.198139, 38.292713, 25.359699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023449, 38.625359, 25.496925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250180, 0.254034, -0.934278,
		-0.864106, -0.493853, 0.097109,
		-0.436728, 0.831610, 0.343065,
		39.892429, 38.874840, 25.599844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509720, 38.465530, 25.023481>,  <40.198139, 38.292713, 25.359699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509720, 38.465530, 25.023481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626125, 38.812492, 25.184938>,  <39.695969, 39.020668, 25.281813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626125, 38.812492, 25.184938>,  <39.509720, 38.465530, 25.023481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626125, 38.812492, 25.184938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097453, 0.392831, -0.914433,
		-0.951741, 0.305452, 0.029789,
		0.291018, 0.867400, 0.403640,
		39.713432, 39.072712, 25.306030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137131, 39.043228, 24.770510>,  <39.509720, 38.465530, 25.023481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137131, 39.043228, 24.770510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465172, 39.227837, 24.905817>,  <39.661999, 39.338600, 24.987001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465172, 39.227837, 24.905817>,  <39.137131, 39.043228, 24.770510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465172, 39.227837, 24.905817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044930, 0.641272, -0.765997,
		-0.570445, 0.613000, 0.546647,
		0.820106, 0.461520, 0.338268,
		39.711205, 39.366291, 25.007298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936958, 39.736473, 24.528728>,  <39.137131, 39.043228, 24.770510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936958, 39.736473, 24.528728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325390, 39.723541, 24.623344>,  <39.558449, 39.715782, 24.680115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325390, 39.723541, 24.623344>,  <38.936958, 39.736473, 24.528728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325390, 39.723541, 24.623344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179194, 0.753392, -0.632684,
		-0.157754, 0.656776, 0.737400,
		0.971084, -0.032329, 0.236541,
		39.616714, 39.713844, 24.694307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133003, 40.451538, 24.618816>,  <38.936958, 39.736473, 24.528728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133003, 40.451538, 24.618816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474541, 40.263481, 24.529449>,  <39.679462, 40.150646, 24.475828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474541, 40.263481, 24.529449>,  <39.133003, 40.451538, 24.618816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474541, 40.263481, 24.529449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230561, 0.726400, -0.647445,
		0.466685, 0.501304, 0.728628,
		0.853842, -0.470146, -0.223419,
		39.730694, 40.122437, 24.462423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546692, 41.024902, 24.582357>,  <39.133003, 40.451538, 24.618816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546692, 41.024902, 24.582357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709641, 40.721310, 24.379185>,  <39.807411, 40.539154, 24.257282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709641, 40.721310, 24.379185>,  <39.546692, 41.024902, 24.582357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709641, 40.721310, 24.379185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177249, 0.611304, -0.771292,
		0.895896, 0.224174, 0.383557,
		0.407374, -0.758982, -0.507930,
		39.831852, 40.493614, 24.226807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998787, 41.376255, 24.405506>,  <39.546692, 41.024902, 24.582357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998787, 41.376255, 24.405506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990097, 41.062855, 24.157103>,  <39.984882, 40.874813, 24.008060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990097, 41.062855, 24.157103>,  <39.998787, 41.376255, 24.405506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990097, 41.062855, 24.157103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318342, 0.583402, -0.747195,
		0.947727, -0.213927, 0.236747,
		-0.021726, -0.783503, -0.621008,
		39.983578, 40.827805, 23.970800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496708, 41.494816, 23.929405>,  <39.998787, 41.376255, 24.405506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496708, 41.494816, 23.929405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290173, 41.210690, 23.738050>,  <40.166252, 41.040215, 23.623238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290173, 41.210690, 23.738050>,  <40.496708, 41.494816, 23.929405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290173, 41.210690, 23.738050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098961, 0.505381, -0.857203,
		0.850650, -0.489945, -0.190652,
		-0.516335, -0.710313, -0.478387,
		40.135273, 40.997597, 23.594534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842182, 41.366543, 23.187838>,  <40.496708, 41.494816, 23.929405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842182, 41.366543, 23.187838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461803, 41.254959, 23.134338>,  <40.233578, 41.188011, 23.102240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461803, 41.254959, 23.134338>,  <40.842182, 41.366543, 23.187838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461803, 41.254959, 23.134338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052421, 0.571380, -0.819010,
		0.304887, -0.771822, -0.557974,
		-0.950945, -0.278956, -0.133747,
		40.176521, 41.171272, 23.094213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811588, 41.208672, 22.424967>,  <40.842182, 41.366543, 23.187838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811588, 41.208672, 22.424967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443039, 41.261585, 22.571157>,  <40.221909, 41.293335, 22.658871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443039, 41.261585, 22.571157>,  <40.811588, 41.208672, 22.424967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443039, 41.261585, 22.571157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196168, 0.653484, -0.731080,
		-0.335544, -0.745291, -0.576152,
		-0.921373, 0.132287, 0.365475,
		40.166626, 41.301270, 22.680799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442970, 41.266060, 21.779716>,  <40.811588, 41.208672, 22.424967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442970, 41.266060, 21.779716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232876, 41.426208, 22.080072>,  <40.106819, 41.522297, 22.260286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232876, 41.426208, 22.080072>,  <40.442970, 41.266060, 21.779716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232876, 41.426208, 22.080072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201117, 0.799001, -0.566701,
		-0.826850, -0.448667, -0.339141,
		-0.525233, 0.400370, 0.750889,
		40.075306, 41.546318, 22.305340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884640, 41.357655, 21.508968>,  <40.442970, 41.266060, 21.779716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884640, 41.357655, 21.508968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891525, 41.618591, 21.812059>,  <39.895657, 41.775154, 21.993914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891525, 41.618591, 21.812059>,  <39.884640, 41.357655, 21.508968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891525, 41.618591, 21.812059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217444, 0.742146, -0.633985,
		-0.975921, -0.153848, 0.154625,
		0.017217, 0.652342, 0.757729,
		39.896690, 41.814293, 22.039379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252079, 41.727375, 21.680759>,  <39.884640, 41.357655, 21.508968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252079, 41.727375, 21.680759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555801, 41.964294, 21.788559>,  <39.738037, 42.106445, 21.853239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555801, 41.964294, 21.788559>,  <39.252079, 41.727375, 21.680759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555801, 41.964294, 21.788559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317688, 0.698851, -0.640845,
		-0.567914, 0.400982, 0.718810,
		0.759308, 0.592302, 0.269500,
		39.783592, 42.141987, 21.869410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743488, 41.906860, 21.076756>,  <39.252079, 41.727375, 21.680759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743488, 41.906860, 21.076756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388958, 42.059864, 20.972355>,  <38.176239, 42.151665, 20.909714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388958, 42.059864, 20.972355>,  <38.743488, 41.906860, 21.076756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388958, 42.059864, 20.972355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402898, -0.359144, 0.841837,
		0.228271, 0.851295, 0.472428,
		-0.886321, 0.382508, -0.261003,
		38.123062, 42.174618, 20.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502975, 42.249306, 21.591619>,  <38.743488, 41.906860, 21.076756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502975, 42.249306, 21.591619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206989, 42.107151, 21.363178>,  <38.029400, 42.021858, 21.226114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206989, 42.107151, 21.363178>,  <38.502975, 42.249306, 21.591619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206989, 42.107151, 21.363178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374020, -0.488299, 0.788463,
		-0.559074, 0.797037, 0.228402,
		-0.739963, -0.355382, -0.571103,
		37.985001, 42.000538, 21.191847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962959, 42.343346, 21.942314>,  <38.502975, 42.249306, 21.591619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962959, 42.343346, 21.942314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848160, 42.050404, 21.695322>,  <37.779282, 41.874638, 21.547127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848160, 42.050404, 21.695322>,  <37.962959, 42.343346, 21.942314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848160, 42.050404, 21.695322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316536, -0.535889, 0.782706,
		-0.904123, 0.420089, -0.078021,
		-0.286995, -0.732359, -0.617483,
		37.762062, 41.830696, 21.510077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247059, 42.273159, 21.973795>,  <37.962959, 42.343346, 21.942314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247059, 42.273159, 21.973795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348923, 41.922668, 21.810148>,  <37.410042, 41.712376, 21.711960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348923, 41.922668, 21.810148>,  <37.247059, 42.273159, 21.973795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348923, 41.922668, 21.810148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523275, -0.480640, 0.703682,
		-0.813222, 0.034881, -0.580907,
		0.254662, -0.876224, -0.409119,
		37.425320, 41.659801, 21.687412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630852, 41.833954, 21.977318>,  <37.247059, 42.273159, 21.973795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630852, 41.833954, 21.977318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929337, 41.568302, 21.959000>,  <37.108429, 41.408913, 21.948009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929337, 41.568302, 21.959000>,  <36.630852, 41.833954, 21.977318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929337, 41.568302, 21.959000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488126, -0.592639, 0.640712,
		-0.452654, -0.455757, -0.766414,
		0.746216, -0.664127, -0.045794,
		37.153202, 41.369064, 21.945261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404247, 41.141369, 21.806921>,  <36.630852, 41.833954, 21.977318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404247, 41.141369, 21.806921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750473, 41.067417, 21.993090>,  <36.958210, 41.023045, 22.104790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750473, 41.067417, 21.993090>,  <36.404247, 41.141369, 21.806921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750473, 41.067417, 21.993090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471603, -0.613582, 0.633330,
		0.168484, -0.767682, -0.618285,
		0.865566, -0.184879, 0.465420,
		37.010143, 41.011951, 22.132715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436222, 40.378601, 21.953188>,  <36.404247, 41.141369, 21.806921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436222, 40.378601, 21.953188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729813, 40.522587, 22.183561>,  <36.905968, 40.608978, 22.321785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.729813, 40.522587, 22.183561>,  <36.436222, 40.378601, 21.953188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729813, 40.522587, 22.183561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300636, -0.588191, 0.750766,
		0.609010, -0.724192, -0.323501,
		0.733979, 0.359968, 0.575933,
		36.950005, 40.630577, 22.356340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639053, 39.802830, 22.295626>,  <36.436222, 40.378601, 21.953188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639053, 39.802830, 22.295626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764286, 40.102859, 22.528648>,  <36.839424, 40.282875, 22.668463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764286, 40.102859, 22.528648>,  <36.639053, 39.802830, 22.295626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764286, 40.102859, 22.528648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029545, -0.620790, 0.783420,
		0.949266, -0.228064, -0.216519,
		0.313083, 0.750071, 0.582557,
		36.858212, 40.327881, 22.703415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208275, 39.570572, 22.618835>,  <36.639053, 39.802830, 22.295626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208275, 39.570572, 22.618835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083748, 39.872639, 22.849590>,  <37.009033, 40.053879, 22.988043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083748, 39.872639, 22.849590>,  <37.208275, 39.570572, 22.618835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083748, 39.872639, 22.849590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013186, -0.603564, 0.797206,
		0.950214, 0.255791, 0.177943,
		-0.311318, 0.755170, 0.576888,
		36.990353, 40.099190, 23.022657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692863, 39.690495, 23.163256>,  <37.208275, 39.570572, 22.618835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692863, 39.690495, 23.163256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353504, 39.833546, 23.319370>,  <37.149891, 39.919376, 23.413038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353504, 39.833546, 23.319370>,  <37.692863, 39.690495, 23.163256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353504, 39.833546, 23.319370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074809, -0.648880, 0.757204,
		0.524049, 0.671606, 0.523754,
		-0.848396, 0.357631, 0.390287,
		37.098984, 39.940834, 23.436457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999599, 39.923702, 23.852459>,  <37.692863, 39.690495, 23.163256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999599, 39.923702, 23.852459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602654, 39.874638, 23.847282>,  <37.364487, 39.845200, 23.844177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602654, 39.874638, 23.847282>,  <37.999599, 39.923702, 23.852459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602654, 39.874638, 23.847282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041139, -0.428064, 0.902812,
		-0.116280, 0.895386, 0.429842,
		-0.992364, -0.122662, -0.012940,
		37.304943, 39.837837, 23.843401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895889, 39.975609, 24.558889>,  <37.999599, 39.923702, 23.852459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895889, 39.975609, 24.558889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546711, 39.833771, 24.424889>,  <37.337204, 39.748669, 24.344488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546711, 39.833771, 24.424889>,  <37.895889, 39.975609, 24.558889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546711, 39.833771, 24.424889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048810, -0.619799, 0.783241,
		-0.485368, 0.700079, 0.523743,
		-0.872946, -0.354597, -0.335002,
		37.284828, 39.727390, 24.324389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535244, 39.943272, 25.142721>,  <37.895889, 39.975609, 24.558889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535244, 39.943272, 25.142721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352146, 39.701355, 24.882044>,  <37.242287, 39.556206, 24.725637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352146, 39.701355, 24.882044>,  <37.535244, 39.943272, 25.142721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352146, 39.701355, 24.882044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007492, -0.730342, 0.683041,
		-0.889054, 0.317539, 0.329776,
		-0.457741, -0.604789, -0.651692,
		37.214825, 39.519917, 24.686537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001007, 39.722233, 25.502243>,  <37.535244, 39.943272, 25.142721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001007, 39.722233, 25.502243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056744, 39.462364, 25.203308>,  <37.090187, 39.306442, 25.023947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056744, 39.462364, 25.203308>,  <37.001007, 39.722233, 25.502243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056744, 39.462364, 25.203308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083943, -0.759732, 0.644795,
		-0.986680, -0.027112, -0.160396,
		0.139340, -0.649671, -0.747337,
		37.098545, 39.267464, 24.979107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572334, 39.056538, 25.692518>,  <37.001007, 39.722233, 25.502243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572334, 39.056538, 25.692518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856335, 38.943527, 25.434500>,  <37.026733, 38.875721, 25.279690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856335, 38.943527, 25.434500>,  <36.572334, 39.056538, 25.692518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856335, 38.943527, 25.434500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135071, -0.844344, 0.518496,
		-0.691131, -0.455257, -0.561319,
		0.709996, -0.282531, -0.645045,
		37.069332, 38.858768, 25.240986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387741, 38.477730, 25.228821>,  <36.572334, 39.056538, 25.692518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387741, 38.477730, 25.228821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787083, 38.466564, 25.248898>,  <37.026688, 38.459866, 25.260942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787083, 38.466564, 25.248898>,  <36.387741, 38.477730, 25.228821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787083, 38.466564, 25.248898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043472, -0.938381, 0.342857,
		0.037529, -0.344473, -0.938046,
		0.998350, -0.027912, 0.050191,
		37.086586, 38.458191, 25.263954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467331, 37.813770, 25.190166>,  <36.387741, 38.477730, 25.228821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467331, 37.813770, 25.190166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841110, 37.916969, 25.288340>,  <37.065380, 37.978889, 25.347244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841110, 37.916969, 25.288340>,  <36.467331, 37.813770, 25.190166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841110, 37.916969, 25.288340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142947, -0.903058, 0.405034,
		0.326139, -0.343400, -0.880744,
		0.934452, 0.257997, 0.245434,
		37.121445, 37.994370, 25.361969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921864, 37.369087, 24.853798>,  <36.467331, 37.813770, 25.190166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921864, 37.369087, 24.853798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132759, 37.515274, 25.160643>,  <37.259296, 37.602985, 25.344749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132759, 37.515274, 25.160643>,  <36.921864, 37.369087, 24.853798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132759, 37.515274, 25.160643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051172, -0.914799, 0.400655,
		0.848177, -0.171985, -0.501016,
		0.527236, 0.365464, 0.767111,
		37.290932, 37.624912, 25.390776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535522, 37.004562, 24.851919>,  <36.921864, 37.369087, 24.853798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535522, 37.004562, 24.851919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458874, 37.137276, 25.221395>,  <37.412884, 37.216904, 25.443081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458874, 37.137276, 25.221395>,  <37.535522, 37.004562, 24.851919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458874, 37.137276, 25.221395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127959, -0.941543, 0.311646,
		0.973092, -0.058477, 0.222874,
		-0.191621, 0.331779, 0.923691,
		37.401386, 37.236809, 25.498503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933208, 36.542030, 25.199944>,  <37.535522, 37.004562, 24.851919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933208, 36.542030, 25.199944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680561, 36.724331, 25.450813>,  <37.528973, 36.833714, 25.601336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680561, 36.724331, 25.450813>,  <37.933208, 36.542030, 25.199944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680561, 36.724331, 25.450813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241491, -0.884374, 0.399456,
		0.736710, 0.100847, 0.668647,
		-0.631617, 0.455756, 0.627173,
		37.491077, 36.861057, 25.638966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033836, 36.204002, 25.828262>,  <37.933208, 36.542030, 25.199944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033836, 36.204002, 25.828262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696392, 36.401836, 25.911894>,  <37.493927, 36.520535, 25.962072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696392, 36.401836, 25.911894>,  <38.033836, 36.204002, 25.828262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696392, 36.401836, 25.911894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235853, -0.691106, 0.683188,
		0.482390, 0.527030, 0.699671,
		-0.843607, 0.494583, 0.209081,
		37.443310, 36.550213, 25.974619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.395775, 36.234394, 31.793982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018402, 36.365559, 31.813620>,  <38.791977, 36.444260, 31.825401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018402, 36.365559, 31.813620>,  <39.395775, 36.234394, 31.793982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018402, 36.365559, 31.813620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117975, -0.470355, 0.874556,
		0.309870, 0.819292, 0.482433,
		-0.943431, 0.327914, 0.049093,
		38.735374, 36.463932, 31.828348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219460, 36.475082, 32.475559>,  <39.395775, 36.234394, 31.793982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219460, 36.475082, 32.475559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854504, 36.396427, 32.331963>,  <38.635529, 36.349232, 32.245804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.854504, 36.396427, 32.331963>,  <39.219460, 36.475082, 32.475559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854504, 36.396427, 32.331963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245488, -0.438912, 0.864345,
		-0.327531, 0.876749, 0.352186,
		-0.912392, -0.196642, -0.358989,
		38.580788, 36.337433, 32.224266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875858, 36.519650, 33.006115>,  <39.219460, 36.475082, 32.475559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875858, 36.519650, 33.006115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619862, 36.324974, 32.768276>,  <38.466263, 36.208168, 32.625572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619862, 36.324974, 32.768276>,  <38.875858, 36.519650, 33.006115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619862, 36.324974, 32.768276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369634, -0.483407, 0.793529,
		-0.673637, 0.727633, 0.129477,
		-0.639988, -0.486691, -0.594599,
		38.427864, 36.178967, 32.589897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181831, 36.433384, 33.381413>,  <38.875858, 36.519650, 33.006115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181831, 36.433384, 33.381413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195946, 36.149010, 33.100464>,  <38.204414, 35.978386, 32.931896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.195946, 36.149010, 33.100464>,  <38.181831, 36.433384, 33.381413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195946, 36.149010, 33.100464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332110, -0.671204, 0.662713,
		-0.942581, 0.209882, -0.259791,
		0.035281, -0.710940, -0.702368,
		38.206532, 35.935726, 32.889755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628674, 36.002007, 33.590092>,  <38.181831, 36.433384, 33.381413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628674, 36.002007, 33.590092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847485, 35.783817, 33.336094>,  <37.978771, 35.652905, 33.183693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847485, 35.783817, 33.336094>,  <37.628674, 36.002007, 33.590092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847485, 35.783817, 33.336094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296473, -0.835630, 0.462413,
		-0.782856, -0.064694, -0.618831,
		0.547029, -0.545470, -0.634998,
		38.011593, 35.620178, 33.145596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205315, 35.423321, 33.513878>,  <37.628674, 36.002007, 33.590092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205315, 35.423321, 33.513878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.569157, 35.295956, 33.407120>,  <37.787460, 35.219536, 33.343067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.569157, 35.295956, 33.407120>,  <37.205315, 35.423321, 33.513878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569157, 35.295956, 33.407120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181442, -0.882325, 0.434259,
		-0.373759, -0.346579, -0.860342,
		0.909606, -0.318410, -0.266893,
		37.842037, 35.200432, 33.327053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124462, 34.786694, 33.161770>,  <37.205315, 35.423321, 33.513878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124462, 34.786694, 33.161770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500874, 34.783207, 33.297054>,  <37.726719, 34.781113, 33.378227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500874, 34.783207, 33.297054>,  <37.124462, 34.786694, 33.161770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500874, 34.783207, 33.297054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060125, -0.988065, 0.141815,
		0.332940, -0.153787, -0.930323,
		0.941029, -0.008720, 0.338213,
		37.783184, 34.780590, 33.398518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415924, 34.163315, 32.839039>,  <37.124462, 34.786694, 33.161770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415924, 34.163315, 32.839039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657238, 34.270100, 33.139645>,  <37.802029, 34.334171, 33.320007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657238, 34.270100, 33.139645>,  <37.415924, 34.163315, 32.839039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657238, 34.270100, 33.139645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165875, -0.963705, 0.209184,
		0.780082, -0.001541, -0.625675,
		0.603289, 0.266965, 0.751513,
		37.838226, 34.350189, 33.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937988, 33.611488, 32.900688>,  <37.415924, 34.163315, 32.839039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937988, 33.611488, 32.900688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974182, 33.784084, 33.259716>,  <37.995899, 33.887642, 33.475132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974182, 33.784084, 33.259716>,  <37.937988, 33.611488, 32.900688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974182, 33.784084, 33.259716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334738, -0.862009, 0.380646,
		0.937957, 0.266009, -0.222431,
		0.090482, 0.431485, 0.897571,
		38.001328, 33.913528, 33.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541653, 33.370522, 33.121189>,  <37.937988, 33.611488, 32.900688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541653, 33.370522, 33.121189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380489, 33.511505, 33.459053>,  <38.283791, 33.596096, 33.661770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380489, 33.511505, 33.459053>,  <38.541653, 33.370522, 33.121189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380489, 33.511505, 33.459053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215981, -0.860198, 0.461965,
		0.889393, 0.368558, 0.270454,
		-0.402905, 0.352455, 0.844655,
		38.259617, 33.617241, 33.712448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045391, 33.213875, 33.643013>,  <38.541653, 33.370522, 33.121189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045391, 33.213875, 33.643013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707706, 33.263741, 33.851540>,  <38.505096, 33.293659, 33.976654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.707706, 33.263741, 33.851540>,  <39.045391, 33.213875, 33.643013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707706, 33.263741, 33.851540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144731, -0.883437, 0.445637,
		0.516107, 0.451661, 0.727761,
		-0.844208, 0.124667, 0.521317,
		38.454445, 33.301140, 34.007935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216618, 33.149189, 34.481102>,  <39.045391, 33.213875, 33.643013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216618, 33.149189, 34.481102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845940, 33.066525, 34.355553>,  <38.623531, 33.016926, 34.280224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845940, 33.066525, 34.355553>,  <39.216618, 33.149189, 34.481102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845940, 33.066525, 34.355553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130836, -0.960384, 0.246056,
		-0.352294, 0.186953, 0.917026,
		-0.926699, -0.206664, -0.313877,
		38.567928, 33.004524, 34.261391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923653, 33.621578, 35.017799>,  <39.216618, 33.149189, 34.481102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923653, 33.621578, 35.017799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199493, 33.348576, 35.114658>,  <39.364998, 33.184776, 35.172771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199493, 33.348576, 35.114658>,  <38.923653, 33.621578, 35.017799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199493, 33.348576, 35.114658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468250, 0.165159, -0.868023,
		0.552435, 0.711978, 0.433476,
		0.689607, -0.682502, 0.242144,
		39.406376, 33.143826, 35.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622654, 33.971859, 35.035744>,  <38.923653, 33.621578, 35.017799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622654, 33.971859, 35.035744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674786, 33.585514, 34.946190>,  <39.706066, 33.353706, 34.892456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674786, 33.585514, 34.946190>,  <39.622654, 33.971859, 35.035744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674786, 33.585514, 34.946190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541075, 0.258512, -0.800256,
		0.830814, -0.016839, 0.556296,
		0.130333, -0.965861, -0.223886,
		39.713886, 33.295757, 34.879025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861038, 34.441326, 35.460823>,  <39.622654, 33.971859, 35.035744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861038, 34.441326, 35.460823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857254, 34.721867, 35.745926>,  <39.854984, 34.890190, 35.916988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857254, 34.721867, 35.745926>,  <39.861038, 34.441326, 35.460823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857254, 34.721867, 35.745926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225580, 0.692917, -0.684821,
		-0.974179, -0.167265, 0.151651,
		-0.009465, 0.701348, 0.712757,
		39.854416, 34.932270, 35.959751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318340, 34.869331, 35.236973>,  <39.861038, 34.441326, 35.460823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318340, 34.869331, 35.236973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 35.088467, 35.503223>,  <39.642670, 35.219948, 35.662975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 35.088467, 35.503223>,  <39.318340, 34.869331, 35.236973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521046, 35.088467, 35.503223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284820, 0.835156, -0.470523,
		-0.813676, 0.048859, 0.579262,
		0.506763, 0.547839, 0.665630,
		39.673077, 35.252819, 35.702911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863174, 35.357204, 35.528545>,  <39.318340, 34.869331, 35.236973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863174, 35.357204, 35.528545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224033, 35.522690, 35.577503>,  <39.440548, 35.621979, 35.606876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224033, 35.522690, 35.577503>,  <38.863174, 35.357204, 35.528545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224033, 35.522690, 35.577503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307262, 0.815244, -0.490884,
		-0.302861, 0.405243, 0.862585,
		0.902145, 0.413709, 0.122390,
		39.494678, 35.646801, 35.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718441, 36.056465, 35.472248>,  <38.863174, 35.357204, 35.528545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718441, 36.056465, 35.472248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114899, 36.039066, 35.422066>,  <39.352772, 36.028625, 35.391956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114899, 36.039066, 35.422066>,  <38.718441, 36.056465, 35.472248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114899, 36.039066, 35.422066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024138, 0.870035, -0.492399,
		0.130568, 0.491067, 0.861281,
		0.991145, -0.043502, -0.125452,
		39.412243, 36.026016, 35.384430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934669, 36.653748, 35.714561>,  <38.718441, 36.056465, 35.472248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934669, 36.653748, 35.714561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237751, 36.534023, 35.482597>,  <39.419601, 36.462189, 35.343418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237751, 36.534023, 35.482597>,  <38.934669, 36.653748, 35.714561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237751, 36.534023, 35.482597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001951, 0.889655, -0.456629,
		0.652596, 0.344858, 0.674678,
		0.757703, -0.299311, -0.579913,
		39.465061, 36.444229, 35.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401951, 37.254982, 35.749268>,  <38.934669, 36.653748, 35.714561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401951, 37.254982, 35.749268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477512, 37.049461, 35.414524>,  <39.522850, 36.926151, 35.213680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477512, 37.049461, 35.414524>,  <39.401951, 37.254982, 35.749268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477512, 37.049461, 35.414524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030467, 0.854855, -0.517972,
		0.981524, 0.072349, 0.177136,
		0.188901, -0.513798, -0.836856,
		39.534184, 36.895321, 35.163467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820702, 37.743946, 35.317741>,  <39.401951, 37.254982, 35.749268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820702, 37.743946, 35.317741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702881, 37.468349, 35.052853>,  <39.632187, 37.302994, 34.893921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702881, 37.468349, 35.052853>,  <39.820702, 37.743946, 35.317741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702881, 37.468349, 35.052853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157352, 0.718472, -0.677524,
		0.942591, -0.095368, -0.320044,
		-0.294556, -0.688987, -0.662219,
		39.614513, 37.261654, 34.854187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125484, 37.991821, 34.738605>,  <39.820702, 37.743946, 35.317741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125484, 37.991821, 34.738605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831688, 37.747299, 34.620747>,  <39.655411, 37.600586, 34.550030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831688, 37.747299, 34.620747>,  <40.125484, 37.991821, 34.738605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831688, 37.747299, 34.620747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216771, 0.622796, -0.751755,
		0.643060, -0.488289, -0.589955,
		-0.734496, -0.611308, -0.294648,
		39.611340, 37.563908, 34.532352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253883, 37.935970, 34.009758>,  <40.125484, 37.991821, 34.738605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253883, 37.935970, 34.009758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878464, 37.816914, 34.079647>,  <39.653210, 37.745480, 34.121582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878464, 37.816914, 34.079647>,  <40.253883, 37.935970, 34.009758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878464, 37.816914, 34.079647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318034, 0.549177, -0.772825,
		0.134069, -0.780906, -0.610092,
		-0.938552, -0.297642, 0.174727,
		39.596897, 37.727619, 34.132065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106529, 37.714951, 33.386673>,  <40.253883, 37.935970, 34.009758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106529, 37.714951, 33.386673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760010, 37.773598, 33.577682>,  <39.552097, 37.808784, 33.692287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760010, 37.773598, 33.577682>,  <40.106529, 37.714951, 33.386673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760010, 37.773598, 33.577682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319617, 0.571973, -0.755441,
		-0.383892, -0.807063, -0.448638,
		-0.866297, 0.146616, 0.477528,
		39.500122, 37.817581, 33.720940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554501, 37.501305, 32.930134>,  <40.106529, 37.714951, 33.386673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554501, 37.501305, 32.930134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391644, 37.750759, 33.197063>,  <39.293930, 37.900433, 33.357220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391644, 37.750759, 33.197063>,  <39.554501, 37.501305, 32.930134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391644, 37.750759, 33.197063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448093, 0.500269, -0.740907,
		-0.795894, -0.600677, 0.075765,
		-0.407143, 0.623634, 0.667320,
		39.269501, 37.937851, 33.397259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882416, 37.527111, 32.736584>,  <39.554501, 37.501305, 32.930134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882416, 37.527111, 32.736584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960297, 37.858440, 32.946716>,  <39.007023, 38.057240, 33.072796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960297, 37.858440, 32.946716>,  <38.882416, 37.527111, 32.736584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960297, 37.858440, 32.946716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379163, 0.557504, -0.738529,
		-0.904615, -0.055394, 0.422616,
		0.194700, 0.828324, 0.525330,
		39.018707, 38.106937, 33.104317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257332, 38.033447, 32.632927>,  <38.882416, 37.527111, 32.736584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257332, 38.033447, 32.632927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568802, 38.249012, 32.761452>,  <38.755684, 38.378349, 32.838566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568802, 38.249012, 32.761452>,  <38.257332, 38.033447, 32.632927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568802, 38.249012, 32.761452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133309, 0.642516, -0.754587,
		-0.613101, 0.544745, 0.572153,
		0.778676, 0.538912, 0.321307,
		38.802406, 38.410686, 32.857845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064625, 38.680264, 32.400146>,  <38.257332, 38.033447, 32.632927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064625, 38.680264, 32.400146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459995, 38.705147, 32.455498>,  <38.697216, 38.720078, 32.488708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459995, 38.705147, 32.455498>,  <38.064625, 38.680264, 32.400146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459995, 38.705147, 32.455498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079938, 0.561676, -0.823486,
		-0.128957, 0.825015, 0.550200,
		0.988423, 0.062213, 0.138382,
		38.756523, 38.723812, 32.497013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657875, 39.188740, 32.924133>,  <38.064625, 38.680264, 32.400146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657875, 39.188740, 32.924133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277847, 39.305656, 32.967819>,  <37.049831, 39.375805, 32.994030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277847, 39.305656, 32.967819>,  <37.657875, 39.188740, 32.924133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277847, 39.305656, 32.967819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220615, -0.876765, 0.427332,
		0.220658, 0.381903, 0.897474,
		-0.950073, 0.292290, 0.109212,
		36.992825, 39.393345, 33.000584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474201, 39.068478, 33.602058>,  <37.657875, 39.188740, 32.924133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474201, 39.068478, 33.602058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133907, 39.059486, 33.392010>,  <36.929733, 39.054092, 33.265980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133907, 39.059486, 33.392010>,  <37.474201, 39.068478, 33.602058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133907, 39.059486, 33.392010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214457, -0.897289, 0.385850,
		-0.479857, 0.440870, 0.758532,
		-0.850733, -0.022481, -0.525118,
		36.878689, 39.052742, 33.234474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136105, 38.640934, 33.963509>,  <37.474201, 39.068478, 33.602058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136105, 38.640934, 33.963509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.901981, 38.661839, 33.639858>,  <36.761509, 38.674381, 33.445667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.901981, 38.661839, 33.639858>,  <37.136105, 38.640934, 33.963509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901981, 38.661839, 33.639858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346729, -0.918206, 0.191512,
		-0.732938, 0.392641, 0.555550,
		-0.585305, 0.052258, -0.809128,
		36.726391, 38.677517, 33.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531174, 38.237568, 34.282879>,  <37.136105, 38.640934, 33.963509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531174, 38.237568, 34.282879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505276, 38.249458, 33.883896>,  <36.489735, 38.256592, 33.644505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505276, 38.249458, 33.883896>,  <36.531174, 38.237568, 34.282879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505276, 38.249458, 33.883896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459844, -0.887993, 0.003384,
		-0.885636, 0.458895, 0.071166,
		-0.064748, 0.029728, -0.997459,
		36.485851, 38.258377, 33.584660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785641, 38.115356, 33.997475>,  <36.531174, 38.237568, 34.282879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785641, 38.115356, 33.997475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038750, 38.024178, 33.701466>,  <36.190617, 37.969471, 33.523861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.038750, 38.024178, 33.701466>,  <35.785641, 38.115356, 33.997475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038750, 38.024178, 33.701466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406544, -0.911175, -0.066957,
		-0.659030, 0.343221, -0.669237,
		0.632773, -0.227947, -0.740026,
		36.228580, 37.955791, 33.479458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305832, 37.877228, 33.580902>,  <35.785641, 38.115356, 33.997475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305832, 37.877228, 33.580902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.657166, 37.738087, 33.449738>,  <35.867966, 37.654602, 33.371037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.657166, 37.738087, 33.449738>,  <35.305832, 37.877228, 33.580902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657166, 37.738087, 33.449738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372030, -0.928144, -0.011930,
		-0.300202, 0.132473, -0.944632,
		0.878335, -0.347850, -0.327915,
		35.920666, 37.633732, 33.351364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186844, 37.369408, 32.958893>,  <35.305832, 37.877228, 33.580902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186844, 37.369408, 32.958893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.557770, 37.277012, 33.076691>,  <35.780327, 37.221577, 33.147369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.557770, 37.277012, 33.076691>,  <35.186844, 37.369408, 32.958893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557770, 37.277012, 33.076691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275258, -0.954048, 0.118433,
		0.253609, -0.190888, -0.948285,
		0.927316, -0.230987, 0.294499,
		35.835964, 37.207714, 33.165039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356628, 36.937183, 32.430702>,  <35.186844, 37.369408, 32.958893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356628, 36.937183, 32.430702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581779, 36.860237, 32.752239>,  <35.716869, 36.814068, 32.945160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581779, 36.860237, 32.752239>,  <35.356628, 36.937183, 32.430702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581779, 36.860237, 32.752239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287301, -0.957433, -0.027941,
		0.774999, -0.215217, -0.594187,
		0.562881, -0.192365, 0.803841,
		35.750645, 36.802528, 32.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596710, 36.293499, 32.293110>,  <35.356628, 36.937183, 32.430702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596710, 36.293499, 32.293110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652630, 36.323784, 32.688023>,  <35.686184, 36.341953, 32.924969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652630, 36.323784, 32.688023>,  <35.596710, 36.293499, 32.293110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652630, 36.323784, 32.688023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331823, -0.935837, 0.118756,
		0.932925, -0.344205, -0.105709,
		0.139803, 0.075714, 0.987281,
		35.694572, 36.346497, 32.984207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686840, 35.617916, 32.552422>,  <35.596710, 36.293499, 32.293110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686840, 35.617916, 32.552422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.585518, 35.809856, 32.888416>,  <35.524727, 35.925022, 33.090012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.585518, 35.809856, 32.888416>,  <35.686840, 35.617916, 32.552422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585518, 35.809856, 32.888416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417648, -0.837459, 0.352467,
		0.872587, -0.261538, 0.412541,
		-0.253302, 0.479855, 0.839987,
		35.509525, 35.953812, 33.140411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884014, 35.153099, 33.065247>,  <35.686840, 35.617916, 32.552422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884014, 35.153099, 33.065247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.607357, 35.402290, 33.211411>,  <35.441364, 35.551807, 33.299110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.607357, 35.402290, 33.211411>,  <35.884014, 35.153099, 33.065247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607357, 35.402290, 33.211411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623405, -0.770418, 0.133504,
		0.364692, -0.135464, 0.921222,
		-0.691641, 0.622982, 0.365414,
		35.399864, 35.589184, 33.321033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720444, 34.799675, 33.678905>,  <35.884014, 35.153099, 33.065247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720444, 34.799675, 33.678905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.433804, 35.059219, 33.576565>,  <35.261818, 35.214947, 33.515160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.433804, 35.059219, 33.576565>,  <35.720444, 34.799675, 33.678905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433804, 35.059219, 33.576565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676407, -0.735998, 0.027946,
		-0.170170, 0.193083, 0.966313,
		-0.716601, 0.648865, -0.255847,
		35.218822, 35.253880, 33.499809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.734749, 42.776745, 31.016632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404343, 42.619080, 30.855469>,  <37.206100, 42.524479, 30.758772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404343, 42.619080, 30.855469>,  <37.734749, 42.776745, 31.016632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404343, 42.619080, 30.855469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205025, -0.455738, 0.866180,
		-0.525040, 0.798082, 0.295631,
		-0.826013, -0.394168, -0.402907,
		37.156540, 42.500828, 30.734596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336582, 42.743500, 31.575354>,  <37.734749, 42.776745, 31.016632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336582, 42.743500, 31.575354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156910, 42.488621, 31.324844>,  <37.049107, 42.335693, 31.174540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156910, 42.488621, 31.324844>,  <37.336582, 42.743500, 31.575354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156910, 42.488621, 31.324844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402952, -0.481142, 0.778545,
		-0.797413, 0.602064, -0.040641,
		-0.449180, -0.637198, -0.626272,
		37.022156, 42.297462, 31.136963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614418, 42.585106, 31.794714>,  <37.336582, 42.743500, 31.575354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614418, 42.585106, 31.794714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732471, 42.259197, 31.595098>,  <36.803303, 42.063652, 31.475328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732471, 42.259197, 31.595098>,  <36.614418, 42.585106, 31.794714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732471, 42.259197, 31.595098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274252, -0.572569, 0.772625,
		-0.915248, -0.091168, -0.392440,
		0.295137, -0.814772, -0.499040,
		36.821014, 42.014767, 31.445387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159035, 42.014683, 32.070538>,  <36.614418, 42.585106, 31.794714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159035, 42.014683, 32.070538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446274, 41.808037, 31.884016>,  <36.618618, 41.684048, 31.772104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446274, 41.808037, 31.884016>,  <36.159035, 42.014683, 32.070538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446274, 41.808037, 31.884016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099902, -0.739612, 0.665578,
		-0.688731, -0.431368, -0.582728,
		0.718101, -0.516620, -0.466299,
		36.661705, 41.653049, 31.744125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886055, 41.310913, 31.917265>,  <36.159035, 42.014683, 32.070538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886055, 41.310913, 31.917265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284916, 41.294670, 31.891848>,  <36.524231, 41.284924, 31.876596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284916, 41.294670, 31.891848>,  <35.886055, 41.310913, 31.917265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284916, 41.294670, 31.891848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008118, -0.895538, 0.444911,
		-0.074972, -0.443128, -0.893317,
		0.997153, -0.040608, -0.063543,
		36.584061, 41.282486, 31.872784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060081, 40.619781, 31.643114>,  <35.886055, 41.310913, 31.917265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060081, 40.619781, 31.643114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384335, 40.754559, 31.834673>,  <36.578888, 40.835423, 31.949608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384335, 40.754559, 31.834673>,  <36.060081, 40.619781, 31.643114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384335, 40.754559, 31.834673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141536, -0.906354, 0.398107,
		0.568190, -0.254938, -0.782411,
		0.810634, 0.336940, 0.478899,
		36.627525, 40.855640, 31.978342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570492, 40.067787, 31.528742>,  <36.060081, 40.619781, 31.643114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570492, 40.067787, 31.528742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650684, 40.277344, 31.859884>,  <36.698799, 40.403076, 32.058571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650684, 40.277344, 31.859884>,  <36.570492, 40.067787, 31.528742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650684, 40.277344, 31.859884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023837, -0.847370, 0.530468,
		0.979408, -0.086614, -0.182369,
		0.200480, 0.523891, 0.827856,
		36.710827, 40.434509, 32.108242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949631, 39.596420, 31.837381>,  <36.570492, 40.067787, 31.528742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949631, 39.596420, 31.837381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897923, 39.871181, 32.123444>,  <36.866898, 40.036037, 32.295082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897923, 39.871181, 32.123444>,  <36.949631, 39.596420, 31.837381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897923, 39.871181, 32.123444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109387, -0.726684, 0.678207,
		0.985557, 0.009445, 0.169078,
		-0.129272, 0.686907, 0.715156,
		36.859142, 40.077255, 32.337990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552822, 39.566616, 32.257084>,  <36.949631, 39.596420, 31.837381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552822, 39.566616, 32.257084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245850, 39.700680, 32.475704>,  <37.061665, 39.781116, 32.606876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245850, 39.700680, 32.475704>,  <37.552822, 39.566616, 32.257084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245850, 39.700680, 32.475704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008266, -0.857579, 0.514285,
		0.641075, 0.390162, 0.660905,
		-0.767433, 0.335158, 0.546548,
		37.015621, 39.801228, 32.639668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283306, 39.578068, 32.438591>,  <37.552822, 39.566616, 32.257084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283306, 39.578068, 32.438591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621216, 39.379963, 32.357521>,  <38.823963, 39.261101, 32.308880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621216, 39.379963, 32.357521>,  <38.283306, 39.578068, 32.438591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621216, 39.379963, 32.357521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262013, 0.713049, -0.650316,
		0.466590, 0.496266, 0.732129,
		0.844774, -0.495258, -0.202674,
		38.874649, 39.231384, 32.296719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850281, 40.064796, 32.411667>,  <38.283306, 39.578068, 32.438591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850281, 40.064796, 32.411667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938957, 39.744423, 32.189186>,  <38.992165, 39.552200, 32.055698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938957, 39.744423, 32.189186>,  <38.850281, 40.064796, 32.411667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938957, 39.744423, 32.189186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271511, 0.598539, -0.753680,
		0.936555, 0.016069, 0.350151,
		0.221690, -0.800933, -0.556202,
		39.005463, 39.504143, 32.022327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543365, 40.182247, 32.198215>,  <38.850281, 40.064796, 32.411667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543365, 40.182247, 32.198215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420349, 39.886421, 31.958727>,  <39.346539, 39.708927, 31.815033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420349, 39.886421, 31.958727>,  <39.543365, 40.182247, 32.198215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420349, 39.886421, 31.958727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478374, 0.423749, -0.769152,
		0.822544, -0.522956, 0.223469,
		-0.307538, -0.739563, -0.598721,
		39.328087, 39.664551, 31.779110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189476, 40.109192, 31.689280>,  <39.543365, 40.182247, 32.198215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189476, 40.109192, 31.689280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880867, 39.935524, 31.503265>,  <39.695702, 39.831322, 31.391657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880867, 39.935524, 31.503265>,  <40.189476, 40.109192, 31.689280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880867, 39.935524, 31.503265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327698, 0.355333, -0.875416,
		0.545320, -0.827790, -0.131870,
		-0.771518, -0.434169, -0.465035,
		39.649410, 39.805275, 31.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410461, 39.570644, 31.185772>,  <40.189476, 40.109192, 31.689280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410461, 39.570644, 31.185772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050049, 39.709614, 31.081898>,  <39.833801, 39.792995, 31.019573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050049, 39.709614, 31.081898>,  <40.410461, 39.570644, 31.185772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050049, 39.709614, 31.081898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329119, 0.157641, -0.931037,
		-0.282529, -0.924362, -0.256384,
		-0.901032, 0.347426, -0.259687,
		39.779739, 39.813843, 31.003992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382645, 39.490124, 30.463472>,  <40.410461, 39.570644, 31.185772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382645, 39.490124, 30.463472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071449, 39.732510, 30.529861>,  <39.884731, 39.877941, 30.569695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071449, 39.732510, 30.529861>,  <40.382645, 39.490124, 30.463472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071449, 39.732510, 30.529861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098548, 0.378596, -0.920301,
		-0.620502, -0.699627, -0.354259,
		-0.777988, 0.605960, 0.165973,
		39.838055, 39.914299, 30.579653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021530, 39.551907, 29.790243>,  <40.382645, 39.490124, 30.463472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021530, 39.551907, 29.790243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894684, 39.865379, 30.003887>,  <39.818577, 40.053463, 30.132074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894684, 39.865379, 30.003887>,  <40.021530, 39.551907, 29.790243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894684, 39.865379, 30.003887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186579, 0.500619, -0.845322,
		-0.929852, -0.367719, -0.012534,
		-0.317116, 0.783686, 0.534110,
		39.799549, 40.100487, 30.164120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414917, 39.792950, 29.407089>,  <40.021530, 39.551907, 29.790243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414917, 39.792950, 29.407089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529697, 40.105232, 29.629137>,  <39.598564, 40.292603, 29.762365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529697, 40.105232, 29.629137>,  <39.414917, 39.792950, 29.407089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529697, 40.105232, 29.629137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217234, 0.617424, -0.756040,
		-0.932989, 0.096355, 0.346766,
		0.286950, 0.780707, 0.555119,
		39.615784, 40.339443, 29.795673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935066, 40.399632, 29.374510>,  <39.414917, 39.792950, 29.407089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935066, 40.399632, 29.374510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278374, 40.572124, 29.485806>,  <39.484356, 40.675621, 29.552584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278374, 40.572124, 29.485806>,  <38.935066, 40.399632, 29.374510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278374, 40.572124, 29.485806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147045, 0.726066, -0.671719,
		-0.491687, 0.535600, 0.686568,
		0.858266, 0.431232, 0.278240,
		39.535854, 40.701492, 29.569277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842007, 41.112556, 29.260380>,  <38.935066, 40.399632, 29.374510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842007, 41.112556, 29.260380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237717, 41.090801, 29.314598>,  <39.475143, 41.077747, 29.347130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237717, 41.090801, 29.314598>,  <38.842007, 41.112556, 29.260380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237717, 41.090801, 29.314598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127874, 0.770958, -0.623917,
		-0.070566, 0.634559, 0.769646,
		0.989277, -0.054390, 0.135547,
		39.534500, 41.074486, 29.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100216, 41.824841, 29.384630>,  <38.842007, 41.112556, 29.260380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100216, 41.824841, 29.384630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360863, 41.574425, 29.213295>,  <39.517250, 41.424175, 29.110495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360863, 41.574425, 29.213295>,  <39.100216, 41.824841, 29.384630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360863, 41.574425, 29.213295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107551, 0.635226, -0.764801,
		0.750885, 0.452289, 0.481255,
		0.651617, -0.626037, -0.428337,
		39.556347, 41.386612, 29.084793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697193, 42.269230, 29.205408>,  <39.100216, 41.824841, 29.384630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697193, 42.269230, 29.205408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748737, 41.925495, 29.007441>,  <39.779663, 41.719254, 28.888660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748737, 41.925495, 29.007441>,  <39.697193, 42.269230, 29.205408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748737, 41.925495, 29.007441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331465, 0.507697, -0.795220,
		0.934626, -0.061574, 0.350262,
		0.128862, -0.859332, -0.494917,
		39.787395, 41.667694, 28.858965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309822, 42.446785, 28.801340>,  <39.697193, 42.269230, 29.205408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309822, 42.446785, 28.801340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135284, 42.121468, 28.647379>,  <40.030563, 41.926277, 28.555002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135284, 42.121468, 28.647379>,  <40.309822, 42.446785, 28.801340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135284, 42.121468, 28.647379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435396, 0.183509, -0.881337,
		0.787422, -0.552153, 0.274033,
		-0.436345, -0.813297, -0.384904,
		40.004379, 41.877480, 28.531908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792660, 42.095726, 28.389105>,  <40.309822, 42.446785, 28.801340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792660, 42.095726, 28.389105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447914, 41.967777, 28.231686>,  <40.241066, 41.891006, 28.137234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447914, 41.967777, 28.231686>,  <40.792660, 42.095726, 28.389105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447914, 41.967777, 28.231686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370050, 0.133978, -0.919300,
		0.346785, -0.937940, 0.002898,
		-0.861860, -0.319872, -0.393547,
		40.189358, 41.871815, 28.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.872555, 37.509575, 24.381140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129749, 37.668125, 24.643272>,  <34.284065, 37.763256, 24.800552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129749, 37.668125, 24.643272>,  <33.872555, 37.509575, 24.381140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129749, 37.668125, 24.643272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082149, -0.886416, 0.455542,
		0.761460, -0.239072, -0.602514,
		0.642985, 0.396373, 0.655331,
		34.322643, 37.787037, 24.839872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330029, 36.950851, 24.414833>,  <33.872555, 37.509575, 24.381140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330029, 36.950851, 24.414833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377617, 37.162308, 24.751020>,  <34.406170, 37.289181, 24.952734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377617, 37.162308, 24.751020>,  <34.330029, 36.950851, 24.414833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377617, 37.162308, 24.751020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042212, -0.843024, 0.536217,
		0.992000, -0.099272, -0.077980,
		0.118970, 0.528636, 0.840470,
		34.413307, 37.320900, 25.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601650, 36.495136, 24.831341>,  <34.330029, 36.950851, 24.414833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601650, 36.495136, 24.831341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522564, 36.765064, 25.115742>,  <34.475113, 36.927021, 25.286383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522564, 36.765064, 25.115742>,  <34.601650, 36.495136, 24.831341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522564, 36.765064, 25.115742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212359, -0.737583, 0.640995,
		0.956980, -0.024251, 0.289138,
		-0.197718, 0.674821, 0.711002,
		34.463249, 36.967510, 25.329042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958065, 36.284431, 25.405174>,  <34.601650, 36.495136, 24.831341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958065, 36.284431, 25.405174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696651, 36.520790, 25.594376>,  <34.539803, 36.662605, 25.707897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696651, 36.520790, 25.594376>,  <34.958065, 36.284431, 25.405174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696651, 36.520790, 25.594376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060651, -0.663797, 0.745449,
		0.754463, 0.458488, 0.469652,
		-0.653534, 0.590899, 0.473003,
		34.500591, 36.698059, 25.736277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021133, 36.189678, 26.185020>,  <34.958065, 36.284431, 25.405174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021133, 36.189678, 26.185020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674488, 36.386566, 26.152273>,  <34.466499, 36.504700, 26.132626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674488, 36.386566, 26.152273>,  <35.021133, 36.189678, 26.185020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674488, 36.386566, 26.152273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384356, -0.553862, 0.738585,
		0.318201, 0.671534, 0.669171,
		-0.866613, 0.492218, -0.081868,
		34.414505, 36.534233, 26.127712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862709, 36.471565, 26.812820>,  <35.021133, 36.189678, 26.185020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862709, 36.471565, 26.812820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515083, 36.417557, 26.622458>,  <34.306507, 36.385151, 26.508240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515083, 36.417557, 26.622458>,  <34.862709, 36.471565, 26.812820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515083, 36.417557, 26.622458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324750, -0.569991, 0.754750,
		-0.373173, 0.810480, 0.451512,
		-0.869068, -0.135024, -0.475909,
		34.254364, 36.377048, 26.479685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321888, 36.701717, 27.232975>,  <34.862709, 36.471565, 26.812820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321888, 36.701717, 27.232975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117359, 36.457973, 26.990576>,  <33.994640, 36.311726, 26.845137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117359, 36.457973, 26.990576>,  <34.321888, 36.701717, 27.232975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117359, 36.457973, 26.990576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320887, -0.518773, 0.792405,
		-0.797234, 0.599630, 0.069724,
		-0.511321, -0.609359, -0.605997,
		33.963963, 36.275166, 26.808777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684448, 36.646736, 27.523098>,  <34.321888, 36.701717, 27.232975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684448, 36.646736, 27.523098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731091, 36.337059, 27.274250>,  <33.759075, 36.151253, 27.124941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731091, 36.337059, 27.274250>,  <33.684448, 36.646736, 27.523098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731091, 36.337059, 27.274250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, -0.614838, 0.695396,
		-0.920871, 0.150353, -0.359709,
		0.116608, -0.774189, -0.622121,
		33.766071, 36.104801, 27.087614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028568, 36.167347, 27.571556>,  <33.684448, 36.646736, 27.523098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028568, 36.167347, 27.571556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333729, 35.949245, 27.432600>,  <33.516827, 35.818386, 27.349226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.333729, 35.949245, 27.432600>,  <33.028568, 36.167347, 27.571556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333729, 35.949245, 27.432600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142413, -0.665858, 0.732361,
		-0.630635, -0.509246, -0.585635,
		0.762900, -0.545254, -0.347390,
		33.562599, 35.785667, 27.328382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799324, 35.424881, 27.770657>,  <33.028568, 36.167347, 27.571556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799324, 35.424881, 27.770657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186741, 35.388069, 27.678177>,  <33.419189, 35.365982, 27.622688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186741, 35.388069, 27.678177>,  <32.799324, 35.424881, 27.770657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186741, 35.388069, 27.678177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150782, -0.522070, 0.839469,
		-0.197960, -0.847923, -0.491771,
		0.968544, -0.092031, -0.231200,
		33.477303, 35.360458, 27.608816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041031, 34.701008, 27.912619>,  <32.799324, 35.424881, 27.770657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041031, 34.701008, 27.912619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385311, 34.900970, 27.951164>,  <33.591881, 35.020947, 27.974291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385311, 34.900970, 27.951164>,  <33.041031, 34.701008, 27.912619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385311, 34.900970, 27.951164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208995, -0.519540, 0.828492,
		0.464230, -0.692948, -0.551647,
		0.860704, 0.499902, 0.096363,
		33.643524, 35.050941, 27.980074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456631, 34.238728, 28.153343>,  <33.041031, 34.701008, 27.912619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456631, 34.238728, 28.153343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.652370, 34.577240, 28.237576>,  <33.769814, 34.780346, 28.288115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.652370, 34.577240, 28.237576>,  <33.456631, 34.238728, 28.153343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652370, 34.577240, 28.237576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295193, -0.387955, 0.873128,
		0.820608, -0.365102, -0.439662,
		0.489350, 0.846281, 0.210583,
		33.799175, 34.831123, 28.300751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081799, 34.022503, 28.464073>,  <33.456631, 34.238728, 28.153343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081799, 34.022503, 28.464073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025784, 34.402245, 28.576588>,  <33.992172, 34.630089, 28.644096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025784, 34.402245, 28.576588>,  <34.081799, 34.022503, 28.464073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025784, 34.402245, 28.576588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161765, -0.258334, 0.952416,
		0.976842, 0.178879, -0.117395,
		-0.140041, 0.949350, 0.281288,
		33.983772, 34.687050, 28.660975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669800, 34.192554, 28.884832>,  <34.081799, 34.022503, 28.464073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669800, 34.192554, 28.884832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352093, 34.418232, 28.975014>,  <34.161469, 34.553638, 29.029123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352093, 34.418232, 28.975014>,  <34.669800, 34.192554, 28.884832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352093, 34.418232, 28.975014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036007, -0.414134, 0.909503,
		0.606502, 0.714270, 0.349248,
		-0.794266, 0.564191, 0.225455,
		34.113811, 34.587490, 29.042650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268932, 34.586811, 29.203287>,  <34.669800, 34.192554, 28.884832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268932, 34.586811, 29.203287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622753, 34.419537, 29.120642>,  <35.835045, 34.319172, 29.071054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622753, 34.419537, 29.120642>,  <35.268932, 34.586811, 29.203287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622753, 34.419537, 29.120642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073458, 0.562324, -0.823648,
		0.460620, 0.713382, 0.528124,
		0.884553, -0.418183, -0.206614,
		35.888119, 34.294083, 29.058657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742180, 35.189301, 29.076662>,  <35.268932, 34.586811, 29.203287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742180, 35.189301, 29.076662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921738, 34.868103, 28.919847>,  <36.029472, 34.675385, 28.825758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921738, 34.868103, 28.919847>,  <35.742180, 35.189301, 29.076662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921738, 34.868103, 28.919847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170120, 0.507494, -0.844695,
		0.877243, 0.312483, 0.364416,
		0.448891, -0.802997, -0.392036,
		36.056404, 34.627205, 28.802237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479263, 35.381222, 28.975147>,  <35.742180, 35.189301, 29.076662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479263, 35.381222, 28.975147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404858, 35.077469, 28.725752>,  <36.360214, 34.895218, 28.576115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404858, 35.077469, 28.725752>,  <36.479263, 35.381222, 28.975147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404858, 35.077469, 28.725752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254763, 0.575583, -0.777045,
		0.948943, -0.303385, 0.086394,
		-0.186017, -0.759382, -0.623487,
		36.349052, 34.849655, 28.538706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045807, 35.209072, 28.680380>,  <36.479263, 35.381222, 28.975147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045807, 35.209072, 28.680380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769745, 35.086945, 28.417938>,  <36.604107, 35.013668, 28.260473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769745, 35.086945, 28.417938>,  <37.045807, 35.209072, 28.680380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769745, 35.086945, 28.417938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354998, 0.647213, -0.674605,
		0.630614, -0.698492, -0.338281,
		-0.690147, -0.305326, -0.656105,
		36.562698, 34.995350, 28.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389164, 34.986843, 28.073046>,  <37.045807, 35.209072, 28.680380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389164, 34.986843, 28.073046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017952, 35.035458, 27.932194>,  <36.795227, 35.064625, 27.847683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017952, 35.035458, 27.932194>,  <37.389164, 34.986843, 28.073046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017952, 35.035458, 27.932194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372510, 0.306150, -0.876076,
		0.001331, -0.944194, -0.329388,
		-0.928028, 0.121534, -0.352129,
		36.739544, 35.071918, 27.826555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427998, 34.793278, 27.369942>,  <37.389164, 34.986843, 28.073046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427998, 34.793278, 27.369942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097950, 35.018303, 27.390720>,  <36.899921, 35.153320, 27.403189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097950, 35.018303, 27.390720>,  <37.427998, 34.793278, 27.369942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097950, 35.018303, 27.390720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277325, 0.483422, -0.830297,
		-0.492211, -0.670687, -0.554894,
		-0.825118, 0.562567, 0.051948,
		36.850414, 35.187073, 27.406305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159260, 34.902966, 26.681889>,  <37.427998, 34.793278, 27.369942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159260, 34.902966, 26.681889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969372, 35.197746, 26.874367>,  <36.855438, 35.374615, 26.989853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969372, 35.197746, 26.874367>,  <37.159260, 34.902966, 26.681889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969372, 35.197746, 26.874367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153732, 0.607751, -0.779105,
		-0.866606, -0.295883, -0.401805,
		-0.474722, 0.736948, 0.481194,
		36.826954, 35.418831, 27.018724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540722, 35.208241, 26.299088>,  <37.159260, 34.902966, 26.681889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540722, 35.208241, 26.299088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660431, 35.504936, 26.539175>,  <36.732258, 35.682953, 26.683228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660431, 35.504936, 26.539175>,  <36.540722, 35.208241, 26.299088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660431, 35.504936, 26.539175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072256, 0.609627, -0.789389,
		-0.951427, 0.279613, 0.128851,
		0.299275, 0.741736, 0.600219,
		36.750214, 35.727455, 26.719240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323811, 35.695271, 25.821442>,  <36.540722, 35.208241, 26.299088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323811, 35.695271, 25.821442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552586, 35.886562, 26.088030>,  <36.689850, 36.001339, 26.247982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552586, 35.886562, 26.088030>,  <36.323811, 35.695271, 25.821442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552586, 35.886562, 26.088030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274578, 0.653994, -0.704910,
		-0.772979, 0.586161, 0.242730,
		0.571935, 0.478232, 0.666471,
		36.724167, 36.030033, 26.287971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090866, 36.462910, 25.830050>,  <36.323811, 35.695271, 25.821442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090866, 36.462910, 25.830050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453503, 36.454681, 25.998657>,  <36.671085, 36.449745, 26.099821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453503, 36.454681, 25.998657>,  <36.090866, 36.462910, 25.830050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453503, 36.454681, 25.998657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267211, 0.801067, -0.535622,
		-0.326648, 0.598222, 0.731732,
		0.906587, -0.020567, 0.421518,
		36.725479, 36.448513, 26.125113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307648, 37.152500, 26.039759>,  <36.090866, 36.462910, 25.830050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307648, 37.152500, 26.039759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655800, 36.955685, 26.032328>,  <36.864689, 36.837597, 26.027868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655800, 36.955685, 26.032328>,  <36.307648, 37.152500, 26.039759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655800, 36.955685, 26.032328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464477, 0.832981, -0.300672,
		0.163418, 0.253069, 0.953547,
		0.870377, -0.492036, -0.018579,
		36.916912, 36.808075, 26.026754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777096, 37.374928, 26.577393>,  <36.307648, 37.152500, 26.039759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777096, 37.374928, 26.577393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984390, 37.223736, 26.270521>,  <37.108768, 37.133022, 26.086399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984390, 37.223736, 26.270521>,  <36.777096, 37.374928, 26.577393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984390, 37.223736, 26.270521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452899, 0.882220, -0.128723,
		0.725475, -0.280745, 0.628385,
		0.518236, -0.377980, -0.767178,
		37.139862, 37.110340, 26.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375069, 37.790958, 26.662722>,  <36.777096, 37.374928, 26.577393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375069, 37.790958, 26.662722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394337, 37.619141, 26.302017>,  <37.405895, 37.516048, 26.085594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394337, 37.619141, 26.302017>,  <37.375069, 37.790958, 26.662722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394337, 37.619141, 26.302017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342250, 0.855252, -0.389114,
		0.938374, -0.289885, 0.188207,
		0.048166, -0.429548, -0.901759,
		37.408787, 37.490276, 26.031490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998924, 38.075794, 26.381117>,  <37.375069, 37.790958, 26.662722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998924, 38.075794, 26.381117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778179, 37.932297, 26.079985>,  <37.645733, 37.846199, 25.899305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778179, 37.932297, 26.079985>,  <37.998924, 38.075794, 26.381117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778179, 37.932297, 26.079985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018283, 0.907731, -0.419153,
		0.833736, -0.217549, -0.507499,
		-0.551860, -0.358742, -0.752831,
		37.612621, 37.824673, 25.854136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720467, 38.232021, 26.333599>,  <37.998924, 38.075794, 26.381117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720467, 38.232021, 26.333599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062214, 38.335739, 26.513742>,  <39.267262, 38.397972, 26.621828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062214, 38.335739, 26.513742>,  <38.720467, 38.232021, 26.333599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062214, 38.335739, 26.513742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280658, -0.499136, 0.819814,
		0.437365, -0.826818, -0.353672,
		0.854367, 0.259297, 0.450358,
		39.318523, 38.413528, 26.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106335, 37.609116, 26.411732>,  <38.720467, 38.232021, 26.333599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106335, 37.609116, 26.411732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260822, 37.869213, 26.673424>,  <39.353516, 38.025272, 26.830439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260822, 37.869213, 26.673424>,  <39.106335, 37.609116, 26.411732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260822, 37.869213, 26.673424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221504, -0.623128, 0.750099,
		0.895418, -0.434615, -0.096630,
		0.386217, 0.650248, 0.654229,
		39.376686, 38.064289, 26.869692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496361, 37.278931, 26.928055>,  <39.106335, 37.609116, 26.411732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496361, 37.278931, 26.928055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459156, 37.629059, 27.117857>,  <39.436832, 37.839138, 27.231737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459156, 37.629059, 27.117857>,  <39.496361, 37.278931, 26.928055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459156, 37.629059, 27.117857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255354, -0.481602, 0.838364,
		0.962363, -0.043187, 0.268313,
		-0.093013, 0.875325, 0.474504,
		39.431252, 37.891655, 27.260208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903938, 37.228752, 27.521196>,  <39.496361, 37.278931, 26.928055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903938, 37.228752, 27.521196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656837, 37.533115, 27.600599>,  <39.508575, 37.715733, 27.648241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656837, 37.533115, 27.600599>,  <39.903938, 37.228752, 27.521196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656837, 37.533115, 27.600599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197150, -0.394234, 0.897614,
		0.761258, 0.515367, 0.393552,
		-0.617752, 0.760905, 0.198509,
		39.471512, 37.761387, 27.660152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115520, 37.581215, 28.140234>,  <39.903938, 37.228752, 27.521196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115520, 37.581215, 28.140234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729992, 37.686523, 28.123592>,  <39.498672, 37.749710, 28.113607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729992, 37.686523, 28.123592>,  <40.115520, 37.581215, 28.140234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729992, 37.686523, 28.123592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121980, -0.296890, 0.947089,
		0.236990, 0.917902, 0.318264,
		-0.963824, 0.263273, -0.041605,
		39.440845, 37.765507, 28.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024345, 38.148716, 28.622570>,  <40.115520, 37.581215, 28.140234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024345, 38.148716, 28.622570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678097, 37.966835, 28.538715>,  <39.470348, 37.857708, 28.488403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678097, 37.966835, 28.538715>,  <40.024345, 38.148716, 28.622570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678097, 37.966835, 28.538715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165106, -0.136050, 0.976847,
		-0.472695, 0.880191, 0.042693,
		-0.865621, -0.454702, -0.209635,
		39.418411, 37.830425, 28.475824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616497, 38.314919, 29.140545>,  <40.024345, 38.148716, 28.622570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616497, 38.314919, 29.140545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351166, 38.041168, 29.019463>,  <39.191967, 37.876919, 28.946814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351166, 38.041168, 29.019463>,  <39.616497, 38.314919, 29.140545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351166, 38.041168, 29.019463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332626, -0.092706, 0.938491,
		-0.670343, 0.723212, -0.166147,
		-0.663325, -0.684375, -0.302704,
		39.152168, 37.835857, 28.928652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846771, 38.547745, 29.185522>,  <39.616497, 38.314919, 29.140545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846771, 38.547745, 29.185522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.883663, 38.152637, 29.235813>,  <38.905796, 37.915573, 29.265987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.883663, 38.152637, 29.235813>,  <38.846771, 38.547745, 29.185522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883663, 38.152637, 29.235813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493368, 0.064346, 0.867438,
		-0.864918, -0.142029, -0.481399,
		0.092225, -0.987769, 0.125727,
		38.911331, 37.856308, 29.273531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417255, 38.448441, 29.851006>,  <38.846771, 38.547745, 29.185522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417255, 38.448441, 29.851006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611439, 38.102406, 29.800482>,  <38.727951, 37.894783, 29.770168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611439, 38.102406, 29.800482>,  <38.417255, 38.448441, 29.851006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611439, 38.102406, 29.800482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369885, -0.334143, 0.866910,
		-0.792157, -0.374131, -0.482195,
		0.485460, -0.865086, -0.126308,
		38.757076, 37.842880, 29.762589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904041, 37.907230, 29.932255>,  <38.417255, 38.448441, 29.851006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904041, 37.907230, 29.932255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260948, 37.748692, 30.018757>,  <38.475094, 37.653568, 30.070658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260948, 37.748692, 30.018757>,  <37.904041, 37.907230, 29.932255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260948, 37.748692, 30.018757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382533, -0.409175, 0.828399,
		-0.239848, -0.821878, -0.516710,
		0.892268, -0.396348, 0.216255,
		38.528629, 37.629787, 30.083633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670975, 37.324944, 30.351612>,  <37.904041, 37.907230, 29.932255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670975, 37.324944, 30.351612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060837, 37.347160, 30.438290>,  <38.294754, 37.360489, 30.490295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060837, 37.347160, 30.438290>,  <37.670975, 37.324944, 30.351612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060837, 37.347160, 30.438290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169320, -0.449876, 0.876893,
		0.146188, -0.891362, -0.429072,
		0.974659, 0.055541, 0.216692,
		38.353233, 37.363823, 30.503298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907845, 36.662743, 30.449331>,  <37.670975, 37.324944, 30.351612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907845, 36.662743, 30.449331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192501, 36.879894, 30.627697>,  <38.363297, 37.010185, 30.734716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192501, 36.879894, 30.627697>,  <37.907845, 36.662743, 30.449331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192501, 36.879894, 30.627697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047050, -0.596463, 0.801260,
		0.700961, -0.591194, -0.398928,
		0.711646, 0.542883, 0.445913,
		38.405994, 37.042759, 30.761471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471092, 36.297451, 30.583590>,  <37.907845, 36.662743, 30.449331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471092, 36.297451, 30.583590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492714, 36.587502, 30.858189>,  <38.505688, 36.761532, 31.022947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492714, 36.587502, 30.858189>,  <38.471092, 36.297451, 30.583590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492714, 36.587502, 30.858189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048872, -0.688598, 0.723494,
		0.997341, -0.005555, -0.072657,
		0.054050, 0.725122, 0.686496,
		38.508930, 36.805038, 31.064137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962578, 36.147964, 31.025589>,  <38.471092, 36.297451, 30.583590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962578, 36.147964, 31.025589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723461, 36.399658, 31.224266>,  <38.579990, 36.550674, 31.343473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723461, 36.399658, 31.224266>,  <38.962578, 36.147964, 31.025589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723461, 36.399658, 31.224266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117110, -0.544396, 0.830613,
		0.793048, 0.554705, 0.251748,
		-0.597795, 0.629234, 0.496694,
		38.544121, 36.588428, 31.373274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.942467, 41.491001, 27.760298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568817, 41.621849, 27.703157>,  <40.344627, 41.700356, 27.668873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568817, 41.621849, 27.703157>,  <40.942467, 41.491001, 27.760298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568817, 41.621849, 27.703157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181800, 0.091595, -0.979060,
		-0.307182, -0.940535, -0.145031,
		-0.934124, 0.327116, -0.142853,
		40.288578, 41.719982, 27.660301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718948, 41.227062, 27.101433>,  <40.942467, 41.491001, 27.760298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718948, 41.227062, 27.101433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.454639, 41.518677, 27.172859>,  <40.296055, 41.693645, 27.215715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.454639, 41.518677, 27.172859>,  <40.718948, 41.227062, 27.101433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454639, 41.518677, 27.172859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042221, 0.273629, -0.960908,
		-0.749395, -0.627405, -0.211588,
		-0.660776, 0.729033, 0.178567,
		40.256405, 41.737389, 27.226429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161438, 41.106159, 26.676674>,  <40.718948, 41.227062, 27.101433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161438, 41.106159, 26.676674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175465, 41.493511, 26.775476>,  <40.183880, 41.725922, 26.834759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175465, 41.493511, 26.775476>,  <40.161438, 41.106159, 26.676674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175465, 41.493511, 26.775476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072724, 0.248977, -0.965775,
		-0.996735, 0.015908, 0.079156,
		0.035071, 0.968379, 0.247007,
		40.185986, 41.784023, 26.849579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608479, 41.394508, 26.135706>,  <40.161438, 41.106159, 26.676674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608479, 41.394508, 26.135706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.792263, 41.707905, 26.303053>,  <39.902534, 41.895943, 26.403461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.792263, 41.707905, 26.303053>,  <39.608479, 41.394508, 26.135706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792263, 41.707905, 26.303053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141590, 0.529617, -0.836336,
		-0.876838, 0.325029, 0.354274,
		0.459463, 0.783494, 0.418367,
		39.930103, 41.942951, 26.428562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238071, 42.112869, 25.980036>,  <39.608479, 41.394508, 26.135706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238071, 42.112869, 25.980036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626408, 42.181793, 26.046711>,  <39.859409, 42.223148, 26.086716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626408, 42.181793, 26.046711>,  <39.238071, 42.112869, 25.980036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626408, 42.181793, 26.046711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028048, 0.608872, -0.792773,
		-0.238094, 0.774328, 0.586282,
		0.970837, 0.172311, 0.166687,
		39.917660, 42.233486, 26.096718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230865, 42.837086, 25.907736>,  <39.238071, 42.112869, 25.980036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230865, 42.837086, 25.907736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611271, 42.716644, 25.879700>,  <39.839516, 42.644379, 25.862879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611271, 42.716644, 25.879700>,  <39.230865, 42.837086, 25.907736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611271, 42.716644, 25.879700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140978, 0.624159, -0.768473,
		0.275135, 0.720947, 0.636032,
		0.951013, -0.301101, -0.070090,
		39.896576, 42.626312, 25.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560978, 43.472309, 25.725098>,  <39.230865, 42.837086, 25.907736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560978, 43.472309, 25.725098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841831, 43.211044, 25.611691>,  <40.010345, 43.054287, 25.543646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841831, 43.211044, 25.611691>,  <39.560978, 43.472309, 25.725098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841831, 43.211044, 25.611691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232454, 0.586628, -0.775779,
		0.673030, 0.478797, 0.563723,
		0.702137, -0.653162, -0.283520,
		40.052471, 43.015095, 25.526634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158249, 43.841373, 25.494400>,  <39.560978, 43.472309, 25.725098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158249, 43.841373, 25.494400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183998, 43.482765, 25.319078>,  <40.199448, 43.267601, 25.213886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183998, 43.482765, 25.319078>,  <40.158249, 43.841373, 25.494400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183998, 43.482765, 25.319078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133197, 0.443003, -0.886570,
		0.988997, -0.001309, 0.147932,
		0.064373, -0.896519, -0.438303,
		40.203312, 43.213810, 25.187588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806267, 43.865765, 25.041439>,  <40.158249, 43.841373, 25.494400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806267, 43.865765, 25.041439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572388, 43.560905, 24.930258>,  <40.432060, 43.377991, 24.863548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572388, 43.560905, 24.930258>,  <40.806267, 43.865765, 25.041439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572388, 43.560905, 24.930258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057324, 0.302952, -0.951280,
		0.809224, -0.572145, -0.133446,
		-0.584698, -0.762149, -0.277954,
		40.396980, 43.332260, 24.846872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133652, 43.497810, 24.514584>,  <40.806267, 43.865765, 25.041439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133652, 43.497810, 24.514584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744419, 43.414684, 24.474728>,  <40.510880, 43.364811, 24.450813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.744419, 43.414684, 24.474728>,  <41.133652, 43.497810, 24.514584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744419, 43.414684, 24.474728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041106, 0.268911, -0.962287,
		0.226763, -0.940480, -0.253130,
		-0.973082, -0.207806, -0.099639,
		40.452496, 43.352341, 24.444836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115059, 43.219421, 23.975363>,  <41.133652, 43.497810, 24.514584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115059, 43.219421, 23.975363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730770, 43.321842, 24.018177>,  <40.500198, 43.383293, 24.043865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730770, 43.321842, 24.018177>,  <41.115059, 43.219421, 23.975363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730770, 43.321842, 24.018177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023760, 0.460162, -0.887517,
		-0.276504, -0.850111, -0.448170,
		-0.960719, 0.256050, 0.107038,
		40.442554, 43.398659, 24.050289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845821, 43.126614, 23.352350>,  <41.115059, 43.219421, 23.975363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845821, 43.126614, 23.352350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598484, 43.376606, 23.542948>,  <40.450081, 43.526600, 23.657307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598484, 43.376606, 23.542948>,  <40.845821, 43.126614, 23.352350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598484, 43.376606, 23.542948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020829, 0.619117, -0.785023,
		-0.785629, -0.475492, -0.395847,
		-0.618347, 0.624982, 0.476492,
		40.412979, 43.564102, 23.685896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243114, 43.236977, 22.924229>,  <40.845821, 43.126614, 23.352350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243114, 43.236977, 22.924229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280239, 43.545158, 23.176508>,  <40.302513, 43.730068, 23.327875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.280239, 43.545158, 23.176508>,  <40.243114, 43.236977, 22.924229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280239, 43.545158, 23.176508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098625, 0.637431, -0.764170,
		-0.990787, 0.008724, 0.135151,
		0.092816, 0.770458, 0.630697,
		40.308083, 43.776295, 23.365717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418793, 42.638710, 22.680040>,  <40.243114, 43.236977, 22.924229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418793, 42.638710, 22.680040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135464, 42.526463, 22.420954>,  <39.965466, 42.459114, 22.265501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135464, 42.526463, 22.420954>,  <40.418793, 42.638710, 22.680040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135464, 42.526463, 22.420954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242788, -0.764756, 0.596828,
		-0.662826, 0.580002, 0.473560,
		-0.708319, -0.280619, -0.647717,
		39.922970, 42.442276, 22.226639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751476, 42.632790, 23.052727>,  <40.418793, 42.638710, 22.680040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751476, 42.632790, 23.052727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778103, 42.383671, 22.740908>,  <39.794079, 42.234200, 22.553816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.778103, 42.383671, 22.740908>,  <39.751476, 42.632790, 23.052727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778103, 42.383671, 22.740908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106082, -0.781269, 0.615114,
		-0.992127, 0.041751, -0.118072,
		0.066564, -0.622797, -0.779547,
		39.798073, 42.196831, 22.507044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338612, 42.079906, 23.231646>,  <39.751476, 42.632790, 23.052727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338612, 42.079906, 23.231646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590359, 41.924881, 22.962219>,  <39.741405, 41.831863, 22.800564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590359, 41.924881, 22.962219>,  <39.338612, 42.079906, 23.231646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590359, 41.924881, 22.962219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033096, -0.879340, 0.475043,
		-0.776402, -0.276685, -0.566255,
		0.629368, -0.387565, -0.673565,
		39.779167, 41.808613, 22.760149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924915, 41.574924, 22.915030>,  <39.338612, 42.079906, 23.231646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924915, 41.574924, 22.915030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319813, 41.512177, 22.904203>,  <39.556751, 41.474529, 22.897707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319813, 41.512177, 22.904203>,  <38.924915, 41.574924, 22.915030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319813, 41.512177, 22.904203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132651, -0.904688, 0.404899,
		-0.088004, -0.396146, -0.913961,
		0.987248, -0.156871, -0.027066,
		39.615986, 41.465115, 22.896084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950581, 40.894917, 23.103380>,  <38.924915, 41.574924, 22.915030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950581, 40.894917, 23.103380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338184, 40.993443, 23.110775>,  <39.570747, 41.052559, 23.115211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338184, 40.993443, 23.110775>,  <38.950581, 40.894917, 23.103380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338184, 40.993443, 23.110775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175529, -0.739320, 0.650074,
		0.173791, -0.626685, -0.759646,
		0.969013, 0.246317, 0.018485,
		39.628887, 41.067337, 23.116320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319839, 40.198662, 22.951784>,  <38.950581, 40.894917, 23.103380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319839, 40.198662, 22.951784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566822, 40.444386, 23.148306>,  <39.715012, 40.591820, 23.266220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.566822, 40.444386, 23.148306>,  <39.319839, 40.198662, 22.951784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566822, 40.444386, 23.148306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121511, -0.691579, 0.712007,
		0.777166, -0.379932, -0.501663,
		0.617453, 0.614305, 0.491305,
		39.752060, 40.628677, 23.295698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932705, 39.810314, 23.165834>,  <39.319839, 40.198662, 22.951784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932705, 39.810314, 23.165834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956367, 40.123810, 23.413139>,  <39.970566, 40.311909, 23.561523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956367, 40.123810, 23.413139>,  <39.932705, 39.810314, 23.165834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956367, 40.123810, 23.413139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176254, -0.617818, 0.766313,
		0.982566, 0.063640, -0.174684,
		0.059155, 0.783742, 0.618263,
		39.974113, 40.358932, 23.598618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560146, 39.692806, 23.508286>,  <39.932705, 39.810314, 23.165834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560146, 39.692806, 23.508286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321293, 39.924656, 23.730082>,  <40.177979, 40.063766, 23.863159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321293, 39.924656, 23.730082>,  <40.560146, 39.692806, 23.508286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321293, 39.924656, 23.730082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112428, -0.623965, 0.773322,
		0.794221, 0.524120, 0.307427,
		-0.597137, 0.579626, 0.554492,
		40.142151, 40.098545, 23.896429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823475, 39.542831, 24.137159>,  <40.560146, 39.692806, 23.508286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823475, 39.542831, 24.137159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480667, 39.722336, 24.238459>,  <40.274982, 39.830040, 24.299238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.480667, 39.722336, 24.238459>,  <40.823475, 39.542831, 24.137159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480667, 39.722336, 24.238459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020378, -0.461572, 0.886869,
		0.514886, 0.765222, 0.386430,
		-0.857016, 0.448762, 0.253250,
		40.223560, 39.856964, 24.314434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895924, 39.717579, 24.883455>,  <40.823475, 39.542831, 24.137159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895924, 39.717579, 24.883455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499435, 39.722122, 24.830770>,  <40.261543, 39.724850, 24.799160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499435, 39.722122, 24.830770>,  <40.895924, 39.717579, 24.883455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499435, 39.722122, 24.830770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120441, -0.488358, 0.864292,
		-0.054504, 0.872570, 0.485440,
		-0.991223, 0.011359, -0.131711,
		40.202068, 39.725529, 24.791258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685810, 40.026749, 25.492584>,  <40.895924, 39.717579, 24.883455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685810, 40.026749, 25.492584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380245, 39.812210, 25.349047>,  <40.196907, 39.683487, 25.262924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380245, 39.812210, 25.349047>,  <40.685810, 40.026749, 25.492584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380245, 39.812210, 25.349047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208854, -0.320656, 0.923883,
		-0.610588, 0.780712, 0.132935,
		-0.763913, -0.536348, -0.358843,
		40.151070, 39.651306, 25.241394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178066, 40.173260, 25.845140>,  <40.685810, 40.026749, 25.492584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178066, 40.173260, 25.845140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.045830, 39.827785, 25.692955>,  <39.966488, 39.620499, 25.601645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.045830, 39.827785, 25.692955>,  <40.178066, 40.173260, 25.845140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045830, 39.827785, 25.692955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228523, -0.317876, 0.920180,
		-0.915688, 0.391151, -0.092284,
		-0.330595, -0.863687, -0.380462,
		39.946651, 39.568680, 25.578815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569031, 39.971466, 26.166986>,  <40.178066, 40.173260, 25.845140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569031, 39.971466, 26.166986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665119, 39.633305, 25.976164>,  <39.722775, 39.430408, 25.861670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665119, 39.633305, 25.976164>,  <39.569031, 39.971466, 26.166986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665119, 39.633305, 25.976164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307352, -0.532406, 0.788720,
		-0.920776, -0.042844, -0.387732,
		0.240223, -0.845404, -0.477059,
		39.737186, 39.379684, 25.833046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977894, 39.514549, 26.200542>,  <39.569031, 39.971466, 26.166986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977894, 39.514549, 26.200542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284836, 39.268856, 26.126909>,  <39.469002, 39.121441, 26.082729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284836, 39.268856, 26.126909>,  <38.977894, 39.514549, 26.200542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284836, 39.268856, 26.126909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299535, -0.597205, 0.744060,
		-0.566957, -0.515822, -0.642252,
		0.767358, -0.614227, -0.184083,
		39.515041, 39.084587, 26.071684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685192, 38.888264, 26.033211>,  <38.977894, 39.514549, 26.200542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685192, 38.888264, 26.033211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051163, 38.801960, 26.169661>,  <39.270744, 38.750179, 26.251530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051163, 38.801960, 26.169661>,  <38.685192, 38.888264, 26.033211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051163, 38.801960, 26.169661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383272, -0.729416, 0.566617,
		0.126568, -0.649153, -0.750054,
		0.914922, -0.215759, 0.341123,
		39.325638, 38.737232, 26.271997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301857, 38.373760, 25.757046>,  <38.685192, 38.888264, 26.033211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301857, 38.373760, 25.757046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932301, 38.257114, 25.657932>,  <37.710567, 38.187126, 25.598465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932301, 38.257114, 25.657932>,  <38.301857, 38.373760, 25.757046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932301, 38.257114, 25.657932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066119, 0.759427, -0.647224,
		0.376910, -0.581578, -0.720906,
		-0.923887, -0.291611, -0.247782,
		37.655136, 38.169632, 25.583597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336063, 38.486172, 25.145241>,  <38.301857, 38.373760, 25.757046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336063, 38.486172, 25.145241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938225, 38.475159, 25.185282>,  <37.699520, 38.468552, 25.209307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938225, 38.475159, 25.185282>,  <38.336063, 38.486172, 25.145241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938225, 38.475159, 25.185282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090269, 0.705600, -0.702837,
		-0.051282, -0.708075, -0.704272,
		-0.994596, -0.027531, 0.100101,
		37.639847, 38.466900, 25.215313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030869, 38.525406, 24.372656>,  <38.336063, 38.486172, 25.145241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030869, 38.525406, 24.372656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742336, 38.625084, 24.631138>,  <37.569218, 38.684891, 24.786228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742336, 38.625084, 24.631138>,  <38.030869, 38.525406, 24.372656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742336, 38.625084, 24.631138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409013, 0.599680, -0.687817,
		-0.558919, -0.760450, -0.330643,
		-0.721331, 0.249197, 0.646206,
		37.525936, 38.699844, 24.824999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430988, 38.403652, 24.081173>,  <38.030869, 38.525406, 24.372656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430988, 38.403652, 24.081173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324371, 38.684532, 24.345255>,  <37.260399, 38.853062, 24.503704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324371, 38.684532, 24.345255>,  <37.430988, 38.403652, 24.081173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324371, 38.684532, 24.345255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452271, 0.513763, -0.729040,
		-0.851120, -0.492913, 0.180644,
		-0.266545, 0.702200, 0.660204,
		37.244408, 38.895191, 24.543316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723465, 38.601135, 23.872332>,  <37.430988, 38.403652, 24.081173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723465, 38.601135, 23.872332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872787, 38.891937, 24.102846>,  <36.962383, 39.066418, 24.241154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872787, 38.891937, 24.102846>,  <36.723465, 38.601135, 23.872332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872787, 38.891937, 24.102846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398915, 0.686625, -0.607793,
		-0.837560, -0.002994, 0.546337,
		0.373309, 0.727005, 0.576285,
		36.984779, 39.110039, 24.275732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226803, 39.131378, 23.830017>,  <36.723465, 38.601135, 23.872332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226803, 39.131378, 23.830017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554203, 39.313450, 23.970226>,  <36.750645, 39.422691, 24.054352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554203, 39.313450, 23.970226>,  <36.226803, 39.131378, 23.830017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554203, 39.313450, 23.970226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199176, 0.797123, -0.570021,
		-0.538873, 0.396747, 0.743107,
		0.818501, 0.455178, 0.350525,
		36.799755, 39.450005, 24.075384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029648, 39.852745, 24.044720>,  <36.226803, 39.131378, 23.830017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029648, 39.852745, 24.044720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421768, 39.839554, 23.966825>,  <36.657040, 39.831638, 23.920090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421768, 39.839554, 23.966825>,  <36.029648, 39.852745, 24.044720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421768, 39.839554, 23.966825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099554, 0.769048, -0.631391,
		0.170581, 0.638340, 0.750616,
		0.980302, -0.032976, -0.194734,
		36.715858, 39.829662, 23.908405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608616, 40.418697, 24.388243>,  <36.029648, 39.852745, 24.044720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608616, 40.418697, 24.388243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222912, 40.455105, 24.487780>,  <34.991489, 40.476948, 24.547501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222912, 40.455105, 24.487780>,  <35.608616, 40.418697, 24.388243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222912, 40.455105, 24.487780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016934, -0.916059, 0.400685,
		0.264423, 0.390577, 0.881776,
		-0.964258, 0.091018, 0.248841,
		34.933636, 40.482410, 24.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579903, 40.169998, 25.017427>,  <35.608616, 40.418697, 24.388243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579903, 40.169998, 25.017427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198524, 40.180779, 24.897285>,  <34.969696, 40.187244, 24.825201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198524, 40.180779, 24.897285>,  <35.579903, 40.169998, 25.017427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198524, 40.180779, 24.897285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117094, -0.950934, 0.286381,
		-0.277900, 0.308219, 0.909820,
		-0.953447, 0.026949, -0.300355,
		34.912491, 40.188862, 24.807178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169674, 39.890694, 25.568562>,  <35.579903, 40.169998, 25.017427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169674, 39.890694, 25.568562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961769, 39.864067, 25.227877>,  <34.837025, 39.848091, 25.023466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961769, 39.864067, 25.227877>,  <35.169674, 39.890694, 25.568562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961769, 39.864067, 25.227877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110534, -0.983339, 0.144313,
		-0.847129, 0.169151, 0.503746,
		-0.519764, -0.066571, -0.851712,
		34.805840, 39.844097, 24.972363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655163, 39.525337, 25.780733>,  <35.169674, 39.890694, 25.568562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655163, 39.525337, 25.780733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661144, 39.488651, 25.382463>,  <34.664734, 39.466640, 25.143501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661144, 39.488651, 25.382463>,  <34.655163, 39.525337, 25.780733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661144, 39.488651, 25.382463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217229, -0.972298, 0.086299,
		-0.976006, 0.214999, -0.034466,
		0.014957, -0.091715, -0.995673,
		34.665630, 39.461136, 25.083761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067471, 39.198360, 25.624233>,  <34.655163, 39.525337, 25.780733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067471, 39.198360, 25.624233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294739, 39.126820, 25.302937>,  <34.431099, 39.083897, 25.110159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294739, 39.126820, 25.302937>,  <34.067471, 39.198360, 25.624233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294739, 39.126820, 25.302937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274990, -0.961249, 0.019517,
		-0.775604, 0.209794, -0.595336,
		0.568172, -0.178849, -0.803240,
		34.465191, 39.073166, 25.061964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689972, 38.717125, 25.233707>,  <34.067471, 39.198360, 25.624233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689972, 38.717125, 25.233707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039452, 38.682774, 25.042175>,  <34.249138, 38.662163, 24.927256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039452, 38.682774, 25.042175>,  <33.689972, 38.717125, 25.233707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039452, 38.682774, 25.042175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065990, -0.996119, 0.058237,
		-0.481975, -0.019283, -0.875972,
		0.873696, -0.085875, -0.478832,
		34.301559, 38.657013, 24.898525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568871, 38.265182, 24.678389>,  <33.689972, 38.717125, 25.233707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568871, 38.265182, 24.678389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958763, 38.254517, 24.767096>,  <34.192699, 38.248116, 24.820320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958763, 38.254517, 24.767096>,  <33.568871, 38.265182, 24.678389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958763, 38.254517, 24.767096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043340, -0.996558, 0.070669,
		0.219119, -0.078495, -0.972536,
		0.974735, -0.026665, 0.221766,
		34.251183, 38.246517, 24.833626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.921646, 46.119129, 25.242592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121178, 45.798958, 25.109636>,  <38.240898, 45.606853, 25.029863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121178, 45.798958, 25.109636>,  <37.921646, 46.119129, 25.242592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121178, 45.798958, 25.109636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143332, -0.454416, 0.879183,
		-0.854767, -0.390920, -0.341403,
		0.498829, -0.800430, -0.332388,
		38.270828, 45.558830, 25.009920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444523, 45.478088, 25.174307>,  <37.921646, 46.119129, 25.242592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444523, 45.478088, 25.174307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810799, 45.318310, 25.191978>,  <38.030563, 45.222443, 25.202581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.810799, 45.318310, 25.191978>,  <37.444523, 45.478088, 25.174307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810799, 45.318310, 25.191978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233231, -0.438679, 0.867850,
		-0.327279, -0.804988, -0.494857,
		0.915692, -0.399445, 0.044178,
		38.085506, 45.198475, 25.205231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392204, 44.784565, 25.324150>,  <37.444523, 45.478088, 25.174307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392204, 44.784565, 25.324150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.769505, 44.861717, 25.432285>,  <37.995884, 44.908009, 25.497166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.769505, 44.861717, 25.432285>,  <37.392204, 44.784565, 25.324150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769505, 44.861717, 25.432285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092089, -0.630202, 0.770951,
		0.319067, -0.752093, -0.576674,
		0.943248, 0.192879, 0.270336,
		38.052479, 44.919582, 25.513386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609100, 44.178253, 25.544819>,  <37.392204, 44.784565, 25.324150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609100, 44.178253, 25.544819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905922, 44.400482, 25.694859>,  <38.084015, 44.533821, 25.784883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905922, 44.400482, 25.694859>,  <37.609100, 44.178253, 25.544819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905922, 44.400482, 25.694859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071038, -0.491242, 0.868121,
		0.666569, -0.670837, -0.325060,
		0.742051, 0.555571, 0.375102,
		38.128536, 44.567154, 25.807388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117710, 43.706448, 25.830936>,  <37.609100, 44.178253, 25.544819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117710, 43.706448, 25.830936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.159019, 44.064018, 26.005396>,  <38.183804, 44.278561, 26.110071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.159019, 44.064018, 26.005396>,  <38.117710, 43.706448, 25.830936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159019, 44.064018, 26.005396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203400, -0.410245, 0.889003,
		0.973634, -0.180523, 0.139458,
		0.103273, 0.893930, 0.436147,
		38.190002, 44.332195, 26.136240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572136, 43.520618, 26.484407>,  <38.117710, 43.706448, 25.830936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572136, 43.520618, 26.484407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.418369, 43.883217, 26.554243>,  <38.326111, 44.100777, 26.596146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.418369, 43.883217, 26.554243>,  <38.572136, 43.520618, 26.484407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418369, 43.883217, 26.554243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080218, -0.221209, 0.971921,
		0.919667, 0.359619, 0.157754,
		-0.384418, 0.906499, 0.174591,
		38.303043, 44.155167, 26.606621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996834, 43.711262, 26.970280>,  <38.572136, 43.520618, 26.484407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996834, 43.711262, 26.970280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679729, 43.949909, 27.020199>,  <38.489468, 44.093098, 27.050150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679729, 43.949909, 27.020199>,  <38.996834, 43.711262, 26.970280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679729, 43.949909, 27.020199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053312, -0.271828, 0.960868,
		0.607197, 0.755085, 0.247301,
		-0.792761, 0.596620, 0.124798,
		38.441902, 44.128895, 27.057638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141541, 44.201344, 27.587999>,  <38.996834, 43.711262, 26.970280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141541, 44.201344, 27.587999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.748169, 44.183960, 27.517586>,  <38.512146, 44.173531, 27.475338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.748169, 44.183960, 27.517586>,  <39.141541, 44.201344, 27.587999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748169, 44.183960, 27.517586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153491, -0.317325, 0.935813,
		-0.096525, 0.947321, 0.305395,
		-0.983424, -0.043454, -0.176035,
		38.453140, 44.170925, 27.464775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860283, 44.480583, 28.190594>,  <39.141541, 44.201344, 27.587999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860283, 44.480583, 28.190594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.535515, 44.310417, 28.030691>,  <38.340652, 44.208317, 27.934750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.535515, 44.310417, 28.030691>,  <38.860283, 44.480583, 28.190594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535515, 44.310417, 28.030691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399300, -0.094827, 0.911903,
		-0.425845, 0.900017, -0.092876,
		-0.811921, -0.425414, -0.399758,
		38.291939, 44.182793, 27.910763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262577, 44.797531, 28.436075>,  <38.860283, 44.480583, 28.190594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262577, 44.797531, 28.436075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.123798, 44.454132, 28.285019>,  <38.040531, 44.248093, 28.194386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.123798, 44.454132, 28.285019>,  <38.262577, 44.797531, 28.436075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123798, 44.454132, 28.285019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531252, -0.151940, 0.833478,
		-0.772917, 0.489794, -0.403363,
		-0.346945, -0.858496, -0.377641,
		38.019714, 44.196583, 28.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564121, 44.755238, 28.656662>,  <38.262577, 44.797531, 28.436075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564121, 44.755238, 28.656662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625866, 44.380821, 28.530176>,  <37.662914, 44.156170, 28.454285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625866, 44.380821, 28.530176>,  <37.564121, 44.755238, 28.656662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625866, 44.380821, 28.530176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597050, -0.343379, 0.724998,
		-0.787212, 0.076881, -0.611872,
		0.154365, -0.936045, -0.316214,
		37.672176, 44.100006, 28.435312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854221, 44.471573, 28.529964>,  <37.564121, 44.755238, 28.656662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854221, 44.471573, 28.529964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117306, 44.190540, 28.638624>,  <37.275158, 44.021919, 28.703821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117306, 44.190540, 28.638624>,  <36.854221, 44.471573, 28.529964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117306, 44.190540, 28.638624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670155, -0.381094, 0.636915,
		-0.343954, -0.600961, -0.721486,
		0.657714, -0.702576, 0.271657,
		37.314617, 43.979767, 28.720119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202057, 44.322342, 28.315350>,  <36.854221, 44.471573, 28.529964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202057, 44.322342, 28.315350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146297, 44.691586, 28.171997>,  <36.112843, 44.913132, 28.085985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146297, 44.691586, 28.171997>,  <36.202057, 44.322342, 28.315350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146297, 44.691586, 28.171997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619566, 0.201021, 0.758768,
		0.772468, 0.327808, 0.543907,
		-0.139394, 0.923110, -0.358381,
		36.104481, 44.968517, 28.064484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718678, 43.660599, 28.201986>,  <36.202057, 44.322342, 28.315350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718678, 43.660599, 28.201986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537319, 44.014153, 28.156071>,  <35.428505, 44.226284, 28.128521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.537319, 44.014153, 28.156071>,  <35.718678, 43.660599, 28.201986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537319, 44.014153, 28.156071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136612, -0.058351, -0.988905,
		-0.880778, -0.464045, -0.094294,
		-0.453395, 0.883887, -0.114788,
		35.401302, 44.279320, 28.121634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279720, 43.658363, 27.611130>,  <35.718678, 43.660599, 28.201986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279720, 43.658363, 27.611130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.315205, 44.053825, 27.659599>,  <35.336494, 44.291103, 27.688681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.315205, 44.053825, 27.659599>,  <35.279720, 43.658363, 27.611130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315205, 44.053825, 27.659599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168361, 0.134785, -0.976467,
		-0.981725, 0.066226, 0.178409,
		0.088715, 0.988659, 0.121172,
		35.341820, 44.350422, 27.695951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729183, 43.901203, 27.253090>,  <35.279720, 43.658363, 27.611130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729183, 43.901203, 27.253090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.970016, 44.216988, 27.300835>,  <35.114517, 44.406460, 27.329481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.970016, 44.216988, 27.300835>,  <34.729183, 43.901203, 27.253090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970016, 44.216988, 27.300835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146979, 0.256527, -0.955296,
		-0.784791, 0.557620, 0.270484,
		0.602079, 0.789464, 0.119362,
		35.150639, 44.453827, 27.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473236, 44.505173, 26.963316>,  <34.729183, 43.901203, 27.253090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473236, 44.505173, 26.963316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.866840, 44.575443, 26.975075>,  <35.103004, 44.617603, 26.982130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.866840, 44.575443, 26.975075>,  <34.473236, 44.505173, 26.963316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866840, 44.575443, 26.975075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045829, 0.409193, -0.911296,
		-0.172118, 0.895377, 0.410701,
		0.984010, 0.175672, 0.029395,
		35.162045, 44.628143, 26.983894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401657, 45.104462, 26.538294>,  <34.473236, 44.505173, 26.963316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401657, 45.104462, 26.538294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.797546, 45.051361, 26.559528>,  <35.035080, 45.019501, 26.572269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.797546, 45.051361, 26.559528>,  <34.401657, 45.104462, 26.538294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797546, 45.051361, 26.559528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105595, 0.428405, -0.897396,
		0.096386, 0.893782, 0.438021,
		0.989727, -0.132749, 0.053086,
		35.094463, 45.011536, 26.575455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783386, 45.769199, 26.425880>,  <34.401657, 45.104462, 26.538294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783386, 45.769199, 26.425880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.019867, 45.457100, 26.344206>,  <35.161755, 45.269840, 26.295200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.019867, 45.457100, 26.344206>,  <34.783386, 45.769199, 26.425880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019867, 45.457100, 26.344206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172930, 0.369913, -0.912831,
		0.787765, 0.504358, 0.353622,
		0.591203, -0.780248, -0.204186,
		35.197227, 45.223026, 26.282949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354576, 46.046028, 26.007986>,  <34.783386, 45.769199, 26.425880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354576, 46.046028, 26.007986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372768, 45.650940, 25.948195>,  <35.383686, 45.413887, 25.912319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372768, 45.650940, 25.948195>,  <35.354576, 46.046028, 26.007986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372768, 45.650940, 25.948195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080473, 0.152768, -0.984980,
		0.995719, 0.032770, 0.086433,
		0.045482, -0.987718, -0.149477,
		35.386414, 45.354626, 25.903351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846237, 45.946648, 25.428560>,  <35.354576, 46.046028, 26.007986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846237, 45.946648, 25.428560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654491, 45.595608, 25.426399>,  <35.539444, 45.384983, 25.425102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654491, 45.595608, 25.426399>,  <35.846237, 45.946648, 25.428560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654491, 45.595608, 25.426399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076837, 0.048100, -0.995883,
		0.874248, -0.476972, -0.090489,
		-0.479361, -0.877601, -0.005402,
		35.510681, 45.332329, 25.424778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122181, 45.496246, 24.895025>,  <35.846237, 45.946648, 25.428560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122181, 45.496246, 24.895025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761368, 45.346569, 24.981115>,  <35.544880, 45.256763, 25.032768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761368, 45.346569, 24.981115>,  <36.122181, 45.496246, 24.895025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761368, 45.346569, 24.981115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254456, 0.058165, -0.965334,
		0.348701, -0.925526, -0.147681,
		-0.902031, -0.374191, 0.215224,
		35.490757, 45.234314, 25.045683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985752, 44.965084, 24.459391>,  <36.122181, 45.496246, 24.895025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985752, 44.965084, 24.459391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607761, 45.045490, 24.562626>,  <35.380966, 45.093735, 24.624567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607761, 45.045490, 24.562626>,  <35.985752, 44.965084, 24.459391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607761, 45.045490, 24.562626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248086, 0.073895, -0.965916,
		-0.213234, -0.976797, -0.019961,
		-0.944978, 0.201015, 0.258087,
		35.324268, 45.105793, 24.640051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577072, 44.494572, 24.013487>,  <35.985752, 44.965084, 24.459391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577072, 44.494572, 24.013487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.315823, 44.770054, 24.139420>,  <35.159073, 44.935341, 24.214979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.315823, 44.770054, 24.139420>,  <35.577072, 44.494572, 24.013487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315823, 44.770054, 24.139420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344855, 0.099633, -0.933353,
		-0.674170, -0.718167, 0.172429,
		-0.653124, 0.688702, 0.314833,
		35.119884, 44.976665, 24.233870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966793, 44.001789, 24.426434>,  <35.577072, 44.494572, 24.013487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966793, 44.001789, 24.426434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568634, 44.007641, 24.464315>,  <35.329739, 44.011150, 24.487045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568634, 44.007641, 24.464315>,  <35.966793, 44.001789, 24.426434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568634, 44.007641, 24.464315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007632, -0.997243, 0.073819,
		0.095523, 0.072757, 0.992765,
		-0.995398, 0.014628, 0.094705,
		35.270016, 44.012028, 24.492727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725048, 43.655060, 25.077890>,  <35.966793, 44.001789, 24.426434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725048, 43.655060, 25.077890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.531761, 43.642845, 24.727903>,  <35.415787, 43.635517, 24.517912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.531761, 43.642845, 24.727903>,  <35.725048, 43.655060, 25.077890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531761, 43.642845, 24.727903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009456, -0.999515, 0.029662,
		-0.875448, 0.006059, 0.483274,
		-0.483220, -0.030537, -0.874966,
		35.386795, 43.633682, 24.465414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170444, 43.173538, 25.194481>,  <35.725048, 43.655060, 25.077890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170444, 43.173538, 25.194481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220024, 43.191383, 24.797966>,  <35.249771, 43.202091, 24.560057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.220024, 43.191383, 24.797966>,  <35.170444, 43.173538, 25.194481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220024, 43.191383, 24.797966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298445, -0.951058, -0.080121,
		-0.946344, 0.305774, -0.104566,
		0.123947, 0.044615, -0.991285,
		35.257210, 43.204769, 24.500580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523735, 42.891579, 24.931826>,  <35.170444, 43.173538, 25.194481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523735, 42.891579, 24.931826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772976, 42.878124, 24.619259>,  <34.922520, 42.870052, 24.431719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772976, 42.878124, 24.619259>,  <34.523735, 42.891579, 24.931826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772976, 42.878124, 24.619259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228028, -0.963484, -0.140360,
		-0.748164, 0.265644, -0.608016,
		0.623100, -0.033632, -0.781419,
		34.959908, 42.868034, 24.384832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130852, 42.588036, 24.288771>,  <34.523735, 42.891579, 24.931826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130852, 42.588036, 24.288771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519176, 42.535118, 24.208740>,  <34.752171, 42.503368, 24.160723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519176, 42.535118, 24.208740>,  <34.130852, 42.588036, 24.288771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519176, 42.535118, 24.208740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163321, -0.975489, -0.147467,
		-0.175663, 0.175839, -0.968619,
		0.970808, -0.132291, -0.200075,
		34.810417, 42.495430, 24.148718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032887, 42.028057, 23.871399>,  <34.130852, 42.588036, 24.288771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032887, 42.028057, 23.871399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.417702, 42.053242, 23.977623>,  <34.648590, 42.068352, 24.041357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.417702, 42.053242, 23.977623>,  <34.032887, 42.028057, 23.871399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417702, 42.053242, 23.977623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016828, -0.984857, 0.172551,
		0.272404, -0.161532, -0.948527,
		0.962036, 0.062965, 0.265561,
		34.706314, 42.072132, 24.057291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429901, 41.544071, 23.413464>,  <34.032887, 42.028057, 23.871399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429901, 41.544071, 23.413464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.617626, 41.602173, 23.761864>,  <34.730263, 41.637035, 23.970903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.617626, 41.602173, 23.761864>,  <34.429901, 41.544071, 23.413464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617626, 41.602173, 23.761864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053243, -0.989238, 0.136288,
		0.881424, -0.017587, -0.471998,
		0.469315, 0.145258, 0.871002,
		34.758419, 41.645752, 24.023165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969566, 41.129379, 23.422297>,  <34.429901, 41.544071, 23.413464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969566, 41.129379, 23.422297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.902023, 41.216957, 23.806702>,  <34.861496, 41.269505, 24.037346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.902023, 41.216957, 23.806702>,  <34.969566, 41.129379, 23.422297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902023, 41.216957, 23.806702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076654, -0.969145, 0.234268,
		0.982655, 0.113223, 0.146865,
		-0.168859, 0.218947, 0.961015,
		34.851364, 41.282642, 24.095007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398533, 40.731117, 23.774290>,  <34.969566, 41.129379, 23.422297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398533, 40.731117, 23.774290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.122040, 40.822178, 24.048626>,  <34.956146, 40.876816, 24.213226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.122040, 40.822178, 24.048626>,  <35.398533, 40.731117, 23.774290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122040, 40.822178, 24.048626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030402, -0.939079, 0.342354,
		0.721994, 0.257497, 0.642199,
		-0.691231, 0.227654, 0.685838,
		34.914669, 40.890472, 24.254377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136742, 40.599564, 23.934025>,  <35.398533, 40.731117, 23.774290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136742, 40.599564, 23.934025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444176, 40.385830, 23.793304>,  <36.628635, 40.257587, 23.708872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444176, 40.385830, 23.793304>,  <36.136742, 40.599564, 23.934025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444176, 40.385830, 23.793304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206841, 0.727918, -0.653721,
		0.605389, 0.429673, 0.669989,
		0.768584, -0.534337, -0.351800,
		36.674751, 40.225529, 23.687765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722546, 41.122868, 23.795055>,  <36.136742, 40.599564, 23.934025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722546, 41.122868, 23.795055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819874, 40.801071, 23.578321>,  <36.878269, 40.607994, 23.448280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819874, 40.801071, 23.578321>,  <36.722546, 41.122868, 23.795055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819874, 40.801071, 23.578321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295967, 0.593564, -0.748388,
		0.923688, 0.021731, 0.382529,
		0.243318, -0.804493, -0.541836,
		36.892868, 40.559723, 23.415771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253078, 41.307259, 23.486809>,  <36.722546, 41.122868, 23.795055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253078, 41.307259, 23.486809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143848, 41.000950, 23.253906>,  <37.078312, 40.817165, 23.114164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143848, 41.000950, 23.253906>,  <37.253078, 41.307259, 23.486809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143848, 41.000950, 23.253906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403318, 0.458361, -0.791985,
		0.873365, -0.451104, 0.183685,
		-0.273073, -0.765775, -0.582254,
		37.061928, 40.771217, 23.079229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919838, 41.172142, 23.039717>,  <37.253078, 41.307259, 23.486809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919838, 41.172142, 23.039717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628441, 40.974949, 22.849447>,  <37.453602, 40.856632, 22.735285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628441, 40.974949, 22.849447>,  <37.919838, 41.172142, 23.039717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628441, 40.974949, 22.849447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377826, 0.290069, -0.879265,
		0.571441, -0.820261, -0.025052,
		-0.728494, -0.492982, -0.475673,
		37.409893, 40.827053, 22.706745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291389, 40.796116, 22.462759>,  <37.919838, 41.172142, 23.039717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291389, 40.796116, 22.462759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.908783, 40.855995, 22.362625>,  <37.679218, 40.891922, 22.302546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.908783, 40.855995, 22.362625>,  <38.291389, 40.796116, 22.462759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908783, 40.855995, 22.362625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285089, 0.298426, -0.910860,
		-0.061644, -0.942621, -0.328126,
		-0.956517, 0.149694, -0.250335,
		37.621826, 40.900902, 22.287525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185711, 40.516533, 21.793909>,  <38.291389, 40.796116, 22.462759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185711, 40.516533, 21.793909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893990, 40.778866, 21.871891>,  <37.718956, 40.936264, 21.918680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893990, 40.778866, 21.871891>,  <38.185711, 40.516533, 21.793909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893990, 40.778866, 21.871891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214712, 0.489927, -0.844908,
		-0.649628, -0.574334, -0.498119,
		-0.729302, 0.655829, 0.194954,
		37.675198, 40.975613, 21.930378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701984, 40.521561, 21.241575>,  <38.185711, 40.516533, 21.793909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701984, 40.521561, 21.241575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.642811, 40.890072, 21.385447>,  <37.607307, 41.111179, 21.471769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.642811, 40.890072, 21.385447>,  <37.701984, 40.521561, 21.241575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642811, 40.890072, 21.385447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123253, 0.378016, -0.917558,
		-0.981287, -0.091405, -0.169471,
		-0.147932, 0.921276, 0.359677,
		37.598431, 41.166454, 21.493349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351063, 40.820713, 20.738146>,  <37.701984, 40.521561, 21.241575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351063, 40.820713, 20.738146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.499722, 41.120571, 20.957199>,  <37.588917, 41.300488, 21.088631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.499722, 41.120571, 20.957199>,  <37.351063, 40.820713, 20.738146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499722, 41.120571, 20.957199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326437, 0.446694, -0.833009,
		-0.869089, 0.488355, -0.078700,
		0.371649, 0.749649, 0.547634,
		37.611217, 41.345467, 21.121489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138409, 41.500401, 20.406162>,  <37.351063, 40.820713, 20.738146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138409, 41.500401, 20.406162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436569, 41.605137, 20.651379>,  <37.615463, 41.667980, 20.798508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436569, 41.605137, 20.651379>,  <37.138409, 41.500401, 20.406162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436569, 41.605137, 20.651379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390921, 0.573204, -0.720152,
		-0.539965, 0.776450, 0.324905,
		0.745399, 0.261844, 0.613040,
		37.660191, 41.683689, 20.835291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.806145, 32.712898, 33.540405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205204, 32.688900, 33.527130>,  <35.444641, 32.674500, 33.519165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205204, 32.688900, 33.527130>,  <34.806145, 32.712898, 33.540405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205204, 32.688900, 33.527130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008765, 0.368481, -0.929594,
		0.068001, 0.927697, 0.367088,
		0.997647, -0.059996, -0.033189,
		35.504498, 32.670902, 33.517174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973427, 33.338615, 33.357121>,  <34.806145, 32.712898, 33.540405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973427, 33.338615, 33.357121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290932, 33.112862, 33.266418>,  <35.481434, 32.977409, 33.211998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290932, 33.112862, 33.266418>,  <34.973427, 33.338615, 33.357121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290932, 33.112862, 33.266418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048442, 0.430285, -0.901392,
		0.606295, 0.704507, 0.368884,
		0.793763, -0.564380, -0.226752,
		35.529060, 32.943546, 33.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525318, 33.812561, 33.013775>,  <34.973427, 33.338615, 33.357121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525318, 33.812561, 33.013775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622089, 33.438519, 32.910202>,  <35.680153, 33.214092, 32.848057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622089, 33.438519, 32.910202>,  <35.525318, 33.812561, 33.013775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622089, 33.438519, 32.910202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384035, 0.337352, -0.859483,
		0.891061, 0.108491, 0.440728,
		0.241926, -0.935106, -0.258936,
		35.694668, 33.157986, 32.832520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223949, 33.904385, 32.922279>,  <35.525318, 33.812561, 33.013775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223949, 33.904385, 32.922279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074066, 33.601849, 32.707790>,  <35.984135, 33.420326, 32.579098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074066, 33.601849, 32.707790>,  <36.223949, 33.904385, 32.922279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074066, 33.601849, 32.707790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476359, 0.339127, -0.811219,
		0.795408, -0.559407, 0.233216,
		-0.374711, -0.756344, -0.536223,
		35.961655, 33.374947, 32.546925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458332, 34.137234, 32.255032>,  <36.223949, 33.904385, 32.922279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458332, 34.137234, 32.255032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249252, 33.816383, 32.139526>,  <36.123806, 33.623875, 32.070225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249252, 33.816383, 32.139526>,  <36.458332, 34.137234, 32.255032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249252, 33.816383, 32.139526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084196, 0.288492, -0.953773,
		0.848351, -0.522847, -0.083259,
		-0.522697, -0.802124, -0.288764,
		36.092442, 33.575745, 32.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881012, 33.871315, 31.678268>,  <36.458332, 34.137234, 32.255032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881012, 33.871315, 31.678268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511486, 33.720089, 31.654144>,  <36.289772, 33.629353, 31.639669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511486, 33.720089, 31.654144>,  <36.881012, 33.871315, 31.678268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511486, 33.720089, 31.654144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016130, 0.118952, -0.992769,
		0.382508, -0.918104, -0.103791,
		-0.923812, -0.378068, -0.060309,
		36.234344, 33.606670, 31.636051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916603, 33.365211, 31.074400>,  <36.881012, 33.871315, 31.678268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916603, 33.365211, 31.074400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526825, 33.432461, 31.133984>,  <36.292957, 33.472809, 31.169733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526825, 33.432461, 31.133984>,  <36.916603, 33.365211, 31.074400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526825, 33.432461, 31.133984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157475, -0.038444, -0.986774,
		-0.160176, -0.985016, 0.063938,
		-0.974446, 0.168126, 0.148957,
		36.234489, 33.482899, 31.178671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584507, 32.800354, 30.812477>,  <36.916603, 33.365211, 31.074400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584507, 32.800354, 30.812477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315624, 33.096420, 30.819380>,  <36.154297, 33.274059, 30.823523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315624, 33.096420, 30.819380>,  <36.584507, 32.800354, 30.812477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315624, 33.096420, 30.819380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191117, -0.150955, -0.969890,
		-0.715273, -0.655263, 0.242931,
		-0.672204, 0.740164, 0.017258,
		36.113964, 33.318470, 30.824558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915337, 32.673897, 30.449959>,  <36.584507, 32.800354, 30.812477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915337, 32.673897, 30.449959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942017, 33.072800, 30.462757>,  <35.958027, 33.312141, 30.470436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942017, 33.072800, 30.462757>,  <35.915337, 32.673897, 30.449959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942017, 33.072800, 30.462757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018696, 0.030812, -0.999350,
		-0.997597, 0.067259, -0.016590,
		0.066705, 0.997260, 0.031995,
		35.962029, 33.371979, 30.472355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850285, 32.838085, 29.771576>,  <35.915337, 32.673897, 30.449959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850285, 32.838085, 29.771576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963139, 33.194305, 29.914299>,  <36.030849, 33.408039, 29.999933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963139, 33.194305, 29.914299>,  <35.850285, 32.838085, 29.771576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963139, 33.194305, 29.914299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023776, 0.365312, -0.930581,
		-0.959080, 0.271034, 0.081894,
		0.282136, 0.890555, 0.356808,
		36.047779, 33.461472, 30.021341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334229, 33.277802, 29.534527>,  <35.850285, 32.838085, 29.771576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334229, 33.277802, 29.534527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652527, 33.504135, 29.620893>,  <35.843506, 33.639935, 29.672712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652527, 33.504135, 29.620893>,  <35.334229, 33.277802, 29.534527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652527, 33.504135, 29.620893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060491, 0.428991, -0.901281,
		-0.602599, 0.704132, 0.375596,
		0.795748, 0.565832, 0.215916,
		35.891251, 33.673885, 29.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108402, 33.947060, 29.444368>,  <35.334229, 33.277802, 29.534527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108402, 33.947060, 29.444368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506268, 33.934818, 29.404947>,  <35.744987, 33.927471, 29.381294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506268, 33.934818, 29.404947>,  <35.108402, 33.947060, 29.444368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506268, 33.934818, 29.404947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076731, 0.419265, -0.904616,
		0.069007, 0.907348, 0.414678,
		0.994661, -0.030606, -0.098554,
		35.804665, 33.925636, 29.375381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737812, 34.522594, 29.710062>,  <35.108402, 33.947060, 29.444368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737812, 34.522594, 29.710062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351585, 34.578640, 29.622375>,  <34.119850, 34.612267, 29.569763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351585, 34.578640, 29.622375>,  <34.737812, 34.522594, 29.710062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351585, 34.578640, 29.622375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249643, -0.261721, 0.932298,
		0.073255, 0.954919, 0.287687,
		-0.965563, 0.140115, -0.219217,
		34.061916, 34.620674, 29.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437565, 35.009930, 30.174370>,  <34.737812, 34.522594, 29.710062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437565, 35.009930, 30.174370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118542, 34.806976, 30.043852>,  <33.927128, 34.685204, 29.965542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118542, 34.806976, 30.043852>,  <34.437565, 35.009930, 30.174370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118542, 34.806976, 30.043852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362202, -0.029778, 0.931624,
		-0.482408, 0.861205, -0.160026,
		-0.797554, -0.507384, -0.326295,
		33.879276, 34.654762, 29.945963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885788, 35.301666, 30.481737>,  <34.437565, 35.009930, 30.174370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885788, 35.301666, 30.481737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746231, 34.945240, 30.365622>,  <33.662495, 34.731384, 30.295952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746231, 34.945240, 30.365622>,  <33.885788, 35.301666, 30.481737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746231, 34.945240, 30.365622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480765, -0.095706, 0.871611,
		-0.804448, 0.443661, -0.395003,
		-0.348896, -0.891070, -0.290287,
		33.641563, 34.677917, 30.278536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227108, 35.420502, 30.659235>,  <33.885788, 35.301666, 30.481737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227108, 35.420502, 30.659235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304241, 35.029839, 30.621389>,  <33.350521, 34.795441, 30.598682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304241, 35.029839, 30.621389>,  <33.227108, 35.420502, 30.659235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304241, 35.029839, 30.621389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404747, -0.167010, 0.899048,
		-0.893865, -0.135071, -0.427505,
		0.192833, -0.976659, -0.094615,
		33.362091, 34.736839, 30.593004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580738, 34.948830, 30.767429>,  <33.227108, 35.420502, 30.659235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580738, 34.948830, 30.767429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878006, 34.696682, 30.857174>,  <33.056366, 34.545395, 30.911020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878006, 34.696682, 30.857174>,  <32.580738, 34.948830, 30.767429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878006, 34.696682, 30.857174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434374, -0.199469, 0.878369,
		-0.508943, -0.750232, -0.422054,
		0.743167, -0.630369, 0.224363,
		33.100956, 34.507572, 30.924482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205021, 34.402008, 31.176729>,  <32.580738, 34.948830, 30.767429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205021, 34.402008, 31.176729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594887, 34.341053, 31.242226>,  <32.828804, 34.304482, 31.281525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594887, 34.341053, 31.242226>,  <32.205021, 34.402008, 31.176729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594887, 34.341053, 31.242226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207576, -0.343440, 0.915948,
		-0.083343, -0.926730, -0.366370,
		0.974662, -0.152387, 0.163744,
		32.887287, 34.295338, 31.291349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337563, 33.593700, 31.252018>,  <32.205021, 34.402008, 31.176729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337563, 33.593700, 31.252018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.617344, 33.821716, 31.424444>,  <32.785213, 33.958527, 31.527899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.617344, 33.821716, 31.424444>,  <32.337563, 33.593700, 31.252018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617344, 33.821716, 31.424444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166740, -0.456351, 0.874037,
		0.694956, -0.683223, -0.224147,
		0.699453, 0.570043, 0.431065,
		32.827179, 33.992729, 31.553764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656105, 33.097477, 31.669037>,  <32.337563, 33.593700, 31.252018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656105, 33.097477, 31.669037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765961, 33.451317, 31.819796>,  <32.831875, 33.663620, 31.910252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765961, 33.451317, 31.819796>,  <32.656105, 33.097477, 31.669037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765961, 33.451317, 31.819796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084745, -0.368176, 0.925886,
		0.957807, -0.286222, -0.026149,
		0.274636, 0.884604, 0.376897,
		32.848351, 33.716698, 31.932865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134384, 32.890404, 32.270653>,  <32.656105, 33.097477, 31.669037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134384, 32.890404, 32.270653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047260, 33.278362, 32.314217>,  <32.994987, 33.511139, 32.340355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047260, 33.278362, 32.314217>,  <33.134384, 32.890404, 32.270653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047260, 33.278362, 32.314217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285248, -0.169972, 0.943262,
		0.933377, 0.174385, 0.313682,
		-0.217808, 0.969896, 0.108905,
		32.981918, 33.569332, 32.346889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497181, 33.115261, 32.815071>,  <33.134384, 32.890404, 32.270653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497181, 33.115261, 32.815071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192791, 33.374493, 32.803024>,  <33.010155, 33.530033, 32.795795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192791, 33.374493, 32.803024>,  <33.497181, 33.115261, 32.815071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192791, 33.374493, 32.803024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188768, -0.176767, 0.965982,
		0.620710, 0.740774, 0.256852,
		-0.760977, 0.648080, -0.030113,
		32.964497, 33.568916, 32.793991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550217, 33.490036, 33.429585>,  <33.497181, 33.115261, 32.815071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550217, 33.490036, 33.429585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179565, 33.570786, 33.302711>,  <32.957176, 33.619236, 33.226589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179565, 33.570786, 33.302711>,  <33.550217, 33.490036, 33.429585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179565, 33.570786, 33.302711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349509, -0.151578, 0.924590,
		0.138576, 0.967610, 0.211015,
		-0.926628, 0.201878, -0.317183,
		32.901577, 33.631348, 33.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167484, 34.062386, 33.861382>,  <33.550217, 33.490036, 33.429585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167484, 34.062386, 33.861382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878441, 33.849934, 33.684410>,  <32.705017, 33.722462, 33.578228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878441, 33.849934, 33.684410>,  <33.167484, 34.062386, 33.861382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878441, 33.849934, 33.684410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463691, -0.102247, 0.880077,
		-0.512673, 0.841098, -0.172396,
		-0.722605, -0.531130, -0.442429,
		32.661659, 33.690594, 33.551682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454529, 34.224064, 34.086391>,  <33.167484, 34.062386, 33.861382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454529, 34.224064, 34.086391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466133, 33.843166, 33.964809>,  <32.473095, 33.614628, 33.891861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466133, 33.843166, 33.964809>,  <32.454529, 34.224064, 34.086391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466133, 33.843166, 33.964809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382380, -0.291528, 0.876811,
		-0.923550, 0.090791, -0.372577,
		0.029010, -0.952244, -0.303957,
		32.474834, 33.557491, 33.873623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770424, 34.852032, 33.803455>,  <32.454529, 34.224064, 34.086391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770424, 34.852032, 33.803455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800117, 34.990040, 34.177715>,  <32.817932, 35.072845, 34.402271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800117, 34.990040, 34.177715>,  <32.770424, 34.852032, 33.803455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800117, 34.990040, 34.177715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883186, -0.458458, 0.098987,
		0.463111, 0.819009, -0.338751,
		0.074232, 0.345022, 0.935654,
		32.822388, 35.093548, 34.458412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089138, 35.259872, 33.701885>,  <32.770424, 34.852032, 33.803455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089138, 35.259872, 33.701885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083561, 35.482773, 34.033978>,  <32.080215, 35.616512, 34.233231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083561, 35.482773, 34.033978>,  <32.089138, 35.259872, 33.701885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083561, 35.482773, 34.033978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640425, 0.642626, -0.420580,
		-0.767894, 0.525834, -0.365837,
		-0.013941, 0.557252, 0.830226,
		32.079380, 35.649948, 34.283047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799023, 35.896816, 33.422016>,  <32.089138, 35.259872, 33.701885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799023, 35.896816, 33.422016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059155, 35.903427, 33.725803>,  <32.215233, 35.907394, 33.908077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059155, 35.903427, 33.725803>,  <31.799023, 35.896816, 33.422016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059155, 35.903427, 33.725803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530439, 0.705790, -0.469569,
		-0.543789, 0.708228, 0.450229,
		0.650329, 0.016527, 0.759473,
		32.254253, 35.908386, 33.953644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856781, 36.604126, 33.776802>,  <31.799023, 35.896816, 33.422016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856781, 36.604126, 33.776802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212421, 36.421753, 33.792919>,  <32.425804, 36.312328, 33.802589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212421, 36.421753, 33.792919>,  <31.856781, 36.604126, 33.776802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212421, 36.421753, 33.792919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423254, 0.785466, -0.451552,
		0.174229, 0.418529, 0.891335,
		0.889101, -0.455934, 0.040293,
		32.479153, 36.284973, 33.805008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355831, 37.067207, 34.213310>,  <31.856781, 36.604126, 33.776802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355831, 37.067207, 34.213310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576130, 36.823238, 33.985390>,  <32.708309, 36.676857, 33.848637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576130, 36.823238, 33.985390>,  <32.355831, 37.067207, 34.213310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576130, 36.823238, 33.985390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480256, 0.789901, -0.381326,
		0.682667, -0.063638, 0.727953,
		0.550744, -0.609923, -0.569802,
		32.741352, 36.640263, 33.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971367, 37.313625, 34.405941>,  <32.355831, 37.067207, 34.213310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971367, 37.313625, 34.405941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010960, 37.121784, 34.057186>,  <33.034714, 37.006680, 33.847935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010960, 37.121784, 34.057186>,  <32.971367, 37.313625, 34.405941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010960, 37.121784, 34.057186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442749, 0.805907, -0.393050,
		0.891166, -0.347121, 0.292115,
		0.098982, -0.479606, -0.871884,
		33.040653, 36.977901, 33.795620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629360, 37.495522, 34.125042>,  <32.971367, 37.313625, 34.405941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629360, 37.495522, 34.125042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430218, 37.355072, 33.807842>,  <33.310734, 37.270802, 33.617523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430218, 37.355072, 33.807842>,  <33.629360, 37.495522, 34.125042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430218, 37.355072, 33.807842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543094, 0.586671, -0.600722,
		0.676160, -0.729746, -0.101383,
		-0.497853, -0.351123, -0.793004,
		33.280861, 37.249737, 33.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101578, 37.293999, 33.631355>,  <33.629360, 37.495522, 34.125042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101578, 37.293999, 33.631355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760715, 37.366776, 33.435097>,  <33.556198, 37.410442, 33.317341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760715, 37.366776, 33.435097>,  <34.101578, 37.293999, 33.631355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760715, 37.366776, 33.435097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499155, 0.564106, -0.657745,
		0.157101, -0.805407, -0.571523,
		-0.852152, 0.181946, -0.490644,
		33.505070, 37.421360, 33.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280888, 37.425373, 32.896309>,  <34.101578, 37.293999, 33.631355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280888, 37.425373, 32.896309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909893, 37.574921, 32.896400>,  <33.687298, 37.664650, 32.896454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909893, 37.574921, 32.896400>,  <34.280888, 37.425373, 32.896309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909893, 37.574921, 32.896400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245944, 0.610590, -0.752789,
		-0.281583, -0.698142, -0.658262,
		-0.927482, 0.373868, 0.000228,
		33.631649, 37.687080, 32.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199921, 37.581928, 32.207920>,  <34.280888, 37.425373, 32.896309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199921, 37.581928, 32.207920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899563, 37.777519, 32.385483>,  <33.719349, 37.894875, 32.492020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899563, 37.777519, 32.385483>,  <34.199921, 37.581928, 32.207920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899563, 37.777519, 32.385483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139211, 0.774251, -0.617378,
		-0.645581, -0.401790, -0.649453,
		-0.750896, 0.488979, 0.443908,
		33.674294, 37.924213, 32.518654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699139, 37.783531, 31.722521>,  <34.199921, 37.581928, 32.207920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699139, 37.783531, 31.722521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621124, 38.029320, 32.028301>,  <33.574314, 38.176792, 32.211769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621124, 38.029320, 32.028301>,  <33.699139, 37.783531, 31.722521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621124, 38.029320, 32.028301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058247, 0.785300, -0.616369,
		-0.979065, -0.075687, -0.188952,
		-0.195035, 0.614472, 0.764451,
		33.562614, 38.213661, 32.257637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286476, 38.323700, 31.372223>,  <33.699139, 37.783531, 31.722521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286476, 38.323700, 31.372223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423328, 38.475403, 31.716108>,  <33.505440, 38.566425, 31.922440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423328, 38.475403, 31.716108>,  <33.286476, 38.323700, 31.372223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423328, 38.475403, 31.716108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101033, 0.894778, -0.434931,
		-0.934204, 0.235664, 0.267815,
		0.342133, 0.379256, 0.859715,
		33.525967, 38.589180, 31.974022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901814, 38.925560, 31.404747>,  <33.286476, 38.323700, 31.372223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901814, 38.925560, 31.404747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218128, 38.985817, 31.642052>,  <33.407917, 39.021973, 31.784435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218128, 38.985817, 31.642052>,  <32.901814, 38.925560, 31.404747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218128, 38.985817, 31.642052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117398, 0.913918, -0.388552,
		-0.600727, 0.376910, 0.705029,
		0.790788, 0.150644, 0.593263,
		33.455364, 39.031010, 31.820030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863113, 39.577320, 31.757374>,  <32.901814, 38.925560, 31.404747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863113, 39.577320, 31.757374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251228, 39.481613, 31.743038>,  <33.484097, 39.424187, 31.734436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251228, 39.481613, 31.743038>,  <32.863113, 39.577320, 31.757374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251228, 39.481613, 31.743038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182327, 0.820523, -0.541755,
		0.159033, 0.519125, 0.839772,
		0.970291, -0.239270, -0.035839,
		33.542316, 39.409832, 31.732286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214806, 40.199444, 31.969469>,  <32.863113, 39.577320, 31.757374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214806, 40.199444, 31.969469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475365, 39.979530, 31.760313>,  <33.631702, 39.847584, 31.634819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475365, 39.979530, 31.760313>,  <33.214806, 40.199444, 31.969469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475365, 39.979530, 31.760313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309987, 0.821864, -0.477962,
		0.692521, 0.149255, 0.705789,
		0.651401, -0.549783, -0.522891,
		33.670784, 39.814594, 31.603445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783539, 40.595005, 31.980934>,  <33.214806, 40.199444, 31.969469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783539, 40.595005, 31.980934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854210, 40.311424, 31.707825>,  <33.896614, 40.141277, 31.543959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854210, 40.311424, 31.707825>,  <33.783539, 40.595005, 31.980934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854210, 40.311424, 31.707825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340280, 0.694906, -0.633494,
		0.923577, -0.120410, 0.364015,
		0.176677, -0.708948, -0.682772,
		33.907211, 40.098740, 31.502993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458950, 40.684311, 31.744873>,  <33.783539, 40.595005, 31.980934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458950, 40.684311, 31.744873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287590, 40.477180, 31.448675>,  <34.184776, 40.352901, 31.270956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287590, 40.477180, 31.448675>,  <34.458950, 40.684311, 31.744873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287590, 40.477180, 31.448675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468088, 0.573794, -0.672052,
		0.772897, -0.634522, -0.003424,
		-0.428396, -0.517824, -0.740496,
		34.159073, 40.321835, 31.226526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018505, 40.476559, 31.230038>,  <34.458950, 40.684311, 31.744873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018505, 40.476559, 31.230038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655376, 40.470737, 31.062399>,  <34.437500, 40.467243, 30.961817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655376, 40.470737, 31.062399>,  <35.018505, 40.476559, 31.230038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655376, 40.470737, 31.062399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306455, 0.659164, -0.686723,
		0.286247, -0.751858, -0.593946,
		-0.907826, -0.014554, -0.419094,
		34.383030, 40.466370, 30.936670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091610, 40.421402, 30.456059>,  <35.018505, 40.476559, 31.230038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091610, 40.421402, 30.456059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722427, 40.569141, 30.499384>,  <34.500919, 40.657787, 30.525379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722427, 40.569141, 30.499384>,  <35.091610, 40.421402, 30.456059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722427, 40.569141, 30.499384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203562, 0.707222, -0.677052,
		-0.326673, -0.602840, -0.727921,
		-0.922956, 0.369352, 0.108315,
		34.445541, 40.679947, 30.531878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962269, 40.707829, 29.785122>,  <35.091610, 40.421402, 30.456059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962269, 40.707829, 29.785122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695862, 40.884174, 30.025806>,  <34.536018, 40.989983, 30.170218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695862, 40.884174, 30.025806>,  <34.962269, 40.707829, 29.785122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695862, 40.884174, 30.025806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115318, 0.857811, -0.500861,
		-0.736968, -0.264194, -0.622157,
		-0.666018, 0.440865, 0.601713,
		34.496056, 41.016434, 30.206320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569267, 41.030167, 29.295126>,  <34.962269, 40.707829, 29.785122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569267, 41.030167, 29.295126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494190, 41.223885, 29.636940>,  <34.449142, 41.340115, 29.842028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494190, 41.223885, 29.636940>,  <34.569267, 41.030167, 29.295126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494190, 41.223885, 29.636940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117946, 0.874815, -0.469881,
		-0.975120, 0.012595, -0.221318,
		-0.187694, 0.484294, 0.854535,
		34.437881, 41.369171, 29.893301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030708, 41.448185, 29.159424>,  <34.569267, 41.030167, 29.295126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030708, 41.448185, 29.159424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203094, 41.624664, 29.474285>,  <34.306526, 41.730553, 29.663202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203094, 41.624664, 29.474285>,  <34.030708, 41.448185, 29.159424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203094, 41.624664, 29.474285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073437, 0.886577, -0.456715,
		-0.899375, 0.139023, 0.414485,
		0.430967, 0.441197, 0.787155,
		34.332386, 41.757023, 29.710432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701046, 42.138023, 29.212721>,  <34.030708, 41.448185, 29.159424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701046, 42.138023, 29.212721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047913, 42.146919, 29.411730>,  <34.256031, 42.152256, 29.531136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047913, 42.146919, 29.411730>,  <33.701046, 42.138023, 29.212721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047913, 42.146919, 29.411730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174837, 0.921822, -0.345942,
		-0.466321, 0.386974, 0.795484,
		0.867166, 0.022239, 0.497523,
		34.308064, 42.153591, 29.560987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691437, 42.709114, 29.664316>,  <33.701046, 42.138023, 29.212721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691437, 42.709114, 29.664316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078922, 42.628967, 29.605745>,  <34.311413, 42.580879, 29.570602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078922, 42.628967, 29.605745>,  <33.691437, 42.709114, 29.664316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078922, 42.628967, 29.605745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155327, 0.949690, -0.271961,
		0.193552, 0.240709, 0.951103,
		0.968716, -0.200370, -0.146426,
		34.369537, 42.568855, 29.561817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037125, 43.161770, 29.964258>,  <33.691437, 42.709114, 29.664316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037125, 43.161770, 29.964258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346878, 43.030540, 29.747854>,  <34.532730, 42.951805, 29.618011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346878, 43.030540, 29.747854>,  <34.037125, 43.161770, 29.964258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346878, 43.030540, 29.747854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285109, 0.944271, -0.164512,
		0.564833, -0.026851, 0.824768,
		0.774388, -0.328070, -0.541011,
		34.579193, 42.932117, 29.585550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478237, 43.714035, 29.981672>,  <34.037125, 43.161770, 29.964258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478237, 43.714035, 29.981672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625206, 43.478264, 29.693901>,  <34.713387, 43.336803, 29.521238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625206, 43.478264, 29.693901>,  <34.478237, 43.714035, 29.981672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625206, 43.478264, 29.693901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562924, 0.756693, -0.332463,
		0.740349, -0.282829, 0.609829,
		0.367424, -0.589426, -0.719428,
		34.735432, 43.301437, 29.478073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205048, 43.704826, 29.969507>,  <34.478237, 43.714035, 29.981672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205048, 43.704826, 29.969507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081192, 43.625385, 29.597553>,  <35.006878, 43.577721, 29.374382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081192, 43.625385, 29.597553>,  <35.205048, 43.704826, 29.969507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081192, 43.625385, 29.597553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374083, 0.873640, -0.311150,
		0.874191, -0.444189, -0.196179,
		-0.309599, -0.198617, -0.929892,
		34.988300, 43.565804, 29.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677029, 43.970463, 29.622538>,  <35.205048, 43.704826, 29.969507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677029, 43.970463, 29.622538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398136, 43.935226, 29.337971>,  <35.230801, 43.914085, 29.167231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398136, 43.935226, 29.337971>,  <35.677029, 43.970463, 29.622538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398136, 43.935226, 29.337971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401443, 0.774227, -0.489302,
		0.593898, -0.626749, -0.504451,
		-0.697229, -0.088088, -0.711416,
		35.188969, 43.908802, 29.124546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054569, 43.868855, 28.970911>,  <35.677029, 43.970463, 29.622538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054569, 43.868855, 28.970911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693035, 44.027878, 28.907625>,  <35.476116, 44.123291, 28.869654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693035, 44.027878, 28.907625>,  <36.054569, 43.868855, 28.970911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693035, 44.027878, 28.907625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426233, 0.804110, -0.414407,
		-0.037530, -0.441990, -0.896234,
		-0.903835, 0.397557, -0.158213,
		35.421886, 44.147144, 28.860161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431416, 43.375263, 28.629032>,  <36.054569, 43.868855, 28.970911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431416, 43.375263, 28.629032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809471, 43.373714, 28.759691>,  <37.036304, 43.372784, 28.838087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809471, 43.373714, 28.759691>,  <36.431416, 43.375263, 28.629032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809471, 43.373714, 28.759691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272222, -0.562084, 0.780997,
		0.180579, -0.827071, -0.532302,
		0.945138, -0.003873, 0.326647,
		37.093014, 43.372551, 28.857685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809242, 42.654396, 28.785254>,  <36.431416, 43.375263, 28.629032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809242, 42.654396, 28.785254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984184, 42.944183, 28.998369>,  <37.089149, 43.118057, 29.126238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984184, 42.944183, 28.998369>,  <36.809242, 42.654396, 28.785254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984184, 42.944183, 28.998369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202401, -0.497957, 0.843252,
		0.876216, -0.476638, -0.071151,
		0.437356, 0.724469, 0.532789,
		37.115391, 43.161526, 29.158205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324841, 42.259014, 29.127966>,  <36.809242, 42.654396, 28.785254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324841, 42.259014, 29.127966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257050, 42.589027, 29.343594>,  <37.216373, 42.787037, 29.472969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257050, 42.589027, 29.343594>,  <37.324841, 42.259014, 29.127966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257050, 42.589027, 29.343594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000365, -0.547034, 0.837111,
		0.985534, 0.141676, 0.093012,
		-0.169479, 0.825035, 0.539068,
		37.206207, 42.836536, 29.505314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693157, 42.137943, 29.736889>,  <37.324841, 42.259014, 29.127966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693157, 42.137943, 29.736889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428898, 42.421570, 29.835497>,  <37.270344, 42.591747, 29.894663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428898, 42.421570, 29.835497>,  <37.693157, 42.137943, 29.736889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428898, 42.421570, 29.835497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002880, -0.325995, 0.945367,
		0.750693, 0.625262, 0.213325,
		-0.660645, 0.709066, 0.246522,
		37.230705, 42.634289, 29.909454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006905, 42.456776, 30.359091>,  <37.693157, 42.137943, 29.736889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006905, 42.456776, 30.359091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608387, 42.479622, 30.333357>,  <37.369278, 42.493328, 30.317917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608387, 42.479622, 30.333357>,  <38.006905, 42.456776, 30.359091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608387, 42.479622, 30.333357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081650, -0.392219, 0.916241,
		0.027097, 0.918097, 0.395428,
		-0.996293, 0.057114, -0.064334,
		37.309498, 42.496758, 30.314056>
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
