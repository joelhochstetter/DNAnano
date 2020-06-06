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
	<24.735165, 35.387173, 35.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356859, 35.261627, 35.164303>,  <24.129875, 35.186302, 35.144196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356859, 35.261627, 35.164303>,  <24.735165, 35.387173, 35.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356859, 35.261627, 35.164303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311518, -0.949397, 0.040025,
		-0.092108, 0.011753, 0.995680,
		-0.945766, -0.313859, -0.083786,
		24.073130, 35.167469, 35.139168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134186, 35.462013, 34.619793>,  <24.735165, 35.387173, 35.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134186, 35.462013, 34.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443544, 35.512474, 34.371296>,  <25.629160, 35.542751, 34.222198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443544, 35.512474, 34.371296>,  <25.134186, 35.462013, 34.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443544, 35.512474, 34.371296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484491, -0.749619, 0.450933,
		-0.408813, -0.649738, -0.640869,
		0.773395, 0.126148, -0.621246,
		25.675564, 35.550320, 34.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277517, 34.746864, 34.239639>,  <25.134186, 35.462013, 34.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277517, 34.746864, 34.239639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606266, 34.974571, 34.248280>,  <25.803514, 35.111195, 34.253464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606266, 34.974571, 34.248280>,  <25.277517, 34.746864, 34.239639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606266, 34.974571, 34.248280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527064, -0.774238, 0.350369,
		0.216174, -0.276575, -0.936363,
		0.821871, 0.569264, 0.021597,
		25.852827, 35.145351, 34.254757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757835, 34.371731, 33.805706>,  <25.277517, 34.746864, 34.239639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757835, 34.371731, 33.805706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944324, 34.607368, 34.069710>,  <26.056217, 34.748753, 34.228111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944324, 34.607368, 34.069710>,  <25.757835, 34.371731, 33.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944324, 34.607368, 34.069710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213027, -0.798853, 0.562542,
		0.858637, -0.121670, -0.497935,
		0.466222, 0.589093, 0.660005,
		26.084190, 34.784096, 34.267712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481794, 34.266590, 33.832394>,  <25.757835, 34.371731, 33.805706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481794, 34.266590, 33.832394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360130, 34.393551, 34.191669>,  <26.287132, 34.469727, 34.407234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360130, 34.393551, 34.191669>,  <26.481794, 34.266590, 33.832394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360130, 34.393551, 34.191669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199512, -0.900725, 0.385863,
		0.931494, 0.296563, 0.210639,
		-0.304161, 0.317404, 0.898188,
		26.268883, 34.488773, 34.461124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995586, 34.193741, 34.290436>,  <26.481794, 34.266590, 33.832394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995586, 34.193741, 34.290436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652241, 34.190392, 34.495625>,  <26.446234, 34.188381, 34.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652241, 34.190392, 34.495625>,  <26.995586, 34.193741, 34.290436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652241, 34.190392, 34.495625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185383, -0.937373, 0.294898,
		0.478380, 0.348226, 0.806158,
		-0.858362, -0.008374, 0.512975,
		26.394732, 34.187878, 34.649517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182905, 33.989151, 34.987503>,  <26.995586, 34.193741, 34.290436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182905, 33.989151, 34.987503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804941, 33.888248, 34.904060>,  <26.578163, 33.827709, 34.853992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804941, 33.888248, 34.904060>,  <27.182905, 33.989151, 34.987503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804941, 33.888248, 34.904060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145455, -0.894486, 0.422774,
		-0.293244, 0.369139, 0.881898,
		-0.944908, -0.252252, -0.208610,
		26.521469, 33.812572, 34.841476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955948, 33.697647, 35.585651>,  <27.182905, 33.989151, 34.987503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955948, 33.697647, 35.585651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747137, 33.576233, 35.266815>,  <26.621851, 33.503384, 35.075512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747137, 33.576233, 35.266815>,  <26.955948, 33.697647, 35.585651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747137, 33.576233, 35.266815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147355, -0.952578, 0.266237,
		-0.840104, 0.021527, 0.541999,
		-0.522027, -0.303532, -0.797092,
		26.590528, 33.485172, 35.027687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460087, 33.190639, 35.835033>,  <26.955948, 33.697647, 35.585651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460087, 33.190639, 35.835033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501694, 33.110813, 35.445293>,  <26.526659, 33.062916, 35.211449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501694, 33.110813, 35.445293>,  <26.460087, 33.190639, 35.835033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501694, 33.110813, 35.445293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159159, -0.963697, 0.214375,
		-0.981758, -0.177376, -0.068480,
		0.104019, -0.199565, -0.974348,
		26.532900, 33.050945, 35.152988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943331, 32.787968, 35.539856>,  <26.460087, 33.190639, 35.835033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943331, 32.787968, 35.539856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280489, 32.700558, 35.343174>,  <26.482784, 32.648113, 35.225166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280489, 32.700558, 35.343174>,  <25.943331, 32.787968, 35.539856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280489, 32.700558, 35.343174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051929, -0.876520, 0.478557,
		-0.535563, -0.428908, -0.727469,
		0.842897, -0.218520, -0.491705,
		26.533358, 32.635002, 35.195663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820202, 32.088043, 35.290024>,  <25.943331, 32.787968, 35.539856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820202, 32.088043, 35.290024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193531, 32.201809, 35.377674>,  <26.417528, 32.270069, 35.430264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193531, 32.201809, 35.377674>,  <25.820202, 32.088043, 35.290024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193531, 32.201809, 35.377674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159657, -0.875424, 0.456228,
		0.321581, -0.390824, -0.862463,
		0.933325, 0.284412, 0.219122,
		26.473528, 32.287132, 35.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273317, 31.391312, 35.351078>,  <25.820202, 32.088043, 35.290024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273317, 31.391312, 35.351078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440004, 31.705603, 35.533932>,  <26.540016, 31.894178, 35.643646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440004, 31.705603, 35.533932>,  <26.273317, 31.391312, 35.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440004, 31.705603, 35.533932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387720, -0.608476, 0.692409,
		0.822204, -0.111298, -0.558206,
		0.416719, 0.785729, 0.457138,
		26.565020, 31.941322, 35.671074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934544, 31.323277, 35.499584>,  <26.273317, 31.391312, 35.351078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934544, 31.323277, 35.499584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776653, 31.559601, 35.781048>,  <26.681919, 31.701395, 35.949924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776653, 31.559601, 35.781048>,  <26.934544, 31.323277, 35.499584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776653, 31.559601, 35.781048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203719, -0.690503, 0.694049,
		0.895929, 0.417309, 0.152201,
		-0.394728, 0.590812, 0.703655,
		26.658236, 31.736845, 35.992146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425491, 31.407261, 35.955090>,  <26.934544, 31.323277, 35.499584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425491, 31.407261, 35.955090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070496, 31.418940, 36.139053>,  <26.857498, 31.425947, 36.249432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070496, 31.418940, 36.139053>,  <27.425491, 31.407261, 35.955090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070496, 31.418940, 36.139053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260409, -0.791601, 0.552770,
		0.380201, 0.610340, 0.694933,
		-0.887487, 0.029197, 0.459906,
		26.804249, 31.427698, 36.277023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632599, 32.082180, 36.055840>,  <27.425491, 31.407261, 35.955090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632599, 32.082180, 36.055840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365433, 31.975008, 35.778103>,  <27.205133, 31.910706, 35.611462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365433, 31.975008, 35.778103>,  <27.632599, 32.082180, 36.055840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365433, 31.975008, 35.778103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036239, 0.920136, -0.389918,
		0.743356, -0.285594, -0.604862,
		-0.667914, -0.267928, -0.694338,
		27.165058, 31.894630, 35.569801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778711, 32.352112, 35.404922>,  <27.632599, 32.082180, 36.055840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778711, 32.352112, 35.404922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382101, 32.300388, 35.399956>,  <27.144135, 32.269356, 35.396976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382101, 32.300388, 35.399956>,  <27.778711, 32.352112, 35.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382101, 32.300388, 35.399956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089145, 0.746840, -0.659002,
		0.094485, -0.652312, -0.752039,
		-0.991527, -0.129307, -0.012415,
		27.084642, 32.261597, 35.396233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751757, 32.472359, 34.782269>,  <27.778711, 32.352112, 35.404922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751757, 32.472359, 34.782269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375767, 32.505310, 34.914726>,  <27.150173, 32.525082, 34.994202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375767, 32.505310, 34.914726>,  <27.751757, 32.472359, 34.782269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375767, 32.505310, 34.914726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115958, 0.835558, -0.537025,
		-0.320932, -0.543190, -0.775853,
		-0.939977, 0.082382, 0.331144,
		27.093773, 32.530025, 35.014069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541540, 33.098873, 34.428356>,  <27.751757, 32.472359, 34.782269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541540, 33.098873, 34.428356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222263, 32.928886, 34.599140>,  <27.030697, 32.826897, 34.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222263, 32.928886, 34.599140>,  <27.541540, 33.098873, 34.428356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222263, 32.928886, 34.599140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575190, 0.748266, -0.330537,
		-0.179013, -0.509415, -0.841695,
		-0.798192, -0.424965, 0.426960,
		26.982805, 32.801395, 34.727226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817511, 33.040962, 33.935612>,  <27.541540, 33.098873, 34.428356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817511, 33.040962, 33.935612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703463, 33.004044, 34.317226>,  <26.635033, 32.981892, 34.546196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703463, 33.004044, 34.317226>,  <26.817511, 33.040962, 33.935612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703463, 33.004044, 34.317226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533846, 0.841968, -0.078091,
		-0.796061, -0.531575, -0.289335,
		-0.285122, -0.092295, 0.954037,
		26.617926, 32.976357, 34.603439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090057, 32.953865, 33.987087>,  <26.817511, 33.040962, 33.935612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090057, 32.953865, 33.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254597, 33.127743, 34.307545>,  <26.353319, 33.232071, 34.499821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254597, 33.127743, 34.307545>,  <26.090057, 32.953865, 33.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254597, 33.127743, 34.307545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603969, 0.788283, -0.117611,
		-0.682654, -0.435487, 0.586801,
		0.411347, 0.434697, 0.801144,
		26.378000, 33.258152, 34.547890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536343, 33.235905, 34.444912>,  <26.090057, 32.953865, 33.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536343, 33.235905, 34.444912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870275, 33.452366, 34.485329>,  <26.070635, 33.582241, 34.509579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870275, 33.452366, 34.485329>,  <25.536343, 33.235905, 34.444912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870275, 33.452366, 34.485329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549556, 0.830003, 0.095306,
		-0.032293, -0.135094, 0.990306,
		0.834833, 0.541151, 0.101045,
		26.120726, 33.614712, 34.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508486, 33.732857, 34.948753>,  <25.536343, 33.235905, 34.444912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508486, 33.732857, 34.948753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743780, 33.847046, 34.646103>,  <25.884956, 33.915562, 34.464512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743780, 33.847046, 34.646103>,  <25.508486, 33.732857, 34.948753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743780, 33.847046, 34.646103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582646, 0.798438, -0.151724,
		0.560806, 0.530095, 0.636000,
		0.588235, 0.285475, -0.756627,
		25.920250, 33.932690, 34.419113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569038, 34.016308, 35.661705>,  <25.508486, 33.732857, 34.948753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569038, 34.016308, 35.661705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905819, 33.857052, 35.516048>,  <26.107887, 33.761497, 35.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905819, 33.857052, 35.516048>,  <25.569038, 34.016308, 35.661705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905819, 33.857052, 35.516048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066219, 0.746040, -0.662601,
		0.535473, 0.533765, 0.654495,
		0.841952, -0.398145, -0.364138,
		26.158405, 33.737610, 35.406807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099239, 34.409912, 35.853104>,  <25.569038, 34.016308, 35.661705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099239, 34.409912, 35.853104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171734, 34.294849, 35.476933>,  <26.215231, 34.225811, 35.251228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171734, 34.294849, 35.476933>,  <26.099239, 34.409912, 35.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171734, 34.294849, 35.476933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027452, 0.957372, -0.287551,
		0.983056, 0.026298, 0.181409,
		0.181238, -0.287659, -0.940428,
		26.226105, 34.208553, 35.194805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011965, 35.091129, 35.529678>,  <26.099239, 34.409912, 35.853104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011965, 35.091129, 35.529678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153946, 34.915211, 35.199688>,  <26.239136, 34.809658, 35.001694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153946, 34.915211, 35.199688>,  <26.011965, 35.091129, 35.529678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153946, 34.915211, 35.199688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213806, 0.897238, -0.386331,
		0.910106, -0.039255, 0.412511,
		0.354955, -0.439799, -0.824975,
		26.260433, 34.783272, 34.952194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554077, 35.486343, 35.295418>,  <26.011965, 35.091129, 35.529678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554077, 35.486343, 35.295418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445015, 35.261414, 34.983150>,  <26.379578, 35.126453, 34.795788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445015, 35.261414, 34.983150>,  <26.554077, 35.486343, 35.295418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445015, 35.261414, 34.983150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084973, 0.794169, -0.601727,
		0.958352, -0.230400, -0.168751,
		-0.272655, -0.562327, -0.780671,
		26.363218, 35.092716, 34.748947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926407, 35.703129, 34.673004>,  <26.554077, 35.486343, 35.295418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926407, 35.703129, 34.673004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590937, 35.539272, 34.529438>,  <26.389654, 35.440960, 34.443298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590937, 35.539272, 34.529438>,  <26.926407, 35.703129, 34.673004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590937, 35.539272, 34.529438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005375, 0.665195, -0.746650,
		0.544601, -0.624270, -0.560087,
		-0.838678, -0.409637, -0.358910,
		26.339333, 35.416382, 34.421764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073168, 35.750572, 34.017437>,  <26.926407, 35.703129, 34.673004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073168, 35.750572, 34.017437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680485, 35.732479, 34.091415>,  <26.444876, 35.721622, 34.135803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680485, 35.732479, 34.091415>,  <27.073168, 35.750572, 34.017437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680485, 35.732479, 34.091415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132259, 0.860778, -0.491497,
		-0.136969, -0.506967, -0.851014,
		-0.981707, -0.045234, 0.184950,
		26.385973, 35.718910, 34.146900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607096, 36.350250, 34.209190>,  <27.073168, 35.750572, 34.017437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607096, 36.350250, 34.209190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733559, 36.597855, 34.496765>,  <27.809437, 36.746418, 34.669312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733559, 36.597855, 34.496765>,  <27.607096, 36.350250, 34.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733559, 36.597855, 34.496765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298284, 0.654519, -0.694717,
		-0.900595, 0.434087, 0.022289,
		0.316156, 0.619010, 0.718938,
		27.828405, 36.783558, 34.712448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189087, 37.059219, 34.181782>,  <27.607096, 36.350250, 34.209190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189087, 37.059219, 34.181782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555964, 37.092468, 34.337654>,  <27.776091, 37.112415, 34.431175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555964, 37.092468, 34.337654>,  <27.189087, 37.059219, 34.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555964, 37.092468, 34.337654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161639, 0.816288, -0.554569,
		-0.364185, 0.571634, 0.735258,
		0.917193, 0.083119, 0.389678,
		27.831121, 37.117405, 34.454559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205414, 37.699261, 34.478214>,  <27.189087, 37.059219, 34.181782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205414, 37.699261, 34.478214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591793, 37.619091, 34.412762>,  <27.823622, 37.570992, 34.373489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591793, 37.619091, 34.412762>,  <27.205414, 37.699261, 34.478214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591793, 37.619091, 34.412762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129401, 0.921866, -0.365265,
		0.224049, 0.331654, 0.916410,
		0.965949, -0.200421, -0.163627,
		27.881578, 37.558964, 34.363674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646929, 38.278870, 34.650280>,  <27.205414, 37.699261, 34.478214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646929, 38.278870, 34.650280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890371, 38.064568, 34.416164>,  <28.036438, 37.935986, 34.275696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890371, 38.064568, 34.416164>,  <27.646929, 38.278870, 34.650280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890371, 38.064568, 34.416164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334246, 0.842098, -0.423262,
		0.719636, 0.061970, 0.691581,
		0.608609, -0.535752, -0.585290,
		28.072954, 37.903843, 34.240578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369671, 38.667793, 34.593430>,  <27.646929, 38.278870, 34.650280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369671, 38.667793, 34.593430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356329, 38.422863, 34.277470>,  <28.348324, 38.275906, 34.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356329, 38.422863, 34.277470>,  <28.369671, 38.667793, 34.593430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356329, 38.422863, 34.277470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292966, 0.749633, -0.593481,
		0.955541, -0.251211, 0.154386,
		-0.033356, -0.612326, -0.789902,
		28.346321, 38.239166, 34.040501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943024, 38.808308, 34.240925>,  <28.369671, 38.667793, 34.593430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943024, 38.808308, 34.240925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691538, 38.653576, 33.971088>,  <28.540646, 38.560738, 33.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691538, 38.653576, 33.971088>,  <28.943024, 38.808308, 34.240925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691538, 38.653576, 33.971088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175508, 0.774524, -0.607709,
		0.757572, -0.500472, -0.419062,
		-0.628715, -0.386834, -0.674594,
		28.502924, 38.537525, 33.768711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199162, 38.447174, 33.609848>,  <28.943024, 38.808308, 34.240925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199162, 38.447174, 33.609848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869329, 38.672752, 33.591816>,  <28.671431, 38.808098, 33.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869329, 38.672752, 33.591816>,  <29.199162, 38.447174, 33.609848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869329, 38.672752, 33.591816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397787, 0.521281, -0.755004,
		-0.402284, -0.640492, -0.654169,
		-0.824580, 0.563946, -0.045076,
		28.621956, 38.841938, 33.578293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190607, 39.120892, 33.568863>,  <29.199162, 38.447174, 33.609848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190607, 39.120892, 33.568863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892977, 38.884346, 33.444515>,  <28.714397, 38.742420, 33.369907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892977, 38.884346, 33.444515>,  <29.190607, 39.120892, 33.568863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892977, 38.884346, 33.444515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120865, 0.338480, -0.933179,
		0.657070, -0.731931, -0.180380,
		-0.744077, -0.591362, -0.310870,
		28.669754, 38.706936, 33.351254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411003, 38.684883, 32.970428>,  <29.190607, 39.120892, 33.568863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411003, 38.684883, 32.970428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026230, 38.792313, 32.990616>,  <28.795366, 38.856770, 33.002728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026230, 38.792313, 32.990616>,  <29.411003, 38.684883, 32.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026230, 38.792313, 32.990616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079681, 0.452303, -0.888298,
		-0.261405, -0.850463, -0.456487,
		-0.961935, 0.268578, 0.050469,
		28.737650, 38.872887, 33.005756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098745, 38.512142, 32.381298>,  <29.411003, 38.684883, 32.970428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098745, 38.512142, 32.381298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836035, 38.777821, 32.524117>,  <28.678408, 38.937229, 32.609810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836035, 38.777821, 32.524117>,  <29.098745, 38.512142, 32.381298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836035, 38.777821, 32.524117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083666, 0.534748, -0.840859,
		-0.749430, -0.522384, -0.406780,
		-0.656776, 0.664198, 0.357050,
		28.639002, 38.977081, 32.631233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634449, 38.707596, 31.815813>,  <29.098745, 38.512142, 32.381298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634449, 38.707596, 31.815813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671352, 39.017937, 32.065468>,  <28.693495, 39.204140, 32.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671352, 39.017937, 32.065468>,  <28.634449, 38.707596, 31.815813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671352, 39.017937, 32.065468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024750, 0.624830, -0.780368,
		-0.995427, 0.087443, 0.038444,
		0.092259, 0.775849, 0.624137,
		28.699030, 39.250690, 32.252708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116224, 39.226582, 31.580595>,  <28.634449, 38.707596, 31.815813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116224, 39.226582, 31.580595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303745, 39.113598, 31.915363>,  <29.416258, 39.045807, 32.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303745, 39.113598, 31.915363>,  <29.116224, 39.226582, 31.580595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303745, 39.113598, 31.915363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851507, 0.396445, -0.343172,
		-0.234861, 0.873525, 0.426373,
		0.468804, -0.282462, 0.836922,
		29.444386, 39.028858, 32.166439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437212, 39.714275, 32.077919>,  <29.116224, 39.226582, 31.580595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437212, 39.714275, 32.077919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649401, 39.376102, 32.102741>,  <29.776714, 39.173199, 32.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649401, 39.376102, 32.102741>,  <29.437212, 39.714275, 32.077919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649401, 39.376102, 32.102741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847589, 0.530179, -0.022425,
		-0.013940, 0.064491, 0.997821,
		0.530470, -0.845430, 0.062052,
		29.808542, 39.122475, 32.121357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961468, 40.213837, 32.278305>,  <29.437212, 39.714275, 32.077919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961468, 40.213837, 32.278305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669069, 39.954731, 32.192471>,  <28.493631, 39.799267, 32.140968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669069, 39.954731, 32.192471>,  <28.961468, 40.213837, 32.278305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669069, 39.954731, 32.192471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198655, -0.502857, 0.841232,
		-0.652826, 0.572308, 0.496267,
		-0.730995, -0.647764, -0.214586,
		28.449770, 39.760403, 32.128094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668777, 40.087395, 32.930737>,  <28.961468, 40.213837, 32.278305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668777, 40.087395, 32.930737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484753, 39.802788, 32.718292>,  <28.374338, 39.632023, 32.590824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484753, 39.802788, 32.718292>,  <28.668777, 40.087395, 32.930737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484753, 39.802788, 32.718292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119282, -0.543227, 0.831069,
		-0.879838, 0.445696, 0.165047,
		-0.460062, -0.711520, -0.531115,
		28.346735, 39.589333, 32.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983881, 39.915642, 33.230129>,  <28.668777, 40.087395, 32.930737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983881, 39.915642, 33.230129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168671, 39.620113, 33.033875>,  <28.279545, 39.442795, 32.916122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168671, 39.620113, 33.033875>,  <27.983881, 39.915642, 33.230129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168671, 39.620113, 33.033875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238100, -0.636214, 0.733853,
		-0.854336, -0.222200, -0.469827,
		0.461972, -0.738823, -0.490635,
		28.307262, 39.398468, 32.886684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595472, 39.346252, 33.264168>,  <27.983881, 39.915642, 33.230129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595472, 39.346252, 33.264168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947758, 39.194736, 33.150425>,  <28.159130, 39.103828, 33.082180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947758, 39.194736, 33.150425>,  <27.595472, 39.346252, 33.264168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947758, 39.194736, 33.150425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184846, -0.827633, 0.529958,
		-0.436087, -0.414180, -0.798926,
		0.880716, -0.378786, -0.284361,
		28.211973, 39.081100, 33.065117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501396, 38.635284, 32.922482>,  <27.595472, 39.346252, 33.264168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501396, 38.635284, 32.922482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876652, 38.645588, 33.060600>,  <28.101805, 38.651768, 33.143471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876652, 38.645588, 33.060600>,  <27.501396, 38.635284, 32.922482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876652, 38.645588, 33.060600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136709, -0.888662, 0.437711,
		0.318125, -0.457839, -0.830169,
		0.938140, 0.025756, 0.345296,
		28.158094, 38.653316, 33.164188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780123, 37.929520, 32.856209>,  <27.501396, 38.635284, 32.922482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780123, 37.929520, 32.856209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002275, 38.105576, 33.138435>,  <28.135567, 38.211208, 33.307770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002275, 38.105576, 33.138435>,  <27.780123, 37.929520, 32.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002275, 38.105576, 33.138435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150089, -0.781463, 0.605631,
		0.817940, -0.442254, -0.367949,
		0.555381, 0.440144, 0.705567,
		28.168890, 38.237617, 33.350105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303686, 37.444134, 33.027027>,  <27.780123, 37.929520, 32.856209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303686, 37.444134, 33.027027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287024, 37.682972, 33.347462>,  <28.277025, 37.826275, 33.539722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287024, 37.682972, 33.347462>,  <28.303686, 37.444134, 33.027027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287024, 37.682972, 33.347462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025472, -0.800886, 0.598275,
		0.998807, 0.045327, 0.018153,
		-0.041657, 0.597099, 0.801085,
		28.274527, 37.862103, 33.587788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863930, 37.245781, 33.443932>,  <28.303686, 37.444134, 33.027027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863930, 37.245781, 33.443932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582621, 37.424961, 33.664749>,  <28.413836, 37.532471, 33.797237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582621, 37.424961, 33.664749>,  <28.863930, 37.245781, 33.443932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582621, 37.424961, 33.664749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100923, -0.705743, 0.701242,
		0.703722, 0.548877, 0.451120,
		-0.703271, 0.447951, 0.552041,
		28.371639, 37.559345, 33.830360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136835, 37.129833, 34.089436>,  <28.863930, 37.245781, 33.443932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136835, 37.129833, 34.089436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750713, 37.227226, 34.127171>,  <28.519039, 37.285660, 34.149811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750713, 37.227226, 34.127171>,  <29.136835, 37.129833, 34.089436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750713, 37.227226, 34.127171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121531, -0.738707, 0.662980,
		0.231113, 0.628514, 0.742669,
		-0.965306, 0.243481, 0.094341,
		28.461121, 37.300270, 34.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034325, 37.256615, 34.853218>,  <29.136835, 37.129833, 34.089436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034325, 37.256615, 34.853218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654476, 37.214329, 34.735203>,  <28.426567, 37.188957, 34.664394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654476, 37.214329, 34.735203>,  <29.034325, 37.256615, 34.853218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654476, 37.214329, 34.735203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122708, -0.740826, 0.660394,
		-0.288381, 0.663327, 0.690532,
		-0.949621, -0.105711, -0.295035,
		28.369591, 37.182617, 34.646690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464676, 37.235264, 35.511311>,  <29.034325, 37.256615, 34.853218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464676, 37.235264, 35.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354862, 37.021511, 35.191544>,  <28.288973, 36.893261, 34.999683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354862, 37.021511, 35.191544>,  <28.464676, 37.235264, 35.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354862, 37.021511, 35.191544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193663, -0.783596, 0.590315,
		-0.941873, 0.316880, 0.111635,
		-0.274535, -0.534382, -0.799416,
		28.272501, 36.861195, 34.951717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823303, 36.919838, 35.621761>,  <28.464676, 37.235264, 35.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823303, 36.919838, 35.621761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071236, 36.743935, 35.361786>,  <28.219995, 36.638393, 35.205799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071236, 36.743935, 35.361786>,  <27.823303, 36.919838, 35.621761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071236, 36.743935, 35.361786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275457, -0.897451, 0.344536,
		-0.734802, -0.034523, -0.677403,
		0.619830, -0.439760, -0.649939,
		28.257185, 36.612007, 35.166805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394573, 36.470665, 35.293556>,  <27.823303, 36.919838, 35.621761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394573, 36.470665, 35.293556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777746, 36.379509, 35.363335>,  <28.007650, 36.324818, 35.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777746, 36.379509, 35.363335>,  <27.394573, 36.470665, 35.293556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777746, 36.379509, 35.363335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286573, -0.726873, 0.624124,
		-0.015430, -0.647861, -0.761602,
		0.957934, -0.227885, 0.174444,
		28.065126, 36.311142, 35.415668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598528, 35.731819, 35.162575>,  <27.394573, 36.470665, 35.293556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598528, 35.731819, 35.162575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815828, 35.891502, 35.458008>,  <27.946209, 35.987312, 35.635269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815828, 35.891502, 35.458008>,  <27.598528, 35.731819, 35.162575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815828, 35.891502, 35.458008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330850, -0.706741, 0.625344,
		0.771631, -0.584081, -0.251862,
		0.543253, 0.399206, 0.738587,
		27.978804, 36.011265, 35.679585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075926, 35.212814, 35.467304>,  <27.598528, 35.731819, 35.162575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075926, 35.212814, 35.467304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995934, 35.470520, 35.762581>,  <27.947937, 35.625145, 35.939747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995934, 35.470520, 35.762581>,  <28.075926, 35.212814, 35.467304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995934, 35.470520, 35.762581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276824, -0.759867, 0.588193,
		0.939881, -0.086721, 0.330308,
		-0.199982, 0.644269, 0.738190,
		27.935940, 35.663799, 35.984039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176765, 34.786022, 35.976460>,  <28.075926, 35.212814, 35.467304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176765, 34.786022, 35.976460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983427, 35.087292, 36.154942>,  <27.867424, 35.268055, 36.262032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983427, 35.087292, 36.154942>,  <28.176765, 34.786022, 35.976460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983427, 35.087292, 36.154942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523188, -0.657186, 0.542569,
		0.701890, 0.028801, 0.711703,
		-0.483347, 0.753178, 0.446204,
		27.838423, 35.313244, 36.288803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157831, 34.575268, 36.682121>,  <28.176765, 34.786022, 35.976460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157831, 34.575268, 36.682121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876989, 34.858124, 36.648655>,  <27.708485, 35.027836, 36.628574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876989, 34.858124, 36.648655>,  <28.157831, 34.575268, 36.682121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876989, 34.858124, 36.648655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625925, -0.556873, 0.545995,
		0.339506, 0.435712, 0.833601,
		-0.702106, 0.707140, -0.083661,
		27.666357, 35.070267, 36.623558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870726, 34.808598, 37.355476>,  <28.157831, 34.575268, 36.682121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870726, 34.808598, 37.355476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587023, 34.884636, 37.083942>,  <27.416801, 34.930260, 36.921021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587023, 34.884636, 37.083942>,  <27.870726, 34.808598, 37.355476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587023, 34.884636, 37.083942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630536, -0.601694, 0.490294,
		-0.315246, 0.775774, 0.546620,
		-0.709256, 0.190100, -0.678836,
		27.374247, 34.941666, 36.880291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235409, 35.077950, 37.593216>,  <27.870726, 34.808598, 37.355476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235409, 35.077950, 37.593216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131527, 34.866623, 37.269875>,  <27.069197, 34.739826, 37.075871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131527, 34.866623, 37.269875>,  <27.235409, 35.077950, 37.593216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131527, 34.866623, 37.269875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583912, -0.580807, 0.567195,
		-0.769155, 0.619312, -0.157650,
		-0.259706, -0.528315, -0.808354,
		27.053616, 34.708130, 37.027367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541977, 34.758629, 37.440266>,  <27.235409, 35.077950, 37.593216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541977, 34.758629, 37.440266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658928, 35.140343, 37.465115>,  <26.729099, 35.369370, 37.480026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658928, 35.140343, 37.465115>,  <26.541977, 34.758629, 37.440266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658928, 35.140343, 37.465115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502388, -0.097996, -0.859071,
		-0.813709, 0.282384, -0.508072,
		0.292377, 0.954283, 0.062126,
		26.746641, 35.426628, 37.483753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693546, 35.018829, 36.732731>,  <26.541977, 34.758629, 37.440266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693546, 35.018829, 36.732731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854973, 35.303123, 36.963203>,  <26.951830, 35.473701, 37.101486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854973, 35.303123, 36.963203>,  <26.693546, 35.018829, 36.732731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854973, 35.303123, 36.963203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661820, 0.208074, -0.720208,
		-0.631766, 0.671984, -0.386406,
		0.403568, 0.710734, 0.576186,
		26.976044, 35.516342, 37.136059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694159, 35.740379, 36.396568>,  <26.693546, 35.018829, 36.732731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694159, 35.740379, 36.396568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007484, 35.687881, 36.639614>,  <27.195480, 35.656384, 36.785442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007484, 35.687881, 36.639614>,  <26.694159, 35.740379, 36.396568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007484, 35.687881, 36.639614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610798, 0.344134, -0.713090,
		-0.115511, 0.929703, 0.349729,
		0.783315, -0.131244, 0.607612,
		27.242479, 35.648510, 36.821899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054483, 36.355774, 36.617424>,  <26.694159, 35.740379, 36.396568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054483, 36.355774, 36.617424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282412, 36.033974, 36.550385>,  <27.419168, 35.840893, 36.510162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282412, 36.033974, 36.550385>,  <27.054483, 36.355774, 36.617424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282412, 36.033974, 36.550385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674206, 0.574276, -0.464386,
		0.469844, 0.151621, 0.869631,
		0.569819, -0.804499, -0.167596,
		27.453358, 35.792625, 36.500107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713406, 36.630020, 36.839851>,  <27.054483, 36.355774, 36.617424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713406, 36.630020, 36.839851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776997, 36.333992, 36.578465>,  <27.815151, 36.156376, 36.421631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776997, 36.333992, 36.578465>,  <27.713406, 36.630020, 36.839851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776997, 36.333992, 36.578465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685696, 0.558970, -0.466233,
		0.710315, -0.373961, 0.596327,
		0.158976, -0.740071, -0.653468,
		27.824690, 36.111969, 36.382423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485382, 36.533379, 36.712196>,  <27.713406, 36.630020, 36.839851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485382, 36.533379, 36.712196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313515, 36.403282, 36.375244>,  <28.210394, 36.325226, 36.173073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313515, 36.403282, 36.375244>,  <28.485382, 36.533379, 36.712196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313515, 36.403282, 36.375244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675123, 0.503810, -0.538873,
		0.599663, -0.800247, 0.003106,
		-0.429667, -0.325239, -0.842381,
		28.184614, 36.305710, 36.122528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038397, 36.178719, 36.319168>,  <28.485382, 36.533379, 36.712196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038397, 36.178719, 36.319168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794643, 36.284279, 36.020103>,  <28.648392, 36.347614, 35.840664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794643, 36.284279, 36.020103>,  <29.038397, 36.178719, 36.319168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794643, 36.284279, 36.020103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792694, 0.222900, -0.567407,
		0.016913, -0.938440, -0.345029,
		-0.609385, 0.263906, -0.747665,
		28.611828, 36.363449, 35.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409229, 35.668793, 36.736038>,  <29.038397, 36.178719, 36.319168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409229, 35.668793, 36.736038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691902, 35.924690, 36.615154>,  <29.861506, 36.078228, 36.542625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691902, 35.924690, 36.615154>,  <29.409229, 35.668793, 36.736038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691902, 35.924690, 36.615154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475119, -0.745583, -0.467298,
		-0.524270, 0.186648, -0.830845,
		0.706684, 0.639741, -0.302207,
		29.903908, 36.116611, 36.524490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613094, 35.396328, 36.073353>,  <29.409229, 35.668793, 36.736038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613094, 35.396328, 36.073353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906666, 35.651878, 36.165596>,  <30.082809, 35.805210, 36.220940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906666, 35.651878, 36.165596>,  <29.613094, 35.396328, 36.073353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906666, 35.651878, 36.165596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639371, -0.535247, -0.552010,
		-0.229238, 0.552579, -0.801315,
		0.733931, 0.638879, 0.230604,
		30.126844, 35.843544, 36.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945961, 35.572662, 35.353901>,  <29.613094, 35.396328, 36.073353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945961, 35.572662, 35.353901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223793, 35.663311, 35.627018>,  <30.390491, 35.717701, 35.790886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223793, 35.663311, 35.627018>,  <29.945961, 35.572662, 35.353901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223793, 35.663311, 35.627018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713698, -0.336500, -0.614331,
		0.090536, 0.914007, -0.395468,
		0.694578, 0.226625, 0.682790,
		30.432167, 35.731300, 35.831856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563864, 35.735012, 34.947460>,  <29.945961, 35.572662, 35.353901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563864, 35.735012, 34.947460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700899, 35.645813, 35.312515>,  <30.783121, 35.592293, 35.531548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700899, 35.645813, 35.312515>,  <30.563864, 35.735012, 34.947460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700899, 35.645813, 35.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817964, -0.407044, -0.406510,
		0.462134, 0.885769, 0.042956,
		0.342589, -0.222999, 0.912636,
		30.803677, 35.578915, 35.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287321, 36.029469, 34.975918>,  <30.563864, 35.735012, 34.947460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287321, 36.029469, 34.975918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285889, 35.747391, 35.259521>,  <31.285028, 35.578144, 35.429684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285889, 35.747391, 35.259521>,  <31.287321, 36.029469, 34.975918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285889, 35.747391, 35.259521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856005, -0.368691, -0.362383,
		0.516954, 0.605617, 0.604968,
		-0.003580, -0.705191, 0.709008,
		31.284815, 35.535831, 35.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901264, 35.981651, 35.278229>,  <31.287321, 36.029469, 34.975918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901264, 35.981651, 35.278229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743734, 35.619503, 35.341743>,  <31.649216, 35.402214, 35.379852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743734, 35.619503, 35.341743>,  <31.901264, 35.981651, 35.278229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743734, 35.619503, 35.341743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758554, -0.417680, -0.500139,
		0.519132, -0.076519, 0.851262,
		-0.393825, -0.905366, 0.158788,
		31.625587, 35.347893, 35.389381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370888, 35.673187, 35.604240>,  <31.901264, 35.981651, 35.278229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370888, 35.673187, 35.604240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138878, 35.383907, 35.454277>,  <31.999672, 35.210339, 35.364300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138878, 35.383907, 35.454277>,  <32.370888, 35.673187, 35.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138878, 35.383907, 35.454277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806466, -0.444947, -0.389403,
		0.114803, -0.528213, 0.841315,
		-0.580028, -0.723197, -0.374905,
		31.964869, 35.166946, 35.341805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700188, 35.027431, 35.809101>,  <32.370888, 35.673187, 35.604240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700188, 35.027431, 35.809101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446537, 34.936619, 35.513443>,  <32.294346, 34.882130, 35.336048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446537, 34.936619, 35.513443>,  <32.700188, 35.027431, 35.809101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446537, 34.936619, 35.513443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699153, -0.576635, -0.422702,
		-0.330250, -0.784824, 0.524392,
		-0.634129, -0.227033, -0.739145,
		32.256298, 34.868507, 35.291698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672722, 34.243748, 35.759766>,  <32.700188, 35.027431, 35.809101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672722, 34.243748, 35.759766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565483, 34.418324, 35.416222>,  <32.501141, 34.523071, 35.210094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565483, 34.418324, 35.416222>,  <32.672722, 34.243748, 35.759766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565483, 34.418324, 35.416222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682457, -0.543202, -0.489065,
		-0.679984, -0.717251, -0.152225,
		-0.268094, 0.436444, -0.858861,
		32.485054, 34.549255, 35.158562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904881, 33.790005, 35.250927>,  <32.672722, 34.243748, 35.759766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904881, 33.790005, 35.250927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867817, 34.126038, 35.037132>,  <32.845577, 34.327656, 34.908855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867817, 34.126038, 35.037132>,  <32.904881, 33.790005, 35.250927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867817, 34.126038, 35.037132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588616, -0.386738, -0.709905,
		-0.803085, -0.380389, -0.458650,
		-0.092663, 0.840082, -0.534487,
		32.840019, 34.378063, 34.876785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953167, 33.468651, 34.562496>,  <32.904881, 33.790005, 35.250927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953167, 33.468651, 34.562496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980877, 33.857002, 34.470757>,  <32.997505, 34.090012, 34.415710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980877, 33.857002, 34.470757>,  <32.953167, 33.468651, 34.562496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980877, 33.857002, 34.470757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437410, -0.236188, -0.867691,
		-0.896590, -0.040208, -0.441033,
		0.069279, 0.970875, -0.229351,
		33.001659, 34.148266, 34.401951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822006, 33.470245, 33.890598>,  <32.953167, 33.468651, 34.562496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822006, 33.470245, 33.890598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004475, 33.818810, 33.962761>,  <33.113956, 34.027950, 34.006058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004475, 33.818810, 33.962761>,  <32.822006, 33.470245, 33.890598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004475, 33.818810, 33.962761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403262, -0.021704, -0.914827,
		-0.793277, 0.490070, -0.361308,
		0.456171, 0.871413, 0.180409,
		33.141327, 34.080235, 34.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654053, 33.943207, 33.363125>,  <32.822006, 33.470245, 33.890598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654053, 33.943207, 33.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985268, 34.111259, 33.511635>,  <33.183998, 34.212093, 33.600739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985268, 34.111259, 33.511635>,  <32.654053, 33.943207, 33.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985268, 34.111259, 33.511635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300973, 0.225615, -0.926560,
		-0.473046, 0.878967, 0.060368,
		0.828036, 0.420136, 0.371272,
		33.233677, 34.237301, 33.623016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751339, 34.609173, 33.047565>,  <32.654053, 33.943207, 33.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751339, 34.609173, 33.047565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113640, 34.516487, 33.189507>,  <33.331020, 34.460876, 33.274670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113640, 34.516487, 33.189507>,  <32.751339, 34.609173, 33.047565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113640, 34.516487, 33.189507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406637, 0.239271, -0.881700,
		0.119393, 0.942900, 0.310943,
		0.905754, -0.231710, 0.354851,
		33.385365, 34.446976, 33.295963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180801, 35.122540, 32.919876>,  <32.751339, 34.609173, 33.047565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180801, 35.122540, 32.919876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432316, 34.814777, 32.964840>,  <33.583225, 34.630119, 32.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432316, 34.814777, 32.964840>,  <33.180801, 35.122540, 32.919876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432316, 34.814777, 32.964840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462164, 0.253545, -0.849776,
		0.625324, 0.586281, 0.515019,
		0.628788, -0.769409, 0.112410,
		33.620953, 34.583954, 32.998562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796085, 35.418907, 32.922310>,  <33.180801, 35.122540, 32.919876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796085, 35.418907, 32.922310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827763, 35.037193, 32.807026>,  <33.846767, 34.808167, 32.737854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827763, 35.037193, 32.807026>,  <33.796085, 35.418907, 32.922310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827763, 35.037193, 32.807026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295605, 0.298598, -0.907445,
		0.952022, -0.013338, 0.305738,
		0.079189, -0.954286, -0.288215,
		33.851521, 34.750908, 32.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295662, 35.448051, 32.465034>,  <33.796085, 35.418907, 32.922310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295662, 35.448051, 32.465034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114922, 35.102604, 32.375599>,  <34.006477, 34.895336, 32.321938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114922, 35.102604, 32.375599>,  <34.295662, 35.448051, 32.465034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114922, 35.102604, 32.375599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252684, 0.116472, -0.960513,
		0.855560, -0.490506, 0.165595,
		-0.451850, -0.863619, -0.223592,
		33.979366, 34.843517, 32.308521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790546, 34.989300, 32.171791>,  <34.295662, 35.448051, 32.465034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790546, 34.989300, 32.171791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444733, 34.824699, 32.056377>,  <34.237244, 34.725941, 31.987129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444733, 34.824699, 32.056377>,  <34.790546, 34.989300, 32.171791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444733, 34.824699, 32.056377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229285, 0.187942, -0.955043,
		0.447228, -0.891821, -0.068130,
		-0.864532, -0.411501, -0.288534,
		34.185371, 34.701248, 31.969818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899681, 34.639828, 31.618664>,  <34.790546, 34.989300, 32.171791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899681, 34.639828, 31.618664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503620, 34.653580, 31.564373>,  <34.265984, 34.661831, 31.531797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503620, 34.653580, 31.564373>,  <34.899681, 34.639828, 31.618664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503620, 34.653580, 31.564373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135947, 0.004096, -0.990708,
		-0.033505, -0.999400, -0.008730,
		-0.990149, 0.034380, -0.135728,
		34.206573, 34.663895, 31.523655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741123, 34.091625, 31.113535>,  <34.899681, 34.639828, 31.618664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741123, 34.091625, 31.113535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450245, 34.365501, 31.093960>,  <34.275719, 34.529827, 31.082214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450245, 34.365501, 31.093960>,  <34.741123, 34.091625, 31.113535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450245, 34.365501, 31.093960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015324, -0.055080, -0.998364,
		-0.686263, -0.726753, 0.029561,
		-0.727192, 0.684687, -0.048936,
		34.232086, 34.570908, 31.079279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524632, 34.047089, 30.551731>,  <34.741123, 34.091625, 31.113535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524632, 34.047089, 30.551731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334618, 34.394356, 30.609179>,  <34.220608, 34.602715, 30.643646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334618, 34.394356, 30.609179>,  <34.524632, 34.047089, 30.551731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334618, 34.394356, 30.609179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026370, 0.149092, -0.988472,
		-0.879572, -0.473346, -0.047931,
		-0.475036, 0.868168, 0.143619,
		34.192108, 34.654804, 30.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933384, 34.056515, 30.164358>,  <34.524632, 34.047089, 30.551731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933384, 34.056515, 30.164358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025593, 34.441433, 30.222124>,  <34.080917, 34.672382, 30.256783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025593, 34.441433, 30.222124>,  <33.933384, 34.056515, 30.164358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025593, 34.441433, 30.222124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061694, 0.162565, -0.984767,
		-0.971110, 0.218097, 0.096841,
		0.230518, 0.962292, 0.144413,
		34.094749, 34.730122, 30.265448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345936, 34.510979, 29.877836>,  <33.933384, 34.056515, 30.164358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345936, 34.510979, 29.877836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655884, 34.759750, 29.923063>,  <33.841850, 34.909012, 29.950199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655884, 34.759750, 29.923063>,  <33.345936, 34.510979, 29.877836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655884, 34.759750, 29.923063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133104, 0.335385, -0.932631,
		-0.617951, 0.707616, 0.342661,
		0.774868, 0.621929, 0.113065,
		33.888344, 34.946331, 29.956984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139912, 35.144165, 29.604998>,  <33.345936, 34.510979, 29.877836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139912, 35.144165, 29.604998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539879, 35.148518, 29.607964>,  <33.779858, 35.151127, 29.609743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539879, 35.148518, 29.607964>,  <33.139912, 35.144165, 29.604998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539879, 35.148518, 29.607964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002008, 0.430520, -0.902579,
		-0.013011, 0.902516, 0.430461,
		0.999913, 0.010879, 0.007414,
		33.839851, 35.151783, 29.610188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412354, 35.777153, 29.189545>,  <33.139912, 35.144165, 29.604998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412354, 35.777153, 29.189545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748154, 35.559818, 29.191145>,  <33.949635, 35.429417, 29.192104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748154, 35.559818, 29.191145>,  <33.412354, 35.777153, 29.189545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748154, 35.559818, 29.191145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217787, 0.329738, -0.918609,
		0.497796, 0.772047, 0.395149,
		0.839505, -0.543338, 0.004000,
		34.000004, 35.396816, 29.192345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798576, 36.103558, 28.701769>,  <33.412354, 35.777153, 29.189545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798576, 36.103558, 28.701769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001225, 35.760612, 28.738144>,  <34.122814, 35.554848, 28.759970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001225, 35.760612, 28.738144>,  <33.798576, 36.103558, 28.701769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001225, 35.760612, 28.738144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457986, 0.178254, -0.870904,
		0.730467, 0.482867, 0.482966,
		0.506622, -0.857359, 0.090938,
		34.153210, 35.503407, 28.765425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513020, 36.294655, 28.482510>,  <33.798576, 36.103558, 28.701769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513020, 36.294655, 28.482510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464100, 35.898960, 28.450390>,  <34.434746, 35.661541, 28.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464100, 35.898960, 28.450390>,  <34.513020, 36.294655, 28.482510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464100, 35.898960, 28.450390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579602, -0.005511, -0.814881,
		0.805669, -0.146205, 0.574039,
		-0.122303, -0.989239, -0.080301,
		34.427410, 35.602188, 28.426300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197975, 35.988590, 28.344713>,  <34.513020, 36.294655, 28.482510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197975, 35.988590, 28.344713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941708, 35.710030, 28.215363>,  <34.787949, 35.542892, 28.137753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941708, 35.710030, 28.215363>,  <35.197975, 35.988590, 28.344713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941708, 35.710030, 28.215363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547791, -0.119442, -0.828045,
		0.538028, -0.707642, 0.458005,
		-0.640665, -0.696402, -0.323377,
		34.749508, 35.501110, 28.118349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545734, 35.432610, 28.135838>,  <35.197975, 35.988590, 28.344713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545734, 35.432610, 28.135838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199711, 35.380592, 27.942030>,  <34.992096, 35.349384, 27.825747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199711, 35.380592, 27.942030>,  <35.545734, 35.432610, 28.135838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199711, 35.380592, 27.942030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500405, -0.292091, -0.815032,
		-0.035537, -0.947508, 0.317750,
		-0.865062, -0.130040, -0.484518,
		34.940193, 35.341579, 27.796675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601097, 34.796902, 27.698839>,  <35.545734, 35.432610, 28.135838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601097, 34.796902, 27.698839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315304, 35.031124, 27.545668>,  <35.143829, 35.171658, 27.453766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315304, 35.031124, 27.545668>,  <35.601097, 34.796902, 27.698839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315304, 35.031124, 27.545668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394005, -0.115530, -0.911819,
		-0.578163, -0.802355, -0.148169,
		-0.714484, 0.585559, -0.382927,
		35.100960, 35.206791, 27.430790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315323, 34.308842, 27.206450>,  <35.601097, 34.796902, 27.698839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315323, 34.308842, 27.206450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210728, 34.688694, 27.137360>,  <35.147972, 34.916603, 27.095905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210728, 34.688694, 27.137360>,  <35.315323, 34.308842, 27.206450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210728, 34.688694, 27.137360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439189, -0.042291, -0.897399,
		-0.859498, -0.310517, -0.406007,
		-0.261487, 0.949627, -0.172725,
		35.132282, 34.973583, 27.085543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903126, 34.319744, 26.612074>,  <35.315323, 34.308842, 27.206450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903126, 34.319744, 26.612074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032482, 34.697582, 26.634563>,  <35.110096, 34.924286, 26.648058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032482, 34.697582, 26.634563>,  <34.903126, 34.319744, 26.612074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032482, 34.697582, 26.634563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404360, -0.084229, -0.910713,
		-0.855518, 0.317251, -0.409194,
		0.323391, 0.944594, 0.056225,
		35.129498, 34.980961, 26.651430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873573, 34.623085, 25.917294>,  <34.903126, 34.319744, 26.612074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873573, 34.623085, 25.917294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108761, 34.891918, 26.097336>,  <35.249874, 35.053219, 26.205360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108761, 34.891918, 26.097336>,  <34.873573, 34.623085, 25.917294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108761, 34.891918, 26.097336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431010, 0.210567, -0.877435,
		-0.684489, 0.709903, -0.165869,
		0.587967, 0.672086, 0.450106,
		35.285152, 35.093544, 26.232368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939533, 35.120655, 25.472265>,  <34.873573, 34.623085, 25.917294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939533, 35.120655, 25.472265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252220, 35.180126, 25.714525>,  <35.439835, 35.215809, 25.859880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252220, 35.180126, 25.714525>,  <34.939533, 35.120655, 25.472265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252220, 35.180126, 25.714525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522140, 0.374999, -0.765993,
		-0.341004, 0.915025, 0.215513,
		0.781720, 0.148679, 0.605648,
		35.486736, 35.224731, 25.896219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191311, 35.767117, 25.425783>,  <34.939533, 35.120655, 25.472265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191311, 35.767117, 25.425783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509468, 35.562901, 25.556446>,  <35.700363, 35.440372, 25.634844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509468, 35.562901, 25.556446>,  <35.191311, 35.767117, 25.425783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509468, 35.562901, 25.556446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572587, 0.456222, -0.681179,
		0.198737, 0.728844, 0.655202,
		0.795391, -0.510536, 0.326659,
		35.748085, 35.409740, 25.654444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762012, 36.287781, 25.521370>,  <35.191311, 35.767117, 25.425783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762012, 36.287781, 25.521370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957947, 35.940357, 25.491241>,  <36.075508, 35.731903, 25.473164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957947, 35.940357, 25.491241>,  <35.762012, 36.287781, 25.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957947, 35.940357, 25.491241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672437, 0.431386, -0.601444,
		0.554882, 0.243956, 0.795356,
		0.489831, -0.868557, -0.075323,
		36.104897, 35.679790, 25.468645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401569, 36.464615, 25.598049>,  <35.762012, 36.287781, 25.521370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401569, 36.464615, 25.598049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451267, 36.092247, 25.460674>,  <36.481087, 35.868828, 25.378248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451267, 36.092247, 25.460674>,  <36.401569, 36.464615, 25.598049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451267, 36.092247, 25.460674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897243, 0.253198, -0.361725,
		0.423696, -0.263205, 0.866721,
		0.124244, -0.930921, -0.343438,
		36.488541, 35.812969, 25.357643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995777, 36.222542, 25.797539>,  <36.401569, 36.464615, 25.598049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995777, 36.222542, 25.797539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909229, 35.994507, 25.480505>,  <36.857300, 35.857685, 25.290285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909229, 35.994507, 25.480505>,  <36.995777, 36.222542, 25.797539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909229, 35.994507, 25.480505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896877, 0.204689, -0.392063,
		0.385742, -0.795680, 0.467008,
		-0.216365, -0.570084, -0.792585,
		36.844318, 35.823483, 25.242729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553905, 35.698334, 25.718117>,  <36.995777, 36.222542, 25.797539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553905, 35.698334, 25.718117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388824, 35.749416, 25.357368>,  <37.289776, 35.780067, 25.140921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388824, 35.749416, 25.357368>,  <37.553905, 35.698334, 25.718117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388824, 35.749416, 25.357368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892935, 0.252219, -0.372898,
		0.179845, -0.959206, -0.218129,
		-0.412702, 0.127711, -0.901868,
		37.265015, 35.787731, 25.086807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134670, 35.461929, 25.235832>,  <37.553905, 35.698334, 25.718117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134670, 35.461929, 25.235832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870518, 35.649727, 25.001406>,  <37.712029, 35.762405, 24.860750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870518, 35.649727, 25.001406>,  <38.134670, 35.461929, 25.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870518, 35.649727, 25.001406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734672, 0.242400, -0.633640,
		-0.155430, -0.849008, -0.505002,
		-0.660377, 0.469497, -0.586066,
		37.672405, 35.790577, 24.825586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432938, 35.459084, 24.528002>,  <38.134670, 35.461929, 25.235832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432938, 35.459084, 24.528002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151287, 35.740211, 24.487497>,  <37.982296, 35.908886, 24.463194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151287, 35.740211, 24.487497>,  <38.432938, 35.459084, 24.528002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151287, 35.740211, 24.487497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582309, 0.489920, -0.648764,
		-0.406351, -0.515779, -0.754222,
		-0.704127, 0.702816, -0.101263,
		37.940048, 35.951057, 24.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384930, 35.798409, 23.784431>,  <38.432938, 35.459084, 24.528002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384930, 35.798409, 23.784431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270397, 36.063751, 24.060974>,  <38.201679, 36.222958, 24.226898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270397, 36.063751, 24.060974>,  <38.384930, 35.798409, 23.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270397, 36.063751, 24.060974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681627, 0.648126, -0.339583,
		-0.673351, 0.374014, -0.637740,
		-0.286327, 0.663360, 0.691354,
		38.184498, 36.262760, 24.268381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597813, 36.380848, 23.373232>,  <38.384930, 35.798409, 23.784431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597813, 36.380848, 23.373232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517361, 36.475597, 23.753429>,  <38.469090, 36.532448, 23.981548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517361, 36.475597, 23.753429>,  <38.597813, 36.380848, 23.373232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517361, 36.475597, 23.753429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726265, 0.687190, -0.017576,
		-0.657334, 0.686776, -0.310245,
		-0.201126, 0.236873, 0.950494,
		38.457024, 36.546658, 24.038578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280827, 36.787361, 23.222658>,  <38.597813, 36.380848, 23.373232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280827, 36.787361, 23.222658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444534, 37.151573, 23.246113>,  <39.542759, 37.370098, 23.260185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444534, 37.151573, 23.246113>,  <39.280827, 36.787361, 23.222658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444534, 37.151573, 23.246113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360560, -0.102363, -0.927102,
		-0.838150, 0.400576, -0.370194,
		0.409269, 0.910528, 0.058636,
		39.567314, 37.424732, 23.263704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211674, 37.072613, 22.570194>,  <39.280827, 36.787361, 23.222658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211674, 37.072613, 22.570194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501652, 37.287640, 22.742462>,  <39.675640, 37.416656, 22.845823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501652, 37.287640, 22.742462>,  <39.211674, 37.072613, 22.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501652, 37.287640, 22.742462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624421, -0.248948, -0.740354,
		-0.290773, 0.805637, -0.516140,
		0.724948, 0.537564, 0.430669,
		39.719135, 37.448910, 22.871662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497562, 37.610313, 22.051628>,  <39.211674, 37.072613, 22.570194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497562, 37.610313, 22.051628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785217, 37.555889, 22.324196>,  <39.957809, 37.523235, 22.487736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785217, 37.555889, 22.324196>,  <39.497562, 37.610313, 22.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785217, 37.555889, 22.324196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629135, -0.288847, -0.721635,
		0.295014, 0.947657, -0.122118,
		0.719136, -0.136064, 0.681418,
		40.000957, 37.515072, 22.528622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123821, 37.735691, 21.659977>,  <39.497562, 37.610313, 22.051628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123821, 37.735691, 21.659977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251080, 37.551582, 21.991503>,  <40.327435, 37.441116, 22.190418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251080, 37.551582, 21.991503>,  <40.123821, 37.735691, 21.659977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251080, 37.551582, 21.991503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800144, -0.338533, -0.495141,
		0.508481, 0.820697, 0.260584,
		0.318145, -0.460274, 0.828813,
		40.346523, 37.413502, 22.240147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720985, 37.272346, 21.398949>,  <40.123821, 37.735691, 21.659977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720985, 37.272346, 21.398949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027916, 37.057316, 21.538788>,  <41.212074, 36.928295, 21.622692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027916, 37.057316, 21.538788>,  <40.720985, 37.272346, 21.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027916, 37.057316, 21.538788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266991, 0.227850, 0.936376,
		-0.583033, -0.811845, 0.031306,
		0.767326, -0.537580, 0.349599,
		41.258114, 36.896042, 21.643667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401875, 36.785618, 21.733173>,  <40.720985, 37.272346, 21.398949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401875, 36.785618, 21.733173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758904, 36.905029, 21.868343>,  <40.973122, 36.976677, 21.949446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758904, 36.905029, 21.868343>,  <40.401875, 36.785618, 21.733173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758904, 36.905029, 21.868343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416220, 0.257256, 0.872113,
		0.173417, -0.919076, 0.353873,
		0.892574, 0.298528, 0.337925,
		41.026676, 36.994591, 21.969721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533272, 36.536709, 22.461224>,  <40.401875, 36.785618, 21.733173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533272, 36.536709, 22.461224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757114, 36.864223, 22.409954>,  <40.891418, 37.060734, 22.379192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757114, 36.864223, 22.409954>,  <40.533272, 36.536709, 22.461224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757114, 36.864223, 22.409954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479248, 0.445886, 0.755981,
		0.676140, -0.361622, 0.641922,
		0.559603, 0.818789, -0.128175,
		40.924995, 37.109859, 22.371502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913620, 36.768013, 23.066006>,  <40.533272, 36.536709, 22.461224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913620, 36.768013, 23.066006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777462, 37.056007, 22.824099>,  <40.695766, 37.228806, 22.678955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777462, 37.056007, 22.824099>,  <40.913620, 36.768013, 23.066006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777462, 37.056007, 22.824099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611314, 0.319238, 0.724142,
		0.714441, 0.616199, 0.331472,
		-0.340397, 0.719990, -0.604768,
		40.675343, 37.272003, 22.642668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079159, 37.395157, 23.360733>,  <40.913620, 36.768013, 23.066006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079159, 37.395157, 23.360733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766716, 37.450378, 23.117157>,  <40.579250, 37.483509, 22.971012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766716, 37.450378, 23.117157>,  <41.079159, 37.395157, 23.360733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766716, 37.450378, 23.117157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555713, 0.290961, 0.778797,
		0.284691, 0.946723, -0.150555,
		-0.781110, 0.138051, -0.608941,
		40.532383, 37.491795, 22.934475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718887, 37.997677, 23.502470>,  <41.079159, 37.395157, 23.360733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718887, 37.997677, 23.502470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412605, 37.843616, 23.296419>,  <40.228836, 37.751179, 23.172789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412605, 37.843616, 23.296419>,  <40.718887, 37.997677, 23.502470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412605, 37.843616, 23.296419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627223, 0.269758, 0.730631,
		-0.142443, 0.882547, -0.448131,
		-0.765703, -0.385152, -0.515128,
		40.182896, 37.728069, 23.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223904, 38.555248, 23.417019>,  <40.718887, 37.997677, 23.502470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223904, 38.555248, 23.417019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014664, 38.221504, 23.347500>,  <39.889118, 38.021259, 23.305788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014664, 38.221504, 23.347500>,  <40.223904, 38.555248, 23.417019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014664, 38.221504, 23.347500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672698, 0.278998, 0.685301,
		-0.523298, 0.475397, -0.707218,
		-0.523102, -0.834361, -0.173800,
		39.857735, 37.971195, 23.295361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531010, 38.807709, 23.303015>,  <40.223904, 38.555248, 23.417019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531010, 38.807709, 23.303015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537025, 38.438301, 23.456316>,  <39.540634, 38.216656, 23.548296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537025, 38.438301, 23.456316>,  <39.531010, 38.807709, 23.303015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537025, 38.438301, 23.456316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588312, 0.301756, 0.750222,
		-0.808494, -0.236755, -0.538780,
		0.015038, -0.923521, 0.383254,
		39.541538, 38.161243, 23.571293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843044, 38.603760, 23.384001>,  <39.531010, 38.807709, 23.303015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843044, 38.603760, 23.384001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078751, 38.409786, 23.642488>,  <39.220173, 38.293400, 23.797581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078751, 38.409786, 23.642488>,  <38.843044, 38.603760, 23.384001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078751, 38.409786, 23.642488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550223, 0.344825, 0.760494,
		-0.591624, -0.803699, -0.063629,
		0.589267, -0.484937, 0.646221,
		39.255531, 38.264305, 23.836355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320164, 38.360710, 23.772804>,  <38.843044, 38.603760, 23.384001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320164, 38.360710, 23.772804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636738, 38.299099, 24.009417>,  <38.826683, 38.262135, 24.151384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636738, 38.299099, 24.009417>,  <38.320164, 38.360710, 23.772804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636738, 38.299099, 24.009417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506393, 0.376784, 0.775629,
		-0.342345, -0.913406, 0.220202,
		0.791433, -0.154024, 0.591532,
		38.874168, 38.252892, 24.186876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009148, 38.022408, 24.340006>,  <38.320164, 38.360710, 23.772804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009148, 38.022408, 24.340006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362461, 38.166550, 24.459974>,  <38.574448, 38.253036, 24.531956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362461, 38.166550, 24.459974>,  <38.009148, 38.022408, 24.340006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362461, 38.166550, 24.459974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413218, 0.296145, 0.861132,
		0.221489, -0.884559, 0.410485,
		0.883285, 0.360351, 0.299923,
		38.627445, 38.274658, 24.549952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310230, 37.718887, 24.962883>,  <38.009148, 38.022408, 24.340006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310230, 37.718887, 24.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479836, 38.079964, 24.933611>,  <38.581600, 38.296612, 24.916048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479836, 38.079964, 24.933611>,  <38.310230, 37.718887, 24.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479836, 38.079964, 24.933611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165703, 0.156766, 0.973636,
		0.890367, -0.400711, 0.216051,
		0.424016, 0.902693, -0.073180,
		38.607040, 38.350773, 24.911657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635254, 37.717556, 25.605883>,  <38.310230, 37.718887, 24.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635254, 37.717556, 25.605883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653996, 38.101795, 25.496296>,  <38.665241, 38.332340, 25.430544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653996, 38.101795, 25.496296>,  <38.635254, 37.717556, 25.605883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653996, 38.101795, 25.496296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157119, 0.277939, 0.947662,
		0.986468, -0.001357, 0.163950,
		0.046854, 0.960598, -0.273965,
		38.668053, 38.389973, 25.414106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083271, 37.979515, 26.093325>,  <38.635254, 37.717556, 25.605883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083271, 37.979515, 26.093325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860386, 38.279358, 25.950439>,  <38.726654, 38.459263, 25.864708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860386, 38.279358, 25.950439>,  <39.083271, 37.979515, 26.093325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860386, 38.279358, 25.950439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351625, 0.176707, 0.919312,
		0.752249, 0.637854, 0.165119,
		-0.557209, 0.749611, -0.357213,
		38.693222, 38.504242, 25.843275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146347, 38.356991, 26.691584>,  <39.083271, 37.979515, 26.093325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146347, 38.356991, 26.691584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858448, 38.522984, 26.468964>,  <38.685707, 38.622578, 26.335392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858448, 38.522984, 26.468964>,  <39.146347, 38.356991, 26.691584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858448, 38.522984, 26.468964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455221, 0.323156, 0.829665,
		0.524149, 0.850506, -0.043682,
		-0.719751, 0.414983, -0.556550,
		38.642521, 38.647480, 26.301998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010323, 39.033871, 27.016970>,  <39.146347, 38.356991, 26.691584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010323, 39.033871, 27.016970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685574, 38.901024, 26.824902>,  <38.490726, 38.821316, 26.709661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685574, 38.901024, 26.824902>,  <39.010323, 39.033871, 27.016970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685574, 38.901024, 26.824902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549570, 0.157107, 0.820543,
		-0.197082, 0.930061, -0.310074,
		-0.811869, -0.332121, -0.480170,
		38.442013, 38.801388, 26.680851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505550, 39.588058, 27.155609>,  <39.010323, 39.033871, 27.016970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505550, 39.588058, 27.155609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318699, 39.247051, 27.061796>,  <38.206589, 39.042446, 27.005508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318699, 39.247051, 27.061796>,  <38.505550, 39.588058, 27.155609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318699, 39.247051, 27.061796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470593, 0.015157, 0.882220,
		-0.748551, 0.522482, -0.408268,
		-0.467132, -0.852515, -0.234531,
		38.178558, 38.991295, 26.991436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826672, 39.652416, 27.427366>,  <38.505550, 39.588058, 27.155609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826672, 39.652416, 27.427366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848873, 39.255070, 27.387085>,  <37.862194, 39.016663, 27.362917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848873, 39.255070, 27.387085>,  <37.826672, 39.652416, 27.427366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848873, 39.255070, 27.387085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640293, -0.112801, 0.759803,
		-0.766123, 0.022307, -0.642307,
		0.055504, -0.993367, -0.100703,
		37.865524, 38.957058, 27.356874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203770, 39.473644, 27.519867>,  <37.826672, 39.652416, 27.427366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203770, 39.473644, 27.519867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425900, 39.150173, 27.597485>,  <37.559177, 38.956089, 27.644054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425900, 39.150173, 27.597485>,  <37.203770, 39.473644, 27.519867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425900, 39.150173, 27.597485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657093, -0.283644, 0.698409,
		-0.509749, -0.515348, -0.688892,
		0.555324, -0.808679, 0.194045,
		37.592495, 38.907570, 27.655697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663517, 38.985123, 27.684872>,  <37.203770, 39.473644, 27.519867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663517, 38.985123, 27.684872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001888, 38.815090, 27.813692>,  <37.204910, 38.713070, 27.890985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001888, 38.815090, 27.813692>,  <36.663517, 38.985123, 27.684872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001888, 38.815090, 27.813692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497011, -0.409412, 0.765090,
		-0.193375, -0.807271, -0.557602,
		0.845924, -0.425083, 0.322052,
		37.255665, 38.687565, 27.910309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435543, 38.406582, 28.006874>,  <36.663517, 38.985123, 27.684872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435543, 38.406582, 28.006874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810673, 38.411682, 28.145622>,  <37.035751, 38.414742, 28.228872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810673, 38.411682, 28.145622>,  <36.435543, 38.406582, 28.006874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810673, 38.411682, 28.145622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323274, -0.331822, 0.886221,
		0.126399, -0.943256, -0.307070,
		0.937826, 0.012750, 0.346873,
		37.092022, 38.415508, 28.249683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706150, 37.800343, 28.295923>,  <36.435543, 38.406582, 28.006874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706150, 37.800343, 28.295923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930954, 38.067184, 28.491522>,  <37.065838, 38.227291, 28.608881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930954, 38.067184, 28.491522>,  <36.706150, 37.800343, 28.295923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930954, 38.067184, 28.491522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335307, -0.356687, 0.871977,
		0.756118, -0.654023, 0.023223,
		0.562010, 0.667104, 0.488996,
		37.099556, 38.267315, 28.638220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773525, 37.469749, 28.931479>,  <36.706150, 37.800343, 28.295923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773525, 37.469749, 28.931479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853519, 37.858368, 28.982241>,  <36.901516, 38.091537, 29.012697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853519, 37.858368, 28.982241>,  <36.773525, 37.469749, 28.931479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853519, 37.858368, 28.982241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521845, -0.004004, 0.853031,
		0.829266, -0.236821, 0.506195,
		0.199989, 0.971545, 0.126904,
		36.913517, 38.149830, 29.020311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001812, 37.495998, 29.628323>,  <36.773525, 37.469749, 28.931479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001812, 37.495998, 29.628323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902706, 37.871639, 29.533070>,  <36.843243, 38.097023, 29.475918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902706, 37.871639, 29.533070>,  <37.001812, 37.495998, 29.628323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902706, 37.871639, 29.533070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392011, 0.127601, 0.911068,
		0.885969, 0.319080, 0.336523,
		-0.247763, 0.939098, -0.238134,
		36.828377, 38.153370, 29.461630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446133, 37.931942, 30.007725>,  <37.001812, 37.495998, 29.628323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446133, 37.931942, 30.007725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115871, 38.137356, 29.914272>,  <36.917717, 38.260605, 29.858202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115871, 38.137356, 29.914272>,  <37.446133, 37.931942, 30.007725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115871, 38.137356, 29.914272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234289, 0.064620, 0.970017,
		0.513236, 0.855631, 0.066962,
		-0.825650, 0.513536, -0.233630,
		36.868176, 38.291416, 29.844183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378544, 38.559845, 30.379499>,  <37.446133, 37.931942, 30.007725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378544, 38.559845, 30.379499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006992, 38.481018, 30.254059>,  <36.784061, 38.433720, 30.178795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006992, 38.481018, 30.254059>,  <37.378544, 38.559845, 30.379499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006992, 38.481018, 30.254059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354606, 0.228691, 0.906617,
		-0.106949, 0.953343, -0.282309,
		-0.928879, -0.197071, -0.313603,
		36.728329, 38.421898, 30.159977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974174, 39.174911, 30.591774>,  <37.378544, 38.559845, 30.379499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974174, 39.174911, 30.591774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676319, 38.916397, 30.525045>,  <36.497604, 38.761288, 30.485008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676319, 38.916397, 30.525045>,  <36.974174, 39.174911, 30.591774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676319, 38.916397, 30.525045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397770, 0.228978, 0.888453,
		-0.535994, 0.727934, -0.427578,
		-0.744641, -0.646283, -0.166820,
		36.452927, 38.722511, 30.475000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400337, 39.590683, 30.838795>,  <36.974174, 39.174911, 30.591774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400337, 39.590683, 30.838795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257889, 39.222229, 30.775944>,  <36.172421, 39.001156, 30.738234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257889, 39.222229, 30.775944>,  <36.400337, 39.590683, 30.838795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257889, 39.222229, 30.775944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536926, 0.064089, 0.841191,
		-0.764781, 0.383928, -0.517405,
		-0.356117, -0.921136, -0.157127,
		36.151054, 38.945889, 30.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846027, 39.689816, 31.158083>,  <36.400337, 39.590683, 30.838795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846027, 39.689816, 31.158083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887722, 39.294567, 31.112915>,  <35.912739, 39.057419, 31.085814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887722, 39.294567, 31.112915>,  <35.846027, 39.689816, 31.158083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887722, 39.294567, 31.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334523, -0.141756, 0.931665,
		-0.936605, -0.059338, -0.345326,
		0.104235, -0.988122, -0.112920,
		35.918991, 38.998131, 31.079039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153278, 39.480450, 31.044523>,  <35.846027, 39.689816, 31.158083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153278, 39.480450, 31.044523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397045, 39.204468, 31.200769>,  <35.543304, 39.038879, 31.294518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397045, 39.204468, 31.200769>,  <35.153278, 39.480450, 31.044523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397045, 39.204468, 31.200769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572610, -0.042240, 0.818739,
		-0.548390, -0.722623, -0.420814,
		0.609414, -0.689951, 0.390617,
		35.579868, 38.997482, 31.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733177, 38.984974, 31.357069>,  <35.153278, 39.480450, 31.044523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733177, 38.984974, 31.357069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089558, 38.914684, 31.524557>,  <35.303387, 38.872509, 31.625050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089558, 38.914684, 31.524557>,  <34.733177, 38.984974, 31.357069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089558, 38.914684, 31.524557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432823, -0.049668, 0.900110,
		-0.137377, -0.983185, -0.120311,
		0.890950, -0.175728, 0.418722,
		35.356842, 38.861965, 31.650173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687477, 38.406857, 31.765083>,  <34.733177, 38.984974, 31.357069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687477, 38.406857, 31.765083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996666, 38.591999, 31.938652>,  <35.182178, 38.703083, 32.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996666, 38.591999, 31.938652>,  <34.687477, 38.406857, 31.765083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996666, 38.591999, 31.938652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488890, -0.001363, 0.872344,
		0.404360, -0.886433, 0.225231,
		0.772968, 0.462854, 0.433920,
		35.228558, 38.730854, 32.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734039, 38.058311, 32.296276>,  <34.687477, 38.406857, 31.765083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734039, 38.058311, 32.296276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929165, 38.391335, 32.401260>,  <35.046242, 38.591148, 32.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929165, 38.391335, 32.401260>,  <34.734039, 38.058311, 32.296276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929165, 38.391335, 32.401260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290076, -0.128980, 0.948272,
		0.823341, -0.538718, 0.178585,
		0.487817, 0.832554, 0.262464,
		35.075512, 38.641102, 32.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087864, 37.909451, 32.913811>,  <34.734039, 38.058311, 32.296276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087864, 37.909451, 32.913811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081734, 38.307556, 32.952198>,  <35.078056, 38.546421, 32.975231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081734, 38.307556, 32.952198>,  <35.087864, 37.909451, 32.913811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081734, 38.307556, 32.952198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185812, -0.097137, 0.977772,
		0.982466, -0.002850, 0.186421,
		-0.015321, 0.995267, 0.095964,
		35.077137, 38.606136, 32.980988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420757, 38.110020, 33.500923>,  <35.087864, 37.909451, 32.913811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420757, 38.110020, 33.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180496, 38.424084, 33.440617>,  <35.036339, 38.612522, 33.404434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180496, 38.424084, 33.440617>,  <35.420757, 38.110020, 33.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180496, 38.424084, 33.440617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312760, -0.057209, 0.948108,
		0.735794, 0.616641, 0.279931,
		-0.600657, 0.785163, -0.150766,
		35.000298, 38.659634, 33.395386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373104, 38.481003, 34.148216>,  <35.420757, 38.110020, 33.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373104, 38.481003, 34.148216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061390, 38.650116, 33.963192>,  <34.874359, 38.751583, 33.852177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061390, 38.650116, 33.963192>,  <35.373104, 38.481003, 34.148216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061390, 38.650116, 33.963192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524763, -0.036804, 0.850452,
		0.342536, 0.905481, 0.250544,
		-0.779289, 0.422787, -0.462557,
		34.827602, 38.776951, 33.824425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094772, 38.836140, 34.704842>,  <35.373104, 38.481003, 34.148216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094772, 38.836140, 34.704842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822960, 38.766785, 34.419693>,  <34.659874, 38.725174, 34.248604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822960, 38.766785, 34.419693>,  <35.094772, 38.836140, 34.704842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822960, 38.766785, 34.419693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706499, -0.107247, 0.699541,
		-0.197743, 0.978997, -0.049619,
		-0.679527, -0.173385, -0.712868,
		34.619102, 38.714767, 34.205833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577599, 39.344212, 34.861912>,  <35.094772, 38.836140, 34.704842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577599, 39.344212, 34.861912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377110, 39.083450, 34.634300>,  <34.256817, 38.926994, 34.497734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377110, 39.083450, 34.634300>,  <34.577599, 39.344212, 34.861912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377110, 39.083450, 34.634300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746868, -0.006181, 0.664943,
		-0.436996, 0.758276, -0.483789,
		-0.501220, -0.651904, -0.569033,
		34.226742, 38.887878, 34.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822163, 39.466240, 34.993111>,  <34.577599, 39.344212, 34.861912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822163, 39.466240, 34.993111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841080, 39.103371, 34.825874>,  <33.852432, 38.885651, 34.725533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841080, 39.103371, 34.825874>,  <33.822163, 39.466240, 34.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841080, 39.103371, 34.825874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705973, -0.326469, 0.628507,
		-0.706658, 0.265437, -0.655879,
		0.047295, -0.907172, -0.418093,
		33.855267, 38.831219, 34.700447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104019, 39.240952, 34.901333>,  <33.822163, 39.466240, 34.993111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104019, 39.240952, 34.901333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339714, 38.917816, 34.906826>,  <33.481133, 38.723934, 34.910122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339714, 38.917816, 34.906826>,  <33.104019, 39.240952, 34.901333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339714, 38.917816, 34.906826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573593, -0.406287, 0.711282,
		-0.569024, -0.426992, -0.702773,
		0.589239, -0.807842, 0.013733,
		33.516487, 38.675465, 34.910946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673080, 38.562183, 34.810898>,  <33.104019, 39.240952, 34.901333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673080, 38.562183, 34.810898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004971, 38.402386, 34.966827>,  <33.204105, 38.306507, 35.060387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004971, 38.402386, 34.966827>,  <32.673080, 38.562183, 34.810898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004971, 38.402386, 34.966827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558120, -0.583750, 0.589693,
		-0.008021, -0.706850, -0.707318,
		0.829722, -0.399498, 0.389825,
		33.253887, 38.282536, 35.083775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678699, 37.730408, 34.722065>,  <32.673080, 38.562183, 34.810898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678699, 37.730408, 34.722065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920883, 37.832661, 35.023548>,  <33.066193, 37.894012, 35.204437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920883, 37.832661, 35.023548>,  <32.678699, 37.730408, 34.722065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920883, 37.832661, 35.023548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356447, -0.759627, 0.543979,
		0.711594, -0.598013, -0.368803,
		0.605459, 0.255634, 0.753705,
		33.102520, 37.909351, 35.249660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927666, 37.089626, 35.002319>,  <32.678699, 37.730408, 34.722065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927666, 37.089626, 35.002319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983467, 37.377468, 35.274410>,  <33.016949, 37.550175, 35.437664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983467, 37.377468, 35.274410>,  <32.927666, 37.089626, 35.002319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983467, 37.377468, 35.274410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419982, -0.579102, 0.698753,
		0.896747, -0.383160, 0.221436,
		0.139500, 0.719604, 0.680228,
		33.025318, 37.593349, 35.478477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233250, 36.782513, 35.550777>,  <32.927666, 37.089626, 35.002319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233250, 36.782513, 35.550777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081734, 37.116333, 35.710800>,  <32.990826, 37.316624, 35.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081734, 37.116333, 35.710800>,  <33.233250, 36.782513, 35.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081734, 37.116333, 35.710800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345704, -0.528570, 0.775308,
		0.858492, 0.155376, 0.488723,
		-0.378789, 0.834549, 0.400059,
		32.968098, 37.366699, 35.830818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351254, 36.695084, 36.351875>,  <33.233250, 36.782513, 35.550777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351254, 36.695084, 36.351875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069614, 36.974537, 36.301052>,  <32.900631, 37.142208, 36.270557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069614, 36.974537, 36.301052>,  <33.351254, 36.695084, 36.351875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069614, 36.974537, 36.301052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473053, -0.328039, 0.817687,
		0.529585, 0.635842, 0.561466,
		-0.704103, 0.698638, -0.127063,
		32.858383, 37.184128, 36.262932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079937, 36.695156, 36.259636>,  <33.351254, 36.695084, 36.351875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079937, 36.695156, 36.259636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338531, 36.534515, 36.519104>,  <34.493687, 36.438129, 36.674786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338531, 36.534515, 36.519104>,  <34.079937, 36.695156, 36.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338531, 36.534515, 36.519104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757796, 0.436473, -0.485012,
		-0.088345, 0.805112, 0.586506,
		0.646483, -0.401603, 0.648671,
		34.532478, 36.414036, 36.713707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527485, 37.255089, 36.410126>,  <34.079937, 36.695156, 36.259636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527485, 37.255089, 36.410126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705452, 36.900814, 36.463211>,  <34.812233, 36.688251, 36.495064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705452, 36.900814, 36.463211>,  <34.527485, 37.255089, 36.410126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705452, 36.900814, 36.463211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705965, 0.255668, -0.660490,
		0.551054, 0.387556, 0.739013,
		0.444919, -0.885683, 0.132714,
		34.838928, 36.635109, 36.503025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138157, 37.449036, 36.391880>,  <34.527485, 37.255089, 36.410126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138157, 37.449036, 36.391880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207016, 37.055496, 36.372265>,  <35.248329, 36.819370, 36.360497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207016, 37.055496, 36.372265>,  <35.138157, 37.449036, 36.391880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207016, 37.055496, 36.372265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771315, 0.165586, -0.614536,
		0.612731, 0.067969, 0.787363,
		0.172146, -0.983850, -0.049034,
		35.258659, 36.760342, 36.357555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897400, 37.274757, 36.471432>,  <35.138157, 37.449036, 36.391880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897400, 37.274757, 36.471432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731529, 36.971760, 36.269741>,  <35.632008, 36.789963, 36.148727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731529, 36.971760, 36.269741>,  <35.897400, 37.274757, 36.471432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731529, 36.971760, 36.269741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618452, 0.171859, -0.766800,
		0.667502, -0.629816, 0.397207,
		-0.414679, -0.757494, -0.504227,
		35.607124, 36.744511, 36.118473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391773, 36.838398, 36.256161>,  <35.897400, 37.274757, 36.471432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391773, 36.838398, 36.256161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102463, 36.755741, 35.992596>,  <35.928875, 36.706146, 35.834457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102463, 36.755741, 35.992596>,  <36.391773, 36.838398, 36.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102463, 36.755741, 35.992596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648887, 0.123075, -0.750865,
		0.236258, -0.970644, 0.045072,
		-0.723276, -0.206645, -0.658916,
		35.885479, 36.693748, 35.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804466, 36.619499, 35.760826>,  <36.391773, 36.838398, 36.256161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804466, 36.619499, 35.760826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458843, 36.634434, 35.560028>,  <36.251469, 36.643394, 35.439548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458843, 36.634434, 35.560028>,  <36.804466, 36.619499, 35.760826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458843, 36.634434, 35.560028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497565, 0.214561, -0.840472,
		0.076332, -0.975997, -0.203970,
		-0.864062, 0.037334, -0.501999,
		36.199623, 36.645634, 35.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851112, 36.142811, 35.229740>,  <36.804466, 36.619499, 35.760826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851112, 36.142811, 35.229740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556538, 36.363247, 35.072784>,  <36.379795, 36.495506, 34.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556538, 36.363247, 35.072784>,  <36.851112, 36.142811, 35.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556538, 36.363247, 35.072784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571000, 0.195288, -0.797384,
		-0.362800, -0.811274, -0.458488,
		-0.736434, 0.551087, -0.392386,
		36.335606, 36.528572, 34.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859863, 36.049950, 34.539482>,  <36.851112, 36.142811, 35.229740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859863, 36.049950, 34.539482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629272, 36.376564, 34.551773>,  <36.490917, 36.572533, 34.559147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629272, 36.376564, 34.551773>,  <36.859863, 36.049950, 34.539482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629272, 36.376564, 34.551773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431396, 0.336069, -0.837230,
		-0.693955, -0.469388, -0.545987,
		-0.576475, 0.816537, 0.030725,
		36.456329, 36.621525, 34.560989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428707, 36.171265, 33.938759>,  <36.859863, 36.049950, 34.539482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428707, 36.171265, 33.938759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526890, 36.513615, 34.120850>,  <36.585800, 36.719025, 34.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526890, 36.513615, 34.120850>,  <36.428707, 36.171265, 33.938759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526890, 36.513615, 34.120850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590598, 0.240352, -0.770341,
		-0.768729, 0.457941, -0.446481,
		0.245458, 0.855874, 0.455225,
		36.600529, 36.770378, 34.257416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416256, 36.694141, 33.431473>,  <36.428707, 36.171265, 33.938759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416256, 36.694141, 33.431473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646740, 36.850285, 33.718693>,  <36.785030, 36.943970, 33.891026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646740, 36.850285, 33.718693>,  <36.416256, 36.694141, 33.431473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646740, 36.850285, 33.718693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700326, 0.217099, -0.680008,
		-0.421336, 0.894700, -0.148284,
		0.576211, 0.390359, 0.718053,
		36.819603, 36.967392, 33.934109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627571, 37.405109, 33.286041>,  <36.416256, 36.694141, 33.431473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627571, 37.405109, 33.286041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921654, 37.297295, 33.534821>,  <37.098103, 37.232605, 33.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921654, 37.297295, 33.534821>,  <36.627571, 37.405109, 33.286041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921654, 37.297295, 33.534821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676683, 0.238319, -0.696637,
		0.039547, 0.933035, 0.357605,
		0.735211, -0.269535, 0.621945,
		37.142216, 37.216434, 33.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061874, 37.973969, 33.304142>,  <36.627571, 37.405109, 33.286041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061874, 37.973969, 33.304142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295700, 37.688805, 33.459084>,  <37.435997, 37.517708, 33.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295700, 37.688805, 33.459084>,  <37.061874, 37.973969, 33.304142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295700, 37.688805, 33.459084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742909, 0.278410, -0.608748,
		0.326140, 0.643621, 0.692376,
		0.584567, -0.712909, 0.387352,
		37.471069, 37.474934, 33.575291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878201, 38.195549, 33.485237>,  <37.061874, 37.973969, 33.304142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878201, 38.195549, 33.485237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858974, 37.798309, 33.442455>,  <37.847439, 37.559963, 33.416786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858974, 37.798309, 33.442455>,  <37.878201, 38.195549, 33.485237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858974, 37.798309, 33.442455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787758, 0.028148, -0.615341,
		0.614107, -0.113830, 0.780971,
		-0.048061, -0.993102, -0.106956,
		37.844555, 37.500378, 33.410370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519646, 38.129654, 33.287556>,  <37.878201, 38.195549, 33.485237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519646, 38.129654, 33.287556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354069, 37.776283, 33.199730>,  <38.254723, 37.564262, 33.147034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354069, 37.776283, 33.199730>,  <38.519646, 38.129654, 33.287556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354069, 37.776283, 33.199730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504328, -0.021758, -0.863238,
		0.757831, -0.468063, 0.454543,
		-0.413939, -0.883427, -0.219568,
		38.229885, 37.511253, 33.133858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060886, 37.809498, 32.985104>,  <38.519646, 38.129654, 33.287556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060886, 37.809498, 32.985104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734352, 37.639664, 32.828476>,  <38.538433, 37.537762, 32.734501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734352, 37.639664, 32.828476>,  <39.060886, 37.809498, 32.985104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734352, 37.639664, 32.828476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385739, 0.103811, -0.916749,
		0.429887, -0.899417, 0.079035,
		-0.816335, -0.424585, -0.391567,
		38.489452, 37.512287, 32.711006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365913, 37.355713, 32.441982>,  <39.060886, 37.809498, 32.985104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365913, 37.355713, 32.441982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977364, 37.381939, 32.350643>,  <38.744236, 37.397675, 32.295841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977364, 37.381939, 32.350643>,  <39.365913, 37.355713, 32.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977364, 37.381939, 32.350643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222777, -0.082529, -0.971370,
		-0.082529, -0.994430, 0.065561,
		0.971370, -0.065561, 0.228347,
		38.685951, 37.401608, 32.282139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213287, 36.807793, 32.125328>,  <39.365913, 37.355713, 32.441982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213287, 36.807793, 32.125328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932465, 37.071518, 32.017681>,  <38.763969, 37.229752, 31.953093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932465, 37.071518, 32.017681>,  <39.213287, 36.807793, 32.125328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932465, 37.071518, 32.017681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193263, -0.187331, -0.963097,
		-0.685396, -0.728159, 0.004097,
		-0.702056, 0.659311, -0.269122,
		38.721848, 37.269310, 31.936945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950054, 36.441990, 31.565746>,  <39.213287, 36.807793, 32.125328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950054, 36.441990, 31.565746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847054, 36.827667, 31.540365>,  <38.785252, 37.059074, 31.525137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847054, 36.827667, 31.540365>,  <38.950054, 36.441990, 31.565746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847054, 36.827667, 31.540365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297451, 0.016619, -0.954593,
		-0.919356, -0.264686, -0.291079,
		-0.257504, 0.964192, -0.063452,
		38.769802, 37.116924, 31.521330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452118, 36.596004, 30.906479>,  <38.950054, 36.441990, 31.565746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452118, 36.596004, 30.906479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566685, 36.969585, 30.991985>,  <38.635426, 37.193733, 31.043289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566685, 36.969585, 30.991985>,  <38.452118, 36.596004, 30.906479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566685, 36.969585, 30.991985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124208, 0.185035, -0.974851,
		-0.950020, 0.305765, -0.063007,
		0.286417, 0.933954, 0.213766,
		38.652611, 37.249771, 31.056114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036407, 37.035774, 30.564804>,  <38.452118, 36.596004, 30.906479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036407, 37.035774, 30.564804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394085, 37.195015, 30.646715>,  <38.608692, 37.290558, 30.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394085, 37.195015, 30.646715>,  <38.036407, 37.035774, 30.564804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394085, 37.195015, 30.646715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209292, 0.032617, -0.977309,
		-0.395745, 0.916763, -0.054153,
		0.894194, 0.398099, 0.204779,
		38.662342, 37.314445, 30.708149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172955, 37.442657, 30.028339>,  <38.036407, 37.035774, 30.564804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172955, 37.442657, 30.028339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540428, 37.471523, 30.183676>,  <38.760914, 37.488842, 30.276878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540428, 37.471523, 30.183676>,  <38.172955, 37.442657, 30.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540428, 37.471523, 30.183676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380370, 0.103378, -0.919038,
		-0.106467, 0.992021, 0.067523,
		0.918686, 0.072163, 0.388341,
		38.816032, 37.493172, 30.300179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533733, 38.060211, 29.716587>,  <38.172955, 37.442657, 30.028339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533733, 38.060211, 29.716587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820885, 37.812096, 29.843014>,  <38.993176, 37.663227, 29.918869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820885, 37.812096, 29.843014>,  <38.533733, 38.060211, 29.716587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820885, 37.812096, 29.843014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313315, -0.117561, -0.942344,
		0.621681, 0.775515, 0.109951,
		0.717876, -0.620287, 0.316066,
		39.036247, 37.626011, 29.937834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243690, 38.307686, 29.528486>,  <38.533733, 38.060211, 29.716587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243690, 38.307686, 29.528486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277115, 37.911232, 29.569822>,  <39.297169, 37.673359, 29.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277115, 37.911232, 29.569822>,  <39.243690, 38.307686, 29.528486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277115, 37.911232, 29.569822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452812, -0.054613, -0.889932,
		0.887682, 0.121153, 0.444233,
		0.083557, -0.991130, 0.103339,
		39.302181, 37.613892, 29.600824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868496, 38.222122, 29.279179>,  <39.243690, 38.307686, 29.528486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868496, 38.222122, 29.279179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691051, 37.864090, 29.261074>,  <39.584583, 37.649273, 29.250212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691051, 37.864090, 29.261074>,  <39.868496, 38.222122, 29.279179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691051, 37.864090, 29.261074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484024, -0.196771, -0.852644,
		0.754274, -0.400150, 0.520528,
		-0.443610, -0.895076, -0.045263,
		39.557968, 37.595566, 29.247496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426987, 37.730949, 29.084633>,  <39.868496, 38.222122, 29.279179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426987, 37.730949, 29.084633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081306, 37.546658, 29.003757>,  <39.873898, 37.436085, 28.955233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081306, 37.546658, 29.003757>,  <40.426987, 37.730949, 29.084633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081306, 37.546658, 29.003757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377451, -0.327952, -0.866013,
		0.332688, -0.824728, 0.457320,
		-0.864205, -0.460728, -0.202189,
		39.822044, 37.408440, 28.943100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506126, 36.997982, 28.992161>,  <40.426987, 37.730949, 29.084633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506126, 36.997982, 28.992161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168518, 37.083649, 28.795481>,  <39.965954, 37.135048, 28.677473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168518, 37.083649, 28.795481>,  <40.506126, 36.997982, 28.992161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168518, 37.083649, 28.795481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360813, -0.451560, -0.816032,
		-0.396796, -0.866157, 0.303851,
		-0.844019, 0.214165, -0.491698,
		39.915314, 37.147900, 28.647970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515766, 36.442543, 28.522367>,  <40.506126, 36.997982, 28.992161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515766, 36.442543, 28.522367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239876, 36.685932, 28.365377>,  <40.074341, 36.831966, 28.271183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239876, 36.685932, 28.365377>,  <40.515766, 36.442543, 28.522367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239876, 36.685932, 28.365377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050699, -0.500129, -0.864465,
		-0.722290, -0.616145, 0.314105,
		-0.689729, 0.608470, -0.392477,
		40.032955, 36.868473, 28.247635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877762, 36.016079, 28.215017>,  <40.515766, 36.442543, 28.522367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877762, 36.016079, 28.215017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877892, 36.373764, 28.035959>,  <39.877968, 36.588375, 27.928524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877892, 36.373764, 28.035959>,  <39.877762, 36.016079, 28.215017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877892, 36.373764, 28.035959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024379, -0.447522, -0.893941,
		-0.999703, -0.010623, -0.021946,
		0.000325, 0.894210, -0.447647,
		39.877991, 36.642029, 27.901665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507004, 35.911549, 27.557783>,  <39.877762, 36.016079, 28.215017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507004, 35.911549, 27.557783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730946, 36.242176, 27.534653>,  <39.865311, 36.440552, 27.520775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730946, 36.242176, 27.534653>,  <39.507004, 35.911549, 27.557783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730946, 36.242176, 27.534653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401762, -0.331833, -0.853507,
		-0.724674, 0.454605, -0.517862,
		0.559852, 0.826572, -0.057827,
		39.898903, 36.490147, 27.517305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267353, 36.120243, 26.918552>,  <39.507004, 35.911549, 27.557783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267353, 36.120243, 26.918552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601402, 36.332638, 26.975998>,  <39.801830, 36.460075, 27.010466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601402, 36.332638, 26.975998>,  <39.267353, 36.120243, 26.918552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601402, 36.332638, 26.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219434, -0.082185, -0.972160,
		-0.504397, 0.843387, -0.185150,
		0.835124, 0.530983, 0.143615,
		39.851940, 36.491932, 27.019083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266987, 36.562889, 26.373869>,  <39.267353, 36.120243, 26.918552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266987, 36.562889, 26.373869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648617, 36.552574, 26.493254>,  <39.877594, 36.546387, 26.564884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648617, 36.552574, 26.493254>,  <39.266987, 36.562889, 26.373869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648617, 36.552574, 26.493254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292900, -0.128808, -0.947427,
		0.062875, 0.991334, -0.115340,
		0.954074, -0.025786, 0.298461,
		39.934837, 36.544838, 26.582792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695168, 36.988182, 25.936359>,  <39.266987, 36.562889, 26.373869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695168, 36.988182, 25.936359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969929, 36.729156, 26.068314>,  <40.134785, 36.573742, 26.147486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969929, 36.729156, 26.068314>,  <39.695168, 36.988182, 25.936359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969929, 36.729156, 26.068314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247650, -0.218180, -0.943963,
		0.683248, 0.730111, 0.010499,
		0.686907, -0.647561, 0.329883,
		40.176003, 36.534889, 26.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312817, 37.069263, 25.505419>,  <39.695168, 36.988182, 25.936359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312817, 37.069263, 25.505419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379452, 36.715168, 25.679132>,  <40.419434, 36.502712, 25.783361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379452, 36.715168, 25.679132>,  <40.312817, 37.069263, 25.505419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379452, 36.715168, 25.679132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347668, -0.359418, -0.865994,
		0.922700, 0.295251, 0.247894,
		0.166588, -0.885237, 0.434285,
		40.429428, 36.449596, 25.809418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020557, 36.903942, 25.334826>,  <40.312817, 37.069263, 25.505419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020557, 36.903942, 25.334826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791389, 36.589474, 25.427515>,  <40.653889, 36.400791, 25.483128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791389, 36.589474, 25.427515>,  <41.020557, 36.903942, 25.334826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791389, 36.589474, 25.427515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327330, -0.478669, -0.814697,
		0.751410, -0.390907, 0.531577,
		-0.572920, -0.786173, 0.231722,
		40.619514, 36.353622, 25.497032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399574, 36.372055, 25.054075>,  <41.020557, 36.903942, 25.334826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399574, 36.372055, 25.054075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044922, 36.195934, 25.110676>,  <40.832130, 36.090263, 25.144636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044922, 36.195934, 25.110676>,  <41.399574, 36.372055, 25.054075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044922, 36.195934, 25.110676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262967, -0.731653, -0.628914,
		0.380444, -0.520402, 0.764490,
		-0.886629, -0.440302, 0.141504,
		40.778934, 36.063843, 25.153128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461365, 35.667915, 25.159967>,  <41.399574, 36.372055, 25.054075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461365, 35.667915, 25.159967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088558, 35.711109, 25.021585>,  <40.864876, 35.737026, 24.938557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088558, 35.711109, 25.021585>,  <41.461365, 35.667915, 25.159967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088558, 35.711109, 25.021585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094641, -0.848940, -0.519946,
		-0.349842, -0.517340, 0.781006,
		-0.932016, 0.107984, -0.345956,
		40.808952, 35.743504, 24.917799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371094, 35.001827, 25.103554>,  <41.461365, 35.667915, 25.159967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371094, 35.001827, 25.103554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075241, 35.169350, 24.892822>,  <40.897732, 35.269863, 24.766382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075241, 35.169350, 24.892822>,  <41.371094, 35.001827, 25.103554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075241, 35.169350, 24.892822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007865, -0.788116, -0.615476,
		-0.672967, -0.451081, 0.586209,
		-0.739630, 0.418806, -0.526829,
		40.853352, 35.294991, 24.734774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873268, 34.476799, 24.916607>,  <41.371094, 35.001827, 25.103554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873268, 34.476799, 24.916607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809910, 34.778805, 24.662090>,  <40.771896, 34.960007, 24.509380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809910, 34.778805, 24.662090>,  <40.873268, 34.476799, 24.916607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809910, 34.778805, 24.662090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034576, -0.639790, -0.767772,
		-0.986771, -0.143609, 0.075232,
		-0.158391, 0.755014, -0.636291,
		40.762394, 35.005310, 24.471203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600563, 34.255775, 24.631519>,  <40.873268, 34.476799, 24.916607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600563, 34.255775, 24.631519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852638, 33.956295, 24.713791>,  <42.003883, 33.776608, 24.763153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852638, 33.956295, 24.713791>,  <41.600563, 34.255775, 24.631519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852638, 33.956295, 24.713791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017721, 0.250959, 0.967835,
		-0.776237, -0.613567, 0.144885,
		0.630192, -0.748702, 0.205677,
		42.041695, 33.731686, 24.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300537, 33.774837, 25.125923>,  <41.600563, 34.255775, 24.631519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300537, 33.774837, 25.125923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699627, 33.776707, 25.152830>,  <41.939079, 33.777828, 25.168974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699627, 33.776707, 25.152830>,  <41.300537, 33.774837, 25.125923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699627, 33.776707, 25.152830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064889, 0.337795, 0.938980,
		-0.018337, -0.941208, 0.337330,
		0.997724, 0.004671, 0.067268,
		41.998943, 33.778107, 25.173010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450741, 33.499542, 25.789539>,  <41.300537, 33.774837, 25.125923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450741, 33.499542, 25.789539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802658, 33.659046, 25.686033>,  <42.013809, 33.754749, 25.623928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802658, 33.659046, 25.686033>,  <41.450741, 33.499542, 25.789539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802658, 33.659046, 25.686033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184175, 0.215905, 0.958887,
		0.438232, -0.891279, 0.116510,
		0.879791, 0.398757, -0.258768,
		42.066597, 33.778671, 25.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018970, 33.354183, 26.361198>,  <41.450741, 33.499542, 25.789539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018970, 33.354183, 26.361198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162384, 33.667625, 26.158255>,  <42.248432, 33.855690, 26.036489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162384, 33.667625, 26.158255>,  <42.018970, 33.354183, 26.361198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162384, 33.667625, 26.158255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192208, 0.469880, 0.861550,
		0.913514, -0.406415, 0.017854,
		0.358536, 0.783607, -0.507358,
		42.269943, 33.902706, 26.006046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655239, 33.572178, 26.632280>,  <42.018970, 33.354183, 26.361198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655239, 33.572178, 26.632280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564648, 33.906540, 26.432291>,  <42.510292, 34.107159, 26.312298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564648, 33.906540, 26.432291>,  <42.655239, 33.572178, 26.632280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564648, 33.906540, 26.432291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077262, 0.527108, 0.846278,
		0.970947, 0.153033, -0.183961,
		-0.226476, 0.835905, -0.499971,
		42.496704, 34.157310, 26.282299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202259, 34.128506, 26.748436>,  <42.655239, 33.572178, 26.632280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202259, 34.128506, 26.748436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846252, 34.289387, 26.662544>,  <42.632648, 34.385914, 26.611010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846252, 34.289387, 26.662544>,  <43.202259, 34.128506, 26.748436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846252, 34.289387, 26.662544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058969, 0.365470, 0.928953,
		0.452103, 0.839445, -0.301556,
		-0.890014, 0.402200, -0.214732,
		42.579247, 34.410046, 26.598125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305080, 34.814369, 26.993931>,  <43.202259, 34.128506, 26.748436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305080, 34.814369, 26.993931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910564, 34.771976, 26.943335>,  <42.673855, 34.746540, 26.912977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910564, 34.771976, 26.943335>,  <43.305080, 34.814369, 26.993931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910564, 34.771976, 26.943335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164022, 0.545402, 0.821970,
		-0.018124, 0.831448, -0.555307,
		-0.986290, -0.105980, -0.126491,
		42.614677, 34.740181, 26.905388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131657, 35.457600, 27.153961>,  <43.305080, 34.814369, 26.993931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131657, 35.457600, 27.153961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809025, 35.224113, 27.191290>,  <42.615448, 35.084023, 27.213686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809025, 35.224113, 27.191290>,  <43.131657, 35.457600, 27.153961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809025, 35.224113, 27.191290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191168, 0.406957, 0.893219,
		-0.559363, 0.702611, -0.439830,
		-0.806578, -0.583715, 0.093320,
		42.567051, 35.049000, 27.219286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603138, 35.878826, 27.342327>,  <43.131657, 35.457600, 27.153961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603138, 35.878826, 27.342327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440414, 35.525043, 27.433758>,  <42.342781, 35.312775, 27.488615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440414, 35.525043, 27.433758>,  <42.603138, 35.878826, 27.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440414, 35.525043, 27.433758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423899, 0.404410, 0.810409,
		-0.809209, 0.232786, -0.539436,
		-0.406805, -0.884457, 0.228574,
		42.318375, 35.259708, 27.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911682, 36.033192, 27.650188>,  <42.603138, 35.878826, 27.342327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911682, 36.033192, 27.650188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981712, 35.659821, 27.775450>,  <42.023731, 35.435799, 27.850607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981712, 35.659821, 27.775450>,  <41.911682, 36.033192, 27.650188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981712, 35.659821, 27.775450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228624, 0.270827, 0.935085,
		-0.957643, -0.235304, -0.165989,
		0.175075, -0.933426, 0.313152,
		42.034233, 35.379791, 27.869396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240032, 35.819363, 27.894804>,  <41.911682, 36.033192, 27.650188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240032, 35.819363, 27.894804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499615, 35.572205, 28.072374>,  <41.655365, 35.423912, 28.178917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499615, 35.572205, 28.072374>,  <41.240032, 35.819363, 27.894804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499615, 35.572205, 28.072374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479123, 0.121356, 0.869318,
		-0.591017, -0.776842, -0.217292,
		0.648953, -0.617891, 0.443926,
		41.694302, 35.386837, 28.205553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873959, 35.137188, 28.200132>,  <41.240032, 35.819363, 27.894804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873959, 35.137188, 28.200132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210743, 35.240826, 28.389437>,  <41.412811, 35.303009, 28.503019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210743, 35.240826, 28.389437>,  <40.873959, 35.137188, 28.200132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210743, 35.240826, 28.389437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508549, 0.088079, 0.856516,
		0.180239, -0.961826, 0.205924,
		0.841957, 0.259101, 0.473260,
		41.463329, 35.318554, 28.531416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802216, 34.747322, 28.835978>,  <40.873959, 35.137188, 28.200132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802216, 34.747322, 28.835978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103176, 34.991497, 28.934975>,  <41.283752, 35.138004, 28.994373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103176, 34.991497, 28.934975>,  <40.802216, 34.747322, 28.835978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103176, 34.991497, 28.934975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392666, 0.113988, 0.912590,
		0.528872, -0.783816, 0.325464,
		0.752402, 0.610442, 0.247493,
		41.328896, 35.174629, 29.009222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072002, 34.516422, 29.409487>,  <40.802216, 34.747322, 28.835978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072002, 34.516422, 29.409487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191494, 34.897442, 29.432873>,  <41.263187, 35.126053, 29.446905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191494, 34.897442, 29.432873>,  <41.072002, 34.516422, 29.409487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191494, 34.897442, 29.432873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325842, 0.044220, 0.944389,
		0.896990, -0.301163, 0.323590,
		0.298724, 0.952547, 0.058466,
		41.281113, 35.183205, 29.450413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577808, 34.622555, 29.995165>,  <41.072002, 34.516422, 29.409487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577808, 34.622555, 29.995165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438072, 34.988464, 29.914034>,  <41.354229, 35.208012, 29.865355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438072, 34.988464, 29.914034>,  <41.577808, 34.622555, 29.995165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438072, 34.988464, 29.914034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316656, 0.088470, 0.944406,
		0.881866, 0.394151, 0.258764,
		-0.349345, 0.914778, -0.202829,
		41.333267, 35.262897, 29.853186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855080, 35.173641, 30.485245>,  <41.577808, 34.622555, 29.995165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855080, 35.173641, 30.485245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542778, 35.357681, 30.316137>,  <41.355396, 35.468105, 30.214672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542778, 35.357681, 30.316137>,  <41.855080, 35.173641, 30.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542778, 35.357681, 30.316137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336006, 0.261294, 0.904890,
		0.526803, 0.848550, -0.049412,
		-0.780755, 0.460096, -0.422769,
		41.308552, 35.495708, 30.189306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924500, 35.774231, 30.756487>,  <41.855080, 35.173641, 30.485245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924500, 35.774231, 30.756487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547729, 35.713539, 30.636656>,  <41.321667, 35.677124, 30.564756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547729, 35.713539, 30.636656>,  <41.924500, 35.774231, 30.756487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547729, 35.713539, 30.636656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310806, 0.056098, 0.948817,
		-0.127159, 0.986829, -0.099999,
		-0.941929, -0.151731, -0.299579,
		41.265152, 35.668018, 30.546782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658798, 36.418789, 31.012003>,  <41.924500, 35.774231, 30.756487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658798, 36.418789, 31.012003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362797, 36.152397, 30.974342>,  <41.185196, 35.992561, 30.951746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362797, 36.152397, 30.974342>,  <41.658798, 36.418789, 31.012003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362797, 36.152397, 30.974342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294271, 0.194700, 0.935680,
		-0.604809, 0.720116, -0.340057,
		-0.740007, -0.665977, -0.094153,
		41.140793, 35.952602, 30.946096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970879, 36.715431, 31.090771>,  <41.658798, 36.418789, 31.012003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970879, 36.715431, 31.090771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936836, 36.322704, 31.158634>,  <40.916412, 36.087067, 31.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936836, 36.322704, 31.158634>,  <40.970879, 36.715431, 31.090771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936836, 36.322704, 31.158634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515178, 0.189107, 0.835961,
		-0.852848, -0.016262, -0.521906,
		-0.085102, -0.981822, 0.169657,
		40.911304, 36.028156, 31.209532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315170, 36.643879, 31.279808>,  <40.970879, 36.715431, 31.090771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315170, 36.643879, 31.279808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452805, 36.282173, 31.380932>,  <40.535385, 36.065151, 31.441607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452805, 36.282173, 31.380932>,  <40.315170, 36.643879, 31.279808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452805, 36.282173, 31.380932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598513, -0.003774, 0.801104,
		-0.723456, -0.426956, -0.542513,
		0.344084, -0.904265, 0.252808,
		40.556030, 36.010895, 31.456774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664536, 36.161980, 31.424038>,  <40.315170, 36.643879, 31.279808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664536, 36.161980, 31.424038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976570, 35.992290, 31.607994>,  <40.163792, 35.890476, 31.718369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976570, 35.992290, 31.607994>,  <39.664536, 36.161980, 31.424038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976570, 35.992290, 31.607994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534772, -0.070527, 0.842048,
		-0.324780, -0.902808, -0.281878,
		0.780088, -0.424221, 0.459891,
		40.210598, 35.865025, 31.745962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449768, 35.528328, 31.761497>,  <39.664536, 36.161980, 31.424038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449768, 35.528328, 31.761497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781345, 35.650265, 31.949081>,  <39.980293, 35.723427, 32.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781345, 35.650265, 31.949081>,  <39.449768, 35.528328, 31.761497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781345, 35.650265, 31.949081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471217, -0.071086, 0.879148,
		0.301341, -0.949745, 0.084722,
		0.828943, 0.304845, 0.468957,
		40.030029, 35.741718, 32.089767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331978, 35.142601, 32.362480>,  <39.449768, 35.528328, 31.761497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331978, 35.142601, 32.362480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611778, 35.414371, 32.451092>,  <39.779659, 35.577435, 32.504261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611778, 35.414371, 32.451092>,  <39.331978, 35.142601, 32.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611778, 35.414371, 32.451092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359633, 0.066797, 0.930700,
		0.617544, -0.730697, 0.291068,
		0.699503, 0.679426, 0.221533,
		39.821629, 35.618198, 32.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576660, 34.940578, 33.092930>,  <39.331978, 35.142601, 32.362480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576660, 34.940578, 33.092930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720528, 35.310204, 33.041161>,  <39.806850, 35.531979, 33.010098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720528, 35.310204, 33.041161>,  <39.576660, 34.940578, 33.092930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720528, 35.310204, 33.041161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138746, 0.190128, 0.971906,
		0.922706, -0.331609, 0.196593,
		0.359671, 0.924060, -0.129423,
		39.828430, 35.587421, 33.002335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917278, 34.954037, 33.663166>,  <39.576660, 34.940578, 33.092930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917278, 34.954037, 33.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868069, 35.333035, 33.545105>,  <39.838543, 35.560432, 33.474266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868069, 35.333035, 33.545105>,  <39.917278, 34.954037, 33.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868069, 35.333035, 33.545105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028064, 0.293975, 0.955401,
		0.992007, 0.125823, -0.009576,
		-0.123026, 0.947495, -0.295156,
		39.831161, 35.617283, 33.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347015, 35.368824, 34.127918>,  <39.917278, 34.954037, 33.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347015, 35.368824, 34.127918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047203, 35.591408, 33.984505>,  <39.867313, 35.724960, 33.898457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047203, 35.591408, 33.984505>,  <40.347015, 35.368824, 34.127918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047203, 35.591408, 33.984505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123809, 0.414219, 0.901718,
		0.650284, 0.720258, -0.241576,
		-0.749535, 0.556463, -0.358534,
		39.822342, 35.758347, 33.876945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411266, 36.045387, 34.378300>,  <40.347015, 35.368824, 34.127918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411266, 36.045387, 34.378300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025909, 35.986061, 34.288967>,  <39.794697, 35.950466, 34.235367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025909, 35.986061, 34.288967>,  <40.411266, 36.045387, 34.378300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025909, 35.986061, 34.288967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266397, 0.435996, 0.859616,
		-0.030119, 0.887643, -0.459545,
		-0.963393, -0.148313, -0.223334,
		39.736893, 35.941566, 34.221966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029732, 36.659283, 34.509529>,  <40.411266, 36.045387, 34.378300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029732, 36.659283, 34.509529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740219, 36.383358, 34.502602>,  <39.566513, 36.217804, 34.498447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740219, 36.383358, 34.502602>,  <40.029732, 36.659283, 34.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740219, 36.383358, 34.502602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395662, 0.394326, 0.829433,
		-0.565323, 0.607181, -0.558338,
		-0.723783, -0.689810, -0.017317,
		39.523083, 36.176414, 34.497406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358410, 37.058575, 34.756744>,  <40.029732, 36.659283, 34.509529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358410, 37.058575, 34.756744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280628, 36.668739, 34.801212>,  <39.233959, 36.434837, 34.827892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280628, 36.668739, 34.801212>,  <39.358410, 37.058575, 34.756744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280628, 36.668739, 34.801212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274411, 0.162860, 0.947721,
		-0.941745, 0.153785, -0.299108,
		-0.194458, -0.974590, 0.111172,
		39.222290, 36.376362, 34.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711197, 37.047058, 35.067635>,  <39.358410, 37.058575, 34.756744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711197, 37.047058, 35.067635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855602, 36.678467, 35.124981>,  <38.942245, 36.457314, 35.159389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855602, 36.678467, 35.124981>,  <38.711197, 37.047058, 35.067635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855602, 36.678467, 35.124981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441654, -0.033539, 0.896558,
		-0.821349, -0.386984, -0.419082,
		0.361009, -0.921476, 0.143365,
		38.963905, 36.402023, 35.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212234, 36.621044, 35.306732>,  <38.711197, 37.047058, 35.067635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212234, 36.621044, 35.306732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550106, 36.442997, 35.425652>,  <38.752831, 36.336170, 35.497005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550106, 36.442997, 35.425652>,  <38.212234, 36.621044, 35.306732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550106, 36.442997, 35.425652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352344, -0.044244, 0.934824,
		-0.402953, -0.894378, -0.194206,
		0.844679, -0.445118, 0.297301,
		38.803509, 36.309464, 35.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992416, 36.174423, 35.808434>,  <38.212234, 36.621044, 35.306732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992416, 36.174423, 35.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385544, 36.186459, 35.881275>,  <38.621422, 36.193680, 35.924980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385544, 36.186459, 35.881275>,  <37.992416, 36.174423, 35.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385544, 36.186459, 35.881275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171301, -0.218691, 0.960641,
		0.068731, -0.975330, -0.209779,
		0.982818, 0.030091, 0.182106,
		38.680389, 36.195484, 35.935905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141315, 35.629642, 36.259472>,  <37.992416, 36.174423, 35.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141315, 35.629642, 36.259472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448540, 35.882446, 36.300728>,  <38.632874, 36.034130, 36.325481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448540, 35.882446, 36.300728>,  <38.141315, 35.629642, 36.259472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448540, 35.882446, 36.300728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170639, 0.046751, 0.984224,
		0.617220, -0.773547, 0.143754,
		0.768063, 0.632013, 0.103142,
		38.678959, 36.072052, 36.331669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638542, 35.413525, 36.851261>,  <38.141315, 35.629642, 36.259472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638542, 35.413525, 36.851261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726486, 35.802155, 36.816162>,  <38.779255, 36.035332, 36.795101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726486, 35.802155, 36.816162>,  <38.638542, 35.413525, 36.851261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726486, 35.802155, 36.816162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133938, 0.119160, 0.983800,
		0.966292, -0.204549, 0.156330,
		0.219863, 0.971576, -0.087746,
		38.792446, 36.093628, 36.789837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279957, 35.531948, 37.095764>,  <38.638542, 35.413525, 36.851261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279957, 35.531948, 37.095764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091122, 35.883381, 37.124706>,  <38.977821, 36.094238, 37.142071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091122, 35.883381, 37.124706>,  <39.279957, 35.531948, 37.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091122, 35.883381, 37.124706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118575, -0.018049, 0.992781,
		0.873541, 0.477259, -0.095657,
		-0.472087, 0.878577, 0.072358,
		38.949497, 36.146954, 37.146412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648338, 35.842289, 37.648731>,  <39.279957, 35.531948, 37.095764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648338, 35.842289, 37.648731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322437, 36.069817, 37.603790>,  <39.126896, 36.206333, 37.576828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322437, 36.069817, 37.603790>,  <39.648338, 35.842289, 37.648731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322437, 36.069817, 37.603790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039922, 0.248343, 0.967849,
		0.578431, 0.784074, -0.225047,
		-0.814754, 0.568818, -0.112348,
		39.078011, 36.240463, 37.570087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921116, 36.547443, 37.866512>,  <39.648338, 35.842289, 37.648731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921116, 36.547443, 37.866512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522919, 36.524525, 37.896717>,  <39.284000, 36.510773, 37.914841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522919, 36.524525, 37.896717>,  <39.921116, 36.547443, 37.866512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522919, 36.524525, 37.896717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048549, 0.375955, 0.925365,
		-0.081410, 0.924865, -0.371481,
		-0.995498, -0.057299, 0.075508,
		39.224270, 36.507336, 37.919369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797619, 37.151318, 38.122280>,  <39.921116, 36.547443, 37.866512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797619, 37.151318, 38.122280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478252, 36.933750, 38.225578>,  <39.286633, 36.803211, 38.287556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478252, 36.933750, 38.225578>,  <39.797619, 37.151318, 38.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478252, 36.933750, 38.225578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007375, 0.437698, 0.899092,
		-0.602064, 0.715943, -0.353475,
		-0.798414, -0.543918, 0.258243,
		39.238728, 36.770576, 38.303051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331379, 37.651558, 38.442097>,  <39.797619, 37.151318, 38.122280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331379, 37.651558, 38.442097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229347, 37.285442, 38.566792>,  <39.168129, 37.065773, 38.641609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229347, 37.285442, 38.566792>,  <39.331379, 37.651558, 38.442097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229347, 37.285442, 38.566792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160151, 0.357940, 0.919908,
		-0.953566, 0.184723, -0.237887,
		-0.255077, -0.915291, 0.311735,
		39.152824, 37.010857, 38.660313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960426, 37.695259, 39.074856>,  <39.331379, 37.651558, 38.442097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960426, 37.695259, 39.074856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077312, 37.313778, 39.103325>,  <39.147442, 37.084888, 39.120407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077312, 37.313778, 39.103325>,  <38.960426, 37.695259, 39.074856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077312, 37.313778, 39.103325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209979, 0.136583, 0.968119,
		-0.933017, -0.267951, 0.240168,
		0.292212, -0.953702, 0.071170,
		39.164974, 37.027668, 39.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398083, 37.413105, 39.549091>,  <38.960426, 37.695259, 39.074856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398083, 37.413105, 39.549091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704105, 37.157028, 39.576927>,  <38.887718, 37.003380, 39.593628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704105, 37.157028, 39.576927>,  <38.398083, 37.413105, 39.549091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704105, 37.157028, 39.576927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006347, 0.100557, 0.994911,
		-0.643934, -0.761603, 0.072868,
		0.765055, -0.640195, 0.069586,
		38.933620, 36.964970, 39.597801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148045, 36.802258, 39.998127>,  <38.398083, 37.413105, 39.549091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148045, 36.802258, 39.998127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544922, 36.851898, 40.003086>,  <38.783047, 36.881683, 40.006062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544922, 36.851898, 40.003086>,  <38.148045, 36.802258, 39.998127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544922, 36.851898, 40.003086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029209, 0.134603, 0.990469,
		0.121230, -0.983100, 0.137177,
		0.992195, 0.124081, 0.012397,
		38.842579, 36.889130, 40.006805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271542, 36.279259, 40.409763>,  <38.148045, 36.802258, 39.998127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271542, 36.279259, 40.409763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586739, 36.525101, 40.424313>,  <38.775856, 36.672607, 40.433041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586739, 36.525101, 40.424313>,  <38.271542, 36.279259, 40.409763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586739, 36.525101, 40.424313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054358, 0.010606, 0.998465,
		0.613276, -0.788763, 0.041766,
		0.787996, 0.614605, 0.036371,
		38.823139, 36.709484, 40.435223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795387, 36.061508, 40.865540>,  <38.271542, 36.279259, 40.409763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795387, 36.061508, 40.865540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881382, 36.451221, 40.838570>,  <38.932980, 36.685051, 40.822388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881382, 36.451221, 40.838570>,  <38.795387, 36.061508, 40.865540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881382, 36.451221, 40.838570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128003, 0.040332, 0.990953,
		0.968192, -0.221673, -0.116040,
		0.214988, 0.974287, -0.067424,
		38.945877, 36.743507, 40.818344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318291, 36.173759, 41.463406>,  <38.795387, 36.061508, 40.865540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318291, 36.173759, 41.463406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214859, 36.543262, 41.350407>,  <39.152802, 36.764965, 41.282608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214859, 36.543262, 41.350407>,  <39.318291, 36.173759, 41.463406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214859, 36.543262, 41.350407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000056, 0.292426, 0.956288,
		0.965990, 0.247293, -0.075563,
		-0.258580, 0.923761, -0.282494,
		39.137283, 36.820389, 41.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781296, 36.614170, 41.843941>,  <39.318291, 36.173759, 41.463406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781296, 36.614170, 41.843941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466099, 36.831692, 41.728462>,  <39.276981, 36.962204, 41.659176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466099, 36.831692, 41.728462>,  <39.781296, 36.614170, 41.843941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466099, 36.831692, 41.728462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132120, 0.308629, 0.941962,
		0.601340, 0.780403, -0.171351,
		-0.787994, 0.543800, -0.288698,
		39.229702, 36.994831, 41.641853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859203, 37.153152, 42.292961>,  <39.781296, 36.614170, 41.843941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859203, 37.153152, 42.292961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477982, 37.188736, 42.177185>,  <39.249249, 37.210087, 42.107719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477982, 37.188736, 42.177185>,  <39.859203, 37.153152, 42.292961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477982, 37.188736, 42.177185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253727, 0.287082, 0.923692,
		0.165260, 0.953767, -0.251035,
		-0.953054, 0.088955, -0.289439,
		39.192066, 37.215424, 42.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680645, 37.850594, 42.418087>,  <39.859203, 37.153152, 42.292961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680645, 37.850594, 42.418087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386024, 37.580051, 42.420803>,  <39.209251, 37.417728, 42.422432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386024, 37.580051, 42.420803>,  <39.680645, 37.850594, 42.418087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386024, 37.580051, 42.420803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146060, 0.168844, 0.974761,
		-0.660428, 0.716965, -0.223150,
		-0.736547, -0.676352, 0.006789,
		39.165062, 37.377148, 42.422840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935520, 38.168121, 42.618927>,  <39.680645, 37.850594, 42.418087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935520, 38.168121, 42.618927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974636, 37.781590, 42.714130>,  <38.998104, 37.549671, 42.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974636, 37.781590, 42.714130>,  <38.935520, 38.168121, 42.618927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974636, 37.781590, 42.714130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253179, 0.207130, 0.944985,
		-0.962465, -0.152665, -0.224400,
		0.097786, -0.966328, 0.238007,
		39.003971, 37.491692, 42.785534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288223, 37.936703, 42.933250>,  <38.935520, 38.168121, 42.618927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288223, 37.936703, 42.933250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574238, 37.688797, 43.062630>,  <38.745846, 37.540054, 43.140259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574238, 37.688797, 43.062630>,  <38.288223, 37.936703, 42.933250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574238, 37.688797, 43.062630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346535, 0.087615, 0.933936,
		-0.607159, -0.779882, -0.152122,
		0.715032, -0.619764, 0.323453,
		38.788746, 37.502869, 43.159664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124325, 37.268124, 43.139294>,  <38.288223, 37.936703, 42.933250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124325, 37.268124, 43.139294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424358, 37.427612, 43.350346>,  <38.604378, 37.523304, 43.476978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424358, 37.427612, 43.350346>,  <38.124325, 37.268124, 43.139294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424358, 37.427612, 43.350346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566748, -0.023628, 0.823553,
		0.340833, -0.916769, 0.208250,
		0.750087, 0.398719, 0.527630,
		38.649384, 37.547230, 43.508633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478447, 37.019989, 43.211624>,  <38.124325, 37.268124, 43.139294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478447, 37.019989, 43.211624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589558, 36.635746, 43.208023>,  <37.656223, 36.405201, 43.205864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589558, 36.635746, 43.208023>,  <37.478447, 37.019989, 43.211624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589558, 36.635746, 43.208023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763116, 0.214960, 0.609463,
		-0.583517, -0.176165, 0.792763,
		0.277778, -0.960603, -0.009001,
		37.672890, 36.347565, 43.205322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639141, 36.805790, 43.876282>,  <37.478447, 37.019989, 43.211624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639141, 36.805790, 43.876282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823597, 36.509834, 43.680355>,  <37.934273, 36.332260, 43.562801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823597, 36.509834, 43.680355>,  <37.639141, 36.805790, 43.876282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823597, 36.509834, 43.680355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794835, 0.099051, 0.598687,
		-0.394444, -0.665400, 0.633764,
		0.461142, -0.739886, -0.489813,
		37.961941, 36.287868, 43.533413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424389, 37.406452, 44.204212>,  <37.639141, 36.805790, 43.876282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424389, 37.406452, 44.204212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666069, 37.725132, 44.198513>,  <37.811077, 37.916340, 44.195091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666069, 37.725132, 44.198513>,  <37.424389, 37.406452, 44.204212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666069, 37.725132, 44.198513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399259, -0.287214, 0.870690,
		0.689587, -0.531764, -0.491626,
		0.604203, 0.796703, -0.014252,
		37.847328, 37.964142, 44.194237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121315, 37.189697, 44.316231>,  <37.424389, 37.406452, 44.204212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121315, 37.189697, 44.316231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113537, 37.572582, 44.431728>,  <38.108871, 37.802311, 44.501026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113537, 37.572582, 44.431728>,  <38.121315, 37.189697, 44.316231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113537, 37.572582, 44.431728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433986, -0.252093, 0.864931,
		0.900710, 0.142126, -0.410514,
		-0.019441, 0.957209, 0.288743,
		38.107704, 37.859745, 44.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603577, 37.142918, 44.868626>,  <38.121315, 37.189697, 44.316231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603577, 37.142918, 44.868626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467392, 37.514317, 44.927917>,  <38.385681, 37.737156, 44.963493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467392, 37.514317, 44.927917>,  <38.603577, 37.142918, 44.868626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467392, 37.514317, 44.927917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465422, 0.029434, 0.884599,
		0.816989, 0.370160, -0.442166,
		-0.340458, 0.928502, 0.148233,
		38.365253, 37.792866, 44.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162075, 37.556324, 45.186447>,  <38.603577, 37.142918, 44.868626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162075, 37.556324, 45.186447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812550, 37.732895, 45.268024>,  <38.602833, 37.838837, 45.316971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812550, 37.732895, 45.268024>,  <39.162075, 37.556324, 45.186447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812550, 37.732895, 45.268024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273947, 0.100384, 0.956492,
		0.401748, 0.891665, -0.208645,
		-0.873814, 0.441427, 0.203939,
		38.550404, 37.865322, 45.329205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350414, 38.101597, 45.617905>,  <39.162075, 37.556324, 45.186447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350414, 38.101597, 45.617905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960602, 38.083904, 45.705837>,  <38.726715, 38.073288, 45.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960602, 38.083904, 45.705837>,  <39.350414, 38.101597, 45.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960602, 38.083904, 45.705837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194494, 0.321180, 0.926831,
		-0.111602, 0.945985, -0.304398,
		-0.974534, -0.044233, 0.219833,
		38.668243, 38.070633, 45.771786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215828, 38.642513, 46.055771>,  <39.350414, 38.101597, 45.617905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215828, 38.642513, 46.055771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936298, 38.368267, 46.137321>,  <38.768581, 38.203720, 46.186253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936298, 38.368267, 46.137321>,  <39.215828, 38.642513, 46.055771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936298, 38.368267, 46.137321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285002, -0.005465, 0.958512,
		-0.656060, 0.727939, 0.199222,
		-0.698827, -0.685620, 0.203879,
		38.726650, 38.162582, 46.198486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934631, 38.790512, 46.687508>,  <39.215828, 38.642513, 46.055771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934631, 38.790512, 46.687508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851669, 38.405499, 46.617630>,  <38.801891, 38.174492, 46.575703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851669, 38.405499, 46.617630>,  <38.934631, 38.790512, 46.687508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851669, 38.405499, 46.617630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245478, -0.224072, 0.943150,
		-0.946954, 0.152734, 0.282754,
		-0.207408, -0.962530, -0.174693,
		38.789448, 38.116741, 46.565224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917957, 39.175571, 47.369122>,  <38.934631, 38.790512, 46.687508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917957, 39.175571, 47.369122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838326, 38.854908, 47.594585>,  <38.790546, 38.662510, 47.729866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838326, 38.854908, 47.594585>,  <38.917957, 39.175571, 47.369122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838326, 38.854908, 47.594585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191141, -0.595892, -0.779986,
		0.961163, -0.047538, 0.271857,
		-0.199076, -0.801656, 0.563663,
		38.778603, 38.614410, 47.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499523, 38.789066, 47.450920>,  <38.917957, 39.175571, 47.369122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499523, 38.789066, 47.450920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175583, 38.554413, 47.450188>,  <38.981220, 38.413620, 47.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175583, 38.554413, 47.450188>,  <39.499523, 38.789066, 47.450920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175583, 38.554413, 47.450188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413143, -0.568117, -0.711727,
		0.416486, -0.577147, 0.702453,
		-0.809847, -0.586638, -0.001832,
		38.932629, 38.378422, 47.449638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569767, 38.064362, 47.578541>,  <39.499523, 38.789066, 47.450920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569767, 38.064362, 47.578541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234375, 38.090755, 47.362167>,  <39.033142, 38.106590, 47.232346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234375, 38.090755, 47.362167>,  <39.569767, 38.064362, 47.578541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234375, 38.090755, 47.362167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377024, -0.646470, -0.663272,
		-0.393461, -0.760080, 0.517172,
		-0.838476, 0.065985, -0.540929,
		38.982834, 38.110550, 47.199890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291843, 37.387207, 47.363804>,  <39.569767, 38.064362, 47.578541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291843, 37.387207, 47.363804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133232, 37.644379, 47.101685>,  <39.038067, 37.798679, 46.944412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133232, 37.644379, 47.101685>,  <39.291843, 37.387207, 47.363804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133232, 37.644379, 47.101685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193324, -0.639325, -0.744237,
		-0.897436, -0.421795, 0.129218,
		-0.396527, 0.642925, -0.655297,
		39.014275, 37.837257, 46.905094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804657, 37.026196, 46.912571>,  <39.291843, 37.387207, 47.363804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804657, 37.026196, 46.912571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962112, 37.333290, 46.710331>,  <39.056587, 37.517548, 46.588989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962112, 37.333290, 46.710331>,  <38.804657, 37.026196, 46.912571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962112, 37.333290, 46.710331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276373, -0.623395, -0.731435,
		-0.876736, 0.148188, -0.457574,
		0.393640, 0.767736, -0.505597,
		39.080204, 37.563610, 46.558651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398632, 37.047550, 46.378426>,  <38.804657, 37.026196, 46.912571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398632, 37.047550, 46.378426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404648, 37.429543, 46.496944>,  <38.408257, 37.658737, 46.568058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404648, 37.429543, 46.496944>,  <38.398632, 37.047550, 46.378426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404648, 37.429543, 46.496944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284699, 0.288159, -0.914282,
		-0.958499, -0.070602, 0.276216,
		0.015044, 0.954976, 0.296300,
		38.409161, 37.716034, 46.585835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772892, 37.342106, 46.292721>,  <38.398632, 37.047550, 46.378426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772892, 37.342106, 46.292721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048950, 37.630711, 46.270374>,  <38.214584, 37.803875, 46.256966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048950, 37.630711, 46.270374>,  <37.772892, 37.342106, 46.292721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048950, 37.630711, 46.270374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322695, 0.237723, -0.916164,
		-0.647740, 0.650315, 0.396891,
		0.690145, 0.721511, -0.055870,
		38.255993, 37.847164, 46.253613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435249, 37.942604, 46.154854>,  <37.772892, 37.342106, 46.292721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435249, 37.942604, 46.154854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804558, 37.985428, 46.007282>,  <38.026142, 38.011120, 45.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804558, 37.985428, 46.007282>,  <37.435249, 37.942604, 46.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804558, 37.985428, 46.007282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384033, 0.233631, -0.893272,
		-0.009436, 0.966414, 0.256817,
		0.923271, 0.107055, -0.368930,
		38.081539, 38.017544, 45.896603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419624, 38.453983, 45.656277>,  <37.435249, 37.942604, 46.154854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419624, 38.453983, 45.656277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762493, 38.265167, 45.573868>,  <37.968212, 38.151878, 45.524422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762493, 38.265167, 45.573868>,  <37.419624, 38.453983, 45.656277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762493, 38.265167, 45.573868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110857, 0.221538, -0.968830,
		0.502965, 0.853289, 0.137567,
		0.857168, -0.472037, -0.206019,
		38.019642, 38.123554, 45.512062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833672, 38.878563, 45.390041>,  <37.419624, 38.453983, 45.656277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833672, 38.878563, 45.390041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979225, 38.539268, 45.236118>,  <38.066559, 38.335690, 45.143764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979225, 38.539268, 45.236118>,  <37.833672, 38.878563, 45.390041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979225, 38.539268, 45.236118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221856, 0.322311, -0.920269,
		0.904637, 0.420244, -0.070904,
		0.363885, -0.848240, -0.384808,
		38.088390, 38.284798, 45.120674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177158, 39.073486, 44.946999>,  <37.833672, 38.878563, 45.390041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177158, 39.073486, 44.946999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095467, 38.700321, 44.828362>,  <38.046452, 38.476421, 44.757179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095467, 38.700321, 44.828362>,  <38.177158, 39.073486, 44.946999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095467, 38.700321, 44.828362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056126, 0.313639, -0.947882,
		0.977313, -0.176937, -0.116415,
		-0.204228, -0.932911, -0.296593,
		38.034199, 38.420448, 44.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579216, 39.039673, 44.365696>,  <38.177158, 39.073486, 44.946999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579216, 39.039673, 44.365696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294594, 38.760883, 44.330120>,  <38.123821, 38.593609, 44.308777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294594, 38.760883, 44.330120>,  <38.579216, 39.039673, 44.365696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294594, 38.760883, 44.330120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081156, 0.207254, -0.974915,
		0.697926, -0.686490, -0.204037,
		-0.711557, -0.696977, -0.088935,
		38.081127, 38.551792, 44.303440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722771, 38.519402, 43.823486>,  <38.579216, 39.039673, 44.365696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722771, 38.519402, 43.823486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326881, 38.561714, 43.861980>,  <38.089348, 38.587101, 43.885075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326881, 38.561714, 43.861980>,  <38.722771, 38.519402, 43.823486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326881, 38.561714, 43.861980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093823, 0.027548, -0.995208,
		-0.107929, -0.994007, -0.017339,
		-0.989722, 0.105785, 0.096234,
		38.029964, 38.593449, 43.890850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327515, 38.109203, 43.979797>,  <38.722771, 38.519402, 43.823486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327515, 38.109203, 43.979797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104256, 37.781441, 44.032032>,  <38.970299, 37.584785, 44.063374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104256, 37.781441, 44.032032>,  <39.327515, 38.109203, 43.979797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104256, 37.781441, 44.032032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034124, -0.179915, -0.983090,
		0.829041, -0.544251, 0.128380,
		-0.558146, -0.819403, 0.130585,
		38.936813, 37.535622, 44.071209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678173, 37.472569, 43.751488>,  <39.327515, 38.109203, 43.979797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678173, 37.472569, 43.751488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290794, 37.374958, 43.731197>,  <39.058369, 37.316391, 43.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290794, 37.374958, 43.731197>,  <39.678173, 37.472569, 43.751488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290794, 37.374958, 43.731197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130815, -0.324400, -0.936831,
		0.212150, -0.913902, 0.346085,
		-0.968442, -0.244022, -0.050730,
		39.000263, 37.301750, 43.715977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604187, 36.611122, 43.583466>,  <39.678173, 37.472569, 43.751488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604187, 36.611122, 43.583466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330982, 36.869900, 43.447845>,  <39.167057, 37.025166, 43.366474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330982, 36.869900, 43.447845>,  <39.604187, 36.611122, 43.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330982, 36.869900, 43.447845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173512, -0.307189, -0.935697,
		-0.709495, -0.697925, 0.097562,
		-0.683016, 0.646944, -0.339047,
		39.126076, 37.063984, 43.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240776, 36.258224, 43.055397>,  <39.604187, 36.611122, 43.583466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240776, 36.258224, 43.055397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170341, 36.644047, 42.976776>,  <39.128082, 36.875538, 42.929604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170341, 36.644047, 42.976776>,  <39.240776, 36.258224, 43.055397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170341, 36.644047, 42.976776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225354, -0.154873, -0.961889,
		-0.958232, -0.213671, -0.190094,
		-0.176087, 0.964551, -0.196556,
		39.117516, 36.933411, 42.917809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615761, 36.578278, 42.842564>,  <39.240776, 36.258224, 43.055397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615761, 36.578278, 42.842564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611710, 36.977776, 42.822945>,  <38.609280, 37.217476, 42.811172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611710, 36.977776, 42.822945>,  <38.615761, 36.578278, 42.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611710, 36.977776, 42.822945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029416, -0.048728, -0.998379,
		-0.999516, -0.011557, -0.028886,
		-0.010131, 0.998745, -0.049044,
		38.608669, 37.277401, 42.808231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064236, 36.792530, 42.403721>,  <38.615761, 36.578278, 42.842564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064236, 36.792530, 42.403721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383247, 37.032845, 42.381771>,  <38.574654, 37.177032, 42.368603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383247, 37.032845, 42.381771>,  <38.064236, 36.792530, 42.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383247, 37.032845, 42.381771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035529, -0.137572, -0.989854,
		-0.602235, 0.787487, -0.131063,
		0.797528, 0.600782, -0.054872,
		38.622505, 37.213078, 42.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920341, 37.111378, 41.836723>,  <38.064236, 36.792530, 42.403721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920341, 37.111378, 41.836723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312843, 37.124050, 41.912754>,  <38.548344, 37.131653, 41.958370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312843, 37.124050, 41.912754>,  <37.920341, 37.111378, 41.836723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312843, 37.124050, 41.912754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191461, -0.048755, -0.980289,
		-0.021787, 0.998308, -0.053906,
		0.981258, 0.031679, 0.190075,
		38.607220, 37.133553, 41.969776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282822, 37.728794, 41.443146>,  <37.920341, 37.111378, 41.836723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282822, 37.728794, 41.443146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543320, 37.435631, 41.521858>,  <38.699619, 37.259731, 41.569084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543320, 37.435631, 41.521858>,  <38.282822, 37.728794, 41.443146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543320, 37.435631, 41.521858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325390, 0.035432, -0.944916,
		0.685563, 0.679406, 0.261556,
		0.651248, -0.732907, 0.196781,
		38.738693, 37.215759, 41.580894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777096, 37.969269, 40.913006>,  <38.282822, 37.728794, 41.443146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777096, 37.969269, 40.913006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894016, 37.598766, 41.008179>,  <38.964169, 37.376465, 41.065281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894016, 37.598766, 41.008179>,  <38.777096, 37.969269, 40.913006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894016, 37.598766, 41.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333856, -0.134310, -0.933007,
		0.896158, 0.352155, 0.269976,
		0.292303, -0.926255, 0.237932,
		38.981709, 37.320889, 41.079559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387978, 37.894722, 40.543152>,  <38.777096, 37.969269, 40.913006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387978, 37.894722, 40.543152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271225, 37.526192, 40.645885>,  <39.201172, 37.305073, 40.707523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271225, 37.526192, 40.645885>,  <39.387978, 37.894722, 40.543152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271225, 37.526192, 40.645885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283717, -0.339841, -0.896667,
		0.913405, -0.188854, 0.360589,
		-0.291882, -0.921326, 0.256832,
		39.183659, 37.249794, 40.722935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921677, 37.469151, 40.254120>,  <39.387978, 37.894722, 40.543152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921677, 37.469151, 40.254120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601364, 37.239861, 40.323582>,  <39.409176, 37.102287, 40.365257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601364, 37.239861, 40.323582>,  <39.921677, 37.469151, 40.254120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601364, 37.239861, 40.323582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091037, -0.403044, -0.910642,
		0.591994, -0.713418, 0.374936,
		-0.800784, -0.573228, 0.173652,
		39.361130, 37.067894, 40.375679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131435, 36.872353, 40.000244>,  <39.921677, 37.469151, 40.254120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131435, 36.872353, 40.000244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731876, 36.854244, 40.005062>,  <39.492142, 36.843380, 40.007954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731876, 36.854244, 40.005062>,  <40.131435, 36.872353, 40.000244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731876, 36.854244, 40.005062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005172, -0.362189, -0.932090,
		0.046558, -0.931005, 0.362025,
		-0.998902, -0.045269, 0.012048,
		39.432205, 36.840664, 40.008675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958168, 36.164501, 39.778225>,  <40.131435, 36.872353, 40.000244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958168, 36.164501, 39.778225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653702, 36.409229, 39.692154>,  <39.471024, 36.556068, 39.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653702, 36.409229, 39.692154>,  <39.958168, 36.164501, 39.778225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653702, 36.409229, 39.692154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125625, -0.464576, -0.876577,
		-0.636274, -0.640189, 0.430480,
		-0.761166, 0.611823, -0.215174,
		39.425350, 36.592777, 39.627602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505173, 35.691303, 39.548145>,  <39.958168, 36.164501, 39.778225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505173, 35.691303, 39.548145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639027, 35.474190, 39.240013>,  <40.719341, 35.343922, 39.055134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639027, 35.474190, 39.240013>,  <40.505173, 35.691303, 39.548145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639027, 35.474190, 39.240013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124125, 0.784947, -0.607002,
		0.934136, 0.298743, 0.195300,
		0.334638, -0.542781, -0.770329,
		40.739418, 35.311356, 39.008915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944801, 36.116390, 39.213463>,  <40.505173, 35.691303, 39.548145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944801, 36.116390, 39.213463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823399, 35.841152, 38.949825>,  <40.750557, 35.676010, 38.791641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823399, 35.841152, 38.949825>,  <40.944801, 36.116390, 39.213463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823399, 35.841152, 38.949825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165848, 0.719317, -0.674594,
		0.938285, -0.095432, -0.332435,
		-0.303504, -0.688096, -0.659097,
		40.732346, 35.634724, 38.752094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248432, 36.345669, 38.503933>,  <40.944801, 36.116390, 39.213463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248432, 36.345669, 38.503933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904449, 36.141796, 38.493340>,  <40.698059, 36.019474, 38.486984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904449, 36.141796, 38.493340>,  <41.248432, 36.345669, 38.503933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904449, 36.141796, 38.493340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348407, 0.624185, -0.699289,
		0.372947, -0.592129, -0.714348,
		-0.859955, -0.509681, -0.026486,
		40.646461, 35.988892, 38.485394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686653, 36.190838, 37.893936>,  <41.248432, 36.345669, 38.503933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686653, 36.190838, 37.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822277, 36.255173, 38.264702>,  <41.903652, 36.293774, 38.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822277, 36.255173, 38.264702>,  <41.686653, 36.190838, 37.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822277, 36.255173, 38.264702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889117, 0.267183, -0.371597,
		-0.307423, 0.950128, -0.052416,
		0.339060, 0.160841, 0.926913,
		41.923996, 36.303425, 38.542774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795177, 36.880318, 38.025101>,  <41.686653, 36.190838, 37.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795177, 36.880318, 38.025101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043556, 36.617477, 38.196049>,  <42.192585, 36.459774, 38.298618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043556, 36.617477, 38.196049>,  <41.795177, 36.880318, 38.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043556, 36.617477, 38.196049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745459, 0.326498, -0.581111,
		0.242312, 0.679427, 0.692578,
		0.620948, -0.657099, 0.427370,
		42.229839, 36.420349, 38.324261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365005, 37.231968, 38.361973>,  <41.795177, 36.880318, 38.025101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365005, 37.231968, 38.361973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485325, 36.858803, 38.282784>,  <42.557514, 36.634903, 38.235268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485325, 36.858803, 38.282784>,  <42.365005, 37.231968, 38.361973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485325, 36.858803, 38.282784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823272, 0.358791, -0.439878,
		0.481400, -0.030676, 0.875964,
		0.300794, -0.932914, -0.197977,
		42.575562, 36.578930, 38.223389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011593, 37.020512, 38.647049>,  <42.365005, 37.231968, 38.361973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011593, 37.020512, 38.647049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951199, 36.807178, 38.314121>,  <42.914963, 36.679180, 38.114365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951199, 36.807178, 38.314121>,  <43.011593, 37.020512, 38.647049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951199, 36.807178, 38.314121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830727, 0.387915, -0.399267,
		0.535812, -0.751718, 0.384481,
		-0.150990, -0.533331, -0.832322,
		42.905903, 36.647179, 38.064426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617970, 36.492718, 38.440636>,  <43.011593, 37.020512, 38.647049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617970, 36.492718, 38.440636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402763, 36.617218, 38.127289>,  <43.273640, 36.691917, 37.939281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402763, 36.617218, 38.127289>,  <43.617970, 36.492718, 38.440636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402763, 36.617218, 38.127289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840676, 0.266092, -0.471656,
		0.061645, -0.912315, -0.404821,
		-0.538019, 0.311248, -0.783365,
		43.241356, 36.710594, 37.892281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755917, 36.059940, 37.771946>,  <43.617970, 36.492718, 38.440636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755917, 36.059940, 37.771946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661827, 36.444946, 37.717941>,  <43.605373, 36.675949, 37.685539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661827, 36.444946, 37.717941>,  <43.755917, 36.059940, 37.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661827, 36.444946, 37.717941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775309, 0.102044, -0.623284,
		-0.586146, -0.251284, -0.770253,
		-0.235221, 0.962519, -0.135010,
		43.591259, 36.733704, 37.677437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686771, 36.332008, 36.972351>,  <43.755917, 36.059940, 37.771946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686771, 36.332008, 36.972351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777424, 36.633102, 37.219585>,  <43.831818, 36.813759, 37.367928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777424, 36.633102, 37.219585>,  <43.686771, 36.332008, 36.972351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777424, 36.633102, 37.219585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779863, 0.239922, -0.578144,
		-0.583481, 0.613049, -0.532654,
		0.226635, 0.752734, 0.618085,
		43.845413, 36.858921, 37.405010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645748, 36.994301, 36.694782>,  <43.686771, 36.332008, 36.972351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645748, 36.994301, 36.694782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943211, 37.022266, 36.960743>,  <44.121689, 37.039047, 37.120319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943211, 37.022266, 36.960743>,  <43.645748, 36.994301, 36.694782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943211, 37.022266, 36.960743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652796, 0.138786, -0.744712,
		-0.144343, 0.987852, 0.057570,
		0.743655, 0.069913, 0.664898,
		44.166306, 37.043240, 37.160213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157230, 37.449505, 36.367210>,  <43.645748, 36.994301, 36.694782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157230, 37.449505, 36.367210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322487, 37.223106, 36.652576>,  <44.421642, 37.087269, 36.823795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322487, 37.223106, 36.652576>,  <44.157230, 37.449505, 36.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322487, 37.223106, 36.652576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838325, -0.069614, -0.540708,
		0.355700, 0.821466, 0.445725,
		0.413145, -0.565992, 0.713417,
		44.446430, 37.053310, 36.866600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883568, 37.674911, 36.620583>,  <44.157230, 37.449505, 36.367210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883568, 37.674911, 36.620583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804440, 37.282909, 36.612030>,  <44.756962, 37.047707, 36.606899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804440, 37.282909, 36.612030>,  <44.883568, 37.674911, 36.620583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804440, 37.282909, 36.612030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874971, -0.166703, -0.454572,
		0.441919, -0.108630, 0.890453,
		-0.197821, -0.980005, -0.021379,
		44.745094, 36.988907, 36.605618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424690, 37.168941, 37.050652>,  <44.883568, 37.674911, 36.620583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424690, 37.168941, 37.050652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261715, 37.015476, 36.719158>,  <45.163929, 36.923397, 36.520264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261715, 37.015476, 36.719158>,  <45.424690, 37.168941, 37.050652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261715, 37.015476, 36.719158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913154, -0.159112, -0.375278,
		0.012120, -0.909662, 0.415172,
		-0.407435, -0.383664, -0.828733,
		45.139484, 36.900375, 36.470539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940548, 36.807541, 36.753391>,  <45.424690, 37.168941, 37.050652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940548, 36.807541, 36.753391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665356, 36.754433, 36.468002>,  <45.500240, 36.722569, 36.296768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665356, 36.754433, 36.468002>,  <45.940548, 36.807541, 36.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665356, 36.754433, 36.468002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724411, -0.184781, -0.664142,
		-0.043655, -0.973769, 0.223311,
		-0.687985, -0.132776, -0.713476,
		45.458961, 36.714600, 36.253960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098179, 36.239281, 36.273491>,  <45.940548, 36.807541, 36.753391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098179, 36.239281, 36.273491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867619, 36.500484, 36.076984>,  <45.729282, 36.657207, 35.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867619, 36.500484, 36.076984>,  <46.098179, 36.239281, 36.273491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867619, 36.500484, 36.076984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645215, -0.005229, -0.763983,
		-0.501459, -0.757329, -0.418319,
		-0.576400, 0.653012, -0.491262,
		45.694698, 36.696388, 35.929607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042305, 35.961067, 35.595104>,  <46.098179, 36.239281, 36.273491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042305, 35.961067, 35.595104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068462, 36.359852, 35.612057>,  <46.084156, 36.599121, 35.622231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068462, 36.359852, 35.612057>,  <46.042305, 35.961067, 35.595104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068462, 36.359852, 35.612057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718549, -0.017572, -0.695254,
		-0.692395, 0.075920, -0.717514,
		0.065392, 0.996959, 0.042385,
		46.088081, 36.658939, 35.624771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730980, 36.065201, 35.618053>,  <46.042305, 35.961067, 35.595104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730980, 36.065201, 35.618053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640190, 35.776939, 35.356018>,  <46.585716, 35.603981, 35.198795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640190, 35.776939, 35.356018>,  <46.730980, 36.065201, 35.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640190, 35.776939, 35.356018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970112, -0.108022, -0.217288,
		0.085825, -0.684828, 0.723633,
		-0.226974, -0.720654, -0.655089,
		46.572098, 35.560741, 35.159492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091877, 35.442566, 35.853924>,  <46.730980, 36.065201, 35.618053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091877, 35.442566, 35.853924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039398, 35.501823, 35.461834>,  <47.007912, 35.537376, 35.226582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039398, 35.501823, 35.461834>,  <47.091877, 35.442566, 35.853924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039398, 35.501823, 35.461834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961291, -0.222654, -0.162311,
		-0.242297, -0.963576, -0.113197,
		-0.131195, 0.148143, -0.980225,
		47.000038, 35.546268, 35.167767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225082, 34.898918, 35.449158>,  <47.091877, 35.442566, 35.853924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225082, 34.898918, 35.449158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299187, 35.250721, 35.273819>,  <47.343647, 35.461803, 35.168617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299187, 35.250721, 35.273819>,  <47.225082, 34.898918, 35.449158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.299187, 35.250721, 35.273819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968031, -0.240092, -0.072606,
		-0.169102, -0.410884, -0.895868,
		0.185258, 0.879506, -0.438348,
		47.354763, 35.514572, 35.142315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634087, 34.784435, 34.878914>,  <47.225082, 34.898918, 35.449158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634087, 34.784435, 34.878914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700233, 35.155170, 35.013752>,  <47.739922, 35.377609, 35.094654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700233, 35.155170, 35.013752>,  <47.634087, 34.784435, 34.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700233, 35.155170, 35.013752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984555, -0.175065, -0.001656,
		0.057479, 0.332163, -0.941469,
		0.165368, 0.926833, 0.337095,
		47.749844, 35.433220, 35.114880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.519569, 32.104713, 30.925978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175919, 32.243725, 30.775715>,  <36.969727, 32.327133, 30.685558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175919, 32.243725, 30.775715>,  <37.519569, 32.104713, 30.925978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175919, 32.243725, 30.775715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371336, 0.081764, 0.924891,
		0.352143, 0.934097, 0.058804,
		-0.859130, 0.347531, -0.375656,
		36.918179, 32.347984, 30.663017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378025, 32.754089, 31.304365>,  <37.519569, 32.104713, 30.925978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378025, 32.754089, 31.304365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032291, 32.611450, 31.162510>,  <36.824852, 32.525867, 31.077396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032291, 32.611450, 31.162510>,  <37.378025, 32.754089, 31.304365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032291, 32.611450, 31.162510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443706, 0.208731, 0.871526,
		-0.236760, 0.910643, -0.338637,
		-0.864332, -0.356598, -0.354638,
		36.772991, 32.504471, 31.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858643, 33.187065, 31.471851>,  <37.378025, 32.754089, 31.304365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858643, 33.187065, 31.471851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624283, 32.871803, 31.396446>,  <36.483665, 32.682648, 31.351204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624283, 32.871803, 31.396446>,  <36.858643, 33.187065, 31.471851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624283, 32.871803, 31.396446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486877, 0.156395, 0.859355,
		-0.647820, 0.595279, -0.475365,
		-0.585900, -0.788152, -0.188512,
		36.448513, 32.635357, 31.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117943, 33.429829, 31.445728>,  <36.858643, 33.187065, 31.471851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117943, 33.429829, 31.445728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153870, 33.042816, 31.540226>,  <36.175426, 32.810608, 31.596924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153870, 33.042816, 31.540226>,  <36.117943, 33.429829, 31.445728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153870, 33.042816, 31.540226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342884, 0.192663, 0.919408,
		-0.935074, -0.163578, -0.314449,
		0.089812, -0.967535, 0.236242,
		36.180813, 32.752556, 31.611099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494549, 33.179634, 31.869904>,  <36.117943, 33.429829, 31.445728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494549, 33.179634, 31.869904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792027, 32.930538, 31.967150>,  <35.970512, 32.781078, 32.025497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792027, 32.930538, 31.967150>,  <35.494549, 33.179634, 31.869904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792027, 32.930538, 31.967150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293395, 0.022727, 0.955721,
		-0.600695, -0.782095, -0.165808,
		0.743697, -0.622744, 0.243114,
		36.015137, 32.743713, 32.040085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173492, 32.824074, 32.423309>,  <35.494549, 33.179634, 31.869904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173492, 32.824074, 32.423309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556702, 32.717129, 32.464703>,  <35.786629, 32.652962, 32.489540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556702, 32.717129, 32.464703>,  <35.173492, 32.824074, 32.423309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556702, 32.717129, 32.464703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061196, 0.161941, 0.984901,
		-0.280083, -0.949891, 0.138782,
		0.958023, -0.267361, 0.103487,
		35.844109, 32.636921, 32.495750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247047, 32.253628, 32.934906>,  <35.173492, 32.824074, 32.423309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247047, 32.253628, 32.934906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608704, 32.423141, 32.913219>,  <35.825695, 32.524849, 32.900208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.608704, 32.423141, 32.913219>,  <35.247047, 32.253628, 32.934906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608704, 32.423141, 32.913219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006640, 0.140826, 0.990012,
		0.427189, -0.894748, 0.130140,
		0.904139, 0.423786, -0.054218,
		35.879944, 32.550278, 32.896954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554798, 32.131672, 33.631630>,  <35.247047, 32.253628, 32.934906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554798, 32.131672, 33.631630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792736, 32.425606, 33.501293>,  <35.935501, 32.601967, 33.423092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792736, 32.425606, 33.501293>,  <35.554798, 32.131672, 33.631630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792736, 32.425606, 33.501293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033577, 0.427718, 0.903288,
		0.803136, -0.526379, 0.279101,
		0.594848, 0.734835, -0.325841,
		35.971191, 32.646057, 33.403542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112427, 32.169395, 34.198803>,  <35.554798, 32.131672, 33.631630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112427, 32.169395, 34.198803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083069, 32.512695, 33.995621>,  <36.065453, 32.718678, 33.873711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083069, 32.512695, 33.995621>,  <36.112427, 32.169395, 34.198803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083069, 32.512695, 33.995621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073185, 0.512588, 0.855510,
		0.994614, 0.025619, -0.100434,
		-0.073398, 0.858253, -0.507952,
		36.061050, 32.770172, 33.843235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480549, 32.563305, 34.557354>,  <36.112427, 32.169395, 34.198803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480549, 32.563305, 34.557354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264210, 32.811131, 34.329803>,  <36.134407, 32.959827, 34.193272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264210, 32.811131, 34.329803>,  <36.480549, 32.563305, 34.557354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264210, 32.811131, 34.329803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263623, 0.517392, 0.814130,
		0.798742, 0.590288, -0.116497,
		-0.540846, 0.619569, -0.568876,
		36.101955, 32.997002, 34.159142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790203, 33.264053, 34.624561>,  <36.480549, 32.563305, 34.557354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790203, 33.264053, 34.624561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408600, 33.274014, 34.505062>,  <36.179638, 33.279991, 34.433361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408600, 33.274014, 34.505062>,  <36.790203, 33.264053, 34.624561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408600, 33.274014, 34.505062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264453, 0.399453, 0.877782,
		0.141197, 0.916415, -0.374494,
		-0.954006, 0.024904, -0.298751,
		36.122398, 33.281487, 34.415436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658348, 33.849648, 34.746094>,  <36.790203, 33.264053, 34.624561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658348, 33.849648, 34.746094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305992, 33.660721, 34.758419>,  <36.094578, 33.547363, 34.765816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305992, 33.660721, 34.758419>,  <36.658348, 33.849648, 34.746094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305992, 33.660721, 34.758419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123178, 0.291623, 0.948569,
		-0.457011, 0.831790, -0.315066,
		-0.880891, -0.472315, 0.030817,
		36.041725, 33.519028, 34.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356937, 34.290638, 35.089516>,  <36.658348, 33.849648, 34.746094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356937, 34.290638, 35.089516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130802, 33.962688, 35.125748>,  <35.995121, 33.765919, 35.147488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130802, 33.962688, 35.125748>,  <36.356937, 34.290638, 35.089516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130802, 33.962688, 35.125748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213218, 0.251324, 0.944126,
		-0.796829, 0.514434, -0.316894,
		-0.565334, -0.819874, 0.090576,
		35.961201, 33.716724, 35.152920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799038, 34.585743, 35.471100>,  <36.356937, 34.290638, 35.089516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799038, 34.585743, 35.471100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804298, 34.188583, 35.518394>,  <35.807453, 33.950287, 35.546772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804298, 34.188583, 35.518394>,  <35.799038, 34.585743, 35.471100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804298, 34.188583, 35.518394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137048, 0.115338, 0.983827,
		-0.990477, -0.029143, -0.134558,
		0.013152, -0.992899, 0.118233,
		35.808243, 33.890713, 35.553864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226009, 34.443810, 35.902920>,  <35.799038, 34.585743, 35.471100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226009, 34.443810, 35.902920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481213, 34.141335, 35.961071>,  <35.634335, 33.959850, 35.995964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481213, 34.141335, 35.961071>,  <35.226009, 34.443810, 35.902920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481213, 34.141335, 35.961071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142089, 0.069948, 0.987379,
		-0.756808, -0.650611, -0.062818,
		0.638006, -0.756183, 0.145382,
		35.672615, 33.914478, 36.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978436, 34.099396, 36.454067>,  <35.226009, 34.443810, 35.902920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978436, 34.099396, 36.454067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359913, 33.981079, 36.432232>,  <35.588799, 33.910088, 36.419132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359913, 33.981079, 36.432232>,  <34.978436, 34.099396, 36.454067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359913, 33.981079, 36.432232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060373, 0.010449, 0.998121,
		-0.294666, -0.955195, 0.027823,
		0.953691, -0.295792, -0.054589,
		35.646019, 33.892342, 36.415855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065338, 33.520805, 36.989624>,  <34.978436, 34.099396, 36.454067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065338, 33.520805, 36.989624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438702, 33.633293, 36.900482>,  <35.662720, 33.700787, 36.846996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438702, 33.633293, 36.900482>,  <35.065338, 33.520805, 36.989624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438702, 33.633293, 36.900482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262357, -0.111201, 0.958542,
		0.244778, -0.953179, -0.177575,
		0.933409, 0.281218, -0.222853,
		35.718723, 33.717659, 36.833626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416912, 33.085117, 37.362259>,  <35.065338, 33.520805, 36.989624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416912, 33.085117, 37.362259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697289, 33.355648, 37.271687>,  <35.865513, 33.517967, 37.217342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697289, 33.355648, 37.271687>,  <35.416912, 33.085117, 37.362259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697289, 33.355648, 37.271687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482564, -0.215946, 0.848822,
		0.525184, -0.704238, -0.477735,
		0.700937, 0.676326, -0.226429,
		35.907570, 33.558544, 37.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122456, 32.752487, 37.377228>,  <35.416912, 33.085117, 37.362259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122456, 32.752487, 37.377228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160046, 33.148659, 37.417660>,  <36.182598, 33.386360, 37.441921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160046, 33.148659, 37.417660>,  <36.122456, 32.752487, 37.377228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160046, 33.148659, 37.417660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517580, -0.135335, 0.844864,
		0.850459, -0.027076, -0.525344,
		0.093973, 0.990430, 0.101083,
		36.188236, 33.445789, 37.447983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773026, 32.837200, 37.751297>,  <36.122456, 32.752487, 37.377228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773026, 32.837200, 37.751297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580280, 33.182510, 37.811371>,  <36.464634, 33.389698, 37.847416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580280, 33.182510, 37.811371>,  <36.773026, 32.837200, 37.751297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580280, 33.182510, 37.811371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524186, 0.146645, 0.838883,
		0.702166, 0.482952, -0.523182,
		-0.481862, 0.863280, 0.150188,
		36.435722, 33.441494, 37.856426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335995, 33.336517, 37.856384>,  <36.773026, 32.837200, 37.751297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335995, 33.336517, 37.856384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992992, 33.478630, 38.005226>,  <36.787189, 33.563896, 38.094532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992992, 33.478630, 38.005226>,  <37.335995, 33.336517, 37.856384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992992, 33.478630, 38.005226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413186, 0.044644, 0.909552,
		0.306533, 0.933693, -0.185079,
		-0.857505, 0.355280, 0.372104,
		36.735741, 33.585213, 38.116856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434689, 33.999592, 38.254711>,  <37.335995, 33.336517, 37.856384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434689, 33.999592, 38.254711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109116, 33.808746, 38.387302>,  <36.913773, 33.694241, 38.466858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109116, 33.808746, 38.387302>,  <37.434689, 33.999592, 38.254711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109116, 33.808746, 38.387302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368203, 0.017688, 0.929577,
		-0.449376, 0.878664, 0.161277,
		-0.813933, -0.477112, 0.331476,
		36.864937, 33.665611, 38.486744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670094, 34.583241, 38.730736>,  <37.434689, 33.999592, 38.254711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670094, 34.583241, 38.730736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036034, 34.567337, 38.891468>,  <38.255596, 34.557796, 38.987907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.036034, 34.567337, 38.891468>,  <37.670094, 34.583241, 38.730736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036034, 34.567337, 38.891468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341043, -0.456730, -0.821637,
		0.216195, 0.888717, -0.404280,
		0.914849, -0.039757, 0.401833,
		38.310490, 34.555408, 39.012016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076321, 34.915501, 38.295128>,  <37.670094, 34.583241, 38.730736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076321, 34.915501, 38.295128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285622, 34.654144, 38.513954>,  <38.411201, 34.497330, 38.645252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285622, 34.654144, 38.513954>,  <38.076321, 34.915501, 38.295128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285622, 34.654144, 38.513954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227486, -0.511571, -0.828580,
		0.821255, 0.558005, -0.119042,
		0.523250, -0.653395, 0.547069,
		38.442596, 34.458126, 38.678074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658184, 34.958263, 38.007305>,  <38.076321, 34.915501, 38.295128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658184, 34.958263, 38.007305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674179, 34.618561, 38.217892>,  <38.683777, 34.414742, 38.344246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674179, 34.618561, 38.217892>,  <38.658184, 34.958263, 38.007305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674179, 34.618561, 38.217892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412870, -0.465766, -0.782688,
		0.909912, 0.248658, 0.332008,
		0.039983, -0.849253, 0.526470,
		38.686172, 34.363785, 38.375832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389988, 34.636993, 37.753986>,  <38.658184, 34.958263, 38.007305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389988, 34.636993, 37.753986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171288, 34.351841, 37.929649>,  <39.040066, 34.180748, 38.035046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171288, 34.351841, 37.929649>,  <39.389988, 34.636993, 37.753986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171288, 34.351841, 37.929649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200937, -0.620882, -0.757714,
		0.812824, -0.326042, 0.482715,
		-0.546755, -0.712883, 0.439154,
		39.007259, 34.137978, 38.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792484, 34.024471, 37.738873>,  <39.389988, 34.636993, 37.753986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792484, 34.024471, 37.738873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410110, 33.909790, 37.764141>,  <39.180687, 33.840981, 37.779305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410110, 33.909790, 37.764141>,  <39.792484, 34.024471, 37.738873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410110, 33.909790, 37.764141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150162, -0.662406, -0.733941,
		0.252268, -0.692114, 0.676269,
		-0.955935, -0.286700, 0.063174,
		39.123329, 33.823780, 37.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760242, 33.293186, 37.779236>,  <39.792484, 34.024471, 37.738873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760242, 33.293186, 37.779236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393036, 33.380959, 37.647114>,  <39.172714, 33.433620, 37.567841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393036, 33.380959, 37.647114>,  <39.760242, 33.293186, 37.779236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393036, 33.380959, 37.647114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118894, -0.642326, -0.757154,
		-0.378307, -0.734348, 0.563575,
		-0.918013, 0.219431, -0.330306,
		39.117634, 33.446789, 37.548023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520561, 32.637760, 37.457432>,  <39.760242, 33.293186, 37.779236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520561, 32.637760, 37.457432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287350, 32.939407, 37.336514>,  <39.147423, 33.120396, 37.263962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287350, 32.939407, 37.336514>,  <39.520561, 32.637760, 37.457432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287350, 32.939407, 37.336514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003876, -0.369488, -0.929228,
		-0.812442, -0.542938, 0.212499,
		-0.583029, 0.754120, -0.302292,
		39.112442, 33.165642, 37.245827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998566, 32.322479, 37.167793>,  <39.520561, 32.637760, 37.457432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998566, 32.322479, 37.167793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967529, 32.687794, 37.007847>,  <38.948906, 32.906982, 36.911880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967529, 32.687794, 37.007847>,  <38.998566, 32.322479, 37.167793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967529, 32.687794, 37.007847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046278, -0.403939, -0.913615,
		-0.995911, -0.052384, 0.073607,
		-0.077591, 0.913285, -0.399863,
		38.944252, 32.961781, 36.887890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613319, 32.278866, 36.651337>,  <38.998566, 32.322479, 37.167793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613319, 32.278866, 36.651337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805424, 32.613853, 36.547035>,  <38.920685, 32.814846, 36.484455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805424, 32.613853, 36.547035>,  <38.613319, 32.278866, 36.651337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805424, 32.613853, 36.547035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009353, -0.302152, -0.953214,
		-0.877077, 0.455350, -0.152944,
		0.480258, 0.837472, -0.260752,
		38.949501, 32.865097, 36.468811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310642, 32.520569, 36.050674>,  <38.613319, 32.278866, 36.651337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310642, 32.520569, 36.050674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673492, 32.688885, 36.047665>,  <38.891205, 32.789875, 36.045856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673492, 32.688885, 36.047665>,  <38.310642, 32.520569, 36.050674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673492, 32.688885, 36.047665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029558, -0.081543, -0.996232,
		-0.419815, 0.903487, -0.086407,
		0.907128, 0.420787, -0.007527,
		38.945629, 32.815121, 36.045406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250988, 33.053711, 35.674629>,  <38.310642, 32.520569, 36.050674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250988, 33.053711, 35.674629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646778, 33.000755, 35.651287>,  <38.884254, 32.968983, 35.637283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646778, 33.000755, 35.651287>,  <38.250988, 33.053711, 35.674629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646778, 33.000755, 35.651287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044257, 0.107049, -0.993268,
		0.137743, 0.985400, 0.100064,
		0.989479, -0.132387, -0.058357,
		38.943623, 32.961040, 35.633781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498505, 33.571075, 35.193676>,  <38.250988, 33.053711, 35.674629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498505, 33.571075, 35.193676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799416, 33.307590, 35.199047>,  <38.979961, 33.149502, 35.202271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799416, 33.307590, 35.199047>,  <38.498505, 33.571075, 35.193676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799416, 33.307590, 35.199047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175589, 0.180811, -0.967717,
		0.635017, 0.730349, 0.251682,
		0.752277, -0.658710, 0.013423,
		39.025101, 33.109978, 35.203075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956867, 33.867405, 34.740334>,  <38.498505, 33.571075, 35.193676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956867, 33.867405, 34.740334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087311, 33.490009, 34.763939>,  <39.165577, 33.263573, 34.778103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087311, 33.490009, 34.763939>,  <38.956867, 33.867405, 34.740334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087311, 33.490009, 34.763939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255674, 0.027924, -0.966360,
		0.910102, 0.330225, 0.250332,
		0.326106, -0.943489, 0.059016,
		39.185143, 33.206963, 34.781643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692383, 33.841652, 34.510658>,  <38.956867, 33.867405, 34.740334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692383, 33.841652, 34.510658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520016, 33.483368, 34.466808>,  <39.416595, 33.268398, 34.440498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520016, 33.483368, 34.466808>,  <39.692383, 33.841652, 34.510658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520016, 33.483368, 34.466808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268788, -0.011438, -0.963132,
		0.861431, -0.444494, 0.245685,
		-0.430917, -0.895709, -0.109621,
		39.390739, 33.214657, 34.433922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071358, 33.540329, 33.981689>,  <39.692383, 33.841652, 34.510658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071358, 33.540329, 33.981689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756031, 33.295654, 34.008194>,  <39.566833, 33.148849, 34.024097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756031, 33.295654, 34.008194>,  <40.071358, 33.540329, 33.981689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756031, 33.295654, 34.008194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013487, -0.124850, -0.992084,
		0.615122, -0.781182, 0.106671,
		-0.788316, -0.611692, 0.066262,
		39.519535, 33.112148, 34.028072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283871, 32.878883, 33.780674>,  <40.071358, 33.540329, 33.981689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283871, 32.878883, 33.780674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894962, 32.931137, 33.703079>,  <39.661617, 32.962490, 33.656521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894962, 32.931137, 33.703079>,  <40.283871, 32.878883, 33.780674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894962, 32.931137, 33.703079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138821, -0.345176, -0.928215,
		-0.188212, -0.929403, 0.317469,
		-0.972268, 0.130629, -0.193987,
		39.603283, 32.970325, 33.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273380, 32.474987, 33.242214>,  <40.283871, 32.878883, 33.780674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273380, 32.474987, 33.242214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913074, 32.646538, 33.214848>,  <39.696892, 32.749470, 33.198429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913074, 32.646538, 33.214848>,  <40.273380, 32.474987, 33.242214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913074, 32.646538, 33.214848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102489, 0.056842, -0.993109,
		-0.422037, -0.901571, -0.095157,
		-0.900767, 0.428881, -0.068412,
		39.642845, 32.775204, 33.194324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688683, 31.981924, 32.921944>,  <40.273380, 32.474987, 33.242214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688683, 31.981924, 32.921944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.582321, 32.365250, 32.880123>,  <39.518505, 32.595245, 32.855030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.582321, 32.365250, 32.880123>,  <39.688683, 31.981924, 32.921944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582321, 32.365250, 32.880123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012917, -0.111990, -0.993625,
		-0.963914, -0.262856, 0.042156,
		-0.265902, 0.958314, -0.104553,
		39.502552, 32.652744, 32.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.596798, 32.008736, 32.413719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874134, 32.296772, 32.402821>,  <39.040535, 32.469593, 32.396282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874134, 32.296772, 32.402821>,  <38.596798, 32.008736, 32.413719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874134, 32.296772, 32.402821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260948, 0.215654, -0.940957,
		-0.671700, 0.659515, 0.337429,
		0.693343, 0.720092, -0.027244,
		39.082138, 32.512798, 32.394646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219395, 32.322197, 32.087521>,  <38.596798, 32.008736, 32.413719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219395, 32.322197, 32.087521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581936, 32.490932, 32.077972>,  <38.799461, 32.592175, 32.072243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581936, 32.490932, 32.077972>,  <38.219395, 32.322197, 32.087521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581936, 32.490932, 32.077972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158327, 0.286712, -0.944843,
		-0.391727, 0.860144, 0.326652,
		0.906357, 0.421839, -0.023871,
		38.853844, 32.617485, 32.070812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208199, 32.930767, 31.691544>,  <38.219395, 32.322197, 32.087521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208199, 32.930767, 31.691544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598270, 32.843216, 31.678221>,  <38.832314, 32.790688, 31.670227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598270, 32.843216, 31.678221>,  <38.208199, 32.930767, 31.691544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598270, 32.843216, 31.678221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002732, 0.162322, -0.986734,
		0.221378, 0.962157, 0.158892,
		0.975184, -0.218876, -0.033305,
		38.890827, 32.777554, 31.668230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418236, 33.457668, 31.294048>,  <38.208199, 32.930767, 31.691544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418236, 33.457668, 31.294048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678669, 33.154423, 31.279280>,  <38.834927, 32.972477, 31.270418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678669, 33.154423, 31.279280>,  <38.418236, 33.457668, 31.294048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678669, 33.154423, 31.279280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061504, -0.004209, -0.998098,
		0.756512, 0.652113, -0.049367,
		0.651081, -0.758110, -0.036924,
		38.873993, 32.926991, 31.268202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787518, 33.680840, 30.734282>,  <38.418236, 33.457668, 31.294048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787518, 33.680840, 30.734282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897717, 33.299057, 30.780083>,  <38.963837, 33.069988, 30.807564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897717, 33.299057, 30.780083>,  <38.787518, 33.680840, 30.734282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897717, 33.299057, 30.780083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231011, -0.049889, -0.971671,
		0.933132, 0.294143, 0.206746,
		0.275496, -0.954458, 0.114503,
		38.980366, 33.012718, 30.814434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421135, 33.631905, 30.281160>,  <38.787518, 33.680840, 30.734282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421135, 33.631905, 30.281160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305168, 33.263664, 30.385809>,  <39.235588, 33.042721, 30.448597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305168, 33.263664, 30.385809>,  <39.421135, 33.631905, 30.281160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305168, 33.263664, 30.385809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285850, -0.344176, -0.894333,
		0.913366, -0.184499, 0.362936,
		-0.289918, -0.920599, 0.261620,
		39.218193, 32.987484, 30.464294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018379, 33.119007, 30.010296>,  <39.421135, 33.631905, 30.281160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018379, 33.119007, 30.010296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688438, 32.896645, 30.051451>,  <39.490475, 32.763229, 30.076143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688438, 32.896645, 30.051451>,  <40.018379, 33.119007, 30.010296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688438, 32.896645, 30.051451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111864, -0.338878, -0.934156,
		0.554168, -0.759033, 0.341710,
		-0.824854, -0.555905, 0.102887,
		39.440983, 32.729874, 30.082317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143353, 32.451267, 29.778643>,  <40.018379, 33.119007, 30.010296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143353, 32.451267, 29.778643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747025, 32.491749, 29.742798>,  <39.509228, 32.516037, 29.721291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747025, 32.491749, 29.742798>,  <40.143353, 32.451267, 29.778643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747025, 32.491749, 29.742798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068690, -0.194019, -0.978590,
		-0.116420, -0.975764, 0.185287,
		-0.990822, 0.101200, -0.089614,
		39.449780, 32.522110, 29.715914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921989, 31.879684, 29.535175>,  <40.143353, 32.451267, 29.778643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921989, 31.879684, 29.535175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651459, 32.155361, 29.431175>,  <39.489140, 32.320766, 29.368776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.651459, 32.155361, 29.431175>,  <39.921989, 31.879684, 29.535175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651459, 32.155361, 29.431175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048605, -0.310445, -0.949348,
		-0.734998, -0.654705, 0.176464,
		-0.676326, 0.689191, -0.259999,
		39.448563, 32.362118, 29.353176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441559, 31.574165, 29.080256>,  <39.921989, 31.879684, 29.535175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441559, 31.574165, 29.080256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416412, 31.968201, 29.016195>,  <39.401325, 32.204620, 28.977758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416412, 31.968201, 29.016195>,  <39.441559, 31.574165, 29.080256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416412, 31.968201, 29.016195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102854, -0.166010, -0.980745,
		-0.992708, -0.045184, 0.111757,
		-0.062867, 0.985088, -0.160152,
		39.397552, 32.263725, 28.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898151, 31.755114, 28.619202>,  <39.441559, 31.574165, 29.080256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898151, 31.755114, 28.619202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139088, 32.070831, 28.571529>,  <39.283649, 32.260262, 28.542927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.139088, 32.070831, 28.571529>,  <38.898151, 31.755114, 28.619202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139088, 32.070831, 28.571529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085441, -0.084696, -0.992737,
		-0.793656, 0.608146, 0.016422,
		0.602338, 0.789294, -0.119180,
		39.319790, 32.307621, 28.535776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621387, 32.154858, 27.975618>,  <38.898151, 31.755114, 28.619202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621387, 32.154858, 27.975618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994167, 32.280029, 28.048889>,  <39.217834, 32.355133, 28.092852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994167, 32.280029, 28.048889>,  <38.621387, 32.154858, 27.975618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994167, 32.280029, 28.048889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215246, -0.070902, -0.973983,
		-0.291801, 0.947126, -0.133433,
		0.931945, 0.312930, 0.183176,
		39.273750, 32.373909, 28.103842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786854, 32.529194, 27.392080>,  <38.621387, 32.154858, 27.975618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786854, 32.529194, 27.392080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150078, 32.486610, 27.554110>,  <39.368011, 32.461060, 27.651327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150078, 32.486610, 27.554110>,  <38.786854, 32.529194, 27.392080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150078, 32.486610, 27.554110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415270, 0.103000, -0.903849,
		0.054504, 0.988968, 0.137741,
		0.908064, -0.106463, 0.405074,
		39.422497, 32.454670, 27.675632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168217, 33.115490, 27.189461>,  <38.786854, 32.529194, 27.392080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168217, 33.115490, 27.189461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414616, 32.811264, 27.271523>,  <39.562454, 32.628727, 27.320759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414616, 32.811264, 27.271523>,  <39.168217, 33.115490, 27.189461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414616, 32.811264, 27.271523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273861, -0.037423, -0.961041,
		0.738611, 0.648183, 0.185237,
		0.615998, -0.760564, 0.205153,
		39.599415, 32.583096, 27.333069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842239, 33.301949, 26.981339>,  <39.168217, 33.115490, 27.189461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842239, 33.301949, 26.981339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879807, 32.905216, 27.015856>,  <39.902348, 32.667175, 27.036566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879807, 32.905216, 27.015856>,  <39.842239, 33.301949, 26.981339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879807, 32.905216, 27.015856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262415, -0.058947, -0.963153,
		0.960373, 0.113105, 0.254736,
		0.093921, -0.991833, 0.086292,
		39.907982, 32.607666, 27.041744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424034, 33.245850, 26.692535>,  <39.842239, 33.301949, 26.981339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424034, 33.245850, 26.692535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234150, 32.894012, 26.680082>,  <40.120220, 32.682911, 26.672611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234150, 32.894012, 26.680082>,  <40.424034, 33.245850, 26.692535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234150, 32.894012, 26.680082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318045, -0.138451, -0.937912,
		0.820668, -0.455138, 0.345474,
		-0.474711, -0.879591, -0.031132,
		40.091736, 32.630135, 26.670742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868023, 32.917709, 26.357168>,  <40.424034, 33.245850, 26.692535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868023, 32.917709, 26.357168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.531738, 32.703735, 26.323599>,  <40.329967, 32.575352, 26.303457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.531738, 32.703735, 26.323599>,  <40.868023, 32.917709, 26.357168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531738, 32.703735, 26.323599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219360, -0.194766, -0.956006,
		0.495059, -0.822136, 0.281086,
		-0.840713, -0.534938, -0.083923,
		40.279526, 32.543255, 26.298422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130562, 32.389000, 26.111765>,  <40.868023, 32.917709, 26.357168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130562, 32.389000, 26.111765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741104, 32.369671, 26.022604>,  <40.507431, 32.358074, 25.969107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741104, 32.369671, 26.022604>,  <41.130562, 32.389000, 26.111765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741104, 32.369671, 26.022604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221306, -0.436564, -0.872029,
		-0.055176, -0.898375, 0.435751,
		-0.973642, -0.048319, -0.222904,
		40.449013, 32.355175, 25.955732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069016, 31.739929, 25.832563>,  <41.130562, 32.389000, 26.111765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069016, 31.739929, 25.832563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761490, 31.960371, 25.702816>,  <40.576977, 32.092636, 25.624968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761490, 31.960371, 25.702816>,  <41.069016, 31.739929, 25.832563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761490, 31.960371, 25.702816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317165, -0.111839, -0.941753,
		-0.555281, -0.826908, -0.088808,
		-0.768810, 0.551104, -0.324369,
		40.530846, 32.125702, 25.605505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790325, 31.384705, 25.315056>,  <41.069016, 31.739929, 25.832563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790325, 31.384705, 25.315056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.653988, 31.757040, 25.262344>,  <40.572186, 31.980442, 25.230717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.653988, 31.757040, 25.262344>,  <40.790325, 31.384705, 25.315056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653988, 31.757040, 25.262344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131034, -0.091767, -0.987122,
		-0.930944, -0.353720, -0.090693,
		-0.340842, 0.930839, -0.131779,
		40.551735, 32.036293, 25.222811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485085, 31.379297, 24.661545>,  <40.790325, 31.384705, 25.315056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485085, 31.379297, 24.661545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559002, 31.768820, 24.714542>,  <40.603352, 32.002533, 24.746342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559002, 31.768820, 24.714542>,  <40.485085, 31.379297, 24.661545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559002, 31.768820, 24.714542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220322, 0.090335, -0.971235,
		-0.957762, 0.208673, -0.197857,
		0.184797, 0.973804, 0.132495,
		40.614441, 32.060963, 24.754292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209850, 31.698713, 24.061567>,  <40.485085, 31.379297, 24.661545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209850, 31.698713, 24.061567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492260, 31.954473, 24.183350>,  <40.661705, 32.107929, 24.256418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492260, 31.954473, 24.183350>,  <40.209850, 31.698713, 24.061567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492260, 31.954473, 24.183350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352545, 0.055520, -0.934146,
		-0.614198, 0.766866, -0.186219,
		0.706026, 0.639401, 0.304455,
		40.704067, 32.146294, 24.274687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203846, 32.279858, 23.613457>,  <40.209850, 31.698713, 24.061567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203846, 32.279858, 23.613457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573124, 32.260227, 23.765928>,  <40.794693, 32.248447, 23.857410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573124, 32.260227, 23.765928>,  <40.203846, 32.279858, 23.613457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573124, 32.260227, 23.765928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384062, 0.154331, -0.910318,
		-0.014153, 0.986800, 0.161327,
		0.923199, -0.049075, 0.381177,
		40.850082, 32.245506, 23.880281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522091, 32.276791, 23.425316>,  <40.203846, 32.279858, 23.613457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522091, 32.276791, 23.425316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320545, 32.534863, 23.195583>,  <39.199615, 32.689705, 23.057743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320545, 32.534863, 23.195583>,  <39.522091, 32.276791, 23.425316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320545, 32.534863, 23.195583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535449, 0.288446, 0.793784,
		0.677800, 0.707487, 0.200124,
		-0.503867, 0.645183, -0.574332,
		39.169384, 32.728416, 23.023283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527046, 32.872189, 23.787241>,  <39.522091, 32.276791, 23.425316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527046, 32.872189, 23.787241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210842, 32.837856, 23.544680>,  <39.021118, 32.817257, 23.399143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210842, 32.837856, 23.544680>,  <39.527046, 32.872189, 23.787241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210842, 32.837856, 23.544680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595532, 0.338839, 0.728375,
		0.142955, 0.936921, -0.318972,
		-0.790510, -0.085833, -0.606405,
		38.973690, 32.812107, 23.362759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133854, 33.486706, 23.611429>,  <39.527046, 32.872189, 23.787241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133854, 33.486706, 23.611429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885986, 33.172798, 23.606739>,  <38.737267, 32.984451, 23.603924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885986, 33.172798, 23.606739>,  <39.133854, 33.486706, 23.611429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885986, 33.172798, 23.606739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556105, 0.428469, 0.712153,
		-0.553854, 0.447822, -0.701927,
		-0.619671, -0.784774, -0.011727,
		38.700085, 32.937366, 23.603220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461033, 33.779797, 23.534662>,  <39.133854, 33.486706, 23.611429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461033, 33.779797, 23.534662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390175, 33.415714, 23.684402>,  <38.347660, 33.197266, 23.774246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390175, 33.415714, 23.684402>,  <38.461033, 33.779797, 23.534662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390175, 33.415714, 23.684402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613270, 0.399579, 0.681349,
		-0.769753, -0.108881, -0.628987,
		-0.177144, -0.910210, 0.374351,
		38.337032, 33.142651, 23.796707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788395, 33.864269, 23.820517>,  <38.461033, 33.779797, 23.534662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788395, 33.864269, 23.820517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.866760, 33.509602, 23.988056>,  <37.913780, 33.296803, 24.088579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.866760, 33.509602, 23.988056>,  <37.788395, 33.864269, 23.820517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866760, 33.509602, 23.988056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631870, 0.212489, 0.745378,
		-0.749905, -0.410688, -0.518631,
		0.195915, -0.886670, 0.418848,
		37.925533, 33.243599, 24.113710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130196, 33.616989, 24.035305>,  <37.788395, 33.864269, 23.820517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130196, 33.616989, 24.035305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392559, 33.411037, 24.256094>,  <37.549976, 33.287464, 24.388567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392559, 33.411037, 24.256094>,  <37.130196, 33.616989, 24.035305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392559, 33.411037, 24.256094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522651, 0.217820, 0.824251,
		-0.544625, -0.829125, -0.126234,
		0.655911, -0.514884, 0.551974,
		37.589333, 33.256573, 24.421686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713894, 33.076458, 24.456718>,  <37.130196, 33.616989, 24.035305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713894, 33.076458, 24.456718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066418, 33.139690, 24.634842>,  <37.277931, 33.177628, 24.741716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066418, 33.139690, 24.634842>,  <36.713894, 33.076458, 24.456718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066418, 33.139690, 24.634842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433360, -0.105315, 0.895046,
		0.188385, -0.981794, -0.024311,
		0.881312, 0.158078, 0.445310,
		37.330811, 33.187115, 24.768435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637207, 32.803429, 25.093063>,  <36.713894, 33.076458, 24.456718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637207, 32.803429, 25.093063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994240, 32.975780, 25.146193>,  <37.208458, 33.079193, 25.178070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994240, 32.975780, 25.146193>,  <36.637207, 32.803429, 25.093063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994240, 32.975780, 25.146193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165571, 0.039217, 0.985418,
		0.419387, -0.901557, 0.106345,
		0.892581, 0.430880, 0.132824,
		37.262012, 33.105045, 25.186039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054008, 32.319000, 25.526218>,  <36.637207, 32.803429, 25.093063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054008, 32.319000, 25.526218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195396, 32.691681, 25.559647>,  <37.280228, 32.915291, 25.579704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195396, 32.691681, 25.559647>,  <37.054008, 32.319000, 25.526218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195396, 32.691681, 25.559647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102371, -0.127331, 0.986563,
		0.929827, -0.340165, -0.140387,
		0.353470, 0.931705, 0.083573,
		37.301437, 32.971191, 25.584719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510632, 32.213486, 25.979620>,  <37.054008, 32.319000, 25.526218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510632, 32.213486, 25.979620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464844, 32.610840, 25.975958>,  <37.437370, 32.849251, 25.973761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464844, 32.610840, 25.975958>,  <37.510632, 32.213486, 25.979620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464844, 32.610840, 25.975958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109533, 0.021782, 0.993744,
		0.987370, 0.112747, -0.111302,
		-0.114466, 0.993385, -0.009157,
		37.430504, 32.908855, 25.973211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093700, 32.650047, 26.363785>,  <37.510632, 32.213486, 25.979620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093700, 32.650047, 26.363785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764137, 32.876476, 26.374588>,  <37.566399, 33.012333, 26.381071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764137, 32.876476, 26.374588>,  <38.093700, 32.650047, 26.363785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764137, 32.876476, 26.374588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069038, 0.052950, 0.996208,
		0.562498, 0.822652, -0.082707,
		-0.823911, 0.566075, 0.027010,
		37.516964, 33.046299, 26.382690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222675, 33.126362, 26.824017>,  <38.093700, 32.650047, 26.363785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222675, 33.126362, 26.824017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823936, 33.151386, 26.804491>,  <37.584694, 33.166401, 26.792776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823936, 33.151386, 26.804491>,  <38.222675, 33.126362, 26.824017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823936, 33.151386, 26.804491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038582, 0.155402, 0.987097,
		0.069342, 0.985868, -0.152498,
		-0.996846, 0.062564, -0.048813,
		37.524883, 33.170155, 26.789846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027431, 33.604126, 27.297573>,  <38.222675, 33.126362, 26.824017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027431, 33.604126, 27.297573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681767, 33.418259, 27.220306>,  <37.474369, 33.306740, 27.173946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681767, 33.418259, 27.220306>,  <38.027431, 33.604126, 27.297573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681767, 33.418259, 27.220306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221937, 0.007414, 0.975033,
		-0.451630, 0.885456, -0.109533,
		-0.864161, -0.464664, -0.193167,
		37.422520, 33.278858, 27.162355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609196, 33.930233, 27.738935>,  <38.027431, 33.604126, 27.297573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609196, 33.930233, 27.738935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420692, 33.590485, 27.643866>,  <37.307590, 33.386635, 27.586823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420692, 33.590485, 27.643866>,  <37.609196, 33.930233, 27.738935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420692, 33.590485, 27.643866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362752, -0.058978, 0.930017,
		-0.803946, 0.524493, -0.280317,
		-0.471255, -0.849369, -0.237676,
		37.279316, 33.335674, 27.572563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805855, 34.014931, 27.902176>,  <37.609196, 33.930233, 27.738935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805855, 34.014931, 27.902176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926411, 33.633636, 27.911137>,  <36.998745, 33.404858, 27.916513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926411, 33.633636, 27.911137>,  <36.805855, 34.014931, 27.902176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926411, 33.633636, 27.911137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396593, -0.103959, 0.912089,
		-0.867109, -0.283779, -0.409380,
		0.301391, -0.953237, 0.022401,
		37.016827, 33.347664, 27.917856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301537, 33.563068, 28.280643>,  <36.805855, 34.014931, 27.902176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301537, 33.563068, 28.280643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636745, 33.345047, 28.290726>,  <36.837872, 33.214233, 28.296774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.636745, 33.345047, 28.290726>,  <36.301537, 33.563068, 28.280643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636745, 33.345047, 28.290726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203002, -0.268570, 0.941627,
		-0.506473, -0.794217, -0.335714,
		0.838019, -0.545058, 0.025204,
		36.888153, 33.181530, 28.298286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998318, 32.954395, 28.485268>,  <36.301537, 33.563068, 28.280643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998318, 32.954395, 28.485268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389553, 32.944172, 28.567915>,  <36.624294, 32.938038, 28.617504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389553, 32.944172, 28.567915>,  <35.998318, 32.954395, 28.485268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389553, 32.944172, 28.567915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203443, -0.328184, 0.922446,
		0.044231, -0.944268, -0.326192,
		0.978087, -0.025561, 0.206620,
		36.682980, 32.936504, 28.629902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216339, 32.267513, 28.740953>,  <35.998318, 32.954395, 28.485268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216339, 32.267513, 28.740953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507507, 32.493019, 28.897058>,  <36.682209, 32.628323, 28.990721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507507, 32.493019, 28.897058>,  <36.216339, 32.267513, 28.740953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507507, 32.493019, 28.897058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128319, -0.447110, 0.885227,
		0.673547, -0.694453, -0.253119,
		0.727920, 0.563763, 0.390261,
		36.725883, 32.662148, 29.014137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634319, 31.766087, 29.245754>,  <36.216339, 32.267513, 28.740953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634319, 31.766087, 29.245754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750931, 32.139042, 29.331228>,  <36.820900, 32.362816, 29.382513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750931, 32.139042, 29.331228>,  <36.634319, 31.766087, 29.245754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750931, 32.139042, 29.331228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097659, -0.193209, 0.976285,
		0.951563, -0.305487, 0.034730,
		0.291532, 0.932389, 0.213684,
		36.838390, 32.418758, 29.395334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137703, 31.669666, 29.630720>,  <36.634319, 31.766087, 29.245754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137703, 31.669666, 29.630720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024223, 32.041748, 29.723871>,  <36.956135, 32.264999, 29.779762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024223, 32.041748, 29.723871>,  <37.137703, 31.669666, 29.630720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024223, 32.041748, 29.723871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083379, -0.265864, 0.960398,
		0.955282, 0.253046, 0.152985,
		-0.283698, 0.930206, 0.232877,
		36.939114, 32.320808, 29.793734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504963, 31.840185, 30.232403>,  <37.137703, 31.669666, 29.630720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504963, 31.840185, 30.232403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209427, 32.109634, 30.224985>,  <37.032104, 32.271305, 30.220533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209427, 32.109634, 30.224985>,  <37.504963, 31.840185, 30.232403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209427, 32.109634, 30.224985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274385, -0.275586, 0.921285,
		0.615488, 0.685773, 0.388446,
		-0.738842, 0.673623, -0.018546,
		36.987774, 32.311722, 30.219421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.937099, 32.231979, 35.240723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648952, 32.509327, 35.233727>,  <39.476063, 32.675735, 35.229530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648952, 32.509327, 35.233727>,  <39.937099, 32.231979, 35.240723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648952, 32.509327, 35.233727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035010, -0.011168, 0.999325,
		0.692708, 0.720494, 0.032320,
		-0.720368, 0.693371, -0.017488,
		39.432842, 32.717339, 35.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190662, 32.858150, 35.675453>,  <39.937099, 32.231979, 35.240723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190662, 32.858150, 35.675453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794235, 32.903435, 35.647259>,  <39.556377, 32.930607, 35.630341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794235, 32.903435, 35.647259>,  <40.190662, 32.858150, 35.675453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794235, 32.903435, 35.647259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044905, 0.214421, 0.975709,
		0.125575, 0.970158, -0.207422,
		-0.991067, 0.113210, -0.070491,
		39.496914, 32.937397, 35.626110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043552, 33.500362, 36.035267>,  <40.190662, 32.858150, 35.675453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043552, 33.500362, 36.035267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698849, 33.297562, 36.042435>,  <39.492027, 33.175880, 36.046738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698849, 33.297562, 36.042435>,  <40.043552, 33.500362, 36.035267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698849, 33.297562, 36.042435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140821, 0.272999, 0.951652,
		-0.487380, 0.817572, -0.306656,
		-0.861760, -0.507000, 0.017922,
		39.440319, 33.145462, 36.047810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543785, 34.008213, 36.324570>,  <40.043552, 33.500362, 36.035267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543785, 34.008213, 36.324570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340496, 33.665054, 36.354858>,  <39.218525, 33.459160, 36.373032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340496, 33.665054, 36.354858>,  <39.543785, 34.008213, 36.324570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340496, 33.665054, 36.354858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385446, 0.305195, 0.870797,
		-0.770160, 0.413370, -0.485777,
		-0.508218, -0.857893, 0.075717,
		39.188030, 33.407688, 36.377575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845142, 34.203320, 36.369141>,  <39.543785, 34.008213, 36.324570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845142, 34.203320, 36.369141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868607, 33.844528, 36.544403>,  <38.882683, 33.629253, 36.649563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868607, 33.844528, 36.544403>,  <38.845142, 34.203320, 36.369141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868607, 33.844528, 36.544403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270525, 0.408209, 0.871884,
		-0.960924, -0.169676, -0.218712,
		0.058657, -0.896981, 0.438159,
		38.886204, 33.575436, 36.675850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234138, 34.090809, 36.866249>,  <38.845142, 34.203320, 36.369141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234138, 34.090809, 36.866249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516033, 33.824501, 36.964310>,  <38.685169, 33.664715, 37.023144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516033, 33.824501, 36.964310>,  <38.234138, 34.090809, 36.866249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516033, 33.824501, 36.964310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007074, 0.352113, 0.935931,
		-0.709433, -0.657851, 0.252857,
		0.704737, -0.665769, 0.245147,
		38.727455, 33.624771, 37.037853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887001, 33.757580, 37.430630>,  <38.234138, 34.090809, 36.866249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887001, 33.757580, 37.430630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277565, 33.671738, 37.440220>,  <38.511902, 33.620232, 37.445972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.277565, 33.671738, 37.440220>,  <37.887001, 33.757580, 37.430630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277565, 33.671738, 37.440220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015214, 0.179099, 0.983713,
		-0.215405, -0.960139, 0.178138,
		0.976406, -0.214607, 0.023972,
		38.570488, 33.607357, 37.447411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033848, 33.203388, 37.905655>,  <37.887001, 33.757580, 37.430630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033848, 33.203388, 37.905655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.347755, 33.447514, 37.862469>,  <38.536098, 33.593990, 37.836555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.347755, 33.447514, 37.862469>,  <38.033848, 33.203388, 37.905655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347755, 33.447514, 37.862469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045388, 0.230317, 0.972057,
		0.618130, -0.757935, 0.208446,
		0.784765, 0.610318, -0.107965,
		38.583183, 33.630608, 37.830078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239857, 33.149967, 38.595242>,  <38.033848, 33.203388, 37.905655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239857, 33.149967, 38.595242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485359, 33.432419, 38.453991>,  <38.632660, 33.601891, 38.369240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485359, 33.432419, 38.453991>,  <38.239857, 33.149967, 38.595242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485359, 33.432419, 38.453991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000401, 0.446995, 0.894536,
		0.789498, -0.549166, 0.274062,
		0.613753, 0.706125, -0.353122,
		38.669487, 33.644257, 38.348053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753544, 33.315243, 39.091511>,  <38.239857, 33.149967, 38.595242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753544, 33.315243, 39.091511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740463, 33.634586, 38.850994>,  <38.732616, 33.826191, 38.706684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740463, 33.634586, 38.850994>,  <38.753544, 33.315243, 39.091511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740463, 33.634586, 38.850994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064891, 0.602040, 0.795825,
		0.997356, -0.012996, -0.071493,
		-0.032699, 0.798360, -0.601292,
		38.730652, 33.874096, 38.670605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157372, 33.681763, 39.456688>,  <38.753544, 33.315243, 39.091511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157372, 33.681763, 39.456688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.955097, 33.926159, 39.213058>,  <38.833733, 34.072796, 39.066879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.955097, 33.926159, 39.213058>,  <39.157372, 33.681763, 39.456688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955097, 33.926159, 39.213058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036973, 0.689996, 0.722868,
		0.861927, 0.388061, -0.326328,
		-0.505682, 0.610994, -0.609074,
		38.803394, 34.109459, 39.030334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438164, 34.312481, 39.513699>,  <39.157372, 33.681763, 39.456688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438164, 34.312481, 39.513699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073734, 34.385674, 39.365936>,  <38.855076, 34.429588, 39.277279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073734, 34.385674, 39.365936>,  <39.438164, 34.312481, 39.513699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073734, 34.385674, 39.365936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214110, 0.555717, 0.803327,
		0.352277, 0.810985, -0.467123,
		-0.911075, 0.182978, -0.369406,
		38.800411, 34.440567, 39.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287903, 34.927429, 39.747234>,  <39.438164, 34.312481, 39.513699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287903, 34.927429, 39.747234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.926819, 34.770836, 39.675850>,  <38.710167, 34.676880, 39.633018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.926819, 34.770836, 39.675850>,  <39.287903, 34.927429, 39.747234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926819, 34.770836, 39.675850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370171, 0.495299, 0.785909,
		-0.219277, 0.775513, -0.592028,
		-0.902713, -0.391483, -0.178465,
		38.656006, 34.653393, 39.622311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642513, 35.245037, 39.067513>,  <39.287903, 34.927429, 39.747234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642513, 35.245037, 39.067513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667126, 35.424618, 38.710938>,  <39.681892, 35.532368, 38.496994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.667126, 35.424618, 38.710938>,  <39.642513, 35.245037, 39.067513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667126, 35.424618, 38.710938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980953, 0.137661, 0.137041,
		0.184241, -0.882887, -0.431933,
		0.061531, 0.448955, -0.891433,
		39.685585, 35.559303, 38.443508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278851, 35.752335, 39.363914>,  <39.642513, 35.245037, 39.067513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278851, 35.752335, 39.363914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220329, 36.141716, 39.293510>,  <39.185215, 36.375347, 39.251270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220329, 36.141716, 39.293510>,  <39.278851, 35.752335, 39.363914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220329, 36.141716, 39.293510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470802, -0.224998, -0.853066,
		-0.870023, -0.041945, 0.491224,
		-0.146307, 0.973456, -0.176006,
		39.176437, 36.433754, 39.240707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588196, 35.879772, 39.057400>,  <39.278851, 35.752335, 39.363914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588196, 35.879772, 39.057400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804615, 36.194080, 38.937511>,  <38.934467, 36.382664, 38.865578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804615, 36.194080, 38.937511>,  <38.588196, 35.879772, 39.057400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804615, 36.194080, 38.937511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331511, -0.128256, -0.934693,
		-0.772894, 0.605077, 0.191097,
		0.541051, 0.785769, -0.299718,
		38.966930, 36.429810, 38.847595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117626, 36.227879, 38.637665>,  <38.588196, 35.879772, 39.057400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117626, 36.227879, 38.637665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478920, 36.366882, 38.536942>,  <38.695694, 36.450287, 38.476509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478920, 36.366882, 38.536942>,  <38.117626, 36.227879, 38.637665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478920, 36.366882, 38.536942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236810, -0.085739, -0.967765,
		-0.357901, 0.933747, 0.004852,
		0.903232, 0.347513, -0.251807,
		38.749889, 36.471138, 38.461399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925343, 36.458702, 38.052773>,  <38.117626, 36.227879, 38.637665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925343, 36.458702, 38.052773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323875, 36.474415, 38.022385>,  <38.562996, 36.483841, 38.004150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323875, 36.474415, 38.022385>,  <37.925343, 36.458702, 38.052773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323875, 36.474415, 38.022385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073636, -0.057860, -0.995605,
		-0.043501, 0.997552, -0.054756,
		0.996336, 0.039277, -0.075972,
		38.622776, 36.486198, 37.999592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904202, 36.881191, 37.478317>,  <37.925343, 36.458702, 38.052773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904202, 36.881191, 37.478317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258640, 36.698509, 37.509941>,  <38.471302, 36.588902, 37.528915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258640, 36.698509, 37.509941>,  <37.904202, 36.881191, 37.478317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258640, 36.698509, 37.509941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096013, 0.013996, -0.995282,
		0.453445, 0.889507, 0.056252,
		0.886098, -0.456706, 0.079058,
		38.524471, 36.561497, 37.533657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318695, 37.283844, 37.126133>,  <37.904202, 36.881191, 37.478317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318695, 37.283844, 37.126133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511208, 36.933273, 37.132244>,  <38.626717, 36.722931, 37.135910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511208, 36.933273, 37.132244>,  <38.318695, 37.283844, 37.126133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511208, 36.933273, 37.132244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175196, 0.079101, -0.981351,
		0.858878, 0.474985, 0.191618,
		0.481285, -0.876431, 0.015277,
		38.655594, 36.670345, 37.136826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955677, 37.378315, 36.727055>,  <38.318695, 37.283844, 37.126133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955677, 37.378315, 36.727055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898872, 36.982399, 36.731941>,  <38.864788, 36.744850, 36.734871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898872, 36.982399, 36.731941>,  <38.955677, 37.378315, 36.727055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898872, 36.982399, 36.731941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345871, -0.061178, -0.936286,
		0.927473, -0.128740, 0.351027,
		-0.142013, -0.989789, 0.012214,
		38.856270, 36.685463, 36.735607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647858, 36.930626, 36.537361>,  <38.955677, 37.378315, 36.727055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647858, 36.930626, 36.537361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340485, 36.687447, 36.457443>,  <39.156063, 36.541538, 36.409492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340485, 36.687447, 36.457443>,  <39.647858, 36.930626, 36.537361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340485, 36.687447, 36.457443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381564, -0.184637, -0.905714,
		0.513737, -0.772210, 0.373851,
		-0.768429, -0.607947, -0.199793,
		39.109955, 36.505062, 36.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947906, 36.362072, 36.105988>,  <39.647858, 36.930626, 36.537361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947906, 36.362072, 36.105988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555569, 36.309380, 36.048584>,  <39.320168, 36.277763, 36.014141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555569, 36.309380, 36.048584>,  <39.947906, 36.362072, 36.105988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555569, 36.309380, 36.048584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176390, -0.287907, -0.941274,
		0.082677, -0.948555, 0.305627,
		-0.980842, -0.131731, -0.143512,
		39.261314, 36.269859, 36.005531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942806, 35.774666, 35.782364>,  <39.947906, 36.362072, 36.105988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942806, 35.774666, 35.782364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580925, 35.926117, 35.704231>,  <39.363796, 36.016987, 35.657352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.580925, 35.926117, 35.704231>,  <39.942806, 35.774666, 35.782364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580925, 35.926117, 35.704231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071981, -0.316057, -0.946006,
		-0.419917, -0.869915, 0.258684,
		-0.904704, 0.378624, -0.195335,
		39.309513, 36.039703, 35.645630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546860, 35.223686, 35.385136>,  <39.942806, 35.774666, 35.782364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546860, 35.223686, 35.385136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345821, 35.564735, 35.327969>,  <39.225197, 35.769367, 35.293667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345821, 35.564735, 35.327969>,  <39.546860, 35.223686, 35.385136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345821, 35.564735, 35.327969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005872, -0.161942, -0.986783,
		-0.864501, -0.496793, 0.076385,
		-0.502596, 0.852626, -0.142917,
		39.195042, 35.820522, 35.285095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992874, 35.087704, 34.938385>,  <39.546860, 35.223686, 35.385136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992874, 35.087704, 34.938385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077358, 35.478085, 34.916790>,  <39.128048, 35.712311, 34.903831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077358, 35.478085, 34.916790>,  <38.992874, 35.087704, 34.938385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077358, 35.478085, 34.916790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204326, -0.098097, -0.973975,
		-0.955846, 0.194680, -0.220131,
		0.211207, 0.975949, -0.053987,
		39.140720, 35.770870, 34.900593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539894, 35.327618, 34.314247>,  <38.992874, 35.087704, 34.938385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539894, 35.327618, 34.314247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838226, 35.588890, 34.366558>,  <39.017223, 35.745651, 34.397945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838226, 35.588890, 34.366558>,  <38.539894, 35.327618, 34.314247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838226, 35.588890, 34.366558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164234, 0.009957, -0.986371,
		-0.645578, 0.757139, -0.099848,
		0.745826, 0.653178, 0.130776,
		39.061974, 35.784843, 34.405792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520470, 35.869881, 33.847832>,  <38.539894, 35.327618, 34.314247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520470, 35.869881, 33.847832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903603, 35.887035, 33.961479>,  <39.133484, 35.897327, 34.029667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903603, 35.887035, 33.961479>,  <38.520470, 35.869881, 33.847832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903603, 35.887035, 33.961479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285275, -0.023821, -0.958149,
		-0.034322, 0.998796, -0.035050,
		0.957831, 0.042885, 0.284114,
		39.190952, 35.899902, 34.046715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187637, 36.494450, 34.143188>,  <38.520470, 35.869881, 33.847832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187637, 36.494450, 34.143188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968830, 36.781456, 33.970707>,  <37.837547, 36.953659, 33.867218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968830, 36.781456, 33.970707>,  <38.187637, 36.494450, 34.143188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968830, 36.781456, 33.970707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624594, -0.006864, 0.780919,
		0.557365, 0.696504, 0.451913,
		-0.547015, 0.717520, -0.431207,
		37.804726, 36.996712, 33.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938335, 37.014954, 34.710987>,  <38.187637, 36.494450, 34.143188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938335, 37.014954, 34.710987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704369, 37.049992, 34.388451>,  <37.563988, 37.071014, 34.194927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704369, 37.049992, 34.388451>,  <37.938335, 37.014954, 34.710987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704369, 37.049992, 34.388451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810792, -0.036180, 0.584216,
		0.022003, 0.995498, 0.092188,
		-0.584921, 0.087600, -0.806346,
		37.528893, 37.076271, 34.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509308, 37.595478, 34.837921>,  <37.938335, 37.014954, 34.710987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509308, 37.595478, 34.837921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309902, 37.388889, 34.559429>,  <37.190258, 37.264938, 34.392334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309902, 37.388889, 34.559429>,  <37.509308, 37.595478, 34.837921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309902, 37.388889, 34.559429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757437, -0.131121, 0.639606,
		-0.421627, 0.846208, -0.325827,
		-0.498517, -0.516469, -0.696233,
		37.160347, 37.233948, 34.350559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863487, 37.792614, 35.014847>,  <37.509308, 37.595478, 34.837921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863487, 37.792614, 35.014847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782677, 37.501221, 34.753010>,  <36.734192, 37.326385, 34.595909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782677, 37.501221, 34.753010>,  <36.863487, 37.792614, 35.014847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782677, 37.501221, 34.753010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775861, -0.288844, 0.560900,
		-0.597684, 0.621189, -0.506851,
		-0.202024, -0.728487, -0.654594,
		36.722069, 37.282673, 34.556633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083431, 37.846073, 34.744946>,  <36.863487, 37.792614, 35.014847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083431, 37.846073, 34.744946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.202908, 37.465191, 34.719364>,  <36.274593, 37.236660, 34.704018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.202908, 37.465191, 34.719364>,  <36.083431, 37.846073, 34.744946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202908, 37.465191, 34.719364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864895, -0.298411, 0.403617,
		-0.403410, -0.065245, -0.912690,
		0.298691, -0.952205, -0.063952,
		36.292515, 37.179531, 34.700180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482368, 37.428867, 34.656654>,  <36.083431, 37.846073, 34.744946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482368, 37.428867, 34.656654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.763153, 37.172981, 34.781887>,  <35.931622, 37.019451, 34.857029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.763153, 37.172981, 34.781887>,  <35.482368, 37.428867, 34.656654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763153, 37.172981, 34.781887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683980, -0.482946, 0.546750,
		-0.198557, -0.597941, -0.776557,
		0.701959, -0.639710, 0.313087,
		35.973740, 36.981068, 34.875813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082676, 36.826557, 34.743458>,  <35.482368, 37.428867, 34.656654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082676, 36.826557, 34.743458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.428047, 36.744823, 34.927952>,  <35.635269, 36.695786, 35.038647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.428047, 36.744823, 34.927952>,  <35.082676, 36.826557, 34.743458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428047, 36.744823, 34.927952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500397, -0.462789, 0.731730,
		0.063939, -0.862598, -0.501833,
		0.863432, -0.204329, 0.461232,
		35.687077, 36.683525, 35.066322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858257, 36.261761, 35.100906>,  <35.082676, 36.826557, 34.743458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858257, 36.261761, 35.100906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186211, 36.386806, 35.292770>,  <35.382980, 36.461834, 35.407890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186211, 36.386806, 35.292770>,  <34.858257, 36.261761, 35.100906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186211, 36.386806, 35.292770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418797, -0.243799, 0.874741,
		0.390393, -0.918062, -0.068966,
		0.819880, 0.312610, 0.479659,
		35.432175, 36.480591, 35.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148193, 35.716015, 35.395729>,  <34.858257, 36.261761, 35.100906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148193, 35.716015, 35.395729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.258720, 36.037285, 35.606846>,  <35.325035, 36.230045, 35.733517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.258720, 36.037285, 35.606846>,  <35.148193, 35.716015, 35.395729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258720, 36.037285, 35.606846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528438, -0.331736, 0.781476,
		0.802747, -0.494839, 0.332763,
		0.276316, 0.803172, 0.527792,
		35.341614, 36.278236, 35.765182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371384, 35.464092, 36.106510>,  <35.148193, 35.716015, 35.395729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371384, 35.464092, 36.106510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336357, 35.854046, 36.188427>,  <35.315342, 36.088017, 36.237576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336357, 35.854046, 36.188427>,  <35.371384, 35.464092, 36.106510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336357, 35.854046, 36.188427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555748, -0.218425, 0.802144,
		0.826726, -0.043568, 0.560915,
		-0.087570, 0.974881, 0.204791,
		35.310085, 36.146511, 36.249863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454102, 35.477982, 36.782063>,  <35.371384, 35.464092, 36.106510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454102, 35.477982, 36.782063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.258121, 35.812901, 36.685005>,  <35.140533, 36.013851, 36.626770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.258121, 35.812901, 36.685005>,  <35.454102, 35.477982, 36.782063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258121, 35.812901, 36.685005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626912, -0.145012, 0.765476,
		0.605747, 0.527162, 0.595962,
		-0.489952, 0.837300, -0.242644,
		35.111137, 36.064091, 36.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265347, 35.566830, 37.412933>,  <35.454102, 35.477982, 36.782063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265347, 35.566830, 37.412933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.059849, 35.830463, 37.193233>,  <34.936550, 35.988644, 37.061413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.059849, 35.830463, 37.193233>,  <35.265347, 35.566830, 37.412933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059849, 35.830463, 37.193233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673110, 0.087312, 0.734370,
		0.531968, 0.746983, 0.398781,
		-0.513744, 0.659085, -0.549249,
		34.905727, 36.028191, 37.028458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.995148, 37.417904, 30.776407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625000, 37.443729, 30.627001>,  <39.402912, 37.459225, 30.537357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625000, 37.443729, 30.627001>,  <39.995148, 37.417904, 30.776407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625000, 37.443729, 30.627001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369791, 0.062763, 0.926993,
		0.083297, 0.995937, -0.034203,
		-0.925374, 0.064567, -0.373517,
		39.347389, 37.463100, 30.514946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701260, 38.005764, 31.041079>,  <39.995148, 37.417904, 30.776407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701260, 38.005764, 31.041079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385147, 37.782234, 30.940533>,  <39.195480, 37.648117, 30.880205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385147, 37.782234, 30.940533>,  <39.701260, 38.005764, 31.041079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385147, 37.782234, 30.940533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448244, 0.247535, 0.858955,
		-0.417780, 0.791484, -0.446109,
		-0.790276, -0.558820, -0.251363,
		39.148064, 37.614590, 30.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156612, 38.385269, 31.376387>,  <39.701260, 38.005764, 31.041079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156612, 38.385269, 31.376387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014969, 38.026096, 31.271824>,  <38.929985, 37.810593, 31.209087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014969, 38.026096, 31.271824>,  <39.156612, 38.385269, 31.376387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014969, 38.026096, 31.271824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426997, -0.093447, 0.899412,
		-0.832035, 0.430106, -0.350323,
		-0.354106, -0.897929, -0.261405,
		38.908737, 37.756718, 31.193401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321156, 38.346775, 31.341841>,  <39.156612, 38.385269, 31.376387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321156, 38.346775, 31.341841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472897, 37.984241, 31.416300>,  <38.563942, 37.766720, 31.460976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472897, 37.984241, 31.416300>,  <38.321156, 38.346775, 31.341841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472897, 37.984241, 31.416300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546374, -0.057072, 0.835594,
		-0.746703, -0.418691, -0.516848,
		0.379354, -0.906333, 0.186146,
		38.586704, 37.712341, 31.472143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719742, 38.001720, 31.580845>,  <38.321156, 38.346775, 31.341841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719742, 38.001720, 31.580845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030243, 37.782188, 31.704926>,  <38.216541, 37.650471, 31.779373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030243, 37.782188, 31.704926>,  <37.719742, 38.001720, 31.580845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030243, 37.782188, 31.704926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483245, -0.202013, 0.851860,
		-0.404862, -0.811158, -0.422031,
		0.776248, -0.548830, 0.310200,
		38.263119, 37.617538, 31.797985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428001, 37.358067, 31.888620>,  <37.719742, 38.001720, 31.580845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428001, 37.358067, 31.888620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804432, 37.362144, 32.023838>,  <38.030289, 37.364594, 32.104969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804432, 37.362144, 32.023838>,  <37.428001, 37.358067, 31.888620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804432, 37.362144, 32.023838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319921, -0.297279, 0.899597,
		0.109667, -0.954736, -0.276500,
		0.941076, 0.010198, 0.338042,
		38.086754, 37.365204, 32.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497704, 36.748829, 32.271248>,  <37.428001, 37.358067, 31.888620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497704, 36.748829, 32.271248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803875, 36.967426, 32.407169>,  <37.987579, 37.098587, 32.488720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803875, 36.967426, 32.407169>,  <37.497704, 36.748829, 32.271248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803875, 36.967426, 32.407169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292504, -0.174876, 0.940138,
		0.573204, -0.819000, 0.025997,
		0.765427, 0.546495, 0.339801,
		38.033504, 37.131374, 32.509109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707146, 36.353256, 32.801556>,  <37.497704, 36.748829, 32.271248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707146, 36.353256, 32.801556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848888, 36.715359, 32.895313>,  <37.933933, 36.932621, 32.951569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848888, 36.715359, 32.895313>,  <37.707146, 36.353256, 32.801556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848888, 36.715359, 32.895313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414455, -0.072659, 0.907164,
		0.838249, -0.418604, 0.349442,
		0.354352, 0.905258, 0.234399,
		37.955193, 36.986935, 32.965633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083755, 36.249737, 33.430107>,  <37.707146, 36.353256, 32.801556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083755, 36.249737, 33.430107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996792, 36.640011, 33.418964>,  <37.944614, 36.874176, 33.412281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996792, 36.640011, 33.418964>,  <38.083755, 36.249737, 33.430107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996792, 36.640011, 33.418964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380846, -0.058522, 0.922785,
		0.898715, 0.211234, 0.384308,
		-0.217414, 0.975682, -0.027853,
		37.931568, 36.932716, 33.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838890, 36.527073, 33.434292>,  <38.083755, 36.249737, 33.430107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838890, 36.527073, 33.434292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140438, 36.295761, 33.559044>,  <39.321365, 36.156975, 33.633896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140438, 36.295761, 33.559044>,  <38.838890, 36.527073, 33.434292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140438, 36.295761, 33.559044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236059, -0.204600, -0.949955,
		0.613151, 0.789766, -0.017734,
		0.753871, -0.578280, 0.311883,
		39.366600, 36.122276, 33.652607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451527, 36.808842, 33.119778>,  <38.838890, 36.527073, 33.434292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451527, 36.808842, 33.119778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586288, 36.451252, 33.237968>,  <39.667145, 36.236698, 33.308884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586288, 36.451252, 33.237968>,  <39.451527, 36.808842, 33.119778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586288, 36.451252, 33.237968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323792, -0.184672, -0.927931,
		0.884112, 0.408297, 0.227244,
		0.336906, -0.893974, 0.295474,
		39.687359, 36.183060, 33.326611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162811, 36.825054, 32.929630>,  <39.451527, 36.808842, 33.119778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162811, 36.825054, 32.929630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074493, 36.435326, 32.947269>,  <40.021503, 36.201488, 32.957855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074493, 36.435326, 32.947269>,  <40.162811, 36.825054, 32.929630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074493, 36.435326, 32.947269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464866, -0.144880, -0.873447,
		0.857409, -0.172347, 0.484918,
		-0.220791, -0.974324, 0.044103,
		40.008255, 36.143028, 32.960499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710079, 36.534931, 32.648708>,  <40.162811, 36.825054, 32.929630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710079, 36.534931, 32.648708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433044, 36.247406, 32.624588>,  <40.266823, 36.074890, 32.610115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433044, 36.247406, 32.624588>,  <40.710079, 36.534931, 32.648708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433044, 36.247406, 32.624588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425814, -0.339930, -0.838528,
		0.582243, -0.606432, 0.541510,
		-0.692586, -0.718810, -0.060305,
		40.225269, 36.031761, 32.606495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093121, 35.970482, 32.782421>,  <40.710079, 36.534931, 32.648708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093121, 35.970482, 32.782421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777256, 35.897015, 32.548260>,  <40.587738, 35.852936, 32.407764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777256, 35.897015, 32.548260>,  <41.093121, 35.970482, 32.782421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777256, 35.897015, 32.548260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613452, -0.252366, -0.748323,
		-0.010294, -0.950041, 0.311955,
		-0.789665, -0.183666, -0.585403,
		40.540356, 35.841915, 32.372639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255051, 35.380898, 32.404655>,  <41.093121, 35.970482, 32.782421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255051, 35.380898, 32.404655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.504124, 32.197811>,  <40.743973, 35.578060, 32.073704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.504124, 32.197811>,  <41.255051, 35.380898, 32.404655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935627, 35.504124, 32.197811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505676, -0.122629, -0.853964,
		-0.326486, -0.943430, -0.057853,
		-0.798561, 0.308062, -0.517106,
		40.696060, 35.596542, 32.042679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059132, 34.864288, 31.844255>,  <41.255051, 35.380898, 32.404655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059132, 34.864288, 31.844255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911335, 35.216602, 31.725805>,  <40.822659, 35.427990, 31.654736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911335, 35.216602, 31.725805>,  <41.059132, 34.864288, 31.844255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911335, 35.216602, 31.725805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376696, -0.149342, -0.914219,
		-0.849458, -0.449341, -0.276610,
		-0.369487, 0.880789, -0.296124,
		40.800488, 35.480839, 31.636969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601700, 34.755108, 31.305414>,  <41.059132, 34.864288, 31.844255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601700, 34.755108, 31.305414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699734, 35.142426, 31.286034>,  <40.758553, 35.374817, 31.274405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699734, 35.142426, 31.286034>,  <40.601700, 34.755108, 31.305414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699734, 35.142426, 31.286034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050312, -0.062613, -0.996769,
		-0.968195, 0.241856, -0.064062,
		0.245086, 0.968290, -0.048453,
		40.773258, 35.432911, 31.271498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202641, 35.026756, 30.749063>,  <40.601700, 34.755108, 31.305414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202641, 35.026756, 30.749063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462273, 35.327118, 30.797794>,  <40.618050, 35.507336, 30.827032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462273, 35.327118, 30.797794>,  <40.202641, 35.026756, 30.749063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462273, 35.327118, 30.797794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160524, 0.021342, -0.986801,
		-0.743594, 0.660065, -0.106686,
		0.649076, 0.750905, 0.121826,
		40.656994, 35.552391, 30.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029476, 35.582726, 30.244873>,  <40.202641, 35.026756, 30.749063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029476, 35.582726, 30.244873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419350, 35.621098, 30.325657>,  <40.653275, 35.644119, 30.374128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419350, 35.621098, 30.325657>,  <40.029476, 35.582726, 30.244873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419350, 35.621098, 30.325657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190124, 0.119745, -0.974430,
		-0.117659, 0.988159, 0.098475,
		0.974684, 0.095928, 0.201962,
		40.711754, 35.649876, 30.386246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253201, 36.122341, 29.827131>,  <40.029476, 35.582726, 30.244873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253201, 36.122341, 29.827131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586433, 35.926620, 29.930328>,  <40.786373, 35.809189, 29.992247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586433, 35.926620, 29.930328>,  <40.253201, 36.122341, 29.827131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586433, 35.926620, 29.930328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261139, -0.063266, -0.963226,
		0.487626, 0.869819, 0.075069,
		0.833083, -0.489298, 0.257994,
		40.836357, 35.779831, 30.007727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861897, 36.420612, 29.426386>,  <40.253201, 36.122341, 29.827131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861897, 36.420612, 29.426386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981930, 36.067440, 29.570826>,  <41.053947, 35.855537, 29.657490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981930, 36.067440, 29.570826>,  <40.861897, 36.420612, 29.426386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981930, 36.067440, 29.570826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415855, -0.219597, -0.882520,
		0.858497, 0.414992, 0.301272,
		0.300081, -0.882926, 0.361099,
		41.071953, 35.802563, 29.679155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601677, 36.434849, 29.457689>,  <40.861897, 36.420612, 29.426386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601677, 36.434849, 29.457689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502945, 36.047230, 29.456114>,  <41.443707, 35.814659, 29.455170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502945, 36.047230, 29.456114>,  <41.601677, 36.434849, 29.457689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502945, 36.047230, 29.456114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482956, -0.119492, -0.867453,
		0.840135, -0.216018, 0.497504,
		-0.246833, -0.969050, -0.003938,
		41.428894, 35.756516, 29.454933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209316, 36.126823, 29.207787>,  <41.601677, 36.434849, 29.457689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209316, 36.126823, 29.207787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935825, 35.841076, 29.148182>,  <41.771732, 35.669628, 29.112419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935825, 35.841076, 29.148182>,  <42.209316, 36.126823, 29.207787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935825, 35.841076, 29.148182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365911, -0.158939, -0.916977,
		0.631373, -0.681484, 0.370064,
		-0.683723, -0.714365, -0.149013,
		41.730709, 35.626766, 29.103477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.815685, 34.760277, 27.702757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118973, 34.983284, 27.837976>,  <34.300945, 35.117088, 27.919107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118973, 34.983284, 27.837976>,  <33.815685, 34.760277, 27.702757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118973, 34.983284, 27.837976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167188, -0.334894, 0.927305,
		0.630200, -0.759618, -0.160712,
		0.758219, 0.557518, 0.338050,
		34.346439, 35.150539, 27.939392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215076, 34.336899, 28.274832>,  <33.815685, 34.760277, 27.702757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215076, 34.336899, 28.274832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270294, 34.730595, 28.319056>,  <34.303425, 34.966812, 28.345591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270294, 34.730595, 28.319056>,  <34.215076, 34.336899, 28.274832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270294, 34.730595, 28.319056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128235, -0.092927, 0.987380,
		0.982089, -0.150483, 0.113385,
		0.138048, 0.984235, 0.110559,
		34.311710, 35.025864, 28.352222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710663, 34.316032, 28.789131>,  <34.215076, 34.336899, 28.274832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710663, 34.316032, 28.789131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548241, 34.681511, 28.782549>,  <34.450787, 34.900799, 28.778599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548241, 34.681511, 28.782549>,  <34.710663, 34.316032, 28.789131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548241, 34.681511, 28.782549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063833, 0.046324, 0.996885,
		0.911616, 0.403740, -0.077134,
		-0.406056, 0.913700, -0.016457,
		34.426422, 34.955620, 28.777611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090473, 34.665146, 29.270468>,  <34.710663, 34.316032, 28.789131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090473, 34.665146, 29.270468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752628, 34.877415, 29.242165>,  <34.549919, 35.004776, 29.225183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752628, 34.877415, 29.242165>,  <35.090473, 34.665146, 29.270468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752628, 34.877415, 29.242165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054572, 0.046135, 0.997443,
		0.532583, 0.846319, -0.010007,
		-0.844617, 0.530675, -0.070756,
		34.499245, 35.036617, 29.220938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125763, 35.369781, 29.646730>,  <35.090473, 34.665146, 29.270468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125763, 35.369781, 29.646730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733715, 35.292019, 29.630907>,  <34.498486, 35.245361, 29.621412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733715, 35.292019, 29.630907>,  <35.125763, 35.369781, 29.646730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733715, 35.292019, 29.630907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031667, -0.043533, 0.998550,
		-0.195843, 0.979955, 0.036512,
		-0.980124, -0.194403, -0.039558,
		34.439678, 35.233700, 29.619040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902966, 35.722050, 30.161905>,  <35.125763, 35.369781, 29.646730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902966, 35.722050, 30.161905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601078, 35.470558, 30.086967>,  <34.419945, 35.319664, 30.042004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601078, 35.470558, 30.086967>,  <34.902966, 35.722050, 30.161905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601078, 35.470558, 30.086967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202969, -0.047785, 0.978019,
		-0.623858, 0.776157, -0.091547,
		-0.754722, -0.628726, -0.187347,
		34.374660, 35.281940, 30.030764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374508, 35.976681, 30.476170>,  <34.902966, 35.722050, 30.161905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374508, 35.976681, 30.476170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295708, 35.587948, 30.424435>,  <34.248428, 35.354706, 30.393394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295708, 35.587948, 30.424435>,  <34.374508, 35.976681, 30.476170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295708, 35.587948, 30.424435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368991, -0.048726, 0.928155,
		-0.908316, 0.230568, -0.349000,
		-0.196997, -0.971836, -0.129336,
		34.236607, 35.296398, 30.385633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760288, 35.807575, 30.802711>,  <34.374508, 35.976681, 30.476170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760288, 35.807575, 30.802711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901909, 35.434166, 30.780157>,  <33.986881, 35.210121, 30.766624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901909, 35.434166, 30.780157>,  <33.760288, 35.807575, 30.802711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901909, 35.434166, 30.780157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391506, -0.202697, 0.897573,
		-0.849338, -0.295707, -0.437245,
		0.354047, -0.933526, -0.056387,
		34.008121, 35.154110, 30.763241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237293, 35.431026, 31.021441>,  <33.760288, 35.807575, 30.802711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237293, 35.431026, 31.021441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559319, 35.195412, 31.049479>,  <33.752533, 35.054043, 31.066301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559319, 35.195412, 31.049479>,  <33.237293, 35.431026, 31.021441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559319, 35.195412, 31.049479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255595, -0.237816, 0.937078,
		-0.535305, -0.772319, -0.342011,
		0.805059, -0.589039, 0.070097,
		33.800835, 35.018700, 31.070507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973686, 34.805408, 31.361473>,  <33.237293, 35.431026, 31.021441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973686, 34.805408, 31.361473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368584, 34.770569, 31.414795>,  <33.605522, 34.749664, 31.446787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.368584, 34.770569, 31.414795>,  <32.973686, 34.805408, 31.361473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368584, 34.770569, 31.414795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156866, -0.388100, 0.908169,
		-0.027365, -0.917492, -0.396811,
		0.987241, -0.087098, 0.133303,
		33.664757, 34.744438, 31.454786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022179, 34.152283, 31.687862>,  <32.973686, 34.805408, 31.361473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022179, 34.152283, 31.687862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384129, 34.308823, 31.754856>,  <33.601299, 34.402748, 31.795053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384129, 34.308823, 31.754856>,  <33.022179, 34.152283, 31.687862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384129, 34.308823, 31.754856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028369, -0.448015, 0.893576,
		0.424739, -0.803820, -0.416498,
		0.904872, 0.391352, 0.167486,
		33.655590, 34.426228, 31.805101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519688, 33.703835, 32.033855>,  <33.022179, 34.152283, 31.687862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519688, 33.703835, 32.033855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.656078, 34.069172, 32.122887>,  <33.737915, 34.288372, 32.176304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.656078, 34.069172, 32.122887>,  <33.519688, 33.703835, 32.033855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656078, 34.069172, 32.122887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065719, -0.213027, 0.974834,
		0.937770, -0.347027, -0.012614,
		0.340981, 0.913341, 0.222577,
		33.758373, 34.343174, 32.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176228, 33.528133, 32.449341>,  <33.519688, 33.703835, 32.033855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176228, 33.528133, 32.449341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077774, 33.905258, 32.539246>,  <34.018700, 34.131535, 32.593189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077774, 33.905258, 32.539246>,  <34.176228, 33.528133, 32.449341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077774, 33.905258, 32.539246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061656, -0.246659, 0.967139,
		0.967272, 0.224191, 0.118842,
		-0.246137, 0.942814, 0.224764,
		34.003933, 34.188103, 32.606674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548206, 33.665100, 33.093258>,  <34.176228, 33.528133, 32.449341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548206, 33.665100, 33.093258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.254757, 33.936390, 33.076294>,  <34.078686, 34.099163, 33.066116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.254757, 33.936390, 33.076294>,  <34.548206, 33.665100, 33.093258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254757, 33.936390, 33.076294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155962, -0.107307, 0.981917,
		0.661413, 0.726975, 0.184500,
		-0.733627, 0.678228, -0.042406,
		34.034668, 34.139858, 33.063572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225277, 33.575642, 33.454998>,  <34.548206, 33.665100, 33.093258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225277, 33.575642, 33.454998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523399, 33.418835, 33.670719>,  <35.702271, 33.324753, 33.800152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523399, 33.418835, 33.670719>,  <35.225277, 33.575642, 33.454998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523399, 33.418835, 33.670719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281789, -0.547875, -0.787672,
		0.604249, 0.739024, -0.297868,
		0.745304, -0.392015, 0.539302,
		35.746990, 33.301231, 33.832508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840878, 33.826138, 33.146507>,  <35.225277, 33.575642, 33.454998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840878, 33.826138, 33.146507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915192, 33.488613, 33.347889>,  <35.959782, 33.286098, 33.468719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915192, 33.488613, 33.347889>,  <35.840878, 33.826138, 33.146507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915192, 33.488613, 33.347889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378577, -0.411348, -0.829140,
		0.906732, 0.344639, 0.243024,
		0.185787, -0.843811, 0.503455,
		35.970928, 33.235470, 33.498924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652794, 33.617992, 32.855156>,  <35.840878, 33.826138, 33.146507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652794, 33.617992, 32.855156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444466, 33.323433, 33.027882>,  <36.319469, 33.146698, 33.131519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444466, 33.323433, 33.027882>,  <36.652794, 33.617992, 32.855156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444466, 33.323433, 33.027882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299667, -0.631357, -0.715254,
		0.799342, -0.243116, 0.549497,
		-0.520818, -0.736399, 0.431816,
		36.288219, 33.102512, 33.157425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047997, 33.039288, 32.901237>,  <36.652794, 33.617992, 32.855156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047997, 33.039288, 32.901237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675724, 32.893242, 32.892151>,  <36.452358, 32.805614, 32.886700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675724, 32.893242, 32.892151>,  <37.047997, 33.039288, 32.901237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675724, 32.893242, 32.892151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258600, -0.612704, -0.746807,
		0.258751, -0.700917, 0.664653,
		-0.930685, -0.365116, -0.022719,
		36.396519, 32.783707, 32.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148499, 32.318317, 32.614159>,  <37.047997, 33.039288, 32.901237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148499, 32.318317, 32.614159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760052, 32.411362, 32.592907>,  <36.526985, 32.467190, 32.580154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760052, 32.411362, 32.592907>,  <37.148499, 32.318317, 32.614159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760052, 32.411362, 32.592907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082665, -0.536888, -0.839594,
		-0.223822, -0.810953, 0.540610,
		-0.971118, 0.232610, -0.053130,
		36.468716, 32.481144, 32.576969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855427, 31.815269, 32.219833>,  <37.148499, 32.318317, 32.614159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855427, 31.815269, 32.219833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561298, 32.082787, 32.175995>,  <36.384819, 32.243298, 32.149693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561298, 32.082787, 32.175995>,  <36.855427, 31.815269, 32.219833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561298, 32.082787, 32.175995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087172, -0.253704, -0.963346,
		-0.672084, -0.698819, 0.244855,
		-0.735325, 0.668794, -0.109593,
		36.340702, 32.283424, 32.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291752, 31.459053, 31.901840>,  <36.855427, 31.815269, 32.219833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291752, 31.459053, 31.901840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253967, 31.849510, 31.823637>,  <36.231297, 32.083786, 31.776716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253967, 31.849510, 31.823637>,  <36.291752, 31.459053, 31.901840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253967, 31.849510, 31.823637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053728, -0.191099, -0.980099,
		-0.994077, -0.103090, -0.034394,
		-0.094466, 0.976142, -0.195506,
		36.225628, 32.142353, 31.764986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932022, 31.461981, 31.231070>,  <36.291752, 31.459053, 31.901840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932022, 31.461981, 31.231070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073555, 31.835182, 31.257318>,  <36.158474, 32.059101, 31.273067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073555, 31.835182, 31.257318>,  <35.932022, 31.461981, 31.231070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073555, 31.835182, 31.257318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148571, 0.013204, -0.988814,
		-0.923433, 0.359626, -0.133945,
		0.353834, 0.933003, 0.065623,
		36.179707, 32.115082, 31.277006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693596, 31.904730, 30.653536>,  <35.932022, 31.461981, 31.231070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693596, 31.904730, 30.653536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020844, 32.093098, 30.785551>,  <36.217190, 32.206120, 30.864759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020844, 32.093098, 30.785551>,  <35.693596, 31.904730, 30.653536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020844, 32.093098, 30.785551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273914, 0.185512, -0.943693,
		-0.505628, 0.862451, 0.022779,
		0.818114, 0.470918, 0.330038,
		36.266277, 32.234375, 30.884562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663857, 32.532700, 30.303024>,  <35.693596, 31.904730, 30.653536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663857, 32.532700, 30.303024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040981, 32.477196, 30.424253>,  <36.267258, 32.443893, 30.496990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040981, 32.477196, 30.424253>,  <35.663857, 32.532700, 30.303024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040981, 32.477196, 30.424253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333018, 0.352985, -0.874357,
		0.014344, 0.925282, 0.379007,
		0.942811, -0.138758, 0.303072,
		36.323826, 32.435570, 30.515175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955143, 33.151920, 30.153011>,  <35.663857, 32.532700, 30.303024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955143, 33.151920, 30.153011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268162, 32.905071, 30.185938>,  <36.455975, 32.756962, 30.205694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268162, 32.905071, 30.185938>,  <35.955143, 33.151920, 30.153011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268162, 32.905071, 30.185938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300355, 0.258398, -0.918159,
		0.545344, 0.743231, 0.387565,
		0.782551, -0.617121, 0.082318,
		36.502926, 32.719936, 30.210632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575371, 33.545544, 30.110439>,  <35.955143, 33.151920, 30.153011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575371, 33.545544, 30.110439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691525, 33.179726, 29.997807>,  <36.761215, 32.960236, 29.930227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691525, 33.179726, 29.997807>,  <36.575371, 33.545544, 30.110439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691525, 33.179726, 29.997807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259457, 0.358488, -0.896754,
		0.921065, 0.187343, 0.341383,
		0.290382, -0.914543, -0.281583,
		36.778641, 32.905361, 29.913332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204350, 33.546665, 29.793585>,  <36.575371, 33.545544, 30.110439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204350, 33.546665, 29.793585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.084564, 33.187576, 29.664333>,  <37.012695, 32.972122, 29.586782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.084564, 33.187576, 29.664333>,  <37.204350, 33.546665, 29.793585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084564, 33.187576, 29.664333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340691, 0.215734, -0.915090,
		0.891210, -0.384119, 0.241243,
		-0.299459, -0.897726, -0.323130,
		36.994728, 32.918259, 29.567394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738583, 33.347584, 29.404835>,  <37.204350, 33.546665, 29.793585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738583, 33.347584, 29.404835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411819, 33.144779, 29.294855>,  <37.215759, 33.023098, 29.228867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411819, 33.144779, 29.294855>,  <37.738583, 33.347584, 29.404835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411819, 33.144779, 29.294855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162879, 0.254510, -0.953255,
		0.553290, -0.823507, -0.125330,
		-0.816909, -0.507013, -0.274949,
		37.166748, 32.992676, 29.212370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180180, 32.704987, 29.606627>,  <37.738583, 33.347584, 29.404835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180180, 32.704987, 29.606627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573273, 32.643505, 29.647821>,  <38.809128, 32.606617, 29.672539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573273, 32.643505, 29.647821>,  <38.180180, 32.704987, 29.606627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573273, 32.643505, 29.647821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106308, -0.013516, 0.994241,
		-0.151424, -0.988025, -0.029622,
		0.982736, -0.153701, 0.102989,
		38.868092, 32.597397, 29.678719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296116, 32.146759, 30.159805>,  <38.180180, 32.704987, 29.606627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296116, 32.146759, 30.159805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664444, 32.300053, 30.130873>,  <38.885441, 32.392029, 30.113514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664444, 32.300053, 30.130873>,  <38.296116, 32.146759, 30.159805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664444, 32.300053, 30.130873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072697, 0.013549, 0.997262,
		0.383162, -0.923553, -0.015383,
		0.920816, 0.383231, -0.072331,
		38.940689, 32.415020, 30.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793175, 31.741922, 30.509914>,  <38.296116, 32.146759, 30.159805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793175, 31.741922, 30.509914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903801, 32.126278, 30.504169>,  <38.970177, 32.356892, 30.500723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903801, 32.126278, 30.504169>,  <38.793175, 31.741922, 30.509914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903801, 32.126278, 30.504169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064790, -0.003731, 0.997892,
		0.958808, -0.276917, -0.063288,
		0.276569, 0.960887, -0.014364,
		38.986771, 32.414543, 30.499861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397999, 31.764313, 30.808010>,  <38.793175, 31.741922, 30.509914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397999, 31.764313, 30.808010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266861, 32.141674, 30.828047>,  <39.188179, 32.368092, 30.840069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266861, 32.141674, 30.828047>,  <39.397999, 31.764313, 30.808010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266861, 32.141674, 30.828047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388754, 0.086391, 0.917282,
		0.861040, 0.320198, -0.395075,
		-0.327843, 0.943403, 0.050092,
		39.168507, 32.424694, 30.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830795, 31.980061, 31.318184>,  <39.397999, 31.764313, 30.808010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830795, 31.980061, 31.318184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579121, 32.290588, 31.302959>,  <39.428116, 32.476906, 31.293825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579121, 32.290588, 31.302959>,  <39.830795, 31.980061, 31.318184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579121, 32.290588, 31.302959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190201, 0.201266, 0.960893,
		0.753620, 0.597346, -0.274291,
		-0.629191, 0.776318, -0.038063,
		39.390362, 32.523483, 31.291540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139320, 32.539356, 31.649433>,  <39.830795, 31.980061, 31.318184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139320, 32.539356, 31.649433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748047, 32.622448, 31.648663>,  <39.513283, 32.672302, 31.648199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748047, 32.622448, 31.648663>,  <40.139320, 32.539356, 31.649433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748047, 32.622448, 31.648663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058443, 0.284092, 0.957014,
		0.199347, 0.936024, -0.290035,
		-0.978185, 0.207729, -0.001928,
		39.454590, 32.684765, 31.648085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082726, 33.269173, 31.932711>,  <40.139320, 32.539356, 31.649433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082726, 33.269173, 31.932711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733654, 33.075623, 31.958906>,  <39.524212, 32.959492, 31.974623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.733654, 33.075623, 31.958906>,  <40.082726, 33.269173, 31.932711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733654, 33.075623, 31.958906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013818, 0.158533, 0.987257,
		-0.488095, 0.860656, -0.145034,
		-0.872681, -0.483879, 0.065487,
		39.471851, 32.930458, 31.978552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659451, 33.672642, 32.286488>,  <40.082726, 33.269173, 31.932711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659451, 33.672642, 32.286488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504036, 33.309185, 32.347683>,  <39.410786, 33.091110, 32.384399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504036, 33.309185, 32.347683>,  <39.659451, 33.672642, 32.286488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504036, 33.309185, 32.347683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045421, 0.146946, 0.988101,
		-0.920311, 0.390867, -0.015823,
		-0.388541, -0.908642, 0.152989,
		39.387474, 33.036591, 32.393581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098259, 33.867157, 32.674644>,  <39.659451, 33.672642, 32.286488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098259, 33.867157, 32.674644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191265, 33.480591, 32.718407>,  <39.247070, 33.248650, 32.744663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.191265, 33.480591, 32.718407>,  <39.098259, 33.867157, 32.674644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191265, 33.480591, 32.718407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063619, 0.097136, 0.993236,
		-0.970510, -0.237903, -0.038897,
		0.232516, -0.966420, 0.109406,
		39.261021, 33.190666, 32.751228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625446, 33.577538, 33.100601>,  <39.098259, 33.867157, 32.674644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625446, 33.577538, 33.100601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925400, 33.314686, 33.131203>,  <39.105373, 33.156975, 33.149563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925400, 33.314686, 33.131203>,  <38.625446, 33.577538, 33.100601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925400, 33.314686, 33.131203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195380, -0.109490, 0.974597,
		-0.632059, -0.745783, -0.210495,
		0.749885, -0.657129, 0.076507,
		39.150364, 33.117546, 33.154156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341087, 33.013786, 33.469654>,  <38.625446, 33.577538, 33.100601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341087, 33.013786, 33.469654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738861, 32.994556, 33.507164>,  <38.977524, 32.983021, 33.529671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738861, 32.994556, 33.507164>,  <38.341087, 33.013786, 33.469654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738861, 32.994556, 33.507164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105187, -0.506707, 0.855677,
		0.006384, -0.860777, -0.508942,
		0.994432, -0.048071, 0.093777,
		39.037189, 32.980133, 33.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500145, 32.343292, 33.879898>,  <38.341087, 33.013786, 33.469654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500145, 32.343292, 33.879898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815319, 32.578621, 33.952602>,  <39.004425, 32.719818, 33.996223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815319, 32.578621, 33.952602>,  <38.500145, 32.343292, 33.879898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815319, 32.578621, 33.952602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074415, -0.384002, 0.920329,
		0.611243, -0.711635, -0.346349,
		0.787937, 0.588318, 0.181762,
		39.051701, 32.755116, 34.007130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003189, 31.971533, 34.275555>,  <38.500145, 32.343292, 33.879898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003189, 31.971533, 34.275555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126980, 32.346565, 34.339008>,  <39.201252, 32.571587, 34.377079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126980, 32.346565, 34.339008>,  <39.003189, 31.971533, 34.275555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126980, 32.346565, 34.339008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182624, -0.222320, 0.957717,
		0.933207, -0.267417, -0.240027,
		0.309473, 0.937583, 0.158633,
		39.219822, 32.627842, 34.386597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401184, 31.941795, 34.780922>,  <39.003189, 31.971533, 34.275555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401184, 31.941795, 34.780922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341839, 32.337330, 34.775394>,  <39.306232, 32.574650, 34.772079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341839, 32.337330, 34.775394>,  <39.401184, 31.941795, 34.780922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341839, 32.337330, 34.775394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181230, 0.040922, 0.982589,
		0.972185, 0.143278, -0.185278,
		-0.148365, 0.988836, -0.013817,
		39.297329, 32.633980, 34.771248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.612503, 35.402752, 29.101170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250084, 35.356483, 28.938345>,  <42.032631, 35.328724, 28.840651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250084, 35.356483, 28.938345>,  <42.612503, 35.402752, 29.101170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250084, 35.356483, 28.938345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402895, -0.530021, -0.746159,
		-0.129444, -0.840059, 0.526826,
		-0.906047, -0.115669, -0.407063,
		41.978271, 35.321781, 28.816225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495464, 34.694180, 28.911865>,  <42.612503, 35.402752, 29.101170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495464, 34.694180, 28.911865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251392, 34.902641, 28.673176>,  <42.104950, 35.027718, 28.529963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251392, 34.902641, 28.673176>,  <42.495464, 34.694180, 28.911865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251392, 34.902641, 28.673176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349876, -0.498512, -0.793141,
		-0.710822, -0.692738, 0.121844,
		-0.610180, 0.521152, -0.596726,
		42.068336, 35.058987, 28.494158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372372, 34.256714, 28.400770>,  <42.495464, 34.694180, 28.911865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372372, 34.256714, 28.400770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241467, 34.600674, 28.244068>,  <42.162922, 34.807049, 28.150047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.241467, 34.600674, 28.244068>,  <42.372372, 34.256714, 28.400770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241467, 34.600674, 28.244068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267505, -0.313317, -0.911194,
		-0.906277, -0.402999, -0.127489,
		-0.327266, 0.859898, -0.391756,
		42.143288, 34.858643, 28.126541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835522, 34.152908, 27.930176>,  <42.372372, 34.256714, 28.400770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835522, 34.152908, 27.930176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993755, 34.490295, 27.784803>,  <42.088696, 34.692726, 27.697580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.993755, 34.490295, 27.784803>,  <41.835522, 34.152908, 27.930176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993755, 34.490295, 27.784803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044354, -0.377702, -0.924864,
		-0.917359, 0.381980, -0.112002,
		0.395583, 0.843464, -0.363431,
		42.112431, 34.743336, 27.675774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438953, 34.301163, 27.252424>,  <41.835522, 34.152908, 27.930176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438953, 34.301163, 27.252424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779175, 34.511509, 27.254612>,  <41.983307, 34.637718, 27.255924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779175, 34.511509, 27.254612>,  <41.438953, 34.301163, 27.252424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779175, 34.511509, 27.254612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103315, -0.156892, -0.982197,
		-0.515645, 0.835973, -0.187774,
		0.850551, 0.525865, 0.005467,
		42.034340, 34.669270, 27.256252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319221, 34.698509, 26.742962>,  <41.438953, 34.301163, 27.252424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319221, 34.698509, 26.742962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718109, 34.710361, 26.770309>,  <41.957443, 34.717472, 26.786718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718109, 34.710361, 26.770309>,  <41.319221, 34.698509, 26.742962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718109, 34.710361, 26.770309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072901, -0.198142, -0.977459,
		-0.015417, 0.979725, -0.199752,
		0.997220, 0.029632, 0.068368,
		42.017277, 34.719250, 26.790819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538151, 35.067802, 26.197395>,  <41.319221, 34.698509, 26.742962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538151, 35.067802, 26.197395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863541, 34.871803, 26.322716>,  <42.058773, 34.754204, 26.397907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863541, 34.871803, 26.322716>,  <41.538151, 35.067802, 26.197395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863541, 34.871803, 26.322716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271254, -0.156866, -0.949639,
		0.514470, 0.857492, 0.005308,
		0.813475, -0.490001, 0.313301,
		42.107582, 34.724804, 26.416706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142517, 35.279255, 25.787809>,  <41.538151, 35.067802, 26.197395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142517, 35.279255, 25.787809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233551, 34.916595, 25.929899>,  <42.288174, 34.698997, 26.015154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233551, 34.916595, 25.929899>,  <42.142517, 35.279255, 25.787809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233551, 34.916595, 25.929899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282022, -0.287791, -0.915227,
		0.932023, 0.308477, 0.190198,
		0.227589, -0.906652, 0.355226,
		42.301826, 34.644600, 26.036467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834778, 34.949383, 25.446196>,  <42.142517, 35.279255, 25.787809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834778, 34.949383, 25.446196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621021, 34.652588, 25.608122>,  <42.492767, 34.474510, 25.705278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621021, 34.652588, 25.608122>,  <42.834778, 34.949383, 25.446196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621021, 34.652588, 25.608122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079829, -0.521105, -0.849751,
		0.841456, -0.421788, 0.337709,
		-0.534396, -0.741987, 0.404816,
		42.460701, 34.429993, 25.729567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142548, 34.390667, 25.236479>,  <42.834778, 34.949383, 25.446196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142548, 34.390667, 25.236479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800903, 34.214413, 25.346987>,  <42.595917, 34.108658, 25.413292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800903, 34.214413, 25.346987>,  <43.142548, 34.390667, 25.236479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800903, 34.214413, 25.346987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085167, -0.642530, -0.761513,
		0.513064, -0.626890, 0.586322,
		-0.854115, -0.440640, 0.276269,
		42.544670, 34.082222, 25.429867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339409, 33.711945, 25.119383>,  <43.142548, 34.390667, 25.236479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339409, 33.711945, 25.119383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.940121, 33.714195, 25.143139>,  <42.700546, 33.715546, 25.157393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.940121, 33.714195, 25.143139>,  <43.339409, 33.711945, 25.119383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940121, 33.714195, 25.143139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056916, -0.388065, -0.919873,
		0.017871, -0.921615, 0.387695,
		-0.998219, 0.005627, 0.059390,
		42.640656, 33.715885, 25.160955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044079, 32.995838, 25.015022>,  <43.339409, 33.711945, 25.119383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044079, 32.995838, 25.015022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.734192, 33.229420, 24.918016>,  <42.548260, 33.369568, 24.859814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.734192, 33.229420, 24.918016>,  <43.044079, 32.995838, 25.015022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734192, 33.229420, 24.918016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193996, -0.584551, -0.787823,
		-0.601820, -0.563288, 0.566144,
		-0.774711, 0.583958, -0.242519,
		42.501778, 33.404606, 24.845263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438255, 32.688728, 24.940042>,  <43.044079, 32.995838, 25.015022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438255, 32.688728, 24.940042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.425907, 33.007500, 24.698730>,  <42.418499, 33.198765, 24.553944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.425907, 33.007500, 24.698730>,  <42.438255, 32.688728, 24.940042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425907, 33.007500, 24.698730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115181, -0.596710, -0.794148,
		-0.992865, -0.094004, -0.073369,
		-0.030872, 0.796932, -0.603280,
		42.416645, 33.246578, 24.517746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743526, 32.507038, 24.594379>,  <42.438255, 32.688728, 24.940042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743526, 32.507038, 24.594379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433426, 32.531929, 24.342947>,  <41.247368, 32.546864, 24.192087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433426, 32.531929, 24.342947>,  <41.743526, 32.507038, 24.594379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433426, 32.531929, 24.342947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606154, 0.206619, 0.768041,
		0.177670, 0.976441, -0.122462,
		-0.775249, 0.062227, -0.628583,
		41.200851, 32.550598, 24.154371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357941, 33.079918, 24.883991>,  <41.743526, 32.507038, 24.594379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357941, 33.079918, 24.883991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165714, 32.801544, 24.670549>,  <41.050377, 32.634521, 24.542484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.165714, 32.801544, 24.670549>,  <41.357941, 33.079918, 24.883991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165714, 32.801544, 24.670549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572314, -0.212150, 0.792116,
		-0.664465, 0.686053, -0.296341,
		-0.480565, -0.695934, -0.533604,
		41.021545, 32.592766, 24.510468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730076, 33.336910, 24.717793>,  <41.357941, 33.079918, 24.883991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730076, 33.336910, 24.717793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720543, 32.938812, 24.755556>,  <40.714825, 32.699951, 24.778214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.720543, 32.938812, 24.755556>,  <40.730076, 33.336910, 24.717793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720543, 32.938812, 24.755556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611413, 0.089223, 0.786266,
		-0.790953, -0.038986, -0.610633,
		-0.023829, -0.995248, 0.094408,
		40.713394, 32.640236, 24.783878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048378, 33.219948, 24.999285>,  <40.730076, 33.336910, 24.717793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048378, 33.219948, 24.999285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215313, 32.860310, 25.052120>,  <40.315475, 32.644527, 25.083820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215313, 32.860310, 25.052120>,  <40.048378, 33.219948, 24.999285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215313, 32.860310, 25.052120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493533, -0.102199, 0.863702,
		-0.763055, -0.425647, -0.486387,
		0.417340, -0.899100, 0.132087,
		40.340515, 32.590580, 25.091747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494801, 32.834679, 25.279795>,  <40.048378, 33.219948, 24.999285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494801, 32.834679, 25.279795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823040, 32.633354, 25.388084>,  <40.019985, 32.512558, 25.453058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823040, 32.633354, 25.388084>,  <39.494801, 32.834679, 25.279795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823040, 32.633354, 25.388084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370398, -0.107633, 0.922616,
		-0.435224, -0.857376, -0.274750,
		0.820601, -0.503311, 0.270726,
		40.069221, 32.482361, 25.469301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176140, 32.432259, 25.674137>,  <39.494801, 32.834679, 25.279795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176140, 32.432259, 25.674137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561310, 32.370090, 25.762341>,  <39.792412, 32.332790, 25.815264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561310, 32.370090, 25.762341>,  <39.176140, 32.432259, 25.674137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561310, 32.370090, 25.762341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213545, 0.060382, 0.975066,
		-0.164857, -0.986002, 0.024955,
		0.962923, -0.155417, 0.220510,
		39.850185, 32.323467, 25.828493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249821, 31.815285, 26.099556>,  <39.176140, 32.432259, 25.674137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249821, 31.815285, 26.099556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574554, 32.041786, 26.156530>,  <39.769394, 32.177685, 26.190716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574554, 32.041786, 26.156530>,  <39.249821, 31.815285, 26.099556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574554, 32.041786, 26.156530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070295, -0.147383, 0.986578,
		0.579644, -0.810948, -0.079846,
		0.811832, 0.566252, 0.142436,
		39.818104, 32.211662, 26.199261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518803, 31.444195, 26.677439>,  <39.249821, 31.815285, 26.099556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518803, 31.444195, 26.677439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711773, 31.794468, 26.685831>,  <39.827557, 32.004631, 26.690866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.711773, 31.794468, 26.685831>,  <39.518803, 31.444195, 26.677439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711773, 31.794468, 26.685831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056941, -0.055254, 0.996847,
		0.874084, -0.479711, -0.076518,
		0.482426, 0.875685, 0.020981,
		39.856503, 32.057175, 26.692125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002449, 31.343063, 27.220709>,  <39.518803, 31.444195, 26.677439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002449, 31.343063, 27.220709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968678, 31.737202, 27.161432>,  <39.948414, 31.973684, 27.125866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968678, 31.737202, 27.161432>,  <40.002449, 31.343063, 27.220709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968678, 31.737202, 27.161432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037193, 0.151736, 0.987721,
		0.995735, 0.077883, -0.049459,
		-0.084431, 0.985348, -0.148192,
		39.943348, 32.032806, 27.116974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444237, 31.616146, 27.599159>,  <40.002449, 31.343063, 27.220709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444237, 31.616146, 27.599159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160275, 31.887968, 27.525148>,  <39.989895, 32.051060, 27.480742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160275, 31.887968, 27.525148>,  <40.444237, 31.616146, 27.599159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160275, 31.887968, 27.525148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152308, 0.108364, 0.982374,
		0.687628, 0.725576, 0.026573,
		-0.709908, 0.679556, -0.185025,
		39.947304, 32.091835, 27.469641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590576, 32.139629, 28.122801>,  <40.444237, 31.616146, 27.599159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590576, 32.139629, 28.122801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.230350, 32.251678, 27.989822>,  <40.014217, 32.318909, 27.910036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.230350, 32.251678, 27.989822>,  <40.590576, 32.139629, 28.122801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230350, 32.251678, 27.989822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243536, 0.308382, 0.919560,
		0.360110, 0.909083, -0.209497,
		-0.900562, 0.280123, -0.332445,
		39.960182, 32.335716, 27.890089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450771, 32.790401, 28.367281>,  <40.590576, 32.139629, 28.122801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450771, 32.790401, 28.367281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099667, 32.614517, 28.291182>,  <39.889004, 32.508987, 28.245522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.099667, 32.614517, 28.291182>,  <40.450771, 32.790401, 28.367281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099667, 32.614517, 28.291182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338613, 0.288433, 0.895627,
		-0.338943, 0.850564, -0.402067,
		-0.877758, -0.439712, -0.190250,
		39.836338, 32.482605, 28.234106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957439, 33.441418, 28.503206>,  <40.450771, 32.790401, 28.367281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957439, 33.441418, 28.503206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787380, 33.079498, 28.512995>,  <39.685345, 32.862347, 28.518867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787380, 33.079498, 28.512995>,  <39.957439, 33.441418, 28.503206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787380, 33.079498, 28.512995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352040, 0.190206, 0.916455,
		-0.833858, 0.381011, -0.399389,
		-0.425145, -0.904794, 0.024474,
		39.659836, 32.808060, 28.520336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255539, 33.566013, 28.877111>,  <39.957439, 33.441418, 28.503206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255539, 33.566013, 28.877111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324993, 33.172108, 28.873304>,  <39.366665, 32.935764, 28.871021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324993, 33.172108, 28.873304>,  <39.255539, 33.566013, 28.877111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324993, 33.172108, 28.873304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241877, -0.052012, 0.968912,
		-0.954644, -0.165938, -0.247223,
		0.173638, -0.984763, -0.009516,
		39.377083, 32.876678, 28.870449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637333, 33.312637, 29.076996>,  <39.255539, 33.566013, 28.877111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637333, 33.312637, 29.076996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884686, 33.007584, 29.152882>,  <39.033096, 32.824551, 29.198412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884686, 33.007584, 29.152882>,  <38.637333, 33.312637, 29.076996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884686, 33.007584, 29.152882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243860, 0.043277, 0.968844,
		-0.747089, -0.645375, -0.159216,
		0.618378, -0.762639, 0.189713,
		39.070198, 32.778793, 29.209795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028763, 32.877724, 28.821997>,  <38.637333, 33.312637, 29.076996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028763, 32.877724, 28.821997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632786, 32.852234, 28.771479>,  <37.395199, 32.836941, 28.741167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632786, 32.852234, 28.771479>,  <38.028763, 32.877724, 28.821997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632786, 32.852234, 28.771479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122471, 0.060760, -0.990610,
		0.070808, -0.996116, -0.052344,
		-0.989943, -0.063732, -0.126297,
		37.335804, 32.833118, 28.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817524, 32.346142, 28.305799>,  <38.028763, 32.877724, 28.821997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817524, 32.346142, 28.305799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525280, 32.619190, 28.311926>,  <37.349934, 32.783020, 28.315601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525280, 32.619190, 28.311926>,  <37.817524, 32.346142, 28.305799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525280, 32.619190, 28.311926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011769, 0.035017, -0.999317,
		-0.682692, -0.729932, -0.033618,
		-0.730611, 0.682622, 0.015315,
		37.306095, 32.823978, 28.316521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349358, 32.097481, 27.782194>,  <37.817524, 32.346142, 28.305799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349358, 32.097481, 27.782194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245590, 32.480968, 27.828777>,  <37.183331, 32.711060, 27.856728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245590, 32.480968, 27.828777>,  <37.349358, 32.097481, 27.782194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245590, 32.480968, 27.828777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103665, 0.092245, -0.990325,
		-0.960185, -0.268980, 0.075456,
		-0.259417, 0.958718, 0.116456,
		37.167767, 32.768585, 27.863714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713062, 32.212379, 27.405025>,  <37.349358, 32.097481, 27.782194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713062, 32.212379, 27.405025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886127, 32.570293, 27.449137>,  <36.989967, 32.785042, 27.475603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886127, 32.570293, 27.449137>,  <36.713062, 32.212379, 27.405025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886127, 32.570293, 27.449137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072713, 0.087288, -0.993526,
		-0.898618, 0.437882, -0.027296,
		0.432664, 0.894785, 0.110278,
		37.015926, 32.838730, 27.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306473, 32.667728, 26.988377>,  <36.713062, 32.212379, 27.405025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306473, 32.667728, 26.988377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651211, 32.862843, 27.043919>,  <36.858055, 32.979912, 27.077244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651211, 32.862843, 27.043919>,  <36.306473, 32.667728, 26.988377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651211, 32.862843, 27.043919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046651, 0.196380, -0.979417,
		-0.505018, 0.850586, 0.146494,
		0.861847, 0.487789, 0.138856,
		36.909763, 33.009178, 27.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239708, 33.266758, 26.602528>,  <36.306473, 32.667728, 26.988377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239708, 33.266758, 26.602528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632992, 33.214481, 26.653471>,  <36.868961, 33.183117, 26.684036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632992, 33.214481, 26.653471>,  <36.239708, 33.266758, 26.602528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632992, 33.214481, 26.653471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145832, 0.143201, -0.978890,
		0.109691, 0.981027, 0.159855,
		0.983209, -0.130688, 0.127358,
		36.927956, 33.175274, 26.691679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534630, 33.838779, 26.341505>,  <36.239708, 33.266758, 26.602528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534630, 33.838779, 26.341505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834946, 33.574585, 26.345003>,  <37.015133, 33.416069, 26.347103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834946, 33.574585, 26.345003>,  <36.534630, 33.838779, 26.341505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834946, 33.574585, 26.345003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069416, 0.065723, -0.995420,
		0.656886, 0.747957, 0.095192,
		0.750788, -0.660486, 0.008747,
		37.060181, 33.376438, 26.347628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573605, 34.679077, 26.262436>,  <36.534630, 33.838779, 26.341505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573605, 34.679077, 26.262436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.329605, 34.928913, 26.067383>,  <36.183205, 35.078815, 25.950352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.329605, 34.928913, 26.067383>,  <36.573605, 34.679077, 26.262436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329605, 34.928913, 26.067383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560937, 0.094289, 0.822471,
		0.559689, 0.775237, 0.292841,
		-0.609999, 0.624594, -0.487632,
		36.146606, 35.116291, 25.921093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586948, 35.429092, 26.598190>,  <36.573605, 34.679077, 26.262436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586948, 35.429092, 26.598190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246437, 35.340034, 26.408136>,  <36.042130, 35.286602, 26.294104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246437, 35.340034, 26.408136>,  <36.586948, 35.429092, 26.598190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246437, 35.340034, 26.408136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522284, 0.272515, 0.808056,
		-0.050425, 0.936038, -0.348269,
		-0.851280, -0.222641, -0.475136,
		35.991055, 35.273243, 26.265596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109722, 35.947868, 26.676519>,  <36.586948, 35.429092, 26.598190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109722, 35.947868, 26.676519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838810, 35.686699, 26.540888>,  <35.676262, 35.529995, 26.459509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838810, 35.686699, 26.540888>,  <36.109722, 35.947868, 26.676519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838810, 35.686699, 26.540888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629638, 0.275985, 0.726215,
		-0.380586, 0.705349, -0.598028,
		-0.677282, -0.652928, -0.339079,
		35.635624, 35.490822, 26.439165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436886, 36.195377, 26.731077>,  <36.109722, 35.947868, 26.676519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436886, 36.195377, 26.731077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325085, 35.812302, 26.703634>,  <35.258003, 35.582455, 26.687168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325085, 35.812302, 26.703634>,  <35.436886, 36.195377, 26.731077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325085, 35.812302, 26.703634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591742, 0.115545, 0.797803,
		-0.756122, 0.263585, -0.599001,
		-0.279501, -0.957691, -0.068608,
		35.241234, 35.524994, 26.683052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808537, 36.208771, 26.841152>,  <35.436886, 36.195377, 26.731077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808537, 36.208771, 26.841152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889107, 35.825214, 26.921112>,  <34.937450, 35.595081, 26.969088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889107, 35.825214, 26.921112>,  <34.808537, 36.208771, 26.841152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889107, 35.825214, 26.921112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641733, 0.024989, 0.766521,
		-0.740003, -0.282682, -0.610317,
		0.201430, -0.958888, 0.199898,
		34.949535, 35.537548, 26.981081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118988, 35.861412, 26.860193>,  <34.808537, 36.208771, 26.841152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118988, 35.861412, 26.860193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 35.663780, 27.050526>,  <34.584682, 35.545200, 27.164724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 35.663780, 27.050526>,  <34.118988, 35.861412, 26.860193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410046, 35.663780, 27.050526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579291, -0.071120, 0.812012,
		-0.367361, -0.866501, -0.337969,
		0.727646, -0.494084, 0.475829,
		34.628338, 35.515556, 27.193274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852165, 35.211769, 27.112759>,  <34.118988, 35.861412, 26.860193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852165, 35.211769, 27.112759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176296, 35.263180, 27.341440>,  <34.370777, 35.294025, 27.478649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176296, 35.263180, 27.341440>,  <33.852165, 35.211769, 27.112759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176296, 35.263180, 27.341440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535268, -0.234642, 0.811438,
		0.238439, -0.963547, -0.121339,
		0.810330, 0.128530, 0.571703,
		34.419395, 35.301739, 27.512951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.443359, 36.040508, 23.776558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.523144, 35.703667, 23.976988>,  <40.571014, 35.501560, 24.097246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.523144, 35.703667, 23.976988>,  <40.443359, 36.040508, 23.776558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523144, 35.703667, 23.976988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251274, 0.450297, 0.856793,
		-0.947141, -0.296804, -0.121782,
		0.199461, -0.842105, 0.501074,
		40.582981, 35.451035, 24.127310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811588, 35.823784, 24.185068>,  <40.443359, 36.040508, 23.776558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811588, 35.823784, 24.185068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.145416, 35.676811, 24.349257>,  <40.345715, 35.588627, 24.447769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.145416, 35.676811, 24.349257>,  <39.811588, 35.823784, 24.185068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145416, 35.676811, 24.349257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264575, 0.386214, 0.883651,
		-0.483211, -0.846069, 0.225110,
		0.834570, -0.367432, 0.410471,
		40.395786, 35.566582, 24.472399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546070, 35.637756, 24.746586>,  <39.811588, 35.823784, 24.185068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546070, 35.637756, 24.746586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943054, 35.659000, 24.790756>,  <40.181244, 35.671749, 24.817259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943054, 35.659000, 24.790756>,  <39.546070, 35.637756, 24.746586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943054, 35.659000, 24.790756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121962, 0.340914, 0.932149,
		0.011863, -0.938593, 0.344823,
		0.992464, 0.053114, 0.110428,
		40.240795, 35.674934, 24.823885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624378, 35.422436, 25.407551>,  <39.546070, 35.637756, 24.746586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624378, 35.422436, 25.407551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970634, 35.600288, 25.315500>,  <40.178391, 35.707001, 25.260269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970634, 35.600288, 25.315500>,  <39.624378, 35.422436, 25.407551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970634, 35.600288, 25.315500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036459, 0.402445, 0.914718,
		0.499330, -0.800211, 0.332163,
		0.865645, 0.444635, -0.230128,
		40.230328, 35.733677, 25.246462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095715, 35.230354, 26.020538>,  <39.624378, 35.422436, 25.407551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095715, 35.230354, 26.020538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225513, 35.553379, 25.823544>,  <40.303394, 35.747192, 25.705347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225513, 35.553379, 25.823544>,  <40.095715, 35.230354, 26.020538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225513, 35.553379, 25.823544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261897, 0.423599, 0.867164,
		0.908906, -0.410375, -0.074041,
		0.324499, 0.807562, -0.492488,
		40.322865, 35.795647, 25.675797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742180, 35.287975, 26.335079>,  <40.095715, 35.230354, 26.020538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742180, 35.287975, 26.335079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647831, 35.645363, 26.182203>,  <40.591221, 35.859795, 26.090477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647831, 35.645363, 26.182203>,  <40.742180, 35.287975, 26.335079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647831, 35.645363, 26.182203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171821, 0.425435, 0.888528,
		0.956473, 0.143912, -0.253867,
		-0.235873, 0.893473, -0.382191,
		40.577068, 35.913406, 26.067547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129887, 35.844303, 26.599218>,  <40.742180, 35.287975, 26.335079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129887, 35.844303, 26.599218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818508, 36.072582, 26.494663>,  <40.631680, 36.209549, 26.431931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818508, 36.072582, 26.494663>,  <41.129887, 35.844303, 26.599218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818508, 36.072582, 26.494663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045367, 0.466473, 0.883371,
		0.626070, 0.675798, -0.389015,
		-0.778446, 0.570701, -0.261386,
		40.584976, 36.243793, 26.416248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148422, 36.325695, 27.046709>,  <41.129887, 35.844303, 26.599218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148422, 36.325695, 27.046709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778763, 36.404064, 26.915516>,  <40.556969, 36.451084, 26.836800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.778763, 36.404064, 26.915516>,  <41.148422, 36.325695, 27.046709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778763, 36.404064, 26.915516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254654, 0.324075, 0.911113,
		0.284797, 0.925522, -0.249600,
		-0.924144, 0.195920, -0.327984,
		40.501518, 36.462841, 26.817122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004166, 37.047276, 27.262789>,  <41.148422, 36.325695, 27.046709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004166, 37.047276, 27.262789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648346, 36.891655, 27.167009>,  <40.434853, 36.798283, 27.109541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648346, 36.891655, 27.167009>,  <41.004166, 37.047276, 27.262789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648346, 36.891655, 27.167009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401741, 0.416664, 0.815472,
		-0.217493, 0.821601, -0.526943,
		-0.889551, -0.389055, -0.239449,
		40.381481, 36.774937, 27.095175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505329, 37.652214, 27.307222>,  <41.004166, 37.047276, 27.262789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505329, 37.652214, 27.307222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303940, 37.309242, 27.349789>,  <40.183105, 37.103458, 27.375328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303940, 37.309242, 27.349789>,  <40.505329, 37.652214, 27.307222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303940, 37.309242, 27.349789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522620, 0.400300, 0.752747,
		-0.688026, 0.323377, -0.649652,
		-0.503477, -0.857431, 0.106413,
		40.152897, 37.052013, 27.381712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727146, 37.813541, 27.408419>,  <40.505329, 37.652214, 27.307222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727146, 37.813541, 27.408419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786976, 37.456581, 27.578711>,  <39.822872, 37.242405, 27.680885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786976, 37.456581, 27.578711>,  <39.727146, 37.813541, 27.408419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786976, 37.456581, 27.578711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677153, 0.221294, 0.701778,
		-0.720480, -0.393253, -0.571193,
		0.149575, -0.892402, 0.425730,
		39.831848, 37.188862, 27.706430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100368, 37.626484, 27.641033>,  <39.727146, 37.813541, 27.408419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100368, 37.626484, 27.641033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356712, 37.392395, 27.839756>,  <39.510517, 37.251942, 27.958990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356712, 37.392395, 27.839756>,  <39.100368, 37.626484, 27.641033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356712, 37.392395, 27.839756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526708, 0.135596, 0.839162,
		-0.558460, -0.799456, -0.221342,
		0.640860, -0.585221, 0.496805,
		39.548969, 37.216827, 27.988798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342010, 37.830128, 27.740263>,  <39.100368, 37.626484, 27.641033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342010, 37.830128, 27.740263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113457, 38.157196, 27.712143>,  <37.976326, 38.353436, 27.695271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113457, 38.157196, 27.712143>,  <38.342010, 37.830128, 27.740263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113457, 38.157196, 27.712143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420518, 0.218139, -0.880670,
		-0.704762, -0.532759, -0.468485,
		-0.571380, 0.817669, -0.070298,
		37.942043, 38.402496, 27.691053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980335, 37.748184, 27.106329>,  <38.342010, 37.830128, 27.740263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980335, 37.748184, 27.106329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953884, 38.138905, 27.187807>,  <37.938015, 38.373337, 27.236694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953884, 38.138905, 27.187807>,  <37.980335, 37.748184, 27.106329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953884, 38.138905, 27.187807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269376, 0.214037, -0.938949,
		-0.960762, -0.007221, -0.277280,
		-0.066128, 0.976799, 0.203694,
		37.934044, 38.431946, 27.248915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551884, 37.940197, 26.530024>,  <37.980335, 37.748184, 27.106329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551884, 37.940197, 26.530024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755329, 38.248123, 26.684269>,  <37.877396, 38.432880, 26.776817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755329, 38.248123, 26.684269>,  <37.551884, 37.940197, 26.530024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755329, 38.248123, 26.684269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389263, 0.193888, -0.900490,
		-0.767976, 0.608106, -0.201046,
		0.508613, 0.769814, 0.385615,
		37.907913, 38.479069, 26.799953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438229, 38.407139, 26.001854>,  <37.551884, 37.940197, 26.530024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438229, 38.407139, 26.001854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755238, 38.507034, 26.224400>,  <37.945442, 38.566971, 26.357927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755238, 38.507034, 26.224400>,  <37.438229, 38.407139, 26.001854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755238, 38.507034, 26.224400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532244, 0.162107, -0.830926,
		-0.297706, 0.954647, -0.004450,
		0.792520, 0.249740, 0.556365,
		37.992992, 38.581955, 26.391310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598572, 39.045986, 25.712442>,  <37.438229, 38.407139, 26.001854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598572, 39.045986, 25.712442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940273, 38.927807, 25.883537>,  <38.145294, 38.856899, 25.986195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940273, 38.927807, 25.883537>,  <37.598572, 39.045986, 25.712442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940273, 38.927807, 25.883537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481666, 0.140295, -0.865052,
		0.195570, 0.945001, 0.262155,
		0.854254, -0.295449, 0.427737,
		38.196548, 38.839172, 26.011858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008087, 39.504860, 25.432556>,  <37.598572, 39.045986, 25.712442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008087, 39.504860, 25.432556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203934, 39.172421, 25.538050>,  <38.321442, 38.972958, 25.601345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203934, 39.172421, 25.538050>,  <38.008087, 39.504860, 25.432556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203934, 39.172421, 25.538050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529890, 0.043408, -0.846955,
		0.692451, 0.554435, 0.461642,
		0.489620, -0.831094, 0.263732,
		38.350819, 38.923092, 25.617168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656082, 39.599842, 25.022970>,  <38.008087, 39.504860, 25.432556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656082, 39.599842, 25.022970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656353, 39.215103, 25.132410>,  <38.656517, 38.984261, 25.198074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.656353, 39.215103, 25.132410>,  <38.656082, 39.599842, 25.022970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656353, 39.215103, 25.132410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519449, -0.233452, -0.821993,
		0.854501, 0.142677, 0.499471,
		0.000677, -0.961844, 0.273598,
		38.656555, 38.926552, 25.214489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341461, 39.432335, 24.885193>,  <38.656082, 39.599842, 25.022970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341461, 39.432335, 24.885193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105358, 39.110077, 24.905287>,  <38.963696, 38.916721, 24.917343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105358, 39.110077, 24.905287>,  <39.341461, 39.432335, 24.885193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105358, 39.110077, 24.905287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469474, -0.393254, -0.790535,
		0.656650, -0.443035, 0.610353,
		-0.590259, -0.805649, 0.050237,
		38.928280, 38.868382, 24.920359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786034, 38.838223, 24.751215>,  <39.341461, 39.432335, 24.885193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786034, 38.838223, 24.751215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.434681, 38.647213, 24.743137>,  <39.223869, 38.532608, 24.738291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.434681, 38.647213, 24.743137>,  <39.786034, 38.838223, 24.751215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434681, 38.647213, 24.743137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308066, -0.533354, -0.787800,
		0.365427, -0.698212, 0.615600,
		-0.878384, -0.477528, -0.020193,
		39.171165, 38.503956, 24.737080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966610, 38.130970, 24.876371>,  <39.786034, 38.838223, 24.751215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966610, 38.130970, 24.876371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626049, 38.173710, 24.670963>,  <39.421715, 38.199352, 24.547718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.626049, 38.173710, 24.670963>,  <39.966610, 38.130970, 24.876371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626049, 38.173710, 24.670963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364513, -0.583454, -0.725749,
		-0.377157, -0.805087, 0.457806,
		-0.851401, 0.106846, -0.513519,
		39.370628, 38.205765, 24.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654861, 37.389927, 24.698069>,  <39.966610, 38.130970, 24.876371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654861, 37.389927, 24.698069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.525444, 37.641796, 24.415558>,  <39.447792, 37.792919, 24.246052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.525444, 37.641796, 24.415558>,  <39.654861, 37.389927, 24.698069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525444, 37.641796, 24.415558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493540, -0.524539, -0.693741,
		-0.807302, -0.573033, -0.141057,
		-0.323546, 0.629676, -0.706276,
		39.428379, 37.830700, 24.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512798, 36.966770, 24.063889>,  <39.654861, 37.389927, 24.698069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512798, 36.966770, 24.063889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520096, 37.332447, 23.901941>,  <39.524475, 37.551853, 23.804773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520096, 37.332447, 23.901941>,  <39.512798, 36.966770, 24.063889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520096, 37.332447, 23.901941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235749, -0.397451, -0.886823,
		-0.971643, -0.079268, -0.222771,
		0.018243, 0.914193, -0.404868,
		39.525570, 37.606705, 23.780481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120575, 36.807495, 24.697893>,  <39.512798, 36.966770, 24.063889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120575, 36.807495, 24.697893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839329, 36.987850, 24.477953>,  <38.670582, 37.096062, 24.345989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839329, 36.987850, 24.477953>,  <39.120575, 36.807495, 24.697893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839329, 36.987850, 24.477953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691105, -0.615297, 0.379187,
		-0.167351, 0.646615, 0.744233,
		-0.703113, 0.450886, -0.549850,
		38.628395, 37.123116, 24.312998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521187, 36.976307, 25.090122>,  <39.120575, 36.807495, 24.697893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521187, 36.976307, 25.090122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397049, 36.931286, 24.712547>,  <38.322567, 36.904274, 24.486002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397049, 36.931286, 24.712547>,  <38.521187, 36.976307, 25.090122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397049, 36.931286, 24.712547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691880, -0.654203, 0.305483,
		-0.651910, 0.747897, 0.125155,
		-0.310346, -0.112555, -0.943937,
		38.303944, 36.897518, 24.429367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731915, 37.206600, 24.937685>,  <38.521187, 36.976307, 25.090122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731915, 37.206600, 24.937685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853874, 36.916054, 24.691294>,  <37.927048, 36.741726, 24.543459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853874, 36.916054, 24.691294>,  <37.731915, 37.206600, 24.937685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853874, 36.916054, 24.691294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757927, -0.576703, 0.304895,
		-0.576703, 0.373907, -0.726366,
		-0.304895, 0.726366, 0.615980,
		37.945343, 36.698143, 24.506500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182384, 37.010952, 24.535255>,  <37.731915, 37.206600, 24.937685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182384, 37.010952, 24.535255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.416092, 36.686424, 24.527309>,  <37.556316, 36.491707, 24.522541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.416092, 36.686424, 24.527309>,  <37.182384, 37.010952, 24.535255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416092, 36.686424, 24.527309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796337, -0.577857, 0.178684,
		-0.156448, -0.088580, -0.983706,
		0.584270, -0.811316, -0.019865,
		37.591373, 36.443027, 24.521351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767002, 36.547142, 24.111183>,  <37.182384, 37.010952, 24.535255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767002, 36.547142, 24.111183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034077, 36.332050, 24.317114>,  <37.194321, 36.202995, 24.440672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034077, 36.332050, 24.317114>,  <36.767002, 36.547142, 24.111183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034077, 36.332050, 24.317114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720985, -0.639332, 0.267274,
		0.185423, -0.549636, -0.814566,
		0.667682, -0.537731, 0.514826,
		37.234383, 36.170731, 24.471561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649586, 35.785297, 23.957069>,  <36.767002, 36.547142, 24.111183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649586, 35.785297, 23.957069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827206, 35.801517, 24.315102>,  <36.933777, 35.811249, 24.529921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827206, 35.801517, 24.315102>,  <36.649586, 35.785297, 23.957069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827206, 35.801517, 24.315102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646974, -0.676603, 0.351616,
		0.619873, -0.735231, -0.274213,
		0.444052, 0.040548, 0.895083,
		36.960423, 35.813683, 24.583626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637299, 35.067150, 24.248011>,  <36.649586, 35.785297, 23.957069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637299, 35.067150, 24.248011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675964, 35.312141, 24.561834>,  <36.699165, 35.459137, 24.750128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675964, 35.312141, 24.561834>,  <36.637299, 35.067150, 24.248011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675964, 35.312141, 24.561834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602442, -0.591452, 0.535955,
		0.792287, -0.524460, 0.311806,
		0.096669, 0.612475, 0.784557,
		36.704964, 35.495884, 24.797201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772484, 34.635502, 24.900850>,  <36.637299, 35.067150, 24.248011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772484, 34.635502, 24.900850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702099, 35.005188, 25.036413>,  <36.659866, 35.227001, 25.117750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702099, 35.005188, 25.036413>,  <36.772484, 34.635502, 24.900850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702099, 35.005188, 25.036413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632445, -0.369963, 0.680544,
		0.754354, -0.094588, 0.649617,
		-0.175963, 0.924219, 0.338905,
		36.649311, 35.282455, 25.138084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664989, 34.483864, 25.510723>,  <36.772484, 34.635502, 24.900850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664989, 34.483864, 25.510723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.520401, 34.856327, 25.491585>,  <36.433647, 35.079803, 25.480103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.520401, 34.856327, 25.491585>,  <36.664989, 34.483864, 25.510723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520401, 34.856327, 25.491585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607077, -0.196096, 0.770067,
		0.707670, 0.307401, 0.636166,
		-0.361469, 0.931156, -0.047845,
		36.411961, 35.135674, 25.477232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201786, 34.155750, 25.973928>,  <36.664989, 34.483864, 25.510723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201786, 34.155750, 25.973928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.294144, 33.766582, 25.969803>,  <37.349560, 33.533081, 25.967327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.294144, 33.766582, 25.969803>,  <37.201786, 34.155750, 25.973928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294144, 33.766582, 25.969803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371268, 0.097897, -0.923351,
		0.899359, 0.209370, 0.383820,
		0.230897, -0.972924, -0.010312,
		37.363411, 33.474705, 25.966709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850491, 34.142010, 25.783371>,  <37.201786, 34.155750, 25.973928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850491, 34.142010, 25.783371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.663330, 33.799400, 25.696253>,  <37.551033, 33.593834, 25.643982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.663330, 33.799400, 25.696253>,  <37.850491, 34.142010, 25.783371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663330, 33.799400, 25.696253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354067, 0.044121, -0.934179,
		0.809754, -0.514221, 0.282621,
		-0.467905, -0.856522, -0.217796,
		37.522957, 33.542442, 25.630915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255856, 33.970932, 25.212692>,  <37.850491, 34.142010, 25.783371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255856, 33.970932, 25.212692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980507, 33.682194, 25.241217>,  <37.815300, 33.508949, 25.258331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980507, 33.682194, 25.241217>,  <38.255856, 33.970932, 25.212692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980507, 33.682194, 25.241217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398271, -0.458293, -0.794574,
		0.606242, -0.518559, 0.602966,
		-0.688368, -0.721848, 0.071309,
		37.773998, 33.465641, 25.262609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584984, 33.329899, 25.210665>,  <38.255856, 33.970932, 25.212692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584984, 33.329899, 25.210665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.206570, 33.262608, 25.099876>,  <37.979519, 33.222233, 25.033403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.206570, 33.262608, 25.099876>,  <38.584984, 33.329899, 25.210665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206570, 33.262608, 25.099876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324004, -0.475341, -0.817968,
		0.005949, -0.863568, 0.504197,
		-0.946037, -0.168228, -0.276971,
		37.922760, 33.212139, 25.016785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485870, 32.578442, 25.153431>,  <38.584984, 33.329899, 25.210665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485870, 32.578442, 25.153431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208763, 32.772671, 24.940153>,  <38.042500, 32.889210, 24.812185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208763, 32.772671, 24.940153>,  <38.485870, 32.578442, 25.153431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208763, 32.772671, 24.940153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302033, -0.476031, -0.825936,
		-0.654869, -0.733222, 0.183118,
		-0.692764, 0.485572, -0.533195,
		38.000935, 32.918343, 24.780195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271729, 32.107887, 24.709600>,  <38.485870, 32.578442, 25.153431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271729, 32.107887, 24.709600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157234, 32.454830, 24.546741>,  <38.088539, 32.662994, 24.449026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.157234, 32.454830, 24.546741>,  <38.271729, 32.107887, 24.709600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157234, 32.454830, 24.546741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316768, -0.315373, -0.894538,
		-0.904283, -0.385018, -0.184479,
		-0.286233, 0.867353, -0.407147,
		38.071365, 32.715034, 24.424597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041492, 31.903360, 24.146236>,  <38.271729, 32.107887, 24.709600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041492, 31.903360, 24.146236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.137165, 32.279491, 24.049423>,  <38.194569, 32.505169, 23.991335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.137165, 32.279491, 24.049423>,  <38.041492, 31.903360, 24.146236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137165, 32.279491, 24.049423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359079, -0.317254, -0.877731,
		-0.902140, 0.123025, -0.413532,
		0.239177, 0.940327, -0.242032,
		38.208920, 32.561588, 23.976814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849998, 31.970686, 23.413342>,  <38.041492, 31.903360, 24.146236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849998, 31.970686, 23.413342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.119064, 32.257282, 23.487278>,  <38.280502, 32.429241, 23.531641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.119064, 32.257282, 23.487278>,  <37.849998, 31.970686, 23.413342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119064, 32.257282, 23.487278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611696, -0.397881, -0.683753,
		-0.416358, 0.573002, -0.705914,
		0.672662, 0.716491, 0.184842,
		38.320862, 32.472229, 23.542730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999550, 32.374588, 22.769510>,  <37.849998, 31.970686, 23.413342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999550, 32.374588, 22.769510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323338, 32.371521, 23.004356>,  <38.517609, 32.369682, 23.145264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323338, 32.371521, 23.004356>,  <37.999550, 32.374588, 22.769510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323338, 32.371521, 23.004356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560620, -0.287160, -0.776688,
		0.174548, 0.957852, -0.228151,
		0.809468, -0.007664, 0.587114,
		38.566177, 32.369221, 23.180490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.647423, 33.378628, 38.910435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011330, 33.474483, 38.774849>,  <36.229675, 33.531998, 38.693497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011330, 33.474483, 38.774849>,  <35.647423, 33.378628, 38.910435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011330, 33.474483, 38.774849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414564, 0.482221, -0.771751,
		-0.021486, 0.842636, 0.538055,
		0.909766, 0.239640, -0.338966,
		36.284260, 33.546375, 38.673161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548527, 33.972820, 38.638931>,  <35.647423, 33.378628, 38.910435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548527, 33.972820, 38.638931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903591, 33.868164, 38.487354>,  <36.116631, 33.805370, 38.396408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903591, 33.868164, 38.487354>,  <35.548527, 33.972820, 38.638931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903591, 33.868164, 38.487354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296220, 0.305618, -0.904904,
		0.352569, 0.915501, 0.193784,
		0.887665, -0.261638, -0.378941,
		36.169891, 33.789673, 38.373672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785225, 34.528831, 38.117928>,  <35.548527, 33.972820, 38.638931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785225, 34.528831, 38.117928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997753, 34.196434, 38.052029>,  <36.125271, 33.996994, 38.012489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997753, 34.196434, 38.052029>,  <35.785225, 34.528831, 38.117928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997753, 34.196434, 38.052029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108224, 0.126301, -0.986071,
		0.840230, 0.541750, -0.022828,
		0.531320, -0.830997, -0.164752,
		36.157150, 33.947136, 38.002602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203800, 34.744354, 37.618664>,  <35.785225, 34.528831, 38.117928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203800, 34.744354, 37.618664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190731, 34.346661, 37.577824>,  <36.182888, 34.108044, 37.553322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190731, 34.346661, 37.577824>,  <36.203800, 34.744354, 37.618664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190731, 34.346661, 37.577824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014431, 0.101671, -0.994713,
		0.999362, -0.033975, 0.011026,
		-0.032674, -0.994238, -0.102096,
		36.180927, 34.048389, 37.547195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688511, 34.564438, 37.024853>,  <36.203800, 34.744354, 37.618664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688511, 34.564438, 37.024853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464153, 34.234890, 37.057457>,  <36.329540, 34.037163, 37.077019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464153, 34.234890, 37.057457>,  <36.688511, 34.564438, 37.024853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464153, 34.234890, 37.057457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146499, 0.001866, -0.989209,
		0.814823, -0.566782, -0.121742,
		-0.560893, -0.823866, 0.081512,
		36.295887, 33.987732, 37.081909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879566, 34.134399, 36.407272>,  <36.688511, 34.564438, 37.024853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879566, 34.134399, 36.407272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545967, 33.976135, 36.561100>,  <36.345806, 33.881176, 36.653397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545967, 33.976135, 36.561100>,  <36.879566, 34.134399, 36.407272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545967, 33.976135, 36.561100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295564, -0.268186, -0.916907,
		0.465921, -0.878366, 0.106724,
		-0.834002, -0.395663, 0.384567,
		36.295765, 33.857437, 36.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849491, 33.429989, 36.326103>,  <36.879566, 34.134399, 36.407272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849491, 33.429989, 36.326103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466084, 33.537666, 36.363564>,  <36.236038, 33.602272, 36.386040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466084, 33.537666, 36.363564>,  <36.849491, 33.429989, 36.326103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466084, 33.537666, 36.363564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193417, -0.373024, -0.907438,
		-0.209338, -0.887914, 0.409618,
		-0.958523, 0.269188, 0.093650,
		36.178528, 33.618423, 36.391659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345787, 32.813847, 36.221390>,  <36.849491, 33.429989, 36.326103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345787, 32.813847, 36.221390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144230, 33.152737, 36.154099>,  <36.023296, 33.356071, 36.113724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144230, 33.152737, 36.154099>,  <36.345787, 32.813847, 36.221390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144230, 33.152737, 36.154099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240930, -0.324894, -0.914547,
		-0.829484, -0.420303, 0.367834,
		-0.503894, 0.847224, -0.168231,
		35.993061, 33.406902, 36.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813602, 32.606812, 35.894123>,  <36.345787, 32.813847, 36.221390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813602, 32.606812, 35.894123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817127, 32.991341, 35.784004>,  <35.819241, 33.222057, 35.717934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.817127, 32.991341, 35.784004>,  <35.813602, 32.606812, 35.894123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817127, 32.991341, 35.784004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305692, -0.259538, -0.916074,
		-0.952090, 0.092225, 0.291581,
		0.008808, 0.961319, -0.275296,
		35.819771, 33.279736, 35.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291653, 32.651020, 35.424454>,  <35.813602, 32.606812, 35.894123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291653, 32.651020, 35.424454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491055, 32.988346, 35.344147>,  <35.610695, 33.190742, 35.295963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491055, 32.988346, 35.344147>,  <35.291653, 32.651020, 35.424454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491055, 32.988346, 35.344147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068503, -0.192548, -0.978894,
		-0.864174, 0.501740, -0.038217,
		0.498508, 0.843316, -0.200766,
		35.640606, 33.241341, 35.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960808, 32.834423, 34.839577>,  <35.291653, 32.651020, 35.424454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960808, 32.834423, 34.839577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299049, 33.046619, 34.815804>,  <35.501995, 33.173935, 34.801540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299049, 33.046619, 34.815804>,  <34.960808, 32.834423, 34.839577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299049, 33.046619, 34.815804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027887, -0.067277, -0.997345,
		-0.533078, 0.845018, -0.042096,
		0.845607, 0.530488, -0.059429,
		35.552731, 33.205765, 34.797974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846046, 33.381485, 34.218739>,  <34.960808, 32.834423, 34.839577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846046, 33.381485, 34.218739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238388, 33.328663, 34.275997>,  <35.473793, 33.296970, 34.310352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.238388, 33.328663, 34.275997>,  <34.846046, 33.381485, 34.218739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238388, 33.328663, 34.275997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140057, -0.032421, -0.989612,
		0.135321, 0.990712, -0.013305,
		0.980853, -0.132052, 0.143143,
		35.532642, 33.289047, 34.318939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513042, 34.031815, 33.757404>,  <34.846046, 33.381485, 34.218739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513042, 34.031815, 33.757404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167118, 34.160282, 33.603024>,  <33.959564, 34.237362, 33.510395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167118, 34.160282, 33.603024>,  <34.513042, 34.031815, 33.757404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167118, 34.160282, 33.603024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405118, 0.007790, 0.914231,
		0.296626, 0.946991, 0.123373,
		-0.864808, 0.321165, -0.385954,
		33.907677, 34.256630, 33.487236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391094, 34.588650, 34.170197>,  <34.513042, 34.031815, 33.757404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391094, 34.588650, 34.170197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051258, 34.460831, 34.002350>,  <33.847355, 34.384140, 33.901642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051258, 34.460831, 34.002350>,  <34.391094, 34.588650, 34.170197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051258, 34.460831, 34.002350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501613, 0.243622, 0.830080,
		-0.163021, 0.915717, -0.367269,
		-0.849593, -0.319547, -0.419620,
		33.796379, 34.364967, 33.876465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967056, 35.070015, 34.450382>,  <34.391094, 34.588650, 34.170197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967056, 35.070015, 34.450382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726654, 34.789532, 34.296967>,  <33.582413, 34.621243, 34.204918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726654, 34.789532, 34.296967>,  <33.967056, 35.070015, 34.450382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726654, 34.789532, 34.296967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700742, 0.231500, 0.674810,
		-0.384393, 0.674325, -0.630498,
		-0.601002, -0.701209, -0.383541,
		33.546352, 34.579170, 34.181904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273548, 35.422619, 34.360180>,  <33.967056, 35.070015, 34.450382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273548, 35.422619, 34.360180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197845, 35.029850, 34.358978>,  <33.152424, 34.794189, 34.358257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197845, 35.029850, 34.358978>,  <33.273548, 35.422619, 34.360180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197845, 35.029850, 34.358978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714535, 0.135616, 0.686330,
		-0.673515, 0.132040, -0.727284,
		-0.189254, -0.981923, -0.003008,
		33.141068, 34.735271, 34.358074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548435, 35.263554, 34.036480>,  <33.273548, 35.422619, 34.360180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548435, 35.263554, 34.036480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628929, 34.960480, 34.284809>,  <32.677227, 34.778637, 34.433807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628929, 34.960480, 34.284809>,  <32.548435, 35.263554, 34.036480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628929, 34.960480, 34.284809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814378, 0.222781, 0.535870,
		-0.544328, -0.613420, -0.572209,
		0.201236, -0.757683, 0.620822,
		32.689301, 34.733173, 34.471054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891790, 34.949928, 34.060360>,  <32.548435, 35.263554, 34.036480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891790, 34.949928, 34.060360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093697, 34.851452, 34.391323>,  <32.214840, 34.792366, 34.589901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093697, 34.851452, 34.391323>,  <31.891790, 34.949928, 34.060360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093697, 34.851452, 34.391323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790332, 0.253766, 0.557654,
		-0.347259, -0.935409, -0.066485,
		0.504763, -0.246196, 0.827407,
		32.245125, 34.777592, 34.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433321, 34.525948, 34.389462>,  <31.891790, 34.949928, 34.060360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433321, 34.525948, 34.389462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688812, 34.632229, 34.678303>,  <31.842108, 34.695999, 34.851608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.688812, 34.632229, 34.678303>,  <31.433321, 34.525948, 34.389462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688812, 34.632229, 34.678303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769424, 0.216001, 0.601108,
		0.003742, -0.939545, 0.342404,
		0.638728, 0.265703, 0.722100,
		31.880430, 34.711941, 34.894932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207500, 34.146774, 35.019684>,  <31.433321, 34.525948, 34.389462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207500, 34.146774, 35.019684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432547, 34.462795, 35.117077>,  <31.567574, 34.652409, 35.175514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432547, 34.462795, 35.117077>,  <31.207500, 34.146774, 35.019684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432547, 34.462795, 35.117077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770740, 0.394724, 0.500154,
		0.299038, -0.469057, 0.831001,
		0.562616, 0.790050, 0.243484,
		31.601332, 34.699810, 35.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046791, 34.201309, 35.688160>,  <31.207500, 34.146774, 35.019684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046791, 34.201309, 35.688160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219328, 34.545837, 35.580780>,  <31.322849, 34.752556, 35.516354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219328, 34.545837, 35.580780>,  <31.046791, 34.201309, 35.688160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219328, 34.545837, 35.580780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700456, 0.507256, 0.502048,
		0.568598, -0.028518, 0.822121,
		0.431344, 0.861323, -0.268449,
		31.348730, 34.804234, 35.500244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075212, 34.586746, 36.347988>,  <31.046791, 34.201309, 35.688160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075212, 34.586746, 36.347988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137312, 34.857918, 36.060570>,  <31.174572, 35.020622, 35.888119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137312, 34.857918, 36.060570>,  <31.075212, 34.586746, 36.347988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137312, 34.857918, 36.060570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501961, 0.680606, 0.533677,
		0.850843, 0.277829, 0.445957,
		0.155250, 0.677929, -0.718548,
		31.183887, 35.061295, 35.845005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120232, 35.220032, 36.792206>,  <31.075212, 34.586746, 36.347988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120232, 35.220032, 36.792206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036615, 35.342907, 36.420845>,  <30.986444, 35.416634, 36.198029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036615, 35.342907, 36.420845>,  <31.120232, 35.220032, 36.792206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036615, 35.342907, 36.420845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629711, 0.684065, 0.368129,
		0.748175, 0.661582, 0.050441,
		-0.209043, 0.307188, -0.928405,
		30.973902, 35.435062, 36.142323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206568, 35.955441, 36.809269>,  <31.120232, 35.220032, 36.792206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206568, 35.955441, 36.809269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982149, 35.885124, 36.485706>,  <30.847498, 35.842934, 36.291569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982149, 35.885124, 36.485706>,  <31.206568, 35.955441, 36.809269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982149, 35.885124, 36.485706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708354, 0.607589, 0.359265,
		0.428323, 0.774554, -0.465410,
		-0.561048, -0.175793, -0.808902,
		30.813835, 35.832386, 36.243034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120903, 36.682621, 36.461842>,  <31.206568, 35.955441, 36.809269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120903, 36.682621, 36.461842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.808392, 36.449574, 36.372253>,  <30.620884, 36.309746, 36.318501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.808392, 36.449574, 36.372253>,  <31.120903, 36.682621, 36.461842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808392, 36.449574, 36.372253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624082, 0.735525, 0.263674,
		0.011116, 0.345779, -0.938250,
		-0.781280, -0.582614, -0.223971,
		30.574007, 36.274788, 36.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724834, 36.980331, 36.055199>,  <31.120903, 36.682621, 36.461842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724834, 36.980331, 36.055199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479013, 36.734539, 36.253082>,  <30.331520, 36.587063, 36.371811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479013, 36.734539, 36.253082>,  <30.724834, 36.980331, 36.055199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479013, 36.734539, 36.253082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487042, 0.788861, 0.374817,
		-0.620575, -0.010599, -0.784075,
		-0.614554, -0.614480, 0.494710,
		30.294647, 36.550194, 36.401497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917746, 37.656288, 35.887009>,  <30.724834, 36.980331, 36.055199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917746, 37.656288, 35.887009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.046486, 37.956867, 35.656620>,  <31.123730, 38.137215, 35.518387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.046486, 37.956867, 35.656620>,  <30.917746, 37.656288, 35.887009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046486, 37.956867, 35.656620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341704, 0.659530, 0.669520,
		0.882979, -0.018672, 0.469041,
		0.321848, 0.751446, -0.575971,
		31.143040, 38.182301, 35.483829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615561, 37.584431, 36.085148>,  <30.917746, 37.656288, 35.887009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615561, 37.584431, 36.085148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943493, 37.485786, 36.291859>,  <32.140251, 37.426601, 36.415886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943493, 37.485786, 36.291859>,  <31.615561, 37.584431, 36.085148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943493, 37.485786, 36.291859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564755, 0.497184, -0.658680,
		-0.094500, 0.831861, 0.546879,
		0.819830, -0.246608, 0.516782,
		32.189442, 37.411804, 36.446892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061874, 38.200977, 36.125881>,  <31.615561, 37.584431, 36.085148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061874, 38.200977, 36.125881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307072, 37.887585, 36.166679>,  <32.454189, 37.699551, 36.191158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307072, 37.887585, 36.166679>,  <32.061874, 38.200977, 36.125881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307072, 37.887585, 36.166679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659022, 0.435813, -0.612990,
		0.435813, 0.442976, 0.783479,
		0.612990, -0.783479, 0.101998,
		32.490971, 37.652542, 36.197277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688251, 38.425034, 36.479832>,  <32.061874, 38.200977, 36.125881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688251, 38.425034, 36.479832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745312, 38.111809, 36.237686>,  <32.779549, 37.923874, 36.092400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745312, 38.111809, 36.237686>,  <32.688251, 38.425034, 36.479832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745312, 38.111809, 36.237686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733707, 0.494174, -0.466333,
		0.664323, -0.377639, 0.645030,
		0.142651, -0.783059, -0.605367,
		32.788109, 37.876892, 36.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369705, 38.424065, 36.456032>,  <32.688251, 38.425034, 36.479832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369705, 38.424065, 36.456032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260700, 38.179512, 36.158859>,  <33.195297, 38.032780, 35.980556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260700, 38.179512, 36.158859>,  <33.369705, 38.424065, 36.456032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260700, 38.179512, 36.158859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640401, 0.461020, -0.614286,
		0.718069, -0.643178, 0.265893,
		-0.272514, -0.611378, -0.742936,
		33.178947, 37.996098, 35.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002605, 38.249805, 36.108166>,  <33.369705, 38.424065, 36.456032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002605, 38.249805, 36.108166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724411, 38.125580, 35.848984>,  <33.557495, 38.051044, 35.693474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724411, 38.125580, 35.848984>,  <34.002605, 38.249805, 36.108166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724411, 38.125580, 35.848984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544823, 0.360010, -0.757338,
		0.468477, -0.879738, -0.081175,
		-0.695483, -0.310569, -0.647959,
		33.515766, 38.032410, 35.654594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346046, 37.854950, 35.654007>,  <34.002605, 38.249805, 36.108166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346046, 37.854950, 35.654007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016270, 37.977894, 35.463924>,  <33.818401, 38.051659, 35.349876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016270, 37.977894, 35.463924>,  <34.346046, 37.854950, 35.654007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016270, 37.977894, 35.463924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556733, 0.289632, -0.778564,
		-0.101665, -0.906445, -0.409903,
		-0.824447, 0.307360, -0.475203,
		33.768936, 38.070103, 35.321365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239601, 37.609467, 34.956734>,  <34.346046, 37.854950, 35.654007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239601, 37.609467, 34.956734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024124, 37.944550, 34.920826>,  <33.894836, 38.145599, 34.899281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024124, 37.944550, 34.920826>,  <34.239601, 37.609467, 34.956734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024124, 37.944550, 34.920826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509815, 0.239290, -0.826335,
		-0.670742, -0.490911, -0.555978,
		-0.538697, 0.837704, -0.089772,
		33.862514, 38.195862, 34.893894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986301, 37.632984, 34.247776>,  <34.239601, 37.609467, 34.956734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986301, 37.632984, 34.247776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941330, 38.009869, 34.374016>,  <33.914345, 38.236000, 34.449760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941330, 38.009869, 34.374016>,  <33.986301, 37.632984, 34.247776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941330, 38.009869, 34.374016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520111, 0.326430, -0.789258,
		-0.846666, 0.075408, -0.526754,
		-0.112432, 0.942209, 0.315598,
		33.907600, 38.292530, 34.468697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626312, 38.014210, 33.674198>,  <33.986301, 37.632984, 34.247776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626312, 38.014210, 33.674198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810619, 38.274895, 33.915184>,  <33.921204, 38.431305, 34.059776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810619, 38.274895, 33.915184>,  <33.626312, 38.014210, 33.674198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810619, 38.274895, 33.915184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525121, 0.347060, -0.777044,
		-0.715502, 0.674402, -0.182316,
		0.460766, 0.651714, 0.602465,
		33.948849, 38.470409, 34.095924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735489, 38.460876, 33.255093>,  <33.626312, 38.014210, 33.674198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735489, 38.460876, 33.255093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976177, 38.585289, 33.549358>,  <34.120590, 38.659935, 33.725918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976177, 38.585289, 33.549358>,  <33.735489, 38.460876, 33.255093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976177, 38.585289, 33.549358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665184, 0.314698, -0.677123,
		-0.442115, 0.896787, -0.017532,
		0.601718, 0.311028, 0.735661,
		34.156693, 38.678596, 33.770058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763744, 39.094921, 33.196819>,  <33.735489, 38.460876, 33.255093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763744, 39.094921, 33.196819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102318, 38.994053, 33.384415>,  <34.305462, 38.933533, 33.496971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102318, 38.994053, 33.384415>,  <33.763744, 39.094921, 33.196819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102318, 38.994053, 33.384415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527630, 0.515887, -0.674883,
		-0.071762, 0.818701, 0.569718,
		0.846438, -0.252169, 0.468993,
		34.356251, 38.918404, 33.525112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316582, 39.737263, 33.202488>,  <33.763744, 39.094921, 33.196819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316582, 39.737263, 33.202488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524872, 39.396961, 33.230972>,  <34.649845, 39.192780, 33.248062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524872, 39.396961, 33.230972>,  <34.316582, 39.737263, 33.202488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524872, 39.396961, 33.230972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562489, 0.279138, -0.778260,
		0.642226, 0.445315, 0.623891,
		0.520723, -0.850750, 0.071214,
		34.681087, 39.141735, 33.252338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943027, 39.920834, 33.024426>,  <34.316582, 39.737263, 33.202488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943027, 39.920834, 33.024426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988220, 39.525227, 32.986298>,  <35.015335, 39.287865, 32.963421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988220, 39.525227, 32.986298>,  <34.943027, 39.920834, 33.024426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988220, 39.525227, 32.986298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519987, 0.140603, -0.842523,
		0.846669, 0.045624, 0.530160,
		0.112981, -0.989014, -0.095320,
		35.022114, 39.228523, 32.957703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627018, 39.754585, 32.890808>,  <34.943027, 39.920834, 33.024426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627018, 39.754585, 32.890808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457127, 39.412460, 32.772125>,  <35.355190, 39.207184, 32.700916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457127, 39.412460, 32.772125>,  <35.627018, 39.754585, 32.890808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457127, 39.412460, 32.772125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544818, 0.020265, -0.838309,
		0.723033, -0.517709, 0.457385,
		-0.424731, -0.855317, -0.296709,
		35.329708, 39.155865, 32.683113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196243, 39.330227, 32.625645>,  <35.627018, 39.754585, 32.890808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196243, 39.330227, 32.625645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871174, 39.181282, 32.446354>,  <35.676132, 39.091915, 32.338779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871174, 39.181282, 32.446354>,  <36.196243, 39.330227, 32.625645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871174, 39.181282, 32.446354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544009, -0.209114, -0.812604,
		0.208854, -0.904221, 0.372510,
		-0.812671, -0.372365, -0.448231,
		35.627373, 39.069572, 32.311886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503510, 38.659145, 32.273670>,  <36.196243, 39.330227, 32.625645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503510, 38.659145, 32.273670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154457, 38.724449, 32.089558>,  <35.945026, 38.763634, 31.979092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154457, 38.724449, 32.089558>,  <36.503510, 38.659145, 32.273670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154457, 38.724449, 32.089558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437566, -0.157210, -0.885337,
		-0.216907, -0.973976, 0.065746,
		-0.872633, 0.163267, -0.460279,
		35.892666, 38.773430, 31.951473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383591, 38.058212, 31.819086>,  <36.503510, 38.659145, 32.273670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383591, 38.058212, 31.819086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161407, 38.360878, 31.681147>,  <36.028095, 38.542477, 31.598383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161407, 38.360878, 31.681147>,  <36.383591, 38.058212, 31.819086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161407, 38.360878, 31.681147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326965, -0.182564, -0.927235,
		-0.764563, -0.627797, -0.145996,
		-0.555461, 0.756665, -0.344849,
		35.994770, 38.587879, 31.577692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154171, 37.757050, 31.209393>,  <36.383591, 38.058212, 31.819086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154171, 37.757050, 31.209393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058491, 38.142918, 31.165239>,  <36.001083, 38.374439, 31.138748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058491, 38.142918, 31.165239>,  <36.154171, 37.757050, 31.209393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058491, 38.142918, 31.165239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244532, -0.050168, -0.968343,
		-0.939673, -0.258623, -0.223893,
		-0.239203, 0.964675, -0.110383,
		35.986729, 38.432320, 31.132124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510883, 37.841011, 30.773731>,  <36.154171, 37.757050, 31.209393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510883, 37.841011, 30.773731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749054, 38.160172, 30.736168>,  <35.891956, 38.351669, 30.713629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749054, 38.160172, 30.736168>,  <35.510883, 37.841011, 30.773731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749054, 38.160172, 30.736168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030937, -0.094030, -0.995088,
		-0.802817, 0.595403, -0.031303,
		0.595422, 0.797906, -0.093910,
		35.927681, 38.399544, 30.707994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616978, 37.814751, 30.137539>,  <35.510883, 37.841011, 30.773731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616978, 37.814751, 30.137539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850311, 38.121460, 30.244711>,  <35.990311, 38.305485, 30.309015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850311, 38.121460, 30.244711>,  <35.616978, 37.814751, 30.137539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850311, 38.121460, 30.244711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273505, 0.125174, -0.953691,
		-0.764799, 0.629600, -0.136697,
		0.583333, 0.766770, 0.267932,
		36.025311, 38.351490, 30.325090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531136, 38.283226, 29.650715>,  <35.616978, 37.814751, 30.137539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531136, 38.283226, 29.650715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890625, 38.343884, 29.815302>,  <36.106319, 38.380276, 29.914053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890625, 38.343884, 29.815302>,  <35.531136, 38.283226, 29.650715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890625, 38.343884, 29.815302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379402, 0.201627, -0.902995,
		-0.219894, 0.967652, 0.123674,
		0.898721, 0.151642, 0.411466,
		36.160240, 38.389378, 29.938742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871185, 38.973568, 29.276720>,  <35.531136, 38.283226, 29.650715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871185, 38.973568, 29.276720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156483, 38.790581, 29.489134>,  <36.327663, 38.680786, 29.616583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156483, 38.790581, 29.489134>,  <35.871185, 38.973568, 29.276720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156483, 38.790581, 29.489134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681119, 0.273589, -0.679136,
		0.165400, 0.846090, 0.506729,
		0.713246, -0.457472, 0.531037,
		36.370457, 38.653339, 29.648445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431973, 39.380360, 29.168093>,  <35.871185, 38.973568, 29.276720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431973, 39.380360, 29.168093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576672, 39.020981, 29.267643>,  <36.663490, 38.805355, 29.327374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576672, 39.020981, 29.267643>,  <36.431973, 39.380360, 29.168093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576672, 39.020981, 29.267643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598917, 0.019378, -0.800577,
		0.714450, 0.438663, 0.545102,
		0.361746, -0.898443, 0.248878,
		36.685196, 38.751450, 29.342306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168697, 39.422550, 29.219418>,  <36.431973, 39.380360, 29.168093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168697, 39.422550, 29.219418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.104790, 39.032043, 29.160938>,  <37.066444, 38.797741, 29.125851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.104790, 39.032043, 29.160938>,  <37.168697, 39.422550, 29.219418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104790, 39.032043, 29.160938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721521, -0.014414, -0.692243,
		0.673707, -0.216087, 0.706700,
		-0.159771, -0.976268, -0.146200,
		37.056858, 38.739162, 29.117079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899273, 39.203777, 29.066763>,  <37.168697, 39.422550, 29.219418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899273, 39.203777, 29.066763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632130, 38.928402, 28.953615>,  <37.471844, 38.763176, 28.885727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632130, 38.928402, 28.953615>,  <37.899273, 39.203777, 29.066763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632130, 38.928402, 28.953615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517630, -0.156534, -0.841164,
		0.534813, -0.708199, 0.460900,
		-0.667857, -0.688441, -0.282869,
		37.431774, 38.721870, 28.868755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272575, 38.772038, 28.693798>,  <37.899273, 39.203777, 29.066763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272575, 38.772038, 28.693798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.907356, 38.653610, 28.581591>,  <37.688225, 38.582554, 28.514267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.907356, 38.653610, 28.581591>,  <38.272575, 38.772038, 28.693798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907356, 38.653610, 28.581591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298219, -0.015428, -0.954373,
		0.278234, -0.955041, 0.102380,
		-0.913045, -0.296071, -0.280519,
		37.633442, 38.564789, 28.497435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360233, 38.132172, 28.421766>,  <38.272575, 38.772038, 28.693798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360233, 38.132172, 28.421766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043327, 38.311451, 28.256151>,  <37.853184, 38.419018, 28.156782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043327, 38.311451, 28.256151>,  <38.360233, 38.132172, 28.421766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043327, 38.311451, 28.256151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483087, 0.046226, -0.874351,
		-0.372747, -0.892736, -0.253144,
		-0.792267, 0.448203, -0.414038,
		37.805649, 38.445911, 28.131939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709358, 37.388412, 28.212500>,  <38.360233, 38.132172, 28.421766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709358, 37.388412, 28.212500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083103, 37.309563, 28.331234>,  <39.307350, 37.262253, 28.402475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083103, 37.309563, 28.331234>,  <38.709358, 37.388412, 28.212500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083103, 37.309563, 28.331234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285996, 0.082036, 0.954713,
		-0.212547, -0.976941, 0.020275,
		0.934361, -0.197123, 0.296838,
		39.363411, 37.250427, 28.420286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694916, 36.763237, 28.692999>,  <38.709358, 37.388412, 28.212500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694916, 36.763237, 28.692999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031178, 36.965378, 28.770878>,  <39.232937, 37.086662, 28.817606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031178, 36.965378, 28.770878>,  <38.694916, 36.763237, 28.692999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031178, 36.965378, 28.770878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215931, -0.016925, 0.976262,
		0.496655, -0.862745, 0.094894,
		0.840659, 0.505356, 0.194700,
		39.283375, 37.116985, 28.829288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928101, 36.429085, 29.229691>,  <38.694916, 36.763237, 28.692999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928101, 36.429085, 29.229691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116337, 36.782001, 29.233824>,  <39.229279, 36.993752, 29.236303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116337, 36.782001, 29.233824>,  <38.928101, 36.429085, 29.229691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116337, 36.782001, 29.233824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235556, 0.114335, 0.965112,
		0.850327, -0.456610, 0.261633,
		0.470593, 0.882290, 0.010335,
		39.257515, 37.046688, 29.236925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409897, 36.403816, 29.789566>,  <38.928101, 36.429085, 29.229691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409897, 36.403816, 29.789566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336147, 36.787823, 29.705311>,  <39.291897, 37.018227, 29.654758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336147, 36.787823, 29.705311>,  <39.409897, 36.403816, 29.789566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336147, 36.787823, 29.705311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260357, 0.158949, 0.952339,
		0.947745, 0.230427, 0.220642,
		-0.184374, 0.960020, -0.210636,
		39.280834, 37.075829, 29.642120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904202, 36.762592, 30.191999>,  <39.409897, 36.403816, 29.789566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904202, 36.762592, 30.191999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618210, 37.033195, 30.121403>,  <39.446617, 37.195557, 30.079044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618210, 37.033195, 30.121403>,  <39.904202, 36.762592, 30.191999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618210, 37.033195, 30.121403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010996, 0.263284, 0.964656,
		0.699064, 0.687764, -0.195681,
		-0.714975, 0.676507, -0.176489,
		39.403717, 37.236149, 30.068457>
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
