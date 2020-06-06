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
	<23.970213, 35.341438, 35.126816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229874, 35.050861, 35.036591>,  <24.385670, 34.876514, 34.982456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229874, 35.050861, 35.036591>,  <23.970213, 35.341438, 35.126816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229874, 35.050861, 35.036591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654262, 0.684496, -0.321568,
		0.387999, 0.061168, 0.919628,
		0.649152, -0.726446, -0.225563,
		24.424620, 34.832928, 34.968922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539995, 35.324512, 35.637928>,  <23.970213, 35.341438, 35.126816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539995, 35.324512, 35.637928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642431, 35.189529, 35.275593>,  <24.703894, 35.108540, 35.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642431, 35.189529, 35.275593>,  <24.539995, 35.324512, 35.637928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642431, 35.189529, 35.275593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749790, 0.660792, -0.034198,
		0.610109, -0.670428, 0.422248,
		0.256091, -0.337462, -0.905835,
		24.719259, 35.088291, 35.003841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216499, 35.132042, 35.428261>,  <24.539995, 35.324512, 35.637928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216499, 35.132042, 35.428261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068705, 35.254345, 35.077263>,  <24.980028, 35.327724, 34.866665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068705, 35.254345, 35.077263>,  <25.216499, 35.132042, 35.428261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068705, 35.254345, 35.077263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792699, 0.596460, -0.125951,
		0.484880, -0.742125, -0.462754,
		-0.369486, 0.305754, -0.877494,
		24.957859, 35.346069, 34.814014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688211, 34.945179, 34.838615>,  <25.216499, 35.132042, 35.428261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688211, 34.945179, 34.838615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445293, 35.261482, 34.807919>,  <25.299543, 35.451263, 34.789501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445293, 35.261482, 34.807919>,  <25.688211, 34.945179, 34.838615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445293, 35.261482, 34.807919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792854, 0.609391, 0.005042,
		0.050751, -0.057780, -0.997039,
		-0.607295, 0.790762, -0.076738,
		25.263105, 35.498711, 34.784897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250257, 35.214958, 34.262047>,  <25.688211, 34.945179, 34.838615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250257, 35.214958, 34.262047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287832, 35.326618, 33.879791>,  <25.310377, 35.393616, 33.650436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287832, 35.326618, 33.879791>,  <25.250257, 35.214958, 34.262047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287832, 35.326618, 33.879791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104509, -0.957347, -0.269379,
		-0.990078, -0.074569, -0.119103,
		0.093935, 0.279153, -0.955641,
		25.316013, 35.410366, 33.593098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912390, 34.718178, 33.881462>,  <25.250257, 35.214958, 34.262047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912390, 34.718178, 33.881462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180948, 34.864986, 33.623928>,  <25.342083, 34.953072, 33.469410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180948, 34.864986, 33.623928>,  <24.912390, 34.718178, 33.881462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180948, 34.864986, 33.623928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179273, -0.923388, -0.339433,
		-0.719086, 0.112473, -0.685758,
		0.671398, 0.367020, -0.643833,
		25.382368, 34.975094, 33.430779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709389, 34.600945, 33.052120>,  <24.912390, 34.718178, 33.881462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709389, 34.600945, 33.052120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089678, 34.621819, 33.174366>,  <25.317852, 34.634342, 33.247715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089678, 34.621819, 33.174366>,  <24.709389, 34.600945, 33.052120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089678, 34.621819, 33.174366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161142, -0.925305, -0.343283,
		0.264871, 0.375615, -0.888120,
		0.950724, 0.052188, 0.305614,
		25.374895, 34.637474, 33.266052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063341, 34.387627, 32.489628>,  <24.709389, 34.600945, 33.052120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063341, 34.387627, 32.489628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302727, 34.311588, 32.800938>,  <25.446358, 34.265965, 32.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302727, 34.311588, 32.800938>,  <25.063341, 34.387627, 32.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302727, 34.311588, 32.800938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217825, -0.896236, -0.386410,
		0.770970, 0.400779, -0.494956,
		0.598463, -0.190096, 0.778271,
		25.482265, 34.254559, 33.034420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751026, 34.142387, 32.199989>,  <25.063341, 34.387627, 32.489628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751026, 34.142387, 32.199989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739582, 34.029308, 32.583504>,  <25.732716, 33.961460, 32.813610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739582, 34.029308, 32.583504>,  <25.751026, 34.142387, 32.199989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739582, 34.029308, 32.583504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287403, -0.921001, -0.262978,
		0.957382, 0.268033, 0.107599,
		-0.028611, -0.282695, 0.958783,
		25.730999, 33.944500, 32.871140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415403, 33.743137, 32.186172>,  <25.751026, 34.142387, 32.199989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415403, 33.743137, 32.186172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195154, 33.657684, 32.508953>,  <26.063004, 33.606411, 32.702621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195154, 33.657684, 32.508953>,  <26.415403, 33.743137, 32.186172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195154, 33.657684, 32.508953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282124, -0.957439, -0.060967,
		0.785632, 0.194091, 0.587461,
		-0.550625, -0.213635, 0.806952,
		26.029966, 33.593594, 32.751038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808779, 33.272270, 32.643822>,  <26.415403, 33.743137, 32.186172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808779, 33.272270, 32.643822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426472, 33.196201, 32.733574>,  <26.197088, 33.150562, 32.787426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426472, 33.196201, 32.733574>,  <26.808779, 33.272270, 32.643822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426472, 33.196201, 32.733574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190466, -0.981479, -0.020531,
		0.224128, 0.023113, 0.974286,
		-0.955766, -0.190170, 0.224379,
		26.139742, 33.139149, 32.800888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774681, 32.771191, 33.221188>,  <26.808779, 33.272270, 32.643822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774681, 32.771191, 33.221188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406565, 32.755497, 33.065483>,  <26.185696, 32.746082, 32.972061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406565, 32.755497, 33.065483>,  <26.774681, 32.771191, 33.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406565, 32.755497, 33.065483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044654, -0.977926, 0.204126,
		-0.388678, 0.205237, 0.898224,
		-0.920291, -0.039230, -0.389263,
		26.130478, 32.743729, 32.948704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343771, 32.403835, 33.645309>,  <26.774681, 32.771191, 33.221188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343771, 32.403835, 33.645309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167978, 32.367764, 33.287823>,  <26.062502, 32.346119, 33.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167978, 32.367764, 33.287823>,  <26.343771, 32.403835, 33.645309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167978, 32.367764, 33.287823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084665, -0.986359, 0.141163,
		-0.894252, 0.137705, 0.425853,
		-0.439483, -0.090181, -0.893713,
		26.036133, 32.340710, 33.019711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844694, 31.969881, 33.732418>,  <26.343771, 32.403835, 33.645309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844694, 31.969881, 33.732418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905670, 31.945486, 33.337845>,  <25.942257, 31.930849, 33.101101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905670, 31.945486, 33.337845>,  <25.844694, 31.969881, 33.732418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905670, 31.945486, 33.337845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164666, -0.985711, 0.035494,
		-0.974498, 0.157021, -0.160305,
		0.152441, -0.060985, -0.986429,
		25.951403, 31.927191, 33.041916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337809, 31.443266, 33.511238>,  <25.844694, 31.969881, 33.732418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337809, 31.443266, 33.511238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608147, 31.485189, 33.219418>,  <25.770350, 31.510344, 33.044327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608147, 31.485189, 33.219418>,  <25.337809, 31.443266, 33.511238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608147, 31.485189, 33.219418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022602, -0.992320, -0.121617,
		-0.736695, 0.065705, -0.673025,
		0.675847, 0.104807, -0.729552,
		25.810902, 31.516632, 33.000553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080217, 31.000446, 32.937347>,  <25.337809, 31.443266, 33.511238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080217, 31.000446, 32.937347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466698, 31.060677, 32.853649>,  <25.698586, 31.096815, 32.803429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466698, 31.060677, 32.853649>,  <25.080217, 31.000446, 32.937347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466698, 31.060677, 32.853649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091220, -0.958864, -0.268809,
		-0.241114, 0.240636, -0.940191,
		0.966200, 0.150578, -0.209244,
		25.756557, 31.105850, 32.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266657, 30.706545, 32.262592>,  <25.080217, 31.000446, 32.937347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266657, 30.706545, 32.262592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602753, 30.733210, 32.477833>,  <25.804409, 30.749208, 32.606979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602753, 30.733210, 32.477833>,  <25.266657, 30.706545, 32.262592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602753, 30.733210, 32.477833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210113, -0.954903, -0.209790,
		0.499852, 0.289336, -0.816353,
		0.840238, 0.066662, 0.538104,
		25.854824, 30.753208, 32.639263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735140, 30.279230, 31.867701>,  <25.266657, 30.706545, 32.262592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735140, 30.279230, 31.867701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939592, 30.322800, 32.208729>,  <26.062263, 30.348942, 32.413345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939592, 30.322800, 32.208729>,  <25.735140, 30.279230, 31.867701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939592, 30.322800, 32.208729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300322, -0.952047, -0.058416,
		0.805326, 0.285904, -0.519336,
		0.511133, 0.108925, 0.852571,
		26.092932, 30.355476, 32.464500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352285, 30.053267, 31.632826>,  <25.735140, 30.279230, 31.867701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352285, 30.053267, 31.632826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376642, 30.046803, 32.032032>,  <26.391256, 30.042925, 32.271557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376642, 30.046803, 32.032032>,  <26.352285, 30.053267, 31.632826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376642, 30.046803, 32.032032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595166, -0.802089, -0.049301,
		0.801292, 0.596986, -0.039224,
		0.060893, -0.016159, 0.998013,
		26.394911, 30.041954, 32.331436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084826, 29.904625, 31.770609>,  <26.352285, 30.053267, 31.632826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084826, 29.904625, 31.770609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863842, 29.796133, 32.085880>,  <26.731253, 29.731037, 32.275043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863842, 29.796133, 32.085880>,  <27.084826, 29.904625, 31.770609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863842, 29.796133, 32.085880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467617, -0.883613, 0.023696,
		0.690017, 0.381656, 0.614992,
		-0.552459, -0.271230, 0.788177,
		26.698105, 29.714764, 32.322334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494396, 29.500143, 32.067745>,  <27.084826, 29.904625, 31.770609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494396, 29.500143, 32.067745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161690, 29.433319, 32.279503>,  <26.962067, 29.393225, 32.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161690, 29.433319, 32.279503>,  <27.494396, 29.500143, 32.067745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161690, 29.433319, 32.279503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327644, -0.917563, 0.225229,
		0.448122, 0.360790, 0.817935,
		-0.831767, -0.167061, 0.529391,
		26.912159, 29.383202, 32.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677767, 29.266611, 32.766777>,  <27.494396, 29.500143, 32.067745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677767, 29.266611, 32.766777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317890, 29.124685, 32.665062>,  <27.101965, 29.039530, 32.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317890, 29.124685, 32.665062>,  <27.677767, 29.266611, 32.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317890, 29.124685, 32.665062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260875, -0.904084, 0.338492,
		-0.349998, 0.238202, 0.905959,
		-0.899692, -0.354814, -0.254287,
		27.047983, 29.018242, 32.588776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467102, 28.954853, 33.295181>,  <27.677767, 29.266611, 32.766777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467102, 28.954853, 33.295181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273359, 28.796839, 32.982937>,  <27.157114, 28.702030, 32.795589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273359, 28.796839, 32.982937>,  <27.467102, 28.954853, 33.295181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273359, 28.796839, 32.982937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207203, -0.918666, 0.336333,
		-0.849980, 0.001161, 0.526814,
		-0.484356, -0.395033, -0.780607,
		27.128052, 28.678329, 32.748756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388485, 28.277969, 33.481358>,  <27.467102, 28.954853, 33.295181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388485, 28.277969, 33.481358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280756, 28.215931, 33.101166>,  <27.216120, 28.178709, 32.873051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280756, 28.215931, 33.101166>,  <27.388485, 28.277969, 33.481358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280756, 28.215931, 33.101166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116396, -0.984954, 0.127739,
		-0.955991, -0.076229, 0.283322,
		-0.269322, -0.155095, -0.950480,
		27.199959, 28.169403, 32.816021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710693, 27.828712, 33.451851>,  <27.388485, 28.277969, 33.481358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710693, 27.828712, 33.451851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977335, 27.805077, 33.154625>,  <27.137320, 27.790895, 32.976288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977335, 27.805077, 33.154625>,  <26.710693, 27.828712, 33.451851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977335, 27.805077, 33.154625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002002, -0.996707, 0.081058,
		-0.745410, -0.055521, -0.664289,
		0.666603, -0.059092, -0.743067,
		27.177317, 27.787350, 32.931705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566536, 27.291054, 33.067680>,  <26.710693, 27.828712, 33.451851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566536, 27.291054, 33.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944550, 27.350546, 32.951206>,  <27.171358, 27.386240, 32.881321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944550, 27.350546, 32.951206>,  <26.566536, 27.291054, 33.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944550, 27.350546, 32.951206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106513, -0.982014, -0.155894,
		-0.309137, 0.116309, -0.943878,
		0.945034, 0.148728, -0.291189,
		27.228060, 27.395164, 32.863850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846951, 26.987703, 32.369156>,  <26.566536, 27.291054, 33.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846951, 26.987703, 32.369156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151024, 27.014320, 32.627674>,  <27.333467, 27.030291, 32.782784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151024, 27.014320, 32.627674>,  <26.846951, 26.987703, 32.369156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151024, 27.014320, 32.627674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282074, -0.929904, -0.236037,
		0.585282, 0.361733, -0.725668,
		0.760184, 0.066543, 0.646291,
		27.379080, 27.034283, 32.821560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492729, 26.750465, 31.745142>,  <26.846951, 26.987703, 32.369156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492729, 26.750465, 31.745142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100040, 26.825340, 31.758926>,  <25.864428, 26.870264, 31.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100040, 26.825340, 31.758926>,  <26.492729, 26.750465, 31.745142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100040, 26.825340, 31.758926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045419, -0.054576, -0.997476,
		-0.184834, -0.980807, 0.062080,
		-0.981719, 0.187187, 0.034460,
		25.805525, 26.881496, 31.769264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027111, 26.136982, 31.523180>,  <26.492729, 26.750465, 31.745142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027111, 26.136982, 31.523180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896345, 26.508280, 31.452198>,  <25.817884, 26.731058, 31.409609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896345, 26.508280, 31.452198>,  <26.027111, 26.136982, 31.523180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896345, 26.508280, 31.452198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109192, -0.149413, -0.982727,
		-0.938724, -0.340646, -0.052511,
		-0.326916, 0.928244, -0.177453,
		25.798271, 26.786753, 31.398962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277405, 26.239216, 31.116497>,  <26.027111, 26.136982, 31.523180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277405, 26.239216, 31.116497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529604, 26.536289, 31.026258>,  <25.680923, 26.714533, 30.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529604, 26.536289, 31.026258>,  <25.277405, 26.239216, 31.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529604, 26.536289, 31.026258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121388, -0.192722, -0.973716,
		-0.766641, 0.641310, -0.031358,
		0.630498, 0.742684, -0.225596,
		25.718754, 26.759094, 30.958580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033482, 26.657009, 30.593733>,  <25.277405, 26.239216, 31.116497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033482, 26.657009, 30.593733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430681, 26.609770, 30.594669>,  <25.669001, 26.581427, 30.595232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430681, 26.609770, 30.594669>,  <25.033482, 26.657009, 30.593733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430681, 26.609770, 30.594669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040700, -0.360701, -0.931793,
		0.110889, 0.925174, -0.362983,
		0.992999, -0.118099, 0.002343,
		25.728580, 26.574341, 30.595373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459053, 27.020397, 30.042599>,  <25.033482, 26.657009, 30.593733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459053, 27.020397, 30.042599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611219, 26.665194, 30.145924>,  <25.702518, 26.452072, 30.207920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611219, 26.665194, 30.145924>,  <25.459053, 27.020397, 30.042599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611219, 26.665194, 30.145924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027766, -0.268222, -0.962957,
		0.924398, 0.373497, -0.077380,
		0.380416, -0.888007, 0.258315,
		25.725344, 26.398792, 30.223417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415625, 27.783754, 30.144291>,  <25.459053, 27.020397, 30.042599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415625, 27.783754, 30.144291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755018, 27.660173, 30.316162>,  <25.958654, 27.586025, 30.419285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755018, 27.660173, 30.316162>,  <25.415625, 27.783754, 30.144291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755018, 27.660173, 30.316162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513505, 0.677023, -0.527212,
		-0.128018, 0.667973, 0.733092,
		0.848483, -0.308954, 0.429678,
		26.009563, 27.567488, 30.445066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789055, 28.228777, 30.708439>,  <25.415625, 27.783754, 30.144291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789055, 28.228777, 30.708439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972244, 28.030907, 30.412991>,  <26.082157, 27.912184, 30.235722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972244, 28.030907, 30.412991>,  <25.789055, 28.228777, 30.708439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972244, 28.030907, 30.412991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356418, 0.863344, -0.357215,
		0.814388, -0.099663, 0.571700,
		0.457973, -0.494675, -0.738619,
		26.109636, 27.882504, 30.191404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516174, 28.416574, 30.704731>,  <25.789055, 28.228777, 30.708439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516174, 28.416574, 30.704731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381182, 28.341959, 30.335665>,  <26.300186, 28.297190, 30.114225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381182, 28.341959, 30.335665>,  <26.516174, 28.416574, 30.704731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381182, 28.341959, 30.335665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472727, 0.814023, -0.337484,
		0.814023, -0.550063, -0.186538,
		0.337484, 0.186538, 0.922664,
		26.279936, 28.285997, 30.058867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984831, 28.265160, 30.235592>,  <26.516174, 28.416574, 30.704731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984831, 28.265160, 30.235592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678719, 28.458706, 30.065783>,  <26.495050, 28.574833, 29.963898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678719, 28.458706, 30.065783>,  <26.984831, 28.265160, 30.235592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678719, 28.458706, 30.065783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528909, 0.848567, 0.013728,
		0.366878, -0.214027, -0.905314,
		-0.765281, 0.483866, -0.424521,
		26.449135, 28.603865, 29.938427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292334, 28.703548, 29.692425>,  <26.984831, 28.265160, 30.235592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292334, 28.703548, 29.692425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949331, 28.884024, 29.791309>,  <26.743530, 28.992308, 29.850639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949331, 28.884024, 29.791309>,  <27.292334, 28.703548, 29.692425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949331, 28.884024, 29.791309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435720, 0.892402, -0.117335,
		-0.273551, 0.007099, -0.961831,
		-0.857507, 0.451186, 0.247211,
		26.692080, 29.019379, 29.865473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280941, 29.291428, 29.241802>,  <27.292334, 28.703548, 29.692425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280941, 29.291428, 29.241802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049494, 29.362705, 29.560160>,  <26.910625, 29.405472, 29.751175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049494, 29.362705, 29.560160>,  <27.280941, 29.291428, 29.241802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049494, 29.362705, 29.560160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375119, 0.924646, 0.065690,
		-0.724214, 0.336564, -0.601862,
		-0.578619, 0.178196, 0.795894,
		26.875908, 29.416164, 29.798927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970047, 29.925709, 29.014557>,  <27.280941, 29.291428, 29.241802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970047, 29.925709, 29.014557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929731, 29.876905, 29.409515>,  <26.905542, 29.847624, 29.646490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929731, 29.876905, 29.409515>,  <26.970047, 29.925709, 29.014557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929731, 29.876905, 29.409515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339158, 0.928792, 0.149385,
		-0.935314, 0.349941, -0.052233,
		-0.100789, -0.122007, 0.987399,
		26.899494, 29.840303, 29.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656248, 30.492245, 29.176579>,  <26.970047, 29.925709, 29.014557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656248, 30.492245, 29.176579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778635, 30.362627, 29.534658>,  <26.852066, 30.284857, 29.749506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778635, 30.362627, 29.534658>,  <26.656248, 30.492245, 29.176579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778635, 30.362627, 29.534658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222456, 0.938597, 0.263723,
		-0.925688, 0.118452, 0.359264,
		0.305965, -0.324045, 0.895198,
		26.870424, 30.265413, 29.803219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388054, 30.935219, 29.659384>,  <26.656248, 30.492245, 29.176579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388054, 30.935219, 29.659384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678675, 30.761530, 29.872393>,  <26.853046, 30.657316, 30.000198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678675, 30.761530, 29.872393>,  <26.388054, 30.935219, 29.659384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678675, 30.761530, 29.872393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244838, 0.887744, 0.389826,
		-0.642012, -0.152847, 0.751304,
		0.726550, -0.434221, 0.532520,
		26.896639, 30.631264, 30.032148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369917, 31.288235, 30.418133>,  <26.388054, 30.935219, 29.659384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369917, 31.288235, 30.418133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722691, 31.112732, 30.349211>,  <26.934355, 31.007431, 30.307858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722691, 31.112732, 30.349211>,  <26.369917, 31.288235, 30.418133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722691, 31.112732, 30.349211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471123, 0.832428, 0.291730,
		0.015432, -0.338462, 0.940853,
		0.881932, -0.438756, -0.172303,
		26.987270, 30.981106, 30.297520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860966, 31.469172, 31.021515>,  <26.369917, 31.288235, 30.418133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860966, 31.469172, 31.021515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111197, 31.357504, 30.730112>,  <27.261335, 31.290503, 30.555271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111197, 31.357504, 30.730112>,  <26.860966, 31.469172, 31.021515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111197, 31.357504, 30.730112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658815, 0.689191, 0.301629,
		0.417874, -0.668642, 0.615061,
		0.625576, -0.279168, -0.728505,
		27.298870, 31.273754, 30.511560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517159, 31.352262, 31.321821>,  <26.860966, 31.469172, 31.021515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517159, 31.352262, 31.321821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533344, 31.469957, 30.939871>,  <27.543055, 31.540575, 30.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533344, 31.469957, 30.939871>,  <27.517159, 31.352262, 31.321821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533344, 31.469957, 30.939871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642676, 0.724080, 0.250353,
		0.765069, -0.623805, -0.159800,
		0.040463, 0.294237, -0.954876,
		27.545483, 31.558228, 30.653408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188959, 31.524033, 31.322104>,  <27.517159, 31.352262, 31.321821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188959, 31.524033, 31.322104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031900, 31.694035, 30.995865>,  <27.937666, 31.796036, 30.800121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031900, 31.694035, 30.995865>,  <28.188959, 31.524033, 31.322104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031900, 31.694035, 30.995865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622736, 0.775451, 0.104286,
		0.676778, -0.466954, -0.569144,
		-0.392647, 0.425005, -0.815597,
		27.914106, 31.821537, 30.751186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802168, 31.879095, 30.976719>,  <28.188959, 31.524033, 31.322104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802168, 31.879095, 30.976719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470993, 32.041985, 30.822479>,  <28.272287, 32.139717, 30.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470993, 32.041985, 30.822479>,  <28.802168, 31.879095, 30.976719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470993, 32.041985, 30.822479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403859, 0.909992, 0.093879,
		0.389122, -0.078001, -0.917878,
		-0.827939, 0.407223, -0.385599,
		28.222610, 32.164150, 30.706800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073288, 32.353725, 30.389811>,  <28.802168, 31.879095, 30.976719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073288, 32.353725, 30.389811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708551, 32.459282, 30.515608>,  <28.489710, 32.522617, 30.591085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708551, 32.459282, 30.515608>,  <29.073288, 32.353725, 30.389811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708551, 32.459282, 30.515608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332434, 0.924109, 0.188440,
		-0.240897, 0.276375, -0.930368,
		-0.911842, 0.263892, 0.314492,
		28.434999, 32.538448, 30.609955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112961, 33.071400, 30.313313>,  <29.073288, 32.353725, 30.389811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112961, 33.071400, 30.313313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788832, 32.995419, 30.535049>,  <28.594355, 32.949829, 30.668091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788832, 32.995419, 30.535049>,  <29.112961, 33.071400, 30.313313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788832, 32.995419, 30.535049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125484, 0.867806, 0.480798,
		-0.572391, 0.459163, -0.679366,
		-0.810322, -0.189955, 0.554342,
		28.545734, 32.938431, 30.701351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616148, 33.730923, 30.207148>,  <29.112961, 33.071400, 30.313313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616148, 33.730923, 30.207148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570240, 33.509449, 30.537060>,  <28.542696, 33.376564, 30.735008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570240, 33.509449, 30.537060>,  <28.616148, 33.730923, 30.207148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570240, 33.509449, 30.537060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066180, 0.824163, 0.562473,
		-0.991185, 0.119139, -0.057946,
		-0.114769, -0.553680, 0.824782,
		28.535809, 33.343346, 30.784494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580910, 34.261803, 30.716013>,  <28.616148, 33.730923, 30.207148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580910, 34.261803, 30.716013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540327, 33.930576, 30.936560>,  <28.515978, 33.731838, 31.068888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540327, 33.930576, 30.936560>,  <28.580910, 34.261803, 30.716013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540327, 33.930576, 30.936560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010084, 0.555056, 0.831752,
		-0.994789, 0.078828, -0.064665,
		-0.101458, -0.828069, 0.551368,
		28.509890, 33.682156, 31.101971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931051, 34.289455, 31.190111>,  <28.580910, 34.261803, 30.716013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931051, 34.289455, 31.190111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214712, 34.050968, 31.340643>,  <28.384909, 33.907875, 31.430962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214712, 34.050968, 31.340643>,  <27.931051, 34.289455, 31.190111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214712, 34.050968, 31.340643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021899, 0.552126, 0.833473,
		-0.704716, -0.582817, 0.404597,
		0.709151, -0.596222, 0.376329,
		28.427458, 33.872101, 31.453541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707033, 34.085423, 31.814976>,  <27.931051, 34.289455, 31.190111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707033, 34.085423, 31.814976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100803, 34.032162, 31.860889>,  <28.337065, 34.000206, 31.888439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100803, 34.032162, 31.860889>,  <27.707033, 34.085423, 31.814976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100803, 34.032162, 31.860889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075523, 0.269309, 0.960088,
		-0.158749, -0.953805, 0.255059,
		0.984426, -0.133150, 0.114787,
		28.396132, 33.992218, 31.895325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720221, 33.638523, 32.456310>,  <27.707033, 34.085423, 31.814976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720221, 33.638523, 32.456310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088289, 33.789284, 32.413933>,  <28.309132, 33.879742, 32.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088289, 33.789284, 32.413933>,  <27.720221, 33.638523, 32.456310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088289, 33.789284, 32.413933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060715, 0.404704, 0.912430,
		0.386765, -0.833165, 0.395283,
		0.920178, 0.376895, -0.105939,
		28.364342, 33.902355, 32.382149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911074, 33.590801, 33.071827>,  <27.720221, 33.638523, 32.456310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911074, 33.590801, 33.071827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192352, 33.835739, 32.927303>,  <28.361120, 33.982704, 32.840588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192352, 33.835739, 32.927303>,  <27.911074, 33.590801, 33.071827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192352, 33.835739, 32.927303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015227, 0.495085, 0.868711,
		0.710832, -0.616376, 0.338818,
		0.703197, 0.612349, -0.361308,
		28.403311, 34.019444, 32.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529118, 33.612000, 33.525890>,  <27.911074, 33.590801, 33.071827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529118, 33.612000, 33.525890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486309, 33.952709, 33.320744>,  <28.460625, 34.157135, 33.197655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486309, 33.952709, 33.320744>,  <28.529118, 33.612000, 33.525890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486309, 33.952709, 33.320744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065203, 0.508703, 0.858470,
		0.992117, 0.125314, 0.001096,
		-0.107021, 0.851773, -0.512863,
		28.454203, 34.208241, 33.166885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888557, 34.114601, 33.921574>,  <28.529118, 33.612000, 33.525890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888557, 34.114601, 33.921574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619396, 34.309528, 33.698963>,  <28.457899, 34.426483, 33.565395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619396, 34.309528, 33.698963>,  <28.888557, 34.114601, 33.921574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619396, 34.309528, 33.698963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123768, 0.667561, 0.734196,
		0.729301, 0.562924, -0.388891,
		-0.672905, 0.487318, -0.556525,
		28.417524, 34.455723, 33.532005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019022, 34.793865, 34.061424>,  <28.888557, 34.114601, 33.921574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019022, 34.793865, 34.061424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654068, 34.821289, 33.900005>,  <28.435095, 34.837742, 33.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654068, 34.821289, 33.900005>,  <29.019022, 34.793865, 34.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654068, 34.821289, 33.900005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272271, 0.634501, 0.723379,
		0.305645, 0.769875, -0.560244,
		-0.912387, 0.068558, -0.403547,
		28.380352, 34.841858, 33.778942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441591, 34.527096, 34.541309>,  <29.019022, 34.793865, 34.061424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441591, 34.527096, 34.541309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731804, 34.251934, 34.533390>,  <29.905931, 34.086838, 34.528641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731804, 34.251934, 34.533390>,  <29.441591, 34.527096, 34.541309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731804, 34.251934, 34.533390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464320, 0.468082, 0.751869,
		-0.507948, -0.554696, 0.659016,
		0.725532, -0.687904, -0.019795,
		29.949463, 34.045563, 34.527451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594519, 34.145088, 35.191898>,  <29.441591, 34.527096, 34.541309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594519, 34.145088, 35.191898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930704, 34.179150, 34.977844>,  <30.132416, 34.199585, 34.849411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930704, 34.179150, 34.977844>,  <29.594519, 34.145088, 35.191898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930704, 34.179150, 34.977844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479799, 0.342006, 0.807976,
		0.251822, -0.935831, 0.246587,
		0.840463, 0.085154, -0.535135,
		30.182842, 34.204697, 34.817303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224251, 33.748844, 35.537331>,  <29.594519, 34.145088, 35.191898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224251, 33.748844, 35.537331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325506, 34.046066, 35.289528>,  <30.386259, 34.224400, 35.140846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325506, 34.046066, 35.289528>,  <30.224251, 33.748844, 35.537331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325506, 34.046066, 35.289528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383189, 0.510979, 0.769459,
		0.888305, -0.432170, -0.155381,
		0.253141, 0.743055, -0.619508,
		30.401449, 34.268982, 35.103676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989716, 33.988956, 35.742210>,  <30.224251, 33.748844, 35.537331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989716, 33.988956, 35.742210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772341, 34.272724, 35.562698>,  <30.641916, 34.442986, 35.454990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772341, 34.272724, 35.562698>,  <30.989716, 33.988956, 35.742210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772341, 34.272724, 35.562698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231191, 0.640415, 0.732407,
		0.806987, 0.294263, -0.512036,
		-0.543436, 0.709421, -0.448776,
		30.609310, 34.485550, 35.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396812, 34.732380, 35.575302>,  <30.989716, 33.988956, 35.742210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396812, 34.732380, 35.575302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002102, 34.796677, 35.583679>,  <30.765276, 34.835255, 35.588707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002102, 34.796677, 35.583679>,  <31.396812, 34.732380, 35.575302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002102, 34.796677, 35.583679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154623, 0.894594, 0.419276,
		0.048657, 0.416970, -0.907617,
		-0.986775, 0.160739, 0.020945,
		30.706070, 34.844898, 35.589962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380785, 35.376255, 35.374802>,  <31.396812, 34.732380, 35.575302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380785, 35.376255, 35.374802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037022, 35.315151, 35.569973>,  <30.830763, 35.278488, 35.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037022, 35.315151, 35.569973>,  <31.380785, 35.376255, 35.374802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037022, 35.315151, 35.569973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082508, 0.900377, 0.427216,
		-0.504586, 0.407412, -0.761189,
		-0.859410, -0.152763, 0.487933,
		30.779198, 35.269321, 35.716354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137300, 36.045746, 35.370083>,  <31.380785, 35.376255, 35.374802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137300, 36.045746, 35.370083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937965, 35.863377, 35.665054>,  <30.818363, 35.753956, 35.842037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937965, 35.863377, 35.665054>,  <31.137300, 36.045746, 35.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937965, 35.863377, 35.665054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049757, 0.834122, 0.549331,
		-0.865553, 0.310444, -0.392990,
		-0.498339, -0.455921, 0.737424,
		30.788464, 35.726601, 35.886280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447010, 36.416950, 35.594353>,  <31.137300, 36.045746, 35.370083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447010, 36.416950, 35.594353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609940, 36.199070, 35.887581>,  <30.707697, 36.068344, 36.063519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609940, 36.199070, 35.887581>,  <30.447010, 36.416950, 35.594353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609940, 36.199070, 35.887581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044286, 0.813512, 0.579860,
		-0.912210, -0.203725, 0.355484,
		0.407322, -0.544697, 0.733072,
		30.732136, 36.035660, 36.107502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167814, 36.619061, 36.155571>,  <30.447010, 36.416950, 35.594353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167814, 36.619061, 36.155571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500998, 36.459152, 36.308601>,  <30.700907, 36.363209, 36.400421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500998, 36.459152, 36.308601>,  <30.167814, 36.619061, 36.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500998, 36.459152, 36.308601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002476, 0.694084, 0.719890,
		-0.553331, -0.598691, 0.579132,
		0.832958, -0.399772, 0.382575,
		30.750885, 36.339222, 36.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884848, 36.532761, 36.827663>,  <30.167814, 36.619061, 36.155571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884848, 36.532761, 36.827663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283165, 36.502411, 36.807121>,  <30.522156, 36.484203, 36.794796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283165, 36.502411, 36.807121>,  <29.884848, 36.532761, 36.827663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283165, 36.502411, 36.807121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082693, 0.503045, 0.860295,
		-0.039438, -0.860923, 0.507204,
		0.995795, -0.075871, -0.051353,
		30.581903, 36.479649, 36.791714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105238, 36.302700, 37.442196>,  <29.884848, 36.532761, 36.827663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105238, 36.302700, 37.442196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430046, 36.482609, 37.293427>,  <30.624931, 36.590553, 37.204166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430046, 36.482609, 37.293427>,  <30.105238, 36.302700, 37.442196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430046, 36.482609, 37.293427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033975, 0.599751, 0.799465,
		0.582631, -0.661823, 0.471733,
		0.812027, 0.449765, -0.371919,
		30.673653, 36.617542, 37.181850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349146, 36.557175, 38.057186>,  <30.105238, 36.302700, 37.442196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349146, 36.557175, 38.057186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570250, 36.728016, 37.770958>,  <30.702911, 36.830521, 37.599220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570250, 36.728016, 37.770958>,  <30.349146, 36.557175, 38.057186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570250, 36.728016, 37.770958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240935, 0.740094, 0.627862,
		0.797753, -0.519460, 0.306187,
		0.552757, 0.427107, -0.715569,
		30.736076, 36.856148, 37.556286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996075, 36.534752, 38.342358>,  <30.349146, 36.557175, 38.057186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996075, 36.534752, 38.342358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974581, 36.833881, 38.077667>,  <30.961685, 37.013359, 37.918854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974581, 36.833881, 38.077667>,  <30.996075, 36.534752, 38.342358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974581, 36.833881, 38.077667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132683, 0.662151, 0.737530,
		0.989701, -0.048168, -0.134804,
		-0.053736, 0.747820, -0.661723,
		30.958460, 37.058228, 37.879150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629953, 36.978882, 38.466263>,  <30.996075, 36.534752, 38.342358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629953, 36.978882, 38.466263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350061, 37.212425, 38.301590>,  <31.182127, 37.352551, 38.202785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350061, 37.212425, 38.301590>,  <31.629953, 36.978882, 38.466263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350061, 37.212425, 38.301590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104128, 0.653460, 0.749765,
		0.706778, 0.481766, -0.518042,
		-0.699731, 0.583860, -0.411685,
		31.140142, 37.387585, 38.178085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904310, 37.650875, 38.546501>,  <31.629953, 36.978882, 38.466263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904310, 37.650875, 38.546501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513319, 37.703747, 38.480698>,  <31.278725, 37.735470, 38.441216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513319, 37.703747, 38.480698>,  <31.904310, 37.650875, 38.546501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513319, 37.703747, 38.480698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022558, 0.709638, 0.704206,
		0.209818, 0.692058, -0.690675,
		-0.977480, 0.132175, -0.164506,
		31.220076, 37.743401, 38.431347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774311, 38.366207, 38.509949>,  <31.904310, 37.650875, 38.546501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774311, 38.366207, 38.509949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425344, 38.205490, 38.621265>,  <31.215963, 38.109058, 38.688057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425344, 38.205490, 38.621265>,  <31.774311, 38.366207, 38.509949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425344, 38.205490, 38.621265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123872, 0.732559, 0.669338,
		-0.472802, 0.549470, -0.688869,
		-0.872418, -0.401796, 0.278291,
		31.163618, 38.084949, 38.704754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355639, 38.914776, 38.641647>,  <31.774311, 38.366207, 38.509949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355639, 38.914776, 38.641647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172899, 38.625637, 38.849026>,  <31.063255, 38.452156, 38.973454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172899, 38.625637, 38.849026>,  <31.355639, 38.914776, 38.641647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172899, 38.625637, 38.849026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185897, 0.647533, 0.739016,
		-0.869905, 0.241239, -0.430197,
		-0.456846, -0.722845, 0.518446,
		31.035845, 38.408783, 39.004559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727821, 39.221237, 38.980442>,  <31.355639, 38.914776, 38.641647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727821, 39.221237, 38.980442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799959, 38.883011, 39.181442>,  <30.843241, 38.680077, 39.302040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799959, 38.883011, 39.181442>,  <30.727821, 39.221237, 38.980442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799959, 38.883011, 39.181442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213337, 0.465086, 0.859175,
		-0.960189, -0.262148, -0.096514,
		0.180343, -0.845561, 0.502496,
		30.854063, 38.629341, 39.332191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135458, 39.136482, 39.387257>,  <30.727821, 39.221237, 38.980442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135458, 39.136482, 39.387257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431404, 38.925812, 39.554691>,  <30.608971, 38.799412, 39.655151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431404, 38.925812, 39.554691>,  <30.135458, 39.136482, 39.387257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431404, 38.925812, 39.554691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337920, 0.247084, 0.908163,
		-0.581731, -0.813367, 0.004835,
		0.739864, -0.526673, 0.418590,
		30.653364, 38.767811, 39.680267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849705, 38.994747, 39.964676>,  <30.135458, 39.136482, 39.387257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849705, 38.994747, 39.964676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223003, 38.870304, 40.036522>,  <30.446983, 38.795639, 40.079628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223003, 38.870304, 40.036522>,  <29.849705, 38.994747, 39.964676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223003, 38.870304, 40.036522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135912, 0.157047, 0.978194,
		-0.332531, -0.937309, 0.104281,
		0.933248, -0.311107, 0.179614,
		30.502977, 38.776974, 40.090405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784121, 38.492855, 40.501274>,  <29.849705, 38.994747, 39.964676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784121, 38.492855, 40.501274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137217, 38.680691, 40.494846>,  <30.349073, 38.793392, 40.490990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137217, 38.680691, 40.494846>,  <29.784121, 38.492855, 40.501274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137217, 38.680691, 40.494846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133485, 0.283416, 0.949662,
		0.450504, -0.836159, 0.312865,
		0.882739, 0.469589, -0.016066,
		30.402039, 38.821568, 40.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075418, 38.332241, 41.185905>,  <29.784121, 38.492855, 40.501274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075418, 38.332241, 41.185905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259104, 38.656586, 41.040791>,  <30.369316, 38.851192, 40.953720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259104, 38.656586, 41.040791>,  <30.075418, 38.332241, 41.185905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259104, 38.656586, 41.040791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086782, 0.365496, 0.926758,
		0.884076, -0.457065, 0.097473,
		0.459215, 0.810866, -0.362792,
		30.396868, 38.899845, 40.931953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631384, 38.488544, 41.673546>,  <30.075418, 38.332241, 41.185905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631384, 38.488544, 41.673546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539782, 38.826828, 41.480740>,  <30.484821, 39.029797, 41.365055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539782, 38.826828, 41.480740>,  <30.631384, 38.488544, 41.673546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539782, 38.826828, 41.480740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059780, 0.482024, 0.874116,
		0.971588, 0.228991, -0.059829,
		-0.229004, 0.845704, -0.482018,
		30.471081, 39.080540, 41.336136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955822, 39.049957, 42.071899>,  <30.631384, 38.488544, 41.673546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955822, 39.049957, 42.071899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687426, 39.237999, 41.842541>,  <30.526388, 39.350822, 41.704926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687426, 39.237999, 41.842541>,  <30.955822, 39.049957, 42.071899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687426, 39.237999, 41.842541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107279, 0.703634, 0.702417,
		0.733665, 0.532828, -0.421700,
		-0.670990, 0.470100, -0.573393,
		30.486128, 39.379028, 41.670525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112749, 39.809883, 42.199532>,  <30.955822, 39.049957, 42.071899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112749, 39.809883, 42.199532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748405, 39.817074, 42.034603>,  <30.529799, 39.821388, 41.935646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748405, 39.817074, 42.034603>,  <31.112749, 39.809883, 42.199532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748405, 39.817074, 42.034603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307041, 0.638078, 0.706103,
		0.275786, 0.769762, -0.575682,
		-0.910861, 0.017976, -0.412321,
		30.475147, 39.822468, 41.910908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973400, 40.433167, 42.118591>,  <31.112749, 39.809883, 42.199532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973400, 40.433167, 42.118591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612846, 40.262280, 42.146858>,  <30.396515, 40.159748, 42.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612846, 40.262280, 42.146858>,  <30.973400, 40.433167, 42.118591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612846, 40.262280, 42.146858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257578, 0.660177, 0.705563,
		-0.348081, 0.617781, -0.705115,
		-0.901384, -0.427215, 0.070668,
		30.342430, 40.134113, 42.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537823, 40.941807, 42.179859>,  <30.973400, 40.433167, 42.118591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537823, 40.941807, 42.179859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305855, 40.647579, 42.319939>,  <30.166674, 40.471043, 42.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305855, 40.647579, 42.319939>,  <30.537823, 40.941807, 42.179859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305855, 40.647579, 42.319939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372892, 0.621853, 0.688659,
		-0.724324, 0.268781, -0.634911,
		-0.579920, -0.735565, 0.350196,
		30.131880, 40.426910, 42.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918694, 41.317680, 42.396431>,  <30.537823, 40.941807, 42.179859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918694, 41.317680, 42.396431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910343, 40.950645, 42.555222>,  <29.905333, 40.730423, 42.650497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910343, 40.950645, 42.555222>,  <29.918694, 41.317680, 42.396431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910343, 40.950645, 42.555222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581288, 0.334194, 0.741902,
		-0.813430, -0.215271, -0.540361,
		-0.020875, -0.917591, 0.396978,
		29.904081, 40.675369, 42.674316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221054, 41.186096, 42.647415>,  <29.918694, 41.317680, 42.396431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221054, 41.186096, 42.647415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446672, 40.938602, 42.866146>,  <29.582043, 40.790108, 42.997387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446672, 40.938602, 42.866146>,  <29.221054, 41.186096, 42.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446672, 40.938602, 42.866146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435694, 0.339539, 0.833597,
		-0.701444, -0.708436, -0.078064,
		0.564045, -0.618734, 0.546829,
		29.615887, 40.752983, 43.030193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722277, 40.863426, 43.080795>,  <29.221054, 41.186096, 42.647415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722277, 40.863426, 43.080795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090902, 40.855442, 43.235882>,  <29.312078, 40.850651, 43.328934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090902, 40.855442, 43.235882>,  <28.722277, 40.863426, 43.080795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090902, 40.855442, 43.235882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372001, 0.240309, 0.896586,
		-0.111065, -0.970491, 0.214036,
		0.921564, -0.019957, 0.387714,
		29.367371, 40.849457, 43.352196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673288, 40.433689, 43.716854>,  <28.722277, 40.863426, 43.080795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673288, 40.433689, 43.716854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988323, 40.673752, 43.772736>,  <29.177343, 40.817791, 43.806263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988323, 40.673752, 43.772736>,  <28.673288, 40.433689, 43.716854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988323, 40.673752, 43.772736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369444, 0.278458, 0.886551,
		0.493173, -0.749846, 0.441035,
		0.787586, 0.600160, 0.139698,
		29.224600, 40.853798, 43.814644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694061, 40.348549, 44.383755>,  <28.673288, 40.433689, 43.716854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694061, 40.348549, 44.383755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925459, 40.667606, 44.315510>,  <29.064297, 40.859039, 44.274563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925459, 40.667606, 44.315510>,  <28.694061, 40.348549, 44.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925459, 40.667606, 44.315510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142640, 0.304862, 0.941654,
		0.803118, -0.520405, 0.290137,
		0.578494, 0.797645, -0.170609,
		29.099007, 40.906898, 44.264328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116411, 40.355572, 44.952839>,  <28.694061, 40.348549, 44.383755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116411, 40.355572, 44.952839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112389, 40.725719, 44.801266>,  <29.109976, 40.947807, 44.710323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112389, 40.725719, 44.801266>,  <29.116411, 40.355572, 44.952839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112389, 40.725719, 44.801266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116917, 0.375264, 0.919515,
		0.993091, 0.053550, 0.104418,
		-0.010056, 0.925370, -0.378932,
		29.109371, 41.003330, 44.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644783, 40.655025, 45.261482>,  <29.116411, 40.355572, 44.952839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644783, 40.655025, 45.261482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384802, 40.924614, 45.121014>,  <29.228813, 41.086365, 45.036732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384802, 40.924614, 45.121014>,  <29.644783, 40.655025, 45.261482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384802, 40.924614, 45.121014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188507, 0.304675, 0.933616,
		0.736223, 0.673007, -0.070977,
		-0.649955, 0.673969, -0.351176,
		29.189816, 41.126804, 45.015659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807440, 41.203651, 45.637978>,  <29.644783, 40.655025, 45.261482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807440, 41.203651, 45.637978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457296, 41.314407, 45.479446>,  <29.247210, 41.380859, 45.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457296, 41.314407, 45.479446>,  <29.807440, 41.203651, 45.637978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457296, 41.314407, 45.479446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237188, 0.468385, 0.851092,
		0.421292, 0.839017, -0.344331,
		-0.875360, 0.276887, -0.396332,
		29.194689, 41.397472, 45.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739628, 41.954231, 45.585114>,  <29.807440, 41.203651, 45.637978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739628, 41.954231, 45.585114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381588, 41.779049, 45.618557>,  <29.166763, 41.673939, 45.638622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381588, 41.779049, 45.618557>,  <29.739628, 41.954231, 45.585114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381588, 41.779049, 45.618557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218537, 0.594393, 0.773911,
		-0.388636, 0.674455, -0.627751,
		-0.895100, -0.437957, 0.083609,
		29.113058, 41.647663, 45.643639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335983, 42.500206, 45.948505>,  <29.739628, 41.954231, 45.585114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335983, 42.500206, 45.948505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106232, 42.176773, 45.999546>,  <28.968380, 41.982712, 46.030170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106232, 42.176773, 45.999546>,  <29.335983, 42.500206, 45.948505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106232, 42.176773, 45.999546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194512, 0.286234, 0.938209,
		-0.795143, 0.514068, -0.321686,
		-0.574381, -0.808582, 0.127605,
		28.933918, 41.934200, 46.037827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624891, 42.714901, 46.162506>,  <29.335983, 42.500206, 45.948505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624891, 42.714901, 46.162506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710701, 42.338905, 46.268642>,  <28.762186, 42.113308, 46.332325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710701, 42.338905, 46.268642>,  <28.624891, 42.714901, 46.162506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710701, 42.338905, 46.268642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023748, 0.266561, 0.963525,
		-0.976430, -0.213000, 0.034861,
		0.214523, -0.939987, 0.265337,
		28.775059, 42.056908, 46.348244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227932, 42.668434, 46.839767>,  <28.624891, 42.714901, 46.162506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227932, 42.668434, 46.839767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484035, 42.361214, 46.834724>,  <28.637697, 42.176880, 46.831699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484035, 42.361214, 46.834724>,  <28.227932, 42.668434, 46.839767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484035, 42.361214, 46.834724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025428, 0.004792, 0.999665,
		-0.767737, -0.640366, 0.022598,
		0.640260, -0.768055, -0.012604,
		28.676113, 42.130798, 46.830944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960419, 42.286690, 47.342697>,  <28.227932, 42.668434, 46.839767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960419, 42.286690, 47.342697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324171, 42.121014, 47.327351>,  <28.542423, 42.021606, 47.318142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324171, 42.121014, 47.327351>,  <27.960419, 42.286690, 47.342697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324171, 42.121014, 47.327351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017063, -0.129291, 0.991460,
		-0.415613, -0.900960, -0.124643,
		0.909381, -0.414191, -0.038362,
		28.596985, 41.996758, 47.315842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949684, 41.670750, 47.717422>,  <27.960419, 42.286690, 47.342697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949684, 41.670750, 47.717422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343521, 41.740299, 47.709957>,  <28.579823, 41.782028, 47.705479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343521, 41.740299, 47.709957>,  <27.949684, 41.670750, 47.717422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343521, 41.740299, 47.709957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025613, -0.037836, 0.998956,
		0.172985, -0.984041, -0.041706,
		0.984591, 0.173873, -0.018660,
		28.638899, 41.792461, 47.704361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210571, 41.268707, 48.193176>,  <27.949684, 41.670750, 47.717422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210571, 41.268707, 48.193176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499001, 41.539806, 48.135605>,  <28.672058, 41.702465, 48.101063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499001, 41.539806, 48.135605>,  <28.210571, 41.268707, 48.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499001, 41.539806, 48.135605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187088, 0.009561, 0.982297,
		0.667124, -0.735233, -0.119904,
		0.721071, 0.677747, -0.143931,
		28.715322, 41.743130, 48.092426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807217, 40.883205, 48.372364>,  <28.210571, 41.268707, 48.193176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807217, 40.883205, 48.372364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821371, 41.280293, 48.418423>,  <28.829865, 41.518543, 48.446056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821371, 41.280293, 48.418423>,  <28.807217, 40.883205, 48.372364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821371, 41.280293, 48.418423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182406, -0.119698, 0.975910,
		0.982586, -0.013530, -0.185313,
		0.035385, 0.992718, 0.115145,
		28.831987, 41.578110, 48.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463367, 40.964005, 48.694923>,  <28.807217, 40.883205, 48.372364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463367, 40.964005, 48.694923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265251, 41.301765, 48.776569>,  <29.146381, 41.504421, 48.825558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265251, 41.301765, 48.776569>,  <29.463367, 40.964005, 48.694923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265251, 41.301765, 48.776569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229870, -0.099200, 0.968152,
		0.837763, 0.526438, -0.144970,
		-0.495291, 0.844406, 0.204119,
		29.116663, 41.555088, 48.837807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877747, 41.377216, 49.072166>,  <29.463367, 40.964005, 48.694923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877747, 41.377216, 49.072166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526785, 41.542419, 49.169807>,  <29.316208, 41.641541, 49.228390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526785, 41.542419, 49.169807>,  <29.877747, 41.377216, 49.072166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526785, 41.542419, 49.169807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259198, -0.020058, 0.965616,
		0.403706, 0.910505, -0.089453,
		-0.877404, 0.413011, 0.244098,
		29.263563, 41.666325, 49.243038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992170, 41.839245, 49.659866>,  <29.877747, 41.377216, 49.072166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992170, 41.839245, 49.659866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596720, 41.779537, 49.667263>,  <29.359449, 41.743713, 49.671700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596720, 41.779537, 49.667263>,  <29.992170, 41.839245, 49.659866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596720, 41.779537, 49.667263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061943, -0.292049, 0.954395,
		-0.137059, 0.944684, 0.297973,
		-0.988624, -0.149266, 0.018489,
		29.300133, 41.734756, 49.672810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717733, 42.086353, 50.345657>,  <29.992170, 41.839245, 49.659866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717733, 42.086353, 50.345657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480202, 41.800072, 50.198612>,  <29.337683, 41.628304, 50.110386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480202, 41.800072, 50.198612>,  <29.717733, 42.086353, 50.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480202, 41.800072, 50.198612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013385, -0.448043, 0.893912,
		-0.804479, 0.535753, 0.256482,
		-0.593831, -0.715700, -0.367612,
		29.302052, 41.585361, 50.088329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075613, 42.053318, 50.652107>,  <29.717733, 42.086353, 50.345657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075613, 42.053318, 50.652107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206171, 41.691761, 50.541515>,  <29.284506, 41.474827, 50.475159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206171, 41.691761, 50.541515>,  <29.075613, 42.053318, 50.652107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206171, 41.691761, 50.541515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161173, -0.341438, 0.925982,
		-0.931392, -0.257673, -0.257127,
		0.326394, -0.903894, -0.276482,
		29.304089, 41.420593, 50.458572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965046, 42.311348, 51.373859>,  <29.075613, 42.053318, 50.652107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965046, 42.311348, 51.373859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291418, 42.491589, 51.518753>,  <29.487242, 42.599735, 51.605690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291418, 42.491589, 51.518753>,  <28.965046, 42.311348, 51.373859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291418, 42.491589, 51.518753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150737, -0.770667, 0.619153,
		0.558152, -0.450585, -0.696735,
		0.815932, 0.450605, 0.362229,
		29.536198, 42.626770, 51.627422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525599, 41.928032, 51.344994>,  <28.965046, 42.311348, 51.373859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525599, 41.928032, 51.344994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649530, 42.178726, 51.630989>,  <29.723888, 42.329144, 51.802586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649530, 42.178726, 51.630989>,  <29.525599, 41.928032, 51.344994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649530, 42.178726, 51.630989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044702, -0.760765, 0.647486,
		0.949741, -0.168648, -0.263723,
		0.309828, 0.626733, 0.714991,
		29.742479, 42.366745, 51.845486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109594, 41.510006, 51.699360>,  <29.525599, 41.928032, 51.344994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109594, 41.510006, 51.699360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950796, 41.781651, 51.946327>,  <29.855516, 41.944637, 52.094509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950796, 41.781651, 51.946327>,  <30.109594, 41.510006, 51.699360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950796, 41.781651, 51.946327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055759, -0.653611, 0.754774,
		0.916125, 0.334069, 0.221615,
		-0.396997, 0.679110, 0.617417,
		29.831697, 41.985382, 52.131554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569410, 41.662857, 52.257961>,  <30.109594, 41.510006, 51.699360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569410, 41.662857, 52.257961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172077, 41.660313, 52.303997>,  <29.933678, 41.658787, 52.331619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172077, 41.660313, 52.303997>,  <30.569410, 41.662857, 52.257961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172077, 41.660313, 52.303997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081365, -0.745934, 0.661032,
		0.081644, 0.665990, 0.741480,
		-0.993335, -0.006361, 0.115089,
		29.874077, 41.658405, 52.338524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375200, 41.648163, 53.027260>,  <30.569410, 41.662857, 52.257961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375200, 41.648163, 53.027260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083406, 41.482449, 52.809559>,  <29.908329, 41.383018, 52.678936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083406, 41.482449, 52.809559>,  <30.375200, 41.648163, 53.027260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083406, 41.482449, 52.809559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006466, -0.799842, 0.600176,
		-0.683965, 0.434301, 0.586152,
		-0.729486, -0.414289, -0.544256,
		29.864561, 41.358162, 52.646282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720415, 41.292671, 53.402523>,  <30.375200, 41.648163, 53.027260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720415, 41.292671, 53.402523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807028, 41.123138, 53.050732>,  <29.858995, 41.021420, 52.839657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807028, 41.123138, 53.050732>,  <29.720415, 41.292671, 53.402523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807028, 41.123138, 53.050732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061273, -0.904974, 0.421033,
		-0.974351, -0.037279, -0.221926,
		0.216533, -0.423832, -0.879478,
		29.871988, 40.995991, 52.786888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193380, 40.708626, 53.276741>,  <29.720415, 41.292671, 53.402523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193380, 40.708626, 53.276741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543970, 40.642559, 53.095848>,  <29.754324, 40.602921, 52.987312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543970, 40.642559, 53.095848>,  <29.193380, 40.708626, 53.276741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543970, 40.642559, 53.095848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087113, -0.869403, 0.486363,
		-0.473503, -0.465680, -0.747621,
		0.876474, -0.165167, -0.452232,
		29.806911, 40.593010, 52.960178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325096, 39.945358, 53.221760>,  <29.193380, 40.708626, 53.276741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325096, 39.945358, 53.221760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680868, 40.093311, 53.114353>,  <29.894331, 40.182083, 53.049911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680868, 40.093311, 53.114353>,  <29.325096, 39.945358, 53.221760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680868, 40.093311, 53.114353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439866, -0.852341, 0.282900,
		-0.124225, -0.369730, -0.920797,
		0.889430, 0.369885, -0.268514,
		29.947697, 40.204277, 53.033798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316116, 39.449829, 52.654861>,  <29.325096, 39.945358, 53.221760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316116, 39.449829, 52.654861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034317, 39.451817, 52.938736>,  <28.865238, 39.453007, 53.109062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034317, 39.451817, 52.938736>,  <29.316116, 39.449829, 52.654861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034317, 39.451817, 52.938736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596866, -0.545164, -0.588682,
		0.383974, -0.838315, 0.387030,
		-0.704496, 0.004966, 0.709690,
		28.822968, 39.453308, 53.151642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055124, 38.767952, 52.676903>,  <29.316116, 39.449829, 52.654861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055124, 38.767952, 52.676903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785820, 39.035923, 52.802067>,  <28.624237, 39.196705, 52.877167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785820, 39.035923, 52.802067>,  <29.055124, 38.767952, 52.676903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785820, 39.035923, 52.802067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683068, -0.401506, -0.610091,
		-0.283082, -0.624491, 0.727926,
		-0.673263, 0.669928, 0.312910,
		28.583841, 39.236900, 52.895939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011688, 39.093060, 51.970253>,  <29.055124, 38.767952, 52.676903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011688, 39.093060, 51.970253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049597, 39.319332, 51.642590>,  <29.072342, 39.455097, 51.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049597, 39.319332, 51.642590>,  <29.011688, 39.093060, 51.970253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049597, 39.319332, 51.642590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216357, -0.814900, -0.537706,
		-0.971704, -0.126272, -0.199618,
		0.094771, 0.565680, -0.819161,
		29.078028, 39.489037, 51.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749912, 38.788746, 51.491028>,  <29.011688, 39.093060, 51.970253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749912, 38.788746, 51.491028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952785, 39.044067, 51.259396>,  <29.074509, 39.197262, 51.120419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952785, 39.044067, 51.259396>,  <28.749912, 38.788746, 51.491028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952785, 39.044067, 51.259396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210880, -0.743398, -0.634736,
		-0.835641, 0.199810, -0.511644,
		0.507182, 0.638307, -0.579078,
		29.104940, 39.235561, 51.085670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502527, 38.707954, 50.779781>,  <28.749912, 38.788746, 51.491028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502527, 38.707954, 50.779781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870173, 38.865284, 50.770561>,  <29.090759, 38.959682, 50.765030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870173, 38.865284, 50.770561>,  <28.502527, 38.707954, 50.779781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870173, 38.865284, 50.770561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253881, -0.635976, -0.728752,
		-0.301297, 0.663951, -0.684390,
		0.919111, 0.393324, -0.023053,
		29.145906, 38.983280, 50.763645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614843, 38.658474, 50.122498>,  <28.502527, 38.707954, 50.779781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614843, 38.658474, 50.122498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988594, 38.737152, 50.241325>,  <29.212845, 38.784359, 50.312622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988594, 38.737152, 50.241325>,  <28.614843, 38.658474, 50.122498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988594, 38.737152, 50.241325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355618, -0.463758, -0.811458,
		-0.021843, 0.863851, -0.503273,
		0.934376, 0.196698, 0.297071,
		29.268908, 38.796162, 50.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954113, 38.880325, 49.551285>,  <28.614843, 38.658474, 50.122498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954113, 38.880325, 49.551285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253349, 38.785477, 49.799198>,  <29.432892, 38.728565, 49.947945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253349, 38.785477, 49.799198>,  <28.954113, 38.880325, 49.551285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253349, 38.785477, 49.799198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526455, -0.356512, -0.771845,
		0.403984, 0.903698, -0.141868,
		0.748092, -0.237126, 0.619782,
		29.477777, 38.714340, 49.985134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586855, 39.140938, 49.229897>,  <28.954113, 38.880325, 49.551285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586855, 39.140938, 49.229897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698259, 38.870857, 49.503113>,  <29.765102, 38.708809, 49.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698259, 38.870857, 49.503113>,  <29.586855, 39.140938, 49.229897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698259, 38.870857, 49.503113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664733, -0.377800, -0.644513,
		0.693225, 0.633541, 0.343605,
		0.278512, -0.675198, 0.683036,
		29.781813, 38.668297, 49.708023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387104, 39.088474, 49.222252>,  <29.586855, 39.140938, 49.229897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387104, 39.088474, 49.222252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222464, 38.760120, 49.380611>,  <30.123680, 38.563107, 49.475628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222464, 38.760120, 49.380611>,  <30.387104, 39.088474, 49.222252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222464, 38.760120, 49.380611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623411, -0.570470, -0.534717,
		0.664789, 0.026719, 0.746553,
		-0.411599, -0.820884, 0.395899,
		30.098984, 38.513855, 49.499382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927277, 38.689415, 49.376514>,  <30.387104, 39.088474, 49.222252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927277, 38.689415, 49.376514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602207, 38.458305, 49.346222>,  <30.407166, 38.319641, 49.328045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602207, 38.458305, 49.346222>,  <30.927277, 38.689415, 49.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602207, 38.458305, 49.346222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446804, -0.534415, -0.717472,
		0.374064, -0.616910, 0.692457,
		-0.812676, -0.577774, -0.075733,
		30.358404, 38.284973, 49.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197493, 38.052666, 49.232800>,  <30.927277, 38.689415, 49.376514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197493, 38.052666, 49.232800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819311, 37.984455, 49.121780>,  <30.592402, 37.943531, 49.055168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819311, 37.984455, 49.121780>,  <31.197493, 38.052666, 49.232800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819311, 37.984455, 49.121780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325401, -0.454936, -0.828944,
		0.015088, -0.874045, 0.485611,
		-0.945456, -0.170525, -0.277551,
		30.535675, 37.933296, 49.038513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173166, 37.292587, 48.935787>,  <31.197493, 38.052666, 49.232800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173166, 37.292587, 48.935787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849161, 37.474712, 48.787968>,  <30.654758, 37.583988, 48.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849161, 37.474712, 48.787968>,  <31.173166, 37.292587, 48.935787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849161, 37.474712, 48.787968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176261, -0.412010, -0.893969,
		-0.559294, -0.789265, 0.253479,
		-0.810014, 0.455313, -0.369551,
		30.606157, 37.611305, 48.677101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952972, 36.807983, 48.522766>,  <31.173166, 37.292587, 48.935787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952972, 36.807983, 48.522766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753679, 37.131657, 48.398201>,  <30.634102, 37.325863, 48.323463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753679, 37.131657, 48.398201>,  <30.952972, 36.807983, 48.522766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753679, 37.131657, 48.398201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090509, -0.405744, -0.909495,
		-0.862305, -0.424956, 0.275394,
		-0.498235, 0.809187, -0.311412,
		30.604208, 37.374413, 48.304779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392328, 36.529518, 48.180412>,  <30.952972, 36.807983, 48.522766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392328, 36.529518, 48.180412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457085, 36.901409, 48.048111>,  <30.495939, 37.124542, 47.968731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457085, 36.901409, 48.048111>,  <30.392328, 36.529518, 48.180412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457085, 36.901409, 48.048111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103816, -0.317268, -0.942636,
		-0.981333, 0.186942, 0.045158,
		0.161891, 0.929728, -0.330753,
		30.505651, 37.180328, 47.948887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883856, 36.622173, 47.677963>,  <30.392328, 36.529518, 48.180412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883856, 36.622173, 47.677963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154264, 36.908409, 47.607613>,  <30.316509, 37.080151, 47.565403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154264, 36.908409, 47.607613>,  <29.883856, 36.622173, 47.677963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154264, 36.908409, 47.607613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117612, -0.130841, -0.984402,
		-0.727436, 0.686162, -0.004290,
		0.676021, 0.715585, -0.175879,
		30.357071, 37.123085, 47.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551638, 36.960674, 47.193501>,  <29.883856, 36.622173, 47.677963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551638, 36.960674, 47.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942862, 37.020237, 47.135227>,  <30.177597, 37.055973, 47.100262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942862, 37.020237, 47.135227>,  <29.551638, 36.960674, 47.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942862, 37.020237, 47.135227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097374, -0.291434, -0.951622,
		-0.184161, 0.944930, -0.270540,
		0.978061, 0.148908, -0.145683,
		30.236280, 37.064911, 47.091522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644855, 37.368645, 46.627052>,  <29.551638, 36.960674, 47.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644855, 37.368645, 46.627052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008699, 37.203182, 46.642517>,  <30.227005, 37.103905, 46.651798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008699, 37.203182, 46.642517>,  <29.644855, 37.368645, 46.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008699, 37.203182, 46.642517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019521, -0.135516, -0.990583,
		0.415005, 0.900289, -0.131342,
		0.909610, -0.413660, 0.038665,
		30.281582, 37.079082, 46.654118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005177, 37.675102, 46.018326>,  <29.644855, 37.368645, 46.627052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005177, 37.675102, 46.018326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196344, 37.333378, 46.100048>,  <30.311045, 37.128342, 46.149082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196344, 37.333378, 46.100048>,  <30.005177, 37.675102, 46.018326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196344, 37.333378, 46.100048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107586, -0.173907, -0.978868,
		0.871790, 0.489801, 0.008799,
		0.477920, -0.854313, 0.204306,
		30.339720, 37.077084, 46.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683046, 37.749149, 45.695271>,  <30.005177, 37.675102, 46.018326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683046, 37.749149, 45.695271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629496, 37.354626, 45.733803>,  <30.597366, 37.117912, 45.756920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629496, 37.354626, 45.733803>,  <30.683046, 37.749149, 45.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629496, 37.354626, 45.733803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439786, -0.146237, -0.886117,
		0.888069, -0.076265, 0.453341,
		-0.133875, -0.986305, 0.096329,
		30.589333, 37.058735, 45.762703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303637, 37.431892, 45.408539>,  <30.683046, 37.749149, 45.695271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303637, 37.431892, 45.408539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007511, 37.163200, 45.397861>,  <30.829836, 37.001984, 45.391457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007511, 37.163200, 45.397861>,  <31.303637, 37.431892, 45.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007511, 37.163200, 45.397861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257523, -0.246689, -0.934252,
		0.620981, -0.698514, 0.355613,
		-0.740313, -0.671732, -0.026695,
		30.785418, 36.961681, 45.389854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518980, 37.013798, 44.926762>,  <31.303637, 37.431892, 45.408539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518980, 37.013798, 44.926762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132210, 36.912457, 44.938553>,  <30.900148, 36.851654, 44.945625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132210, 36.912457, 44.938553>,  <31.518980, 37.013798, 44.926762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132210, 36.912457, 44.938553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022601, -0.200219, -0.979491,
		0.254057, -0.946428, 0.199323,
		-0.966925, -0.253351, 0.029476,
		30.842133, 36.836452, 44.947395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483395, 36.408951, 44.600025>,  <31.518980, 37.013798, 44.926762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483395, 36.408951, 44.600025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099760, 36.519924, 44.622597>,  <30.869579, 36.586506, 44.636139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099760, 36.519924, 44.622597>,  <31.483395, 36.408951, 44.600025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099760, 36.519924, 44.622597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192083, -0.491224, -0.849590,
		-0.207981, -0.825670, 0.524416,
		-0.959087, 0.277430, 0.056432,
		30.812035, 36.603153, 44.639526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183220, 35.887024, 44.317627>,  <31.483395, 36.408951, 44.600025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183220, 35.887024, 44.317627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890919, 36.158813, 44.291348>,  <30.715538, 36.321888, 44.275578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890919, 36.158813, 44.291348>,  <31.183220, 35.887024, 44.317627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890919, 36.158813, 44.291348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183201, -0.287916, -0.939969,
		-0.657599, -0.674850, 0.334876,
		-0.730754, 0.679472, -0.065700,
		30.671692, 36.362656, 44.271637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513264, 35.600906, 44.179264>,  <31.183220, 35.887024, 44.317627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513264, 35.600906, 44.179264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476255, 35.978226, 44.051743>,  <30.454050, 36.204617, 43.975231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476255, 35.978226, 44.051743>,  <30.513264, 35.600906, 44.179264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476255, 35.978226, 44.051743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374933, -0.329616, -0.866475,
		-0.922423, 0.039361, 0.384169,
		-0.092523, 0.943294, -0.318803,
		30.448498, 36.261215, 43.956100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912973, 35.698357, 43.801727>,  <30.513264, 35.600906, 44.179264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912973, 35.698357, 43.801727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082325, 36.033581, 43.664089>,  <30.183935, 36.234715, 43.581505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082325, 36.033581, 43.664089>,  <29.912973, 35.698357, 43.801727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082325, 36.033581, 43.664089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118593, -0.325279, -0.938152,
		-0.898157, 0.438001, -0.038328,
		0.423379, 0.838063, -0.344095,
		30.209339, 36.285000, 43.560860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400263, 36.010548, 43.263626>,  <29.912973, 35.698357, 43.801727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400263, 36.010548, 43.263626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765070, 36.152218, 43.180889>,  <29.983953, 36.237221, 43.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765070, 36.152218, 43.180889>,  <29.400263, 36.010548, 43.263626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765070, 36.152218, 43.180889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111420, -0.271403, -0.955995,
		-0.394731, 0.894929, -0.208062,
		0.912016, 0.354179, -0.206844,
		30.038675, 36.258472, 43.118835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302691, 36.466957, 42.705994>,  <29.400263, 36.010548, 43.263626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302691, 36.466957, 42.705994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689798, 36.366241, 42.704269>,  <29.922064, 36.305813, 42.703236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689798, 36.366241, 42.704269>,  <29.302691, 36.466957, 42.705994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689798, 36.366241, 42.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064898, -0.232843, -0.970347,
		0.243323, 0.939353, -0.241679,
		0.967772, -0.251792, -0.004306,
		29.980129, 36.290703, 42.702976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633038, 36.737782, 42.103745>,  <29.302691, 36.466957, 42.705994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633038, 36.737782, 42.103745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884464, 36.445507, 42.210331>,  <30.035320, 36.270142, 42.274284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884464, 36.445507, 42.210331>,  <29.633038, 36.737782, 42.103745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884464, 36.445507, 42.210331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134372, -0.439480, -0.888145,
		0.766059, 0.522455, -0.374427,
		0.628568, -0.730683, 0.266465,
		30.073034, 36.226303, 42.290272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071146, 36.757076, 41.628754>,  <29.633038, 36.737782, 42.103745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071146, 36.757076, 41.628754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102154, 36.381744, 41.763535>,  <30.120758, 36.156548, 41.844402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102154, 36.381744, 41.763535>,  <30.071146, 36.757076, 41.628754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102154, 36.381744, 41.763535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012170, -0.338830, -0.940769,
		0.996917, 0.068827, -0.037686,
		0.077520, -0.938327, 0.336948,
		30.125410, 36.100246, 41.864620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640491, 36.426003, 41.143501>,  <30.071146, 36.757076, 41.628754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640491, 36.426003, 41.143501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437458, 36.124443, 41.310352>,  <30.315638, 35.943508, 41.410461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437458, 36.124443, 41.310352>,  <30.640491, 36.426003, 41.143501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437458, 36.124443, 41.310352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082888, -0.439155, -0.894580,
		0.857606, -0.488649, 0.160419,
		-0.507584, -0.753900, 0.417125,
		30.285183, 35.898273, 41.435490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987406, 35.820873, 41.047432>,  <30.640491, 36.426003, 41.143501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987406, 35.820873, 41.047432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623156, 35.672794, 41.120876>,  <30.404606, 35.583946, 41.164944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623156, 35.672794, 41.120876>,  <30.987406, 35.820873, 41.047432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623156, 35.672794, 41.120876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005895, -0.455929, -0.889997,
		0.413189, -0.809372, 0.417363,
		-0.910626, -0.370197, 0.183613,
		30.349968, 35.561737, 41.175961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043598, 35.082058, 40.873436>,  <30.987406, 35.820873, 41.047432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043598, 35.082058, 40.873436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660122, 35.194138, 40.853821>,  <30.430037, 35.261383, 40.842052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660122, 35.194138, 40.853821>,  <31.043598, 35.082058, 40.873436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660122, 35.194138, 40.853821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100588, -0.495184, -0.862945,
		-0.266077, -0.822364, 0.502912,
		-0.958689, 0.280196, -0.049037,
		30.372515, 35.278198, 40.839111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771746, 34.419437, 40.847248>,  <31.043598, 35.082058, 40.873436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771746, 34.419437, 40.847248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526382, 34.700542, 40.703110>,  <30.379164, 34.869205, 40.616627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526382, 34.700542, 40.703110>,  <30.771746, 34.419437, 40.847248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526382, 34.700542, 40.703110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117329, -0.532303, -0.838384,
		-0.781001, -0.471993, 0.408974,
		-0.613410, 0.702764, -0.360351,
		30.342360, 34.911373, 40.595005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254734, 34.085293, 40.489346>,  <30.771746, 34.419437, 40.847248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254734, 34.085293, 40.489346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228697, 34.455833, 40.340950>,  <30.213074, 34.678158, 40.251915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228697, 34.455833, 40.340950>,  <30.254734, 34.085293, 40.489346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228697, 34.455833, 40.340950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045941, -0.368598, -0.928453,
		-0.996821, -0.077479, -0.018565,
		-0.065093, 0.926354, -0.370986,
		30.209169, 34.733738, 40.229652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883627, 33.929138, 39.875721>,  <30.254734, 34.085293, 40.489346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883627, 33.929138, 39.875721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030525, 34.298813, 39.833763>,  <30.118664, 34.520618, 39.808590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030525, 34.298813, 39.833763>,  <29.883627, 33.929138, 39.875721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030525, 34.298813, 39.833763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312907, -0.228960, -0.921774,
		-0.875911, 0.305696, -0.373270,
		0.367246, 0.924190, -0.104894,
		30.140699, 34.576069, 39.802296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721659, 34.149738, 39.198143>,  <29.883627, 33.929138, 39.875721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721659, 34.149738, 39.198143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027666, 34.388039, 39.295986>,  <30.211269, 34.531017, 39.354691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027666, 34.388039, 39.295986>,  <29.721659, 34.149738, 39.198143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027666, 34.388039, 39.295986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441546, -0.208709, -0.872627,
		-0.468814, 0.775580, -0.422716,
		0.765016, 0.595749, 0.244608,
		30.257172, 34.566765, 39.369370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855652, 34.676296, 38.628578>,  <29.721659, 34.149738, 39.198143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855652, 34.676296, 38.628578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202177, 34.663101, 38.827942>,  <30.410091, 34.655186, 38.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202177, 34.663101, 38.827942>,  <29.855652, 34.676296, 38.628578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202177, 34.663101, 38.827942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490626, -0.131070, -0.861456,
		0.093744, 0.990824, -0.097364,
		0.866313, -0.032987, 0.498411,
		30.462070, 34.653206, 38.977467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370882, 34.947895, 38.201359>,  <29.855652, 34.676296, 38.628578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370882, 34.947895, 38.201359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619793, 34.748913, 38.443123>,  <30.769140, 34.629524, 38.588181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619793, 34.748913, 38.443123>,  <30.370882, 34.947895, 38.201359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619793, 34.748913, 38.443123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587988, -0.212671, -0.780411,
		0.516759, 0.841017, 0.160156,
		0.622278, -0.497455, 0.604408,
		30.806477, 34.599678, 38.624447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073704, 35.149628, 38.079395>,  <30.370882, 34.947895, 38.201359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073704, 35.149628, 38.079395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082403, 34.783581, 38.240440>,  <31.087624, 34.563953, 38.337067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082403, 34.783581, 38.240440>,  <31.073704, 35.149628, 38.079395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082403, 34.783581, 38.240440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757547, -0.247711, -0.603956,
		0.652419, 0.318131, 0.687854,
		0.021748, -0.915113, 0.402610,
		31.088928, 34.509048, 38.361225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789726, 35.131802, 38.126225>,  <31.073704, 35.149628, 38.079395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789726, 35.131802, 38.126225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659401, 34.754013, 38.143322>,  <31.581205, 34.527340, 38.153580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659401, 34.754013, 38.143322>,  <31.789726, 35.131802, 38.126225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659401, 34.754013, 38.143322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782565, -0.294776, -0.548361,
		0.530509, -0.145213, 0.835149,
		-0.325811, -0.944468, 0.042743,
		31.561657, 34.470673, 38.156143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350433, 34.798851, 38.077629>,  <31.789726, 35.131802, 38.126225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350433, 34.798851, 38.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087822, 34.500198, 38.034698>,  <31.930256, 34.321007, 38.008942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087822, 34.500198, 38.034698>,  <32.350433, 34.798851, 38.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087822, 34.500198, 38.034698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658388, -0.497779, -0.564572,
		0.368099, -0.441320, 0.818376,
		-0.656527, -0.746627, -0.107328,
		31.890863, 34.276211, 38.002499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667774, 34.226120, 38.377686>,  <32.350433, 34.798851, 38.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667774, 34.226120, 38.377686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392765, 34.143089, 38.099342>,  <32.227760, 34.093269, 37.932335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392765, 34.143089, 38.099342>,  <32.667774, 34.226120, 38.377686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392765, 34.143089, 38.099342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680259, -0.519400, -0.517176,
		-0.254076, -0.828936, 0.498307,
		-0.687526, -0.207576, -0.695859,
		32.186508, 34.080818, 37.890583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405579, 34.544689, 38.416138>,  <32.667774, 34.226120, 38.377686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405579, 34.544689, 38.416138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773697, 34.389038, 38.432346>,  <33.994568, 34.295647, 38.442074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773697, 34.389038, 38.432346>,  <33.405579, 34.544689, 38.416138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773697, 34.389038, 38.432346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113166, -0.165609, 0.979677,
		-0.374508, -0.906175, -0.196444,
		0.920292, -0.389128, 0.040526,
		34.049786, 34.272301, 38.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357704, 33.878525, 38.710827>,  <33.405579, 34.544689, 38.416138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357704, 33.878525, 38.710827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720943, 34.027035, 38.788296>,  <33.938889, 34.116142, 38.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720943, 34.027035, 38.788296>,  <33.357704, 33.878525, 38.710827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720943, 34.027035, 38.788296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128507, -0.193098, 0.972728,
		0.398548, -0.908222, -0.127641,
		0.908100, 0.371276, 0.193672,
		33.993374, 34.138416, 38.846397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739796, 33.352913, 39.111408>,  <33.357704, 33.878525, 38.710827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739796, 33.352913, 39.111408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919838, 33.704582, 39.173977>,  <34.027863, 33.915585, 39.211517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919838, 33.704582, 39.173977>,  <33.739796, 33.352913, 39.111408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919838, 33.704582, 39.173977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046930, -0.151637, 0.987322,
		0.891742, -0.451739, -0.026993,
		0.450105, 0.879169, 0.156421,
		34.054871, 33.968334, 39.220901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135052, 33.300529, 39.734871>,  <33.739796, 33.352913, 39.111408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135052, 33.300529, 39.734871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107445, 33.698891, 39.711514>,  <34.090881, 33.937908, 39.697498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107445, 33.698891, 39.711514>,  <34.135052, 33.300529, 39.734871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107445, 33.698891, 39.711514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100321, 0.051310, 0.993631,
		0.992558, 0.074441, 0.096369,
		-0.069022, 0.995905, -0.058396,
		34.086739, 33.997662, 39.693996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721100, 33.520714, 40.163597>,  <34.135052, 33.300529, 39.734871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721100, 33.520714, 40.163597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436138, 33.798840, 40.125595>,  <34.265160, 33.965714, 40.102795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436138, 33.798840, 40.125595>,  <34.721100, 33.520714, 40.163597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436138, 33.798840, 40.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040074, 0.175459, 0.983671,
		0.700625, 0.696964, -0.152862,
		-0.712404, 0.695310, -0.095001,
		34.222416, 34.007431, 40.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945358, 34.131763, 40.637840>,  <34.721100, 33.520714, 40.163597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945358, 34.131763, 40.637840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558323, 34.227726, 40.606300>,  <34.326103, 34.285301, 40.587376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558323, 34.227726, 40.606300>,  <34.945358, 34.131763, 40.637840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558323, 34.227726, 40.606300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027336, 0.210915, 0.977122,
		0.251047, 0.947608, -0.197521,
		-0.967589, 0.239904, -0.078853,
		34.268047, 34.299698, 40.582645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788605, 34.774055, 40.950500>,  <34.945358, 34.131763, 40.637840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788605, 34.774055, 40.950500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438740, 34.580372, 40.941536>,  <34.228821, 34.464161, 40.936157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438740, 34.580372, 40.941536>,  <34.788605, 34.774055, 40.950500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438740, 34.580372, 40.941536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140425, 0.208868, 0.967809,
		-0.463944, 0.849655, -0.250685,
		-0.874664, -0.484212, -0.022410,
		34.176342, 34.435108, 40.934814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369362, 35.239613, 41.303566>,  <34.788605, 34.774055, 40.950500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369362, 35.239613, 41.303566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198406, 34.877987, 41.304802>,  <34.095833, 34.661011, 41.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198406, 34.877987, 41.304802>,  <34.369362, 35.239613, 41.303566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198406, 34.877987, 41.304802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226865, 0.110552, 0.967631,
		-0.875139, 0.412858, -0.252349,
		-0.427392, -0.904061, 0.003086,
		34.070190, 34.606770, 41.305729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804745, 35.340157, 41.817554>,  <34.369362, 35.239613, 41.303566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804745, 35.340157, 41.817554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838581, 34.943054, 41.783413>,  <33.858883, 34.704792, 41.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838581, 34.943054, 41.783413>,  <33.804745, 35.340157, 41.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838581, 34.943054, 41.783413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220683, -0.102197, 0.969977,
		-0.971671, -0.063211, -0.227729,
		0.084586, -0.992754, -0.085352,
		33.863956, 34.645229, 41.757809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256863, 35.050404, 42.169262>,  <33.804745, 35.340157, 41.817554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256863, 35.050404, 42.169262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527580, 34.758236, 42.132526>,  <33.690010, 34.582935, 42.110485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527580, 34.758236, 42.132526>,  <33.256863, 35.050404, 42.169262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527580, 34.758236, 42.132526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062363, -0.181184, 0.981470,
		-0.733525, -0.658527, -0.168176,
		0.676795, -0.730421, -0.091836,
		33.730618, 34.539108, 42.104977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993576, 34.563324, 42.557281>,  <33.256863, 35.050404, 42.169262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993576, 34.563324, 42.557281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370167, 34.432091, 42.526321>,  <33.596119, 34.353352, 42.507744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370167, 34.432091, 42.526321>,  <32.993576, 34.563324, 42.557281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370167, 34.432091, 42.526321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040581, -0.117634, 0.992227,
		-0.334639, -0.937295, -0.097436,
		0.941472, -0.328084, -0.077401,
		33.652607, 34.333664, 42.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053986, 33.913017, 42.933624>,  <32.993576, 34.563324, 42.557281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053986, 33.913017, 42.933624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414986, 34.082050, 42.900360>,  <33.631584, 34.183472, 42.880402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414986, 34.082050, 42.900360>,  <33.053986, 33.913017, 42.933624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414986, 34.082050, 42.900360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118137, -0.057203, 0.991349,
		0.414170, -0.904517, -0.101549,
		0.902501, 0.422583, -0.083165,
		33.685738, 34.208824, 42.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509930, 33.553410, 43.513191>,  <33.053986, 33.913017, 42.933624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509930, 33.553410, 43.513191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730728, 33.880028, 43.445587>,  <33.863205, 34.075996, 43.405025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730728, 33.880028, 43.445587>,  <33.509930, 33.553410, 43.513191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730728, 33.880028, 43.445587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155697, 0.098194, 0.982912,
		0.819184, -0.568874, -0.072931,
		0.551992, 0.816541, -0.169011,
		33.896324, 34.124989, 43.394882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063435, 33.521713, 43.971497>,  <33.509930, 33.553410, 43.513191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063435, 33.521713, 43.971497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051346, 33.910603, 43.878662>,  <34.044094, 34.143936, 43.822960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051346, 33.910603, 43.878662>,  <34.063435, 33.521713, 43.971497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051346, 33.910603, 43.878662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175017, 0.233757, 0.956414,
		0.984102, -0.011714, -0.177221,
		-0.030223, 0.972225, -0.232090,
		34.042278, 34.202271, 43.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653950, 33.895721, 44.266132>,  <34.063435, 33.521713, 43.971497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653950, 33.895721, 44.266132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378990, 34.176640, 44.192089>,  <34.214016, 34.345192, 44.147663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378990, 34.176640, 44.192089>,  <34.653950, 33.895721, 44.266132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378990, 34.176640, 44.192089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029331, 0.227813, 0.973263,
		0.725690, 0.674446, -0.135998,
		-0.687396, 0.702299, -0.185104,
		34.172771, 34.387329, 44.136559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914021, 34.486614, 44.741447>,  <34.653950, 33.895721, 44.266132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914021, 34.486614, 44.741447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528294, 34.520882, 44.641239>,  <34.296860, 34.541443, 44.581116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528294, 34.520882, 44.641239>,  <34.914021, 34.486614, 44.741447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528294, 34.520882, 44.641239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206612, 0.348211, 0.914363,
		0.165562, 0.933494, -0.318086,
		-0.964314, 0.085664, -0.250521,
		34.238998, 34.546581, 44.566082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706696, 35.163338, 44.880905>,  <34.914021, 34.486614, 44.741447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706696, 35.163338, 44.880905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372791, 34.943092, 44.879826>,  <34.172451, 34.810944, 44.879177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372791, 34.943092, 44.879826>,  <34.706696, 35.163338, 44.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372791, 34.943092, 44.879826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263990, 0.395910, 0.879525,
		-0.483210, 0.734901, -0.475845,
		-0.834756, -0.550614, -0.002699,
		34.122364, 34.777908, 44.879017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243172, 35.672443, 44.963528>,  <34.706696, 35.163338, 44.880905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243172, 35.672443, 44.963528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073982, 35.333679, 45.092419>,  <33.972469, 35.130421, 45.169754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073982, 35.333679, 45.092419>,  <34.243172, 35.672443, 44.963528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073982, 35.333679, 45.092419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385110, 0.489901, 0.782105,
		-0.820235, 0.206717, -0.533370,
		-0.422973, -0.846915, 0.322225,
		33.947090, 35.079605, 45.189087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598049, 35.843868, 45.189125>,  <34.243172, 35.672443, 44.963528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598049, 35.843868, 45.189125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657932, 35.491020, 45.367764>,  <33.693863, 35.279312, 45.474945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657932, 35.491020, 45.367764>,  <33.598049, 35.843868, 45.189125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657932, 35.491020, 45.367764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368727, 0.369293, 0.853032,
		-0.917404, -0.292374, -0.269978,
		0.149703, -0.882123, 0.446597,
		33.702843, 35.226383, 45.501743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924969, 35.471733, 45.314255>,  <33.598049, 35.843868, 45.189125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924969, 35.471733, 45.314255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189304, 35.370747, 45.596970>,  <33.347908, 35.310154, 45.766598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189304, 35.370747, 45.596970>,  <32.924969, 35.471733, 45.314255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189304, 35.370747, 45.596970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549570, 0.478576, 0.684790,
		-0.511139, -0.840967, 0.177515,
		0.660840, -0.252466, 0.706789,
		33.387558, 35.295006, 45.809006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540833, 35.294540, 45.958866>,  <32.924969, 35.471733, 45.314255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540833, 35.294540, 45.958866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918087, 35.373070, 46.066154>,  <33.144440, 35.420185, 46.130527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918087, 35.373070, 46.066154>,  <32.540833, 35.294540, 45.958866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918087, 35.373070, 46.066154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331801, 0.604235, 0.724437,
		-0.019851, -0.772243, 0.635017,
		0.943141, 0.196318, 0.268225,
		33.201031, 35.431965, 46.146622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640606, 35.415428, 46.608208>,  <32.540833, 35.294540, 45.958866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640606, 35.415428, 46.608208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970203, 35.615982, 46.502644>,  <33.167961, 35.736313, 46.439304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970203, 35.615982, 46.502644>,  <32.640606, 35.415428, 46.608208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970203, 35.615982, 46.502644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263190, 0.751179, 0.605360,
		0.501760, -0.429355, 0.750927,
		0.823995, 0.501382, -0.263910,
		33.217403, 35.766396, 46.423470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860359, 35.820110, 47.193428>,  <32.640606, 35.415428, 46.608208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860359, 35.820110, 47.193428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022446, 36.032585, 46.895802>,  <33.119698, 36.160069, 46.717224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022446, 36.032585, 46.895802>,  <32.860359, 35.820110, 47.193428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022446, 36.032585, 46.895802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235910, 0.847076, 0.476244,
		0.883258, -0.017448, 0.468562,
		0.405217, 0.531185, -0.744071,
		33.144012, 36.191940, 46.672581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433151, 36.274757, 47.450989>,  <32.860359, 35.820110, 47.193428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433151, 36.274757, 47.450989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309284, 36.452007, 47.114475>,  <33.234962, 36.558357, 46.912567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309284, 36.452007, 47.114475>,  <33.433151, 36.274757, 47.450989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309284, 36.452007, 47.114475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012571, 0.886600, 0.462365,
		0.950762, 0.132603, -0.280121,
		-0.309666, 0.443121, -0.841279,
		33.216385, 36.584942, 46.862091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740818, 36.874889, 47.593842>,  <33.433151, 36.274757, 47.450989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740818, 36.874889, 47.593842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484917, 36.948345, 47.295315>,  <33.331375, 36.992420, 47.116199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484917, 36.948345, 47.295315>,  <33.740818, 36.874889, 47.593842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484917, 36.948345, 47.295315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163055, 0.916503, 0.365287,
		0.751085, 0.355385, -0.556394,
		-0.639754, 0.183639, -0.746319,
		33.292992, 37.003437, 47.071419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826908, 37.633759, 47.395111>,  <33.740818, 36.874889, 47.593842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826908, 37.633759, 47.395111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493690, 37.543106, 47.193253>,  <33.293758, 37.488716, 47.072136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493690, 37.543106, 47.193253>,  <33.826908, 37.633759, 47.395111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493690, 37.543106, 47.193253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422793, 0.849124, 0.316597,
		0.356757, 0.477102, -0.803180,
		-0.833049, -0.226631, -0.504647,
		33.243774, 37.475117, 47.041859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644356, 38.250134, 47.030994>,  <33.826908, 37.633759, 47.395111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644356, 38.250134, 47.030994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321838, 38.020618, 47.088501>,  <33.128330, 37.882912, 47.123005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321838, 38.020618, 47.088501>,  <33.644356, 38.250134, 47.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321838, 38.020618, 47.088501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486201, 0.781287, 0.391407,
		-0.336906, 0.245688, -0.908918,
		-0.806289, -0.573784, 0.143767,
		33.079952, 37.848484, 47.131630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048138, 38.632256, 46.779736>,  <33.644356, 38.250134, 47.030994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048138, 38.632256, 46.779736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946735, 38.365597, 47.060112>,  <32.885895, 38.205601, 47.228336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946735, 38.365597, 47.060112>,  <33.048138, 38.632256, 46.779736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946735, 38.365597, 47.060112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443575, 0.724051, 0.528196,
		-0.859636, -0.177018, -0.479260,
		-0.253509, -0.666644, 0.700941,
		32.870682, 38.165604, 47.270393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565041, 38.973431, 47.140949>,  <33.048138, 38.632256, 46.779736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565041, 38.973431, 47.140949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638302, 38.677418, 47.399811>,  <32.682259, 38.499809, 47.555130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638302, 38.677418, 47.399811>,  <32.565041, 38.973431, 47.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638302, 38.677418, 47.399811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096859, 0.641506, 0.760978,
		-0.978302, -0.202057, 0.045815,
		0.183152, -0.740029, 0.647158,
		32.693249, 38.455410, 47.593960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075169, 39.066170, 47.675625>,  <32.565041, 38.973431, 47.140949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075169, 39.066170, 47.675625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339973, 38.819061, 47.845379>,  <32.498856, 38.670795, 47.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339973, 38.819061, 47.845379>,  <32.075169, 39.066170, 47.675625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339973, 38.819061, 47.845379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063568, 0.517909, 0.853070,
		-0.746796, -0.591717, 0.303590,
		0.662009, -0.617771, 0.424387,
		32.538574, 38.633732, 47.972694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836479, 38.798737, 48.291302>,  <32.075169, 39.066170, 47.675625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836479, 38.798737, 48.291302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233139, 38.779289, 48.339081>,  <32.471134, 38.767620, 48.367748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233139, 38.779289, 48.339081>,  <31.836479, 38.798737, 48.291302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233139, 38.779289, 48.339081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086549, 0.435780, 0.895882,
		-0.095616, -0.898739, 0.427932,
		0.991648, -0.048623, 0.119453,
		32.530632, 38.764702, 48.374916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977833, 38.365883, 48.805202>,  <31.836479, 38.798737, 48.291302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977833, 38.365883, 48.805202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315929, 38.579571, 48.810532>,  <32.518787, 38.707783, 48.813728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315929, 38.579571, 48.810532>,  <31.977833, 38.365883, 48.805202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315929, 38.579571, 48.810532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168151, 0.242223, 0.955538,
		0.507240, -0.809900, 0.294566,
		0.845241, 0.534219, 0.013320,
		32.569500, 38.739838, 48.814529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231647, 38.266193, 49.525990>,  <31.977833, 38.365883, 48.805202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231647, 38.266193, 49.525990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457329, 38.567348, 49.390446>,  <32.592739, 38.748043, 49.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457329, 38.567348, 49.390446>,  <32.231647, 38.266193, 49.525990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457329, 38.567348, 49.390446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054413, 0.375628, 0.925172,
		0.823838, -0.540427, 0.170965,
		0.564207, 0.752889, -0.338863,
		32.626591, 38.793217, 49.288788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782883, 38.323933, 49.982143>,  <32.231647, 38.266193, 49.525990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782883, 38.323933, 49.982143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716145, 38.686157, 49.826130>,  <32.676102, 38.903492, 49.732521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716145, 38.686157, 49.826130>,  <32.782883, 38.323933, 49.982143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716145, 38.686157, 49.826130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021671, 0.392118, 0.919660,
		0.985745, 0.161894, -0.045799,
		-0.166846, 0.905557, -0.390037,
		32.666092, 38.957825, 49.709118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285515, 38.718204, 50.234142>,  <32.782883, 38.323933, 49.982143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285515, 38.718204, 50.234142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019138, 38.995541, 50.124012>,  <32.859314, 39.161942, 50.057934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019138, 38.995541, 50.124012>,  <33.285515, 38.718204, 50.234142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019138, 38.995541, 50.124012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042398, 0.403651, 0.913930,
		0.744800, 0.596949, -0.298203,
		-0.665939, 0.693339, -0.275330,
		32.819355, 39.203541, 50.041412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585064, 39.286575, 50.541988>,  <33.285515, 38.718204, 50.234142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585064, 39.286575, 50.541988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210434, 39.397297, 50.456001>,  <32.985657, 39.463730, 50.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210434, 39.397297, 50.456001>,  <33.585064, 39.286575, 50.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210434, 39.397297, 50.456001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018264, 0.573979, 0.818666,
		0.349993, 0.770667, -0.532519,
		-0.936574, 0.276802, -0.214964,
		32.929462, 39.480339, 50.391514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476147, 40.067032, 50.567520>,  <33.585064, 39.286575, 50.541988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476147, 40.067032, 50.567520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152874, 39.860027, 50.679966>,  <32.958908, 39.735825, 50.747433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152874, 39.860027, 50.679966>,  <33.476147, 40.067032, 50.567520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152874, 39.860027, 50.679966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021199, 0.502582, 0.864269,
		-0.588547, 0.692530, -0.417150,
		-0.808185, -0.517507, 0.281113,
		32.910419, 39.704777, 50.764301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992146, 40.521133, 50.849926>,  <33.476147, 40.067032, 50.567520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992146, 40.521133, 50.849926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874783, 40.193214, 51.046631>,  <32.804363, 39.996464, 51.164654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874783, 40.193214, 51.046631>,  <32.992146, 40.521133, 50.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874783, 40.193214, 51.046631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057987, 0.528723, 0.846812,
		-0.954226, 0.219948, -0.202671,
		-0.293411, -0.819802, 0.491767,
		32.786758, 39.947273, 51.194160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039196, 41.233692, 50.755871>,  <32.992146, 40.521133, 50.849926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039196, 41.233692, 50.755871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382847, 41.437943, 50.769501>,  <33.589039, 41.560493, 50.777679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382847, 41.437943, 50.769501>,  <33.039196, 41.233692, 50.755871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382847, 41.437943, 50.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362359, -0.559944, -0.745089,
		-0.361378, 0.652477, -0.666093,
		0.859129, 0.510624, 0.034079,
		33.640587, 41.591129, 50.779724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273933, 41.511662, 50.048012>,  <33.039196, 41.233692, 50.755871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273933, 41.511662, 50.048012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613258, 41.568565, 50.252022>,  <33.816853, 41.602707, 50.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613258, 41.568565, 50.252022>,  <33.273933, 41.511662, 50.048012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613258, 41.568565, 50.252022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525400, -0.345655, -0.777481,
		0.065690, 0.927516, -0.367967,
		0.848316, 0.142257, 0.510023,
		33.867752, 41.611244, 50.405029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758854, 41.893749, 49.592945>,  <33.273933, 41.511662, 50.048012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758854, 41.893749, 49.592945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982327, 41.689663, 49.854496>,  <34.116409, 41.567211, 50.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982327, 41.689663, 49.854496>,  <33.758854, 41.893749, 49.592945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982327, 41.689663, 49.854496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593156, -0.305241, -0.744980,
		0.579688, 0.804059, 0.132103,
		0.558684, -0.510213, 0.653876,
		34.149933, 41.536598, 50.050659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444328, 41.937565, 49.339905>,  <33.758854, 41.893749, 49.592945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444328, 41.937565, 49.339905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488525, 41.623993, 49.584278>,  <34.515045, 41.435848, 49.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488525, 41.623993, 49.584278>,  <34.444328, 41.937565, 49.339905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488525, 41.623993, 49.584278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531727, -0.472701, -0.702724,
		0.839677, 0.402500, 0.364605,
		0.110497, -0.783931, 0.610936,
		34.521675, 41.388813, 49.767559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183735, 41.760403, 49.361660>,  <34.444328, 41.937565, 49.339905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183735, 41.760403, 49.361660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026501, 41.421547, 49.504681>,  <34.932159, 41.218235, 49.590492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026501, 41.421547, 49.504681>,  <35.183735, 41.760403, 49.361660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026501, 41.421547, 49.504681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592705, -0.530728, -0.605829,
		0.702983, -0.026219, 0.710723,
		-0.393085, -0.847136, 0.357553,
		34.908577, 41.167404, 49.611946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790882, 41.328938, 49.392769>,  <35.183735, 41.760403, 49.361660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790882, 41.328938, 49.392769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457310, 41.108459, 49.381905>,  <35.257164, 40.976173, 49.375385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457310, 41.108459, 49.381905>,  <35.790882, 41.328938, 49.392769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457310, 41.108459, 49.381905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455192, -0.659192, -0.598554,
		0.312015, -0.511518, 0.800622,
		-0.833935, -0.551194, -0.027160,
		35.207130, 40.943100, 49.373756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006748, 40.607506, 49.463284>,  <35.790882, 41.328938, 49.392769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006748, 40.607506, 49.463284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634525, 40.567234, 49.322472>,  <35.411190, 40.543072, 49.237984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634525, 40.567234, 49.322472>,  <36.006748, 40.607506, 49.463284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634525, 40.567234, 49.322472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283545, -0.806447, -0.518889,
		-0.231651, -0.582673, 0.778993,
		-0.930559, -0.100678, -0.352028,
		35.355358, 40.537029, 49.216862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702522, 39.896057, 49.681911>,  <36.006748, 40.607506, 49.463284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702522, 39.896057, 49.681911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555687, 40.041157, 49.339294>,  <35.467587, 40.128216, 49.133724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555687, 40.041157, 49.339294>,  <35.702522, 39.896057, 49.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555687, 40.041157, 49.339294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268014, -0.840529, -0.470828,
		-0.890740, -0.402399, 0.211324,
		-0.367084, 0.362747, -0.856542,
		35.445560, 40.149982, 49.082333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657013, 39.263660, 49.257641>,  <35.702522, 39.896057, 49.681911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657013, 39.263660, 49.257641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544373, 39.528641, 48.979977>,  <35.476788, 39.687630, 48.813377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544373, 39.528641, 48.979977>,  <35.657013, 39.263660, 49.257641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544373, 39.528641, 48.979977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145570, -0.685571, -0.713304,
		-0.948424, -0.301918, 0.096626,
		-0.281604, 0.662449, -0.694162,
		35.459892, 39.727375, 48.771729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961506, 39.024067, 48.872944>,  <35.657013, 39.263660, 49.257641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961506, 39.024067, 48.872944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181290, 39.273293, 48.650276>,  <35.313160, 39.422829, 48.516674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181290, 39.273293, 48.650276>,  <34.961506, 39.024067, 48.872944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181290, 39.273293, 48.650276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074950, -0.700330, -0.709873,
		-0.832149, 0.348326, -0.431504,
		0.549463, 0.623062, -0.556672,
		35.346130, 39.460213, 48.483276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735878, 39.050903, 48.162724>,  <34.961506, 39.024067, 48.872944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735878, 39.050903, 48.162724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112801, 39.179478, 48.125355>,  <35.338955, 39.256622, 48.102932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112801, 39.179478, 48.125355>,  <34.735878, 39.050903, 48.162724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112801, 39.179478, 48.125355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172218, -0.704862, -0.688121,
		-0.287041, 0.632334, -0.719556,
		0.942310, 0.321439, -0.093425,
		35.395493, 39.275909, 48.097328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818283, 39.089581, 47.469872>,  <34.735878, 39.050903, 48.162724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818283, 39.089581, 47.469872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200073, 39.095711, 47.589027>,  <35.429146, 39.099388, 47.660522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200073, 39.095711, 47.589027>,  <34.818283, 39.089581, 47.469872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200073, 39.095711, 47.589027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235895, -0.649991, -0.722403,
		0.182559, 0.759788, -0.624015,
		0.954477, 0.015321, 0.297892,
		35.486416, 39.100307, 47.678394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211575, 39.316788, 46.935413>,  <34.818283, 39.089581, 47.469872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211575, 39.316788, 46.935413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476891, 39.138142, 47.175610>,  <35.636078, 39.030952, 47.319725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476891, 39.138142, 47.175610>,  <35.211575, 39.316788, 46.935413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476891, 39.138142, 47.175610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320670, -0.555386, -0.767279,
		0.676180, 0.701485, -0.225165,
		0.663288, -0.446615, 0.600486,
		35.675877, 39.004158, 47.355755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812988, 39.373558, 46.548889>,  <35.211575, 39.316788, 46.935413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812988, 39.373558, 46.548889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889454, 39.078617, 46.808048>,  <35.935333, 38.901653, 46.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889454, 39.078617, 46.808048>,  <35.812988, 39.373558, 46.548889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889454, 39.078617, 46.808048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227656, -0.608763, -0.759987,
		0.954792, 0.292783, 0.051487,
		0.191168, -0.737351, 0.647896,
		35.946804, 38.857410, 47.002419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516541, 39.083790, 46.411785>,  <35.812988, 39.373558, 46.548889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516541, 39.083790, 46.411785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301937, 38.796307, 46.588699>,  <36.173176, 38.623817, 46.694847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301937, 38.796307, 46.588699>,  <36.516541, 39.083790, 46.411785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301937, 38.796307, 46.588699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076200, -0.563220, -0.822786,
		0.840449, -0.407727, 0.356936,
		-0.536506, -0.718708, 0.442289,
		36.140984, 38.580692, 46.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827522, 38.476158, 46.181126>,  <36.516541, 39.083790, 46.411785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827522, 38.476158, 46.181126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473747, 38.345406, 46.314346>,  <36.261482, 38.266953, 46.394279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473747, 38.345406, 46.314346>,  <36.827522, 38.476158, 46.181126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473747, 38.345406, 46.314346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008081, -0.702853, -0.711289,
		0.466596, -0.631780, 0.618985,
		-0.884433, -0.326883, 0.333054,
		36.208416, 38.247341, 46.414261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862942, 37.801655, 46.192776>,  <36.827522, 38.476158, 46.181126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862942, 37.801655, 46.192776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463673, 37.820248, 46.208256>,  <36.224113, 37.831402, 46.217545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463673, 37.820248, 46.208256>,  <36.862942, 37.801655, 46.192776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463673, 37.820248, 46.208256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058668, -0.588579, -0.806308,
		-0.014699, -0.807103, 0.590228,
		-0.998169, 0.046479, 0.038699,
		36.164223, 37.834190, 46.219864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707005, 37.161968, 46.121475>,  <36.862942, 37.801655, 46.192776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707005, 37.161968, 46.121475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376366, 37.358551, 46.011772>,  <36.177982, 37.476501, 45.945950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376366, 37.358551, 46.011772>,  <36.707005, 37.161968, 46.121475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376366, 37.358551, 46.011772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086858, -0.592869, -0.800601,
		-0.556053, -0.637952, 0.532749,
		-0.826596, 0.491450, -0.274256,
		36.128387, 37.505985, 45.929493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261833, 36.627140, 45.891647>,  <36.707005, 37.161968, 46.121475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261833, 36.627140, 45.891647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 36.952477, 45.734161>,  <35.987705, 37.147678, 45.639668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 36.952477, 45.734161>,  <36.261833, 36.627140, 45.891647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090504, 36.952477, 45.734161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261917, -0.528752, -0.807354,
		-0.864833, -0.242691, 0.439506,
		-0.428328, 0.813340, -0.393717,
		35.962006, 37.196480, 45.616047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629688, 36.399929, 45.786648>,  <36.261833, 36.627140, 45.891647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629688, 36.399929, 45.786648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677567, 36.711376, 45.540257>,  <35.706295, 36.898243, 45.392422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677567, 36.711376, 45.540257>,  <35.629688, 36.399929, 45.786648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677567, 36.711376, 45.540257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215042, -0.585379, -0.781722,
		-0.969241, 0.226033, 0.097365,
		0.119700, 0.778615, -0.615980,
		35.713478, 36.944962, 45.355461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066807, 36.310596, 45.278687>,  <35.629688, 36.399929, 45.786648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066807, 36.310596, 45.278687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356091, 36.537228, 45.120720>,  <35.529659, 36.673206, 45.025940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356091, 36.537228, 45.120720>,  <35.066807, 36.310596, 45.278687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356091, 36.537228, 45.120720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187144, -0.389651, -0.901748,
		-0.664791, 0.726057, -0.175766,
		0.723208, 0.566580, -0.394914,
		35.573051, 36.707203, 45.002247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733547, 36.513180, 44.683811>,  <35.066807, 36.310596, 45.278687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733547, 36.513180, 44.683811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119736, 36.573235, 44.598652>,  <35.351448, 36.609268, 44.547558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119736, 36.573235, 44.598652>,  <34.733547, 36.513180, 44.683811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119736, 36.573235, 44.598652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147230, -0.359735, -0.921365,
		-0.214913, 0.920897, -0.325210,
		0.965472, 0.150133, -0.212896,
		35.409378, 36.618275, 44.534782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767895, 36.637901, 43.911182>,  <34.733547, 36.513180, 44.683811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767895, 36.637901, 43.911182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157627, 36.574017, 43.974644>,  <35.391468, 36.535686, 44.012722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157627, 36.574017, 43.974644>,  <34.767895, 36.637901, 43.911182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157627, 36.574017, 43.974644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080964, -0.409003, -0.908934,
		0.210057, 0.898448, -0.385573,
		0.974331, -0.159711, 0.158656,
		35.449928, 36.526104, 44.022240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234241, 36.891781, 43.312382>,  <34.767895, 36.637901, 43.911182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234241, 36.891781, 43.312382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441692, 36.611919, 43.508957>,  <35.566162, 36.444000, 43.626904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441692, 36.611919, 43.508957>,  <35.234241, 36.891781, 43.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441692, 36.611919, 43.508957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358376, -0.343965, -0.867903,
		0.776271, 0.626234, 0.072352,
		0.518623, -0.699657, 0.491437,
		35.597279, 36.402023, 43.656387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944756, 36.904236, 43.020832>,  <35.234241, 36.891781, 43.312382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944756, 36.904236, 43.020832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875309, 36.550919, 43.195030>,  <35.833641, 36.338928, 43.299549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875309, 36.550919, 43.195030>,  <35.944756, 36.904236, 43.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875309, 36.550919, 43.195030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337555, -0.468799, -0.816262,
		0.925156, 0.005284, 0.379551,
		-0.173620, -0.883289, 0.435496,
		35.823223, 36.285931, 43.325680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565853, 36.632473, 42.749969>,  <35.944756, 36.904236, 43.020832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565853, 36.632473, 42.749969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343864, 36.320782, 42.866455>,  <36.210670, 36.133766, 42.936348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343864, 36.320782, 42.866455>,  <36.565853, 36.632473, 42.749969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343864, 36.320782, 42.866455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400064, -0.556946, -0.727846,
		0.729350, -0.287430, 0.620832,
		-0.554975, -0.779227, 0.291219,
		36.177372, 36.087013, 42.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021336, 36.065742, 42.781429>,  <36.565853, 36.632473, 42.749969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021336, 36.065742, 42.781429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664787, 35.891575, 42.731037>,  <36.450859, 35.787075, 42.700802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664787, 35.891575, 42.731037>,  <37.021336, 36.065742, 42.781429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664787, 35.891575, 42.731037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365089, -0.524925, -0.768872,
		0.268652, -0.731342, 0.626869,
		-0.891368, -0.435422, -0.125982,
		36.397377, 35.760948, 42.693241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133034, 35.341377, 42.717987>,  <37.021336, 36.065742, 42.781429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133034, 35.341377, 42.717987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770885, 35.386906, 42.554352>,  <36.553596, 35.414223, 42.456169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770885, 35.386906, 42.554352>,  <37.133034, 35.341377, 42.717987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770885, 35.386906, 42.554352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283685, -0.554723, -0.782179,
		-0.315963, -0.824212, 0.469938,
		-0.905367, 0.113825, -0.409089,
		36.499275, 35.421055, 42.431625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933750, 34.721935, 42.538124>,  <37.133034, 35.341377, 42.717987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933750, 34.721935, 42.538124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712925, 34.945839, 42.290932>,  <36.580429, 35.080181, 42.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712925, 34.945839, 42.290932>,  <36.933750, 34.721935, 42.538124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712925, 34.945839, 42.290932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357672, -0.510522, -0.781945,
		-0.753190, -0.652719, 0.081632,
		-0.552065, 0.559755, -0.617979,
		36.547306, 35.113766, 42.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399406, 34.253254, 42.055893>,  <36.933750, 34.721935, 42.538124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399406, 34.253254, 42.055893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431091, 34.605194, 41.868450>,  <36.450104, 34.816357, 41.755985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431091, 34.605194, 41.868450>,  <36.399406, 34.253254, 42.055893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431091, 34.605194, 41.868450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367303, -0.462773, -0.806802,
		-0.926722, -0.108213, -0.359827,
		0.079212, 0.879847, -0.468609,
		36.454853, 34.869148, 41.727867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281487, 34.086983, 41.301193>,  <36.399406, 34.253254, 42.055893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281487, 34.086983, 41.301193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444691, 34.451942, 41.288181>,  <36.542614, 34.670918, 41.280373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444691, 34.451942, 41.288181>,  <36.281487, 34.086983, 41.301193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444691, 34.451942, 41.288181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586686, -0.289329, -0.756365,
		-0.699517, 0.289521, -0.653340,
		0.408014, 0.912396, -0.032533,
		36.567097, 34.725662, 41.278423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214275, 34.410549, 40.598614>,  <36.281487, 34.086983, 41.301193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214275, 34.410549, 40.598614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514175, 34.614826, 40.766930>,  <36.694115, 34.737392, 40.867920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514175, 34.614826, 40.766930>,  <36.214275, 34.410549, 40.598614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514175, 34.614826, 40.766930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604356, -0.269492, -0.749752,
		-0.269492, 0.816435, -0.510693,
		0.749752, 0.510693, 0.420792,
		36.739101, 34.768036, 40.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440735, 34.856274, 40.099110>,  <36.214275, 34.410549, 40.598614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440735, 34.856274, 40.099110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745228, 34.802811, 40.352932>,  <36.927925, 34.770733, 40.505226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745228, 34.802811, 40.352932>,  <36.440735, 34.856274, 40.099110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745228, 34.802811, 40.352932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624801, -0.110827, -0.772879,
		0.173629, 0.984811, -0.000854,
		0.761234, -0.133660, 0.634553,
		36.973598, 34.762714, 40.543297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861942, 35.215691, 39.886478>,  <36.440735, 34.856274, 40.099110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861942, 35.215691, 39.886478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131176, 35.013386, 40.102314>,  <37.292717, 34.892002, 40.231815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131176, 35.013386, 40.102314>,  <36.861942, 35.215691, 39.886478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131176, 35.013386, 40.102314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599141, -0.054830, -0.798764,
		0.433570, 0.860929, 0.266117,
		0.673088, -0.505762, 0.539591,
		37.333103, 34.861656, 40.264191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434715, 35.479874, 39.691574>,  <36.861942, 35.215691, 39.886478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434715, 35.479874, 39.691574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534863, 35.122478, 39.840702>,  <37.594952, 34.908043, 39.930180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534863, 35.122478, 39.840702>,  <37.434715, 35.479874, 39.691574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534863, 35.122478, 39.840702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533944, -0.193793, -0.823012,
		0.807600, 0.405125, 0.428551,
		0.250372, -0.893487, 0.372821,
		37.609974, 34.854431, 39.952549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137047, 35.323288, 39.419380>,  <37.434715, 35.479874, 39.691574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137047, 35.323288, 39.419380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031593, 34.946419, 39.502132>,  <37.968323, 34.720295, 39.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031593, 34.946419, 39.502132>,  <38.137047, 35.323288, 39.419380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031593, 34.946419, 39.502132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449051, -0.309685, -0.838122,
		0.853728, -0.128054, 0.504728,
		-0.263631, -0.942177, 0.206884,
		37.952503, 34.663765, 39.564198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814796, 34.988338, 39.459778>,  <38.137047, 35.323288, 39.419380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814796, 34.988338, 39.459778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519066, 34.735565, 39.366779>,  <38.341629, 34.583900, 39.310982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519066, 34.735565, 39.366779>,  <38.814796, 34.988338, 39.459778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519066, 34.735565, 39.366779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514875, -0.308041, -0.800009,
		0.433937, -0.711173, 0.553111,
		-0.739326, -0.631936, -0.232495,
		38.297268, 34.545986, 39.297031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146126, 34.285175, 39.435028>,  <38.814796, 34.988338, 39.459778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146126, 34.285175, 39.435028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804806, 34.291378, 39.226551>,  <38.600014, 34.295101, 39.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804806, 34.291378, 39.226551>,  <39.146126, 34.285175, 39.435028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804806, 34.291378, 39.226551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496147, -0.283273, -0.820728,
		-0.160367, -0.958914, 0.234022,
		-0.853300, 0.015509, -0.521190,
		38.548817, 34.296032, 39.070194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262478, 33.980465, 38.830444>,  <39.146126, 34.285175, 39.435028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262478, 33.980465, 38.830444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903038, 34.095974, 38.698303>,  <38.687374, 34.165279, 38.619019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903038, 34.095974, 38.698303>,  <39.262478, 33.980465, 38.830444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903038, 34.095974, 38.698303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347028, 0.007026, -0.937829,
		-0.268497, -0.957372, -0.106525,
		-0.898600, 0.288771, -0.330348,
		38.633457, 34.182606, 38.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026691, 33.497616, 38.257355>,  <39.262478, 33.980465, 38.830444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026691, 33.497616, 38.257355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919273, 33.882553, 38.274242>,  <38.854824, 34.113514, 38.284374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919273, 33.882553, 38.274242>,  <39.026691, 33.497616, 38.257355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919273, 33.882553, 38.274242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381317, 0.146454, -0.912770,
		-0.884580, -0.229017, -0.406287,
		-0.268542, 0.962342, 0.042222,
		38.838711, 34.171257, 38.286907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696392, 33.754944, 37.618824>,  <39.026691, 33.497616, 38.257355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696392, 33.754944, 37.618824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826496, 34.112915, 37.741016>,  <38.904560, 34.327698, 37.814331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826496, 34.112915, 37.741016>,  <38.696392, 33.754944, 37.618824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826496, 34.112915, 37.741016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418543, 0.153432, -0.895143,
		-0.847955, 0.419010, -0.324659,
		0.325260, 0.894924, 0.305477,
		38.924076, 34.381393, 37.832661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404999, 34.258636, 37.206577>,  <38.696392, 33.754944, 37.618824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404999, 34.258636, 37.206577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770531, 34.367870, 37.326805>,  <38.989849, 34.433411, 37.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770531, 34.367870, 37.326805>,  <38.404999, 34.258636, 37.206577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770531, 34.367870, 37.326805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373368, -0.273835, -0.886347,
		-0.159744, 0.922192, -0.352200,
		0.913826, 0.273089, 0.300573,
		39.044678, 34.449799, 37.416977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785278, 34.658024, 36.735859>,  <38.404999, 34.258636, 37.206577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785278, 34.658024, 36.735859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043648, 34.441719, 36.951401>,  <39.198669, 34.311935, 37.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043648, 34.441719, 36.951401>,  <38.785278, 34.658024, 36.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043648, 34.441719, 36.951401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366628, -0.399391, -0.840280,
		0.669605, 0.740313, -0.059716,
		0.645920, -0.540763, 0.538854,
		39.237423, 34.279491, 37.113056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526749, 34.757893, 36.498051>,  <38.785278, 34.658024, 36.735859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526749, 34.757893, 36.498051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470554, 34.397686, 36.662651>,  <39.436836, 34.181561, 36.761410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470554, 34.397686, 36.662651>,  <39.526749, 34.757893, 36.498051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470554, 34.397686, 36.662651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338227, -0.434265, -0.834875,
		0.930519, 0.021892, 0.365587,
		-0.140485, -0.900519, 0.411497,
		39.428410, 34.127529, 36.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154697, 34.349594, 36.574108>,  <39.526749, 34.757893, 36.498051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154697, 34.349594, 36.574108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843849, 34.112251, 36.490185>,  <39.657341, 33.969845, 36.439831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843849, 34.112251, 36.490185>,  <40.154697, 34.349594, 36.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843849, 34.112251, 36.490185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460786, -0.309356, -0.831851,
		0.428676, -0.743123, 0.513815,
		-0.777119, -0.593353, -0.209807,
		39.610714, 33.934246, 36.427242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794930, 33.911312, 36.768093>,  <40.154697, 34.349594, 36.574108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794930, 33.911312, 36.768093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954887, 34.266300, 36.676456>,  <41.050861, 34.479294, 36.621475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954887, 34.266300, 36.676456>,  <40.794930, 33.911312, 36.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954887, 34.266300, 36.676456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567034, -0.043169, 0.822562,
		0.720110, -0.458839, -0.520489,
		0.399893, 0.887470, -0.229091,
		41.074856, 34.532539, 36.607731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572609, 34.056683, 36.646233>,  <40.794930, 33.911312, 36.768093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572609, 34.056683, 36.646233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358833, 34.334320, 36.839149>,  <41.230568, 34.500904, 36.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358833, 34.334320, 36.839149>,  <41.572609, 34.056683, 36.646233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358833, 34.334320, 36.839149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589903, -0.102331, 0.800964,
		0.605301, 0.712570, -0.354760,
		-0.534440, 0.694098, 0.482288,
		41.198502, 34.542549, 36.983837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087704, 34.581905, 36.546597>,  <41.572609, 34.056683, 36.646233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087704, 34.581905, 36.546597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318974, 34.391697, 36.811802>,  <42.457737, 34.277573, 36.970924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318974, 34.391697, 36.811802>,  <42.087704, 34.581905, 36.546597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318974, 34.391697, 36.811802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542841, -0.830852, -0.122510,
		0.609125, -0.289080, -0.738512,
		0.578179, -0.475518, 0.663017,
		42.492428, 34.249043, 37.010708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399353, 34.020794, 36.184856>,  <42.087704, 34.581905, 36.546597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399353, 34.020794, 36.184856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457401, 33.901665, 36.562267>,  <42.492229, 33.830189, 36.788715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457401, 33.901665, 36.562267>,  <42.399353, 34.020794, 36.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457401, 33.901665, 36.562267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548916, -0.817639, -0.173657,
		0.823184, -0.492717, -0.282131,
		0.145118, -0.297818, 0.943528,
		42.500938, 33.812321, 36.845325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695614, 33.304287, 36.145882>,  <42.399353, 34.020794, 36.184856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695614, 33.304287, 36.145882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525383, 33.360897, 36.503395>,  <42.423244, 33.394863, 36.717903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525383, 33.360897, 36.503395>,  <42.695614, 33.304287, 36.145882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525383, 33.360897, 36.503395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421722, -0.904899, -0.057523,
		0.800644, -0.401410, 0.444791,
		-0.425581, 0.141522, 0.893785,
		42.397709, 33.403355, 36.771530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805454, 32.545597, 36.520237>,  <42.695614, 33.304287, 36.145882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805454, 32.545597, 36.520237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531635, 32.725483, 36.749722>,  <42.367344, 32.833416, 36.887413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531635, 32.725483, 36.749722>,  <42.805454, 32.545597, 36.520237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531635, 32.725483, 36.749722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517872, -0.853910, 0.051434,
		0.513033, -0.261902, 0.817438,
		-0.684548, 0.449716, 0.573716,
		42.326271, 32.860397, 36.921837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694218, 32.128746, 37.163326>,  <42.805454, 32.545597, 36.520237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694218, 32.128746, 37.163326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369961, 32.340004, 37.062199>,  <42.175407, 32.466759, 37.001522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369961, 32.340004, 37.062199>,  <42.694218, 32.128746, 37.163326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369961, 32.340004, 37.062199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570736, -0.809169, 0.139661,
		-0.130816, 0.257511, 0.957379,
		-0.810646, 0.528141, -0.252823,
		42.126766, 32.498447, 36.986351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175385, 31.916983, 37.603321>,  <42.694218, 32.128746, 37.163326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175385, 31.916983, 37.603321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975246, 32.058861, 37.287384>,  <41.855164, 32.143990, 37.097824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975246, 32.058861, 37.287384>,  <42.175385, 31.916983, 37.603321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975246, 32.058861, 37.287384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555877, -0.830998, -0.021047,
		-0.663821, 0.428524, 0.612951,
		-0.500342, 0.354696, -0.789841,
		41.825146, 32.165268, 37.050430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528397, 31.781509, 37.786739>,  <42.175385, 31.916983, 37.603321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528397, 31.781509, 37.786739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535454, 31.846889, 37.392181>,  <41.539688, 31.886118, 37.155445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535454, 31.846889, 37.392181>,  <41.528397, 31.781509, 37.786739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535454, 31.846889, 37.392181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456550, -0.876376, -0.153385,
		-0.889523, 0.453045, 0.059158,
		0.017645, 0.163448, -0.986394,
		41.540749, 31.895924, 37.096264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945194, 31.581623, 37.574802>,  <41.528397, 31.781509, 37.786739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945194, 31.581623, 37.574802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132908, 31.592770, 37.221760>,  <41.245537, 31.599457, 37.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132908, 31.592770, 37.221760>,  <40.945194, 31.581623, 37.574802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132908, 31.592770, 37.221760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334721, -0.919302, -0.206994,
		-0.817152, 0.392566, -0.422083,
		0.469281, 0.027865, -0.882609,
		41.273693, 31.601130, 36.956978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424446, 31.338564, 37.138721>,  <40.945194, 31.581623, 37.574802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424446, 31.338564, 37.138721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767044, 31.281652, 36.940262>,  <40.972603, 31.247505, 36.821186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767044, 31.281652, 36.940262>,  <40.424446, 31.338564, 37.138721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767044, 31.281652, 36.940262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314232, -0.906324, -0.282549,
		-0.409472, 0.397910, -0.820975,
		0.856499, -0.142280, -0.496151,
		41.023994, 31.238968, 36.791416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271065, 31.182793, 36.487545>,  <40.424446, 31.338564, 37.138721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271065, 31.182793, 36.487545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657475, 31.079437, 36.485176>,  <40.889320, 31.017424, 36.483753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657475, 31.079437, 36.485176>,  <40.271065, 31.182793, 36.487545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657475, 31.079437, 36.485176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213151, -0.783514, -0.583671,
		0.146172, 0.565103, -0.811968,
		0.966023, -0.258388, -0.005924,
		40.947281, 31.001921, 36.483398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420536, 31.087019, 35.792244>,  <40.271065, 31.182793, 36.487545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420536, 31.087019, 35.792244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686253, 30.877413, 36.005459>,  <40.845680, 30.751648, 36.133389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686253, 30.877413, 36.005459>,  <40.420536, 31.087019, 35.792244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686253, 30.877413, 36.005459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168546, -0.799757, -0.576178,
		0.728225, 0.292908, -0.619591,
		0.664289, -0.524017, 0.533035,
		40.885540, 30.720207, 36.165371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787193, 30.788546, 35.305595>,  <40.420536, 31.087019, 35.792244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787193, 30.788546, 35.305595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846359, 30.569637, 35.635109>,  <40.881859, 30.438293, 35.832817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846359, 30.569637, 35.635109>,  <40.787193, 30.788546, 35.305595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846359, 30.569637, 35.635109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284589, -0.821267, -0.494499,
		0.947169, -0.161296, -0.277225,
		0.147916, -0.547269, 0.823782,
		40.890736, 30.405457, 35.882244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030071, 30.249523, 35.098866>,  <40.787193, 30.788546, 35.305595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030071, 30.249523, 35.098866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956387, 30.107243, 35.465370>,  <40.912178, 30.021873, 35.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956387, 30.107243, 35.465370>,  <41.030071, 30.249523, 35.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956387, 30.107243, 35.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203888, -0.898113, -0.389644,
		0.961508, -0.258591, 0.092916,
		-0.184207, -0.355702, 0.916266,
		40.901123, 30.000532, 35.740250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483837, 29.733038, 35.167336>,  <41.030071, 30.249523, 35.098866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483837, 29.733038, 35.167336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190792, 29.666199, 35.431263>,  <41.014965, 29.626095, 35.589619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190792, 29.666199, 35.431263>,  <41.483837, 29.733038, 35.167336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190792, 29.666199, 35.431263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242624, -0.841608, -0.482524,
		0.635936, -0.513590, 0.576030,
		-0.732612, -0.167096, 0.659818,
		40.971008, 29.616070, 35.629208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588711, 29.053322, 35.381626>,  <41.483837, 29.733038, 35.167336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588711, 29.053322, 35.381626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214188, 29.127483, 35.500927>,  <40.989475, 29.171980, 35.572510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214188, 29.127483, 35.500927>,  <41.588711, 29.053322, 35.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214188, 29.127483, 35.500927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275054, -0.915190, -0.294573,
		0.218345, -0.357847, 0.907894,
		-0.936307, 0.185401, 0.298254,
		40.933296, 29.183104, 35.590405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399059, 28.410875, 35.878738>,  <41.588711, 29.053322, 35.381626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399059, 28.410875, 35.878738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097549, 28.591658, 35.687923>,  <40.916645, 28.700127, 35.573433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097549, 28.591658, 35.687923>,  <41.399059, 28.410875, 35.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097549, 28.591658, 35.687923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192487, -0.845946, -0.497317,
		-0.628313, -0.283040, 0.724646,
		-0.753771, 0.451955, -0.477038,
		40.871418, 28.727243, 35.544811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878593, 27.824318, 35.933865>,  <41.399059, 28.410875, 35.878738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878593, 27.824318, 35.933865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723286, 28.072010, 35.660866>,  <40.630100, 28.220625, 35.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723286, 28.072010, 35.660866>,  <40.878593, 27.824318, 35.933865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723286, 28.072010, 35.660866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464335, -0.771173, -0.435528,
		-0.796015, 0.147805, 0.586953,
		-0.388269, 0.619229, -0.682496,
		40.606804, 28.257778, 35.456116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181679, 27.555183, 35.784523>,  <40.878593, 27.824318, 35.933865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181679, 27.555183, 35.784523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274143, 27.792273, 35.475914>,  <40.329624, 27.934526, 35.290749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274143, 27.792273, 35.475914>,  <40.181679, 27.555183, 35.784523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274143, 27.792273, 35.475914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376639, -0.676647, -0.632686,
		-0.897054, 0.436840, 0.066825,
		0.231166, 0.592722, -0.771520,
		40.343494, 27.970089, 35.244457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626553, 27.407536, 35.345680>,  <40.181679, 27.555183, 35.784523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626553, 27.407536, 35.345680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910614, 27.574064, 35.118572>,  <40.081051, 27.673981, 34.982307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910614, 27.574064, 35.118572>,  <39.626553, 27.407536, 35.345680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910614, 27.574064, 35.118572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114371, -0.727506, -0.676502,
		-0.694699, 0.545354, -0.469023,
		0.710150, 0.416322, -0.567770,
		40.123657, 27.698961, 34.948242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346497, 27.437057, 34.653301>,  <39.626553, 27.407536, 35.345680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346497, 27.437057, 34.653301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744823, 27.413855, 34.625061>,  <39.983818, 27.399933, 34.608116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744823, 27.413855, 34.625061>,  <39.346497, 27.437057, 34.653301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744823, 27.413855, 34.625061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090010, -0.755816, -0.648568,
		-0.015743, 0.652210, -0.757875,
		0.995816, -0.058006, -0.070604,
		40.043568, 27.396452, 34.603878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540840, 27.261719, 33.998779>,  <39.346497, 27.437057, 34.653301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540840, 27.261719, 33.998779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907196, 27.204800, 34.148926>,  <40.127010, 27.170649, 34.239014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907196, 27.204800, 34.148926>,  <39.540840, 27.261719, 33.998779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907196, 27.204800, 34.148926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165925, -0.717269, -0.676753,
		0.365541, 0.682113, -0.633327,
		0.915887, -0.142296, 0.375370,
		40.181961, 27.162111, 34.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968433, 27.520451, 33.469658>,  <39.540840, 27.261719, 33.998779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968433, 27.520451, 33.469658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135250, 27.254362, 33.717384>,  <40.235340, 27.094709, 33.866020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135250, 27.254362, 33.717384>,  <39.968433, 27.520451, 33.469658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135250, 27.254362, 33.717384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175590, -0.609598, -0.773019,
		0.891764, 0.431129, -0.137422,
		0.417044, -0.665220, 0.619319,
		40.260365, 27.054796, 33.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268383, 27.006065, 33.044319>,  <39.968433, 27.520451, 33.469658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268383, 27.006065, 33.044319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666817, 26.970884, 33.047779>,  <40.905876, 26.949776, 33.049854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666817, 26.970884, 33.047779>,  <40.268383, 27.006065, 33.044319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666817, 26.970884, 33.047779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042213, -0.559478, -0.827770,
		0.077646, 0.824165, -0.561002,
		0.996087, -0.087955, 0.008651,
		40.965641, 26.944498, 33.050373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594692, 27.258116, 32.441326>,  <40.268383, 27.006065, 33.044319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594692, 27.258116, 32.441326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827694, 26.949537, 32.543751>,  <40.967495, 26.764391, 32.605206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827694, 26.949537, 32.543751>,  <40.594692, 27.258116, 32.441326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827694, 26.949537, 32.543751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092093, -0.250357, -0.963764,
		0.807596, 0.584975, -0.074789,
		0.582501, -0.771444, 0.256059,
		41.002445, 26.718103, 32.620567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616257, 26.557875, 32.200897>,  <40.594692, 27.258116, 32.441326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616257, 26.557875, 32.200897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237770, 26.663973, 32.126789>,  <40.010677, 26.727631, 32.082325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237770, 26.663973, 32.126789>,  <40.616257, 26.557875, 32.200897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237770, 26.663973, 32.126789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193662, -0.005600, 0.981052,
		0.259180, 0.964165, 0.056667,
		-0.946214, 0.265244, -0.185270,
		39.953907, 26.743546, 32.071209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803303, 26.054939, 31.832218>,  <40.616257, 26.557875, 32.200897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803303, 26.054939, 31.832218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195995, 25.987986, 31.796019>,  <41.431610, 25.947813, 31.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195995, 25.987986, 31.796019>,  <40.803303, 26.054939, 31.832218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195995, 25.987986, 31.796019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182267, 0.690616, 0.699878,
		-0.054651, -0.703585, 0.708506,
		0.981729, -0.167386, -0.090497,
		41.490513, 25.937769, 31.768869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208237, 25.733568, 32.460182>,  <40.803303, 26.054939, 31.832218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208237, 25.733568, 32.460182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423416, 25.995554, 32.247906>,  <41.552525, 26.152744, 32.120541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423416, 25.995554, 32.247906>,  <41.208237, 25.733568, 32.460182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423416, 25.995554, 32.247906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132152, 0.556239, 0.820447,
		0.832555, -0.511490, 0.212673,
		0.537948, 0.654963, -0.530694,
		41.584801, 26.192043, 32.088699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738373, 25.852840, 32.763069>,  <41.208237, 25.733568, 32.460182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738373, 25.852840, 32.763069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679882, 26.185776, 32.549213>,  <41.644787, 26.385536, 32.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679882, 26.185776, 32.549213>,  <41.738373, 25.852840, 32.763069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679882, 26.185776, 32.549213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295067, 0.552540, 0.779509,
		0.944222, -0.043771, -0.326388,
		-0.146222, 0.832336, -0.534636,
		41.636017, 26.435476, 32.388824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313553, 26.309336, 32.827576>,  <41.738373, 25.852840, 32.763069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313553, 26.309336, 32.827576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046310, 26.570772, 32.685333>,  <41.885967, 26.727634, 32.599987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046310, 26.570772, 32.685333>,  <42.313553, 26.309336, 32.827576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046310, 26.570772, 32.685333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396031, 0.716961, 0.573695,
		0.629918, 0.242457, -0.737847,
		-0.668104, 0.653591, -0.355607,
		41.845879, 26.766850, 32.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638405, 26.942446, 32.361740>,  <42.313553, 26.309336, 32.827576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638405, 26.942446, 32.361740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308960, 27.059162, 32.556278>,  <42.111294, 27.129192, 32.673000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308960, 27.059162, 32.556278>,  <42.638405, 26.942446, 32.361740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308960, 27.059162, 32.556278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482421, 0.811319, 0.330199,
		-0.298228, 0.506576, -0.808975,
		-0.823608, 0.291793, 0.486341,
		42.061878, 27.146700, 32.702179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771694, 27.579649, 32.336651>,  <42.638405, 26.942446, 32.361740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771694, 27.579649, 32.336651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501709, 27.515137, 32.624657>,  <42.339718, 27.476429, 32.797459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501709, 27.515137, 32.624657>,  <42.771694, 27.579649, 32.336651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501709, 27.515137, 32.624657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357271, 0.782363, 0.510162,
		-0.645591, 0.601578, -0.470442,
		-0.674959, -0.161281, 0.720013,
		42.299221, 27.466753, 32.840660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349792, 28.075089, 32.428291>,  <42.771694, 27.579649, 32.336651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349792, 28.075089, 32.428291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432838, 27.906904, 32.781586>,  <42.482666, 27.805994, 32.993565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432838, 27.906904, 32.781586>,  <42.349792, 28.075089, 32.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432838, 27.906904, 32.781586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453519, 0.841384, 0.293929,
		-0.866727, 0.339541, 0.365370,
		0.207615, -0.420459, 0.883239,
		42.495125, 27.780767, 33.046558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917797, 28.356943, 33.067036>,  <42.349792, 28.075089, 32.428291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917797, 28.356943, 33.067036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263878, 28.213171, 33.206886>,  <42.471527, 28.126907, 33.290798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263878, 28.213171, 33.206886>,  <41.917797, 28.356943, 33.067036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263878, 28.213171, 33.206886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209235, 0.892449, 0.399694,
		-0.455686, -0.272662, 0.847352,
		0.865200, -0.359431, 0.349627,
		42.523438, 28.105341, 33.311775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012970, 28.703869, 33.677952>,  <41.917797, 28.356943, 33.067036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012970, 28.703869, 33.677952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382946, 28.569340, 33.607098>,  <42.604931, 28.488623, 33.564583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382946, 28.569340, 33.607098>,  <42.012970, 28.703869, 33.677952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382946, 28.569340, 33.607098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380098, 0.813163, 0.440785,
		-0.004202, -0.475028, 0.879960,
		0.924937, -0.336324, -0.177140,
		42.660427, 28.468443, 33.553955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278885, 28.946278, 34.192135>,  <42.012970, 28.703869, 33.677952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278885, 28.946278, 34.192135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580112, 28.859924, 33.943527>,  <42.760849, 28.808113, 33.794365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580112, 28.859924, 33.943527>,  <42.278885, 28.946278, 34.192135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580112, 28.859924, 33.943527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559332, 0.707491, 0.431977,
		0.346461, -0.672942, 0.653539,
		0.753069, -0.215882, -0.621516,
		42.806034, 28.795160, 33.757072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877373, 28.955297, 34.588020>,  <42.278885, 28.946278, 34.192135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877373, 28.955297, 34.588020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028259, 29.021982, 34.223621>,  <43.118790, 29.061993, 34.004982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028259, 29.021982, 34.223621>,  <42.877373, 28.955297, 34.588020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028259, 29.021982, 34.223621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508204, 0.785075, 0.354100,
		0.774232, -0.596545, 0.211423,
		0.377219, 0.166709, -0.910996,
		43.141426, 29.071995, 33.950321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528400, 29.265289, 34.696011>,  <42.877373, 28.955297, 34.588020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528400, 29.265289, 34.696011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467064, 29.319931, 34.304535>,  <43.430264, 29.352716, 34.069649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467064, 29.319931, 34.304535>,  <43.528400, 29.265289, 34.696011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467064, 29.319931, 34.304535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590614, 0.806705, 0.020064,
		0.792252, -0.574949, -0.204378,
		-0.153337, 0.136604, -0.978687,
		43.421062, 29.360912, 34.010929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241070, 29.325560, 34.319466>,  <43.528400, 29.265289, 34.696011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241070, 29.325560, 34.319466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936256, 29.524551, 34.153664>,  <43.753368, 29.643946, 34.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936256, 29.524551, 34.153664>,  <44.241070, 29.325560, 34.319466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936256, 29.524551, 34.153664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452928, 0.866979, 0.207855,
		0.462773, -0.029349, -0.885991,
		-0.762035, 0.497480, -0.414507,
		43.707645, 29.673796, 34.029312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599915, 29.939127, 34.039845>,  <44.241070, 29.325560, 34.319466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599915, 29.939127, 34.039845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215508, 30.049480, 34.032520>,  <43.984863, 30.115692, 34.028126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215508, 30.049480, 34.032520>,  <44.599915, 29.939127, 34.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215508, 30.049480, 34.032520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250085, 0.895565, 0.367997,
		0.117920, 0.349072, -0.929647,
		-0.961016, 0.275884, -0.018307,
		43.927204, 30.132246, 34.027027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558796, 30.663349, 33.641445>,  <44.599915, 29.939127, 34.039845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558796, 30.663349, 33.641445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231510, 30.608736, 33.864830>,  <44.035137, 30.575968, 33.998859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231510, 30.608736, 33.864830>,  <44.558796, 30.663349, 33.641445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231510, 30.608736, 33.864830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015691, 0.965726, 0.259089,
		-0.574694, 0.220754, -0.788032,
		-0.818218, -0.136532, 0.558460,
		43.986046, 30.567776, 34.032368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226871, 31.252867, 33.482262>,  <44.558796, 30.663349, 33.641445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226871, 31.252867, 33.482262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044380, 31.114889, 33.810375>,  <43.934887, 31.032103, 34.007244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044380, 31.114889, 33.810375>,  <44.226871, 31.252867, 33.482262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044380, 31.114889, 33.810375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107950, 0.936458, 0.333758,
		-0.883292, 0.063719, -0.464473,
		-0.456226, -0.344945, 0.820287,
		43.907513, 31.011406, 34.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632195, 31.795883, 33.689194>,  <44.226871, 31.252867, 33.482262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632195, 31.795883, 33.689194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710052, 31.581337, 34.017689>,  <43.756767, 31.452610, 34.214787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710052, 31.581337, 34.017689>,  <43.632195, 31.795883, 33.689194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710052, 31.581337, 34.017689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014799, 0.835546, 0.549221,
		-0.980762, -0.119056, 0.154698,
		0.194645, -0.536366, 0.821234,
		43.768448, 31.420427, 34.264057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182369, 32.083836, 34.235428>,  <43.632195, 31.795883, 33.689194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182369, 32.083836, 34.235428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471916, 31.894464, 34.436180>,  <43.645645, 31.780844, 34.556633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471916, 31.894464, 34.436180>,  <43.182369, 32.083836, 34.235428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471916, 31.894464, 34.436180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168970, 0.826924, 0.536326,
		-0.668929, -0.303426, 0.678577,
		0.723867, -0.473423, 0.501884,
		43.689075, 31.752438, 34.586746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084339, 32.304592, 34.875572>,  <43.182369, 32.083836, 34.235428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084339, 32.304592, 34.875572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462551, 32.176113, 34.896740>,  <43.689480, 32.099026, 34.909439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462551, 32.176113, 34.896740>,  <43.084339, 32.304592, 34.875572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462551, 32.176113, 34.896740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221563, 0.754098, 0.618260,
		-0.238485, -0.572862, 0.784190,
		0.945534, -0.321194, 0.052916,
		43.746212, 32.079754, 34.912613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239239, 32.466007, 35.464222>,  <43.084339, 32.304592, 34.875572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239239, 32.466007, 35.464222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611935, 32.367275, 35.357689>,  <43.835552, 32.308037, 35.293770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611935, 32.367275, 35.357689>,  <43.239239, 32.466007, 35.464222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611935, 32.367275, 35.357689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360991, 0.550325, 0.752879,
		-0.039262, -0.797633, 0.601864,
		0.931742, -0.246827, -0.266331,
		43.891457, 32.293228, 35.277790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577198, 32.144489, 36.059692>,  <43.239239, 32.466007, 35.464222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577198, 32.144489, 36.059692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845737, 32.322144, 35.822361>,  <44.006859, 32.428738, 35.679962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845737, 32.322144, 35.822361>,  <43.577198, 32.144489, 36.059692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845737, 32.322144, 35.822361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324732, 0.543355, 0.774154,
		0.666219, -0.712397, 0.220552,
		0.671343, 0.444135, -0.593332,
		44.047142, 32.455383, 35.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287750, 32.127052, 36.465698>,  <43.577198, 32.144489, 36.059692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287750, 32.127052, 36.465698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319683, 32.401543, 36.176502>,  <44.338840, 32.566238, 36.002983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319683, 32.401543, 36.176502>,  <44.287750, 32.127052, 36.465698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319683, 32.401543, 36.176502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342427, 0.662288, 0.666422,
		0.936147, -0.300771, -0.182115,
		0.079827, 0.686230, -0.722991,
		44.343632, 32.607410, 35.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913799, 32.412525, 36.685070>,  <44.287750, 32.127052, 36.465698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913799, 32.412525, 36.685070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727650, 32.682793, 36.456367>,  <44.615959, 32.844952, 36.319145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727650, 32.682793, 36.456367>,  <44.913799, 32.412525, 36.685070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727650, 32.682793, 36.456367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208903, 0.711560, 0.670851,
		0.860110, 0.192753, -0.472288,
		-0.465370, 0.675669, -0.571754,
		44.588039, 32.885494, 36.284840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234238, 33.098812, 36.903790>,  <44.913799, 32.412525, 36.685070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234238, 33.098812, 36.903790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900181, 33.185230, 36.701458>,  <44.699745, 33.237080, 36.580059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900181, 33.185230, 36.701458>,  <45.234238, 33.098812, 36.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900181, 33.185230, 36.701458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186253, 0.754226, 0.629645,
		0.517537, 0.620056, -0.589649,
		-0.835144, 0.216041, -0.505827,
		44.649639, 33.250042, 36.549709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335384, 33.751507, 36.622665>,  <45.234238, 33.098812, 36.903790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335384, 33.751507, 36.622665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950584, 33.665661, 36.690193>,  <44.719704, 33.614155, 36.730709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950584, 33.665661, 36.690193>,  <45.335384, 33.751507, 36.622665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950584, 33.665661, 36.690193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052091, 0.751149, 0.658074,
		-0.268036, 0.624273, -0.733785,
		-0.962000, -0.214611, 0.168816,
		44.661983, 33.601276, 36.740837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921082, 34.391502, 36.573944>,  <45.335384, 33.751507, 36.622665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921082, 34.391502, 36.573944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729328, 34.112423, 36.786888>,  <44.614277, 33.944973, 36.914654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729328, 34.112423, 36.786888>,  <44.921082, 34.391502, 36.573944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729328, 34.112423, 36.786888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246896, 0.689323, 0.681085,
		-0.842163, 0.195059, -0.502706,
		-0.479379, -0.697700, 0.532363,
		44.585514, 33.903114, 36.946598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563324, 34.912113, 36.686401>,  <44.921082, 34.391502, 36.573944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563324, 34.912113, 36.686401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557892, 34.698792, 36.348076>,  <45.554630, 34.570797, 36.145081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557892, 34.698792, 36.348076>,  <45.563324, 34.912113, 36.686401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557892, 34.698792, 36.348076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027918, 0.845361, -0.533467,
		0.999518, -0.030860, 0.003405,
		-0.013585, -0.533304, -0.845814,
		45.553818, 34.538799, 36.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185867, 35.118446, 36.383560>,  <45.563324, 34.912113, 36.686401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185867, 35.118446, 36.383560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875797, 35.018734, 36.151367>,  <45.689754, 34.958904, 36.012051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875797, 35.018734, 36.151367>,  <46.185867, 35.118446, 36.383560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875797, 35.018734, 36.151367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122633, 0.841997, -0.525359,
		0.619725, -0.478433, -0.622127,
		-0.775178, -0.249284, -0.580479,
		45.643246, 34.943947, 35.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447144, 35.084053, 35.764961>,  <46.185867, 35.118446, 36.383560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447144, 35.084053, 35.764961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058254, 35.124584, 35.680569>,  <45.824921, 35.148903, 35.629932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058254, 35.124584, 35.680569>,  <46.447144, 35.084053, 35.764961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058254, 35.124584, 35.680569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218134, 0.719035, -0.659853,
		0.084842, -0.687547, -0.721166,
		-0.972224, 0.101327, -0.210982,
		45.766586, 35.154984, 35.617275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206863, 34.885311, 35.617115>,  <46.447144, 35.084053, 35.764961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206863, 34.885311, 35.617115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483875, 35.173073, 35.595722>,  <47.650082, 35.345730, 35.582886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483875, 35.173073, 35.595722>,  <47.206863, 34.885311, 35.617115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483875, 35.173073, 35.595722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663894, -0.664579, -0.342898,
		-0.282225, 0.201961, -0.937849,
		0.692527, 0.719407, -0.053480,
		47.691635, 35.388893, 35.579678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537544, 34.708817, 34.985760>,  <47.206863, 34.885311, 35.617115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537544, 34.708817, 34.985760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782318, 34.899101, 35.238503>,  <47.929180, 35.013271, 35.390148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782318, 34.899101, 35.238503>,  <47.537544, 34.708817, 34.985760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782318, 34.899101, 35.238503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665582, -0.741296, -0.086491,
		0.427248, 0.473478, -0.770245,
		0.611931, 0.475708, 0.631856,
		47.965897, 35.041813, 35.428059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.529964, 41.349579, 43.792751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132652, 41.392471, 43.775318>,  <32.894264, 41.418209, 43.764858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132652, 41.392471, 43.775318>,  <33.529964, 41.349579, 43.792751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132652, 41.392471, 43.775318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023878, -0.558234, -0.829340,
		-0.113264, -0.822725, 0.557042,
		-0.993278, 0.107235, -0.043583,
		32.834667, 41.424641, 43.762245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279243, 40.638939, 43.701748>,  <33.529964, 41.349579, 43.792751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279243, 40.638939, 43.701748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990574, 40.876591, 43.559650>,  <32.817371, 41.019180, 43.474392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990574, 40.876591, 43.559650>,  <33.279243, 40.638939, 43.701748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990574, 40.876591, 43.559650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137716, -0.626155, -0.767440,
		-0.678395, -0.504919, 0.533701,
		-0.721675, 0.594126, -0.355245,
		32.774071, 41.054829, 43.453075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738453, 40.240799, 43.415833>,  <33.279243, 40.638939, 43.701748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738453, 40.240799, 43.415833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.747749, 40.603745, 43.247955>,  <32.753326, 40.821514, 43.147228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.747749, 40.603745, 43.247955>,  <32.738453, 40.240799, 43.415833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747749, 40.603745, 43.247955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407757, -0.374701, -0.832667,
		-0.912795, 0.190485, 0.361277,
		0.023240, 0.907367, -0.419696,
		32.754723, 40.875954, 43.122047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097813, 40.236221, 43.018162>,  <32.738453, 40.240799, 43.415833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097813, 40.236221, 43.018162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333366, 40.541019, 42.910404>,  <32.474701, 40.723900, 42.845749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333366, 40.541019, 42.910404>,  <32.097813, 40.236221, 43.018162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333366, 40.541019, 42.910404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167323, -0.211148, -0.963026,
		-0.790706, 0.612188, 0.003157,
		0.588886, 0.761999, -0.269389,
		32.510033, 40.769619, 42.829586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715302, 40.473301, 42.511414>,  <32.097813, 40.236221, 43.018162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715302, 40.473301, 42.511414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.101147, 40.577263, 42.493656>,  <32.332653, 40.639641, 42.483002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.101147, 40.577263, 42.493656>,  <31.715302, 40.473301, 42.511414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101147, 40.577263, 42.493656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086923, -0.472406, -0.877084,
		-0.248927, 0.842189, -0.478281,
		0.964614, 0.259903, -0.044389,
		32.390530, 40.655235, 42.480339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837990, 40.696922, 41.875420>,  <31.715302, 40.473301, 42.511414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837990, 40.696922, 41.875420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.215172, 40.624138, 41.986938>,  <32.441483, 40.580467, 42.053848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.215172, 40.624138, 41.986938>,  <31.837990, 40.696922, 41.875420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215172, 40.624138, 41.986938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163990, -0.474912, -0.864619,
		0.289729, 0.861016, -0.417980,
		0.942955, -0.181961, 0.278794,
		32.498058, 40.569550, 42.070576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298683, 40.906002, 41.331139>,  <31.837990, 40.696922, 41.875420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298683, 40.906002, 41.331139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498451, 40.626785, 41.536392>,  <32.618313, 40.459255, 41.659546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498451, 40.626785, 41.536392>,  <32.298683, 40.906002, 41.331139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498451, 40.626785, 41.536392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237080, -0.459567, -0.855915,
		0.833289, 0.549118, -0.064025,
		0.499422, -0.698046, 0.513137,
		32.648277, 40.417370, 41.690334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919800, 40.791630, 40.984463>,  <32.298683, 40.906002, 41.331139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919800, 40.791630, 40.984463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.885006, 40.463985, 41.211266>,  <32.864132, 40.267399, 41.347347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.885006, 40.463985, 41.211266>,  <32.919800, 40.791630, 40.984463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885006, 40.463985, 41.211266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287209, -0.565617, -0.773039,
		0.953910, 0.095609, 0.284454,
		-0.086983, -0.819107, 0.567007,
		32.858910, 40.218254, 41.381367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650780, 40.402287, 40.929264>,  <32.919800, 40.791630, 40.984463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650780, 40.402287, 40.929264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373489, 40.141907, 41.053005>,  <33.207115, 39.985680, 41.127251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373489, 40.141907, 41.053005>,  <33.650780, 40.402287, 40.929264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373489, 40.141907, 41.053005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312488, -0.658253, -0.684876,
		0.649453, -0.378105, 0.659733,
		-0.693226, -0.650953, 0.309351,
		33.165524, 39.946621, 41.145809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987560, 39.859383, 40.876633>,  <33.650780, 40.402287, 40.929264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987560, 39.859383, 40.876633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621796, 39.702763, 40.917709>,  <33.402336, 39.608791, 40.942356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621796, 39.702763, 40.917709>,  <33.987560, 39.859383, 40.876633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621796, 39.702763, 40.917709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232163, -0.715110, -0.659332,
		0.331594, -0.579059, 0.744806,
		-0.914410, -0.391547, 0.102690,
		33.347473, 39.585300, 40.948517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116028, 39.178989, 40.830132>,  <33.987560, 39.859383, 40.876633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116028, 39.178989, 40.830132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720169, 39.168056, 40.773777>,  <33.482655, 39.161499, 40.739964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720169, 39.168056, 40.773777>,  <34.116028, 39.178989, 40.830132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720169, 39.168056, 40.773777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116093, -0.729612, -0.673936,
		-0.084376, -0.683315, 0.725232,
		-0.989648, -0.027330, -0.140890,
		33.423275, 39.159859, 40.731510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892384, 38.525204, 40.949627>,  <34.116028, 39.178989, 40.830132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892384, 38.525204, 40.949627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626865, 38.685314, 40.696911>,  <33.467556, 38.781380, 40.545280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626865, 38.685314, 40.696911>,  <33.892384, 38.525204, 40.949627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626865, 38.685314, 40.696911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285691, -0.644980, -0.708789,
		-0.691204, -0.650985, 0.313776,
		-0.663790, 0.400275, -0.631793,
		33.427727, 38.805397, 40.507374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685154, 37.936321, 40.390720>,  <33.892384, 38.525204, 40.949627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685154, 37.936321, 40.390720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562958, 38.283142, 40.233292>,  <33.489639, 38.491234, 40.138836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562958, 38.283142, 40.233292>,  <33.685154, 37.936321, 40.390720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562958, 38.283142, 40.233292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186630, -0.350794, -0.917667,
		-0.933726, -0.353791, -0.054653,
		-0.305491, 0.867050, -0.393573,
		33.471310, 38.543259, 40.115219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242382, 37.750660, 39.841393>,  <33.685154, 37.936321, 40.390720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242382, 37.750660, 39.841393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317955, 38.134254, 39.756874>,  <33.363297, 38.364410, 39.706161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317955, 38.134254, 39.756874>,  <33.242382, 37.750660, 39.841393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317955, 38.134254, 39.756874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144260, -0.239946, -0.960008,
		-0.971337, 0.150891, -0.183677,
		0.188929, 0.958988, -0.211301,
		33.374634, 38.421951, 39.693485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727440, 38.027206, 39.479343>,  <33.242382, 37.750660, 39.841393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727440, 38.027206, 39.479343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054016, 38.234737, 39.377964>,  <33.249962, 38.359257, 39.317139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054016, 38.234737, 39.377964>,  <32.727440, 38.027206, 39.479343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054016, 38.234737, 39.377964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041352, -0.490335, -0.870553,
		-0.575942, 0.700278, -0.421786,
		0.816444, 0.518829, -0.253446,
		33.298950, 38.390385, 39.301929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707409, 38.231140, 38.702160>,  <32.727440, 38.027206, 39.479343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707409, 38.231140, 38.702160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096684, 38.294106, 38.769245>,  <33.330250, 38.331882, 38.809494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096684, 38.294106, 38.769245>,  <32.707409, 38.231140, 38.702160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096684, 38.294106, 38.769245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223495, -0.474852, -0.851214,
		-0.054352, 0.865874, -0.497301,
		0.973189, 0.157409, 0.167709,
		33.388641, 38.341328, 38.819557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053711, 38.422333, 38.046452>,  <32.707409, 38.231140, 38.702160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053711, 38.422333, 38.046452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381927, 38.318695, 38.250248>,  <33.578857, 38.256512, 38.372528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.381927, 38.318695, 38.250248>,  <33.053711, 38.422333, 38.046452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381927, 38.318695, 38.250248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223341, -0.675171, -0.703039,
		0.526152, 0.690661, -0.496137,
		0.820539, -0.259097, 0.509495,
		33.628090, 38.240967, 38.403095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549397, 38.678730, 37.735409>,  <33.053711, 38.422333, 38.046452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549397, 38.678730, 37.735409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727592, 38.401218, 37.961754>,  <33.834511, 38.234711, 38.097561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727592, 38.401218, 37.961754>,  <33.549397, 38.678730, 37.735409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727592, 38.401218, 37.961754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467509, -0.358760, -0.807915,
		0.763526, 0.624468, 0.164523,
		0.445493, -0.693780, 0.565867,
		33.861240, 38.193085, 38.131516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321217, 38.660145, 37.567585>,  <33.549397, 38.678730, 37.735409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321217, 38.660145, 37.567585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200775, 38.315350, 37.730709>,  <34.128510, 38.108471, 37.828583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200775, 38.315350, 37.730709>,  <34.321217, 38.660145, 37.567585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200775, 38.315350, 37.730709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247896, -0.483710, -0.839388,
		0.920806, -0.151648, 0.359330,
		-0.301103, -0.861990, 0.407811,
		34.110443, 38.056751, 37.853054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885578, 38.195309, 37.353996>,  <34.321217, 38.660145, 37.567585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885578, 38.195309, 37.353996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588535, 37.945324, 37.450294>,  <34.410309, 37.795334, 37.508072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588535, 37.945324, 37.450294>,  <34.885578, 38.195309, 37.353996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588535, 37.945324, 37.450294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131260, -0.488307, -0.862744,
		0.656742, -0.609077, 0.444652,
		-0.742604, -0.624965, 0.240745,
		34.365753, 37.757835, 37.522518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177425, 37.603939, 37.199448>,  <34.885578, 38.195309, 37.353996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177425, 37.603939, 37.199448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783340, 37.536209, 37.209862>,  <34.546890, 37.495571, 37.216110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783340, 37.536209, 37.209862>,  <35.177425, 37.603939, 37.199448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783340, 37.536209, 37.209862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058429, -0.474962, -0.878065,
		0.161044, -0.863562, 0.477834,
		-0.985216, -0.169326, 0.026033,
		34.487774, 37.485413, 37.217670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166035, 36.952095, 36.930290>,  <35.177425, 37.603939, 37.199448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166035, 36.952095, 36.930290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785168, 37.073273, 36.914242>,  <34.556648, 37.145981, 36.904613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785168, 37.073273, 36.914242>,  <35.166035, 36.952095, 36.930290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785168, 37.073273, 36.914242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068929, -0.340814, -0.937600,
		-0.297705, -0.889986, 0.345393,
		-0.952166, 0.302936, -0.040116,
		34.499519, 37.164154, 36.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792694, 36.602245, 37.150677>,  <35.166035, 36.952095, 36.930290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792694, 36.602245, 37.150677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175430, 36.662506, 37.250084>,  <36.405071, 36.698662, 37.309727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175430, 36.662506, 37.250084>,  <35.792694, 36.602245, 37.150677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175430, 36.662506, 37.250084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290364, 0.459989, 0.839106,
		0.012096, -0.875051, 0.483879,
		0.956840, 0.150650, 0.248519,
		36.462482, 36.707703, 37.324638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865707, 36.364304, 37.820740>,  <35.792694, 36.602245, 37.150677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865707, 36.364304, 37.820740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195534, 36.587509, 37.783417>,  <36.393429, 36.721432, 37.761024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195534, 36.587509, 37.783417>,  <35.865707, 36.364304, 37.820740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195534, 36.587509, 37.783417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088007, 0.289424, 0.953147,
		0.558873, -0.777725, 0.287759,
		0.824570, 0.558013, -0.093306,
		36.442905, 36.754913, 37.755424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339123, 36.219131, 38.382095>,  <35.865707, 36.364304, 37.820740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339123, 36.219131, 38.382095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449192, 36.584023, 38.260685>,  <36.515232, 36.802956, 38.187840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449192, 36.584023, 38.260685>,  <36.339123, 36.219131, 38.382095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449192, 36.584023, 38.260685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109665, 0.343432, 0.932753,
		0.955120, -0.223380, 0.194541,
		0.275170, 0.912225, -0.303522,
		36.531742, 36.857689, 38.169628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741314, 36.564137, 38.911148>,  <36.339123, 36.219131, 38.382095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741314, 36.564137, 38.911148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600853, 36.873436, 38.699947>,  <36.516579, 37.059013, 38.573227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600853, 36.873436, 38.699947>,  <36.741314, 36.564137, 38.911148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600853, 36.873436, 38.699947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063883, 0.542813, 0.837420,
		0.934137, 0.327791, -0.141211,
		-0.351150, 0.773245, -0.528003,
		36.495506, 37.105408, 38.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068909, 37.135757, 39.183601>,  <36.741314, 36.564137, 38.911148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068909, 37.135757, 39.183601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754204, 37.286476, 38.988037>,  <36.565380, 37.376907, 38.870697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754204, 37.286476, 38.988037>,  <37.068909, 37.135757, 39.183601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754204, 37.286476, 38.988037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277992, 0.490898, 0.825675,
		0.551116, 0.785522, -0.281473,
		-0.786761, 0.376795, -0.488910,
		36.518177, 37.399513, 38.841366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089428, 37.824768, 39.227699>,  <37.068909, 37.135757, 39.183601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089428, 37.824768, 39.227699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706158, 37.732697, 39.159683>,  <36.476196, 37.677452, 39.118874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706158, 37.732697, 39.159683>,  <37.089428, 37.824768, 39.227699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706158, 37.732697, 39.159683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270007, 0.530262, 0.803691,
		-0.094829, 0.815990, -0.570235,
		-0.958177, -0.230181, -0.170038,
		36.418705, 37.663643, 39.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706593, 38.451756, 39.298996>,  <37.089428, 37.824768, 39.227699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706593, 38.451756, 39.298996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430676, 38.163628, 39.328213>,  <36.265125, 37.990753, 39.345745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430676, 38.163628, 39.328213>,  <36.706593, 38.451756, 39.298996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430676, 38.163628, 39.328213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435239, 0.493176, 0.753223,
		-0.578584, 0.487772, -0.653697,
		-0.689788, -0.720317, 0.073046,
		36.223740, 37.947533, 39.350128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116707, 38.865067, 39.527668>,  <36.706593, 38.451756, 39.298996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116707, 38.865067, 39.527668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065792, 38.478786, 39.618191>,  <36.035244, 38.247017, 39.672504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065792, 38.478786, 39.618191>,  <36.116707, 38.865067, 39.527668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065792, 38.478786, 39.618191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380671, 0.258254, 0.887916,
		-0.915908, 0.026871, -0.400487,
		-0.127287, -0.965703, 0.226308,
		36.027607, 38.189075, 39.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474842, 38.774567, 39.745914>,  <36.116707, 38.865067, 39.527668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474842, 38.774567, 39.745914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666782, 38.454521, 39.889893>,  <35.781948, 38.262493, 39.976280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666782, 38.454521, 39.889893>,  <35.474842, 38.774567, 39.745914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666782, 38.454521, 39.889893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301957, 0.234589, 0.924007,
		-0.823748, -0.552077, -0.129031,
		0.479854, -0.800111, 0.359947,
		35.810738, 38.214489, 39.997875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138855, 38.649715, 40.290321>,  <35.474842, 38.774567, 39.745914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138855, 38.649715, 40.290321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445023, 38.407127, 40.376411>,  <35.628723, 38.261574, 40.428066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445023, 38.407127, 40.376411>,  <35.138855, 38.649715, 40.290321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445023, 38.407127, 40.376411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155955, 0.149660, 0.976361,
		-0.624346, -0.780893, 0.019971,
		0.765422, -0.606472, 0.215224,
		35.674648, 38.225185, 40.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942032, 38.117924, 40.823593>,  <35.138855, 38.649715, 40.290321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942032, 38.117924, 40.823593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339333, 38.161518, 40.839436>,  <35.577713, 38.187675, 40.848942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339333, 38.161518, 40.839436>,  <34.942032, 38.117924, 40.823593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339333, 38.161518, 40.839436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046889, 0.065102, 0.996777,
		0.106061, -0.991909, 0.069773,
		0.993253, 0.108991, 0.039604,
		35.637310, 38.194214, 40.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274338, 37.710953, 41.339867>,  <34.942032, 38.117924, 40.823593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274338, 37.710953, 41.339867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521404, 38.023033, 41.300320>,  <35.669643, 38.210281, 41.276592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521404, 38.023033, 41.300320>,  <35.274338, 37.710953, 41.339867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521404, 38.023033, 41.300320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013840, 0.136477, 0.990546,
		0.786316, -0.610462, 0.095096,
		0.617669, 0.780199, -0.098865,
		35.706703, 38.257092, 41.270660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711334, 37.736591, 41.988621>,  <35.274338, 37.710953, 41.339867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711334, 37.736591, 41.988621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723904, 38.096470, 41.814468>,  <35.731445, 38.312397, 41.709976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723904, 38.096470, 41.814468>,  <35.711334, 37.736591, 41.988621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723904, 38.096470, 41.814468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102939, 0.436189, 0.893948,
		0.994191, 0.016729, 0.106320,
		0.031420, 0.899700, -0.435377,
		35.733330, 38.366379, 41.683857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787064, 38.083481, 42.562572>,  <35.711334, 37.736591, 41.988621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787064, 38.083481, 42.562572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767822, 38.390324, 42.306686>,  <35.756279, 38.574429, 42.153156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767822, 38.390324, 42.306686>,  <35.787064, 38.083481, 42.562572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767822, 38.390324, 42.306686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223319, 0.615986, 0.755440,
		0.973558, 0.179198, 0.141679,
		-0.048100, 0.767104, -0.639717,
		35.753391, 38.620457, 42.114773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177826, 38.708389, 42.873016>,  <35.787064, 38.083481, 42.562572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177826, 38.708389, 42.873016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917007, 38.844540, 42.602028>,  <35.760517, 38.926231, 42.439434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917007, 38.844540, 42.602028>,  <36.177826, 38.708389, 42.873016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917007, 38.844540, 42.602028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339839, 0.667554, 0.662481,
		0.677745, 0.662204, -0.319605,
		-0.652051, 0.340379, -0.677475,
		35.721394, 38.946651, 42.398785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267345, 39.514652, 42.719944>,  <36.177826, 38.708389, 42.873016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267345, 39.514652, 42.719944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888947, 39.472210, 42.597424>,  <35.661907, 39.446743, 42.523911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888947, 39.472210, 42.597424>,  <36.267345, 39.514652, 42.719944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888947, 39.472210, 42.597424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246130, 0.850033, 0.465687,
		0.210956, 0.515931, -0.830249,
		-0.946001, -0.106110, -0.306306,
		35.605145, 39.440376, 42.505531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019131, 40.130367, 42.598583>,  <36.267345, 39.514652, 42.719944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019131, 40.130367, 42.598583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680992, 39.920238, 42.637405>,  <35.478107, 39.794163, 42.660698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680992, 39.920238, 42.637405>,  <36.019131, 40.130367, 42.598583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680992, 39.920238, 42.637405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402449, 0.745719, 0.530978,
		-0.351310, 0.409804, -0.841809,
		-0.845350, -0.525323, 0.097054,
		35.427387, 39.762642, 42.666523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421177, 40.609810, 42.455322>,  <36.019131, 40.130367, 42.598583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421177, 40.609810, 42.455322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296200, 40.298340, 42.672958>,  <35.221214, 40.111458, 42.803539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296200, 40.298340, 42.672958>,  <35.421177, 40.609810, 42.455322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296200, 40.298340, 42.672958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380768, 0.627404, 0.679250,
		-0.870283, 0.005056, -0.492526,
		-0.312447, -0.778678, 0.544093,
		35.202465, 40.064735, 42.836185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.651245, 40.699390, 42.507038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787323, 40.467838, 42.803463>,  <34.868969, 40.328907, 42.981316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787323, 40.467838, 42.803463>,  <34.651245, 40.699390, 42.507038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787323, 40.467838, 42.803463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454513, 0.588674, 0.668492,
		-0.823218, -0.564236, -0.062846,
		0.340192, -0.578879, 0.741059,
		34.889381, 40.294174, 43.025780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131165, 40.557552, 43.037865>,  <34.651245, 40.699390, 42.507038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131165, 40.557552, 43.037865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471153, 40.504467, 43.241802>,  <34.675144, 40.472614, 43.364166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471153, 40.504467, 43.241802>,  <34.131165, 40.557552, 43.037865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471153, 40.504467, 43.241802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295897, 0.680434, 0.670414,
		-0.435889, -0.720692, 0.539078,
		0.849968, -0.132715, 0.509844,
		34.726143, 40.464653, 43.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951344, 40.307259, 43.652588>,  <34.131165, 40.557552, 43.037865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951344, 40.307259, 43.652588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321133, 40.445953, 43.715996>,  <34.543007, 40.529171, 43.754040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321133, 40.445953, 43.715996>,  <33.951344, 40.307259, 43.652588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321133, 40.445953, 43.715996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319737, 0.478653, 0.817716,
		0.207658, -0.806638, 0.553365,
		0.924471, 0.346736, 0.158516,
		34.598473, 40.549973, 43.763550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073105, 40.350986, 44.471020>,  <33.951344, 40.307259, 43.652588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073105, 40.350986, 44.471020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389080, 40.562744, 44.347256>,  <34.578667, 40.689800, 44.272999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389080, 40.562744, 44.347256>,  <34.073105, 40.350986, 44.471020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389080, 40.562744, 44.347256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010561, 0.516265, 0.856364,
		0.613093, -0.673208, 0.413410,
		0.789940, 0.529396, -0.309408,
		34.626064, 40.721561, 44.254433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456806, 40.348022, 45.052475>,  <34.073105, 40.350986, 44.471020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456806, 40.348022, 45.052475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596920, 40.651321, 44.832527>,  <34.680988, 40.833302, 44.700558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596920, 40.651321, 44.832527>,  <34.456806, 40.348022, 45.052475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596920, 40.651321, 44.832527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048025, 0.571756, 0.819017,
		0.935411, -0.313298, 0.163863,
		0.350286, 0.758248, -0.549873,
		34.702007, 40.878796, 44.667564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042500, 40.506420, 45.356033>,  <34.456806, 40.348022, 45.052475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042500, 40.506420, 45.356033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936241, 40.830956, 45.147739>,  <34.872486, 41.025677, 45.022762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936241, 40.830956, 45.147739>,  <35.042500, 40.506420, 45.356033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936241, 40.830956, 45.147739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191313, 0.485039, 0.853309,
		0.944899, 0.326299, 0.026372,
		-0.265643, 0.811336, -0.520738,
		34.856548, 41.074356, 44.991520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358322, 41.069218, 45.717564>,  <35.042500, 40.506420, 45.356033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358322, 41.069218, 45.717564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086117, 41.260429, 45.495434>,  <34.922794, 41.375156, 45.362156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086117, 41.260429, 45.495434>,  <35.358322, 41.069218, 45.717564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086117, 41.260429, 45.495434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186758, 0.619690, 0.762303,
		0.708534, 0.622470, -0.332431,
		-0.680515, 0.478033, -0.555323,
		34.881962, 41.403839, 45.328838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523506, 41.774418, 45.747936>,  <35.358322, 41.069218, 45.717564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523506, 41.774418, 45.747936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137630, 41.731735, 45.651615>,  <34.906105, 41.706127, 45.593822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137630, 41.731735, 45.651615>,  <35.523506, 41.774418, 45.747936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137630, 41.731735, 45.651615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240848, 0.727443, 0.642510,
		0.106614, 0.677821, -0.727456,
		-0.964689, -0.106706, -0.240807,
		34.848225, 41.699722, 45.579372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250969, 42.438103, 45.774807>,  <35.523506, 41.774418, 45.747936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250969, 42.438103, 45.774807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936810, 42.193539, 45.813427>,  <34.748314, 42.046799, 45.836597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936810, 42.193539, 45.813427>,  <35.250969, 42.438103, 45.774807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936810, 42.193539, 45.813427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351663, 0.569111, 0.743267,
		-0.509388, 0.549810, -0.661991,
		-0.785402, -0.611409, 0.096550,
		34.701187, 42.010117, 45.842392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860016, 42.842197, 45.916195>,  <35.250969, 42.438103, 45.774807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860016, 42.842197, 45.916195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669243, 42.517414, 46.050808>,  <34.554779, 42.322544, 46.131577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.669243, 42.517414, 46.050808>,  <34.860016, 42.842197, 45.916195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669243, 42.517414, 46.050808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386339, 0.537582, 0.749498,
		-0.789477, 0.227446, -0.570083,
		-0.476936, -0.811957, 0.336537,
		34.526161, 42.273827, 46.151768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222454, 43.085354, 46.113518>,  <34.860016, 42.842197, 45.916195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222454, 43.085354, 46.113518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213398, 42.729778, 46.296501>,  <34.207962, 42.516434, 46.406292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213398, 42.729778, 46.296501>,  <34.222454, 43.085354, 46.113518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213398, 42.729778, 46.296501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477817, 0.411552, 0.776090,
		-0.878167, -0.201009, -0.434071,
		-0.022642, -0.888943, 0.457457,
		34.206604, 42.463097, 46.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536900, 42.838375, 46.275536>,  <34.222454, 43.085354, 46.113518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536900, 42.838375, 46.275536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752575, 42.626846, 46.537720>,  <33.881981, 42.499931, 46.695030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752575, 42.626846, 46.537720>,  <33.536900, 42.838375, 46.275536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752575, 42.626846, 46.537720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608448, 0.293516, 0.737319,
		-0.582296, -0.796366, -0.163498,
		0.539187, -0.528819, 0.655461,
		33.914330, 42.468201, 46.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124722, 42.796333, 46.855404>,  <33.536900, 42.838375, 46.275536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124722, 42.796333, 46.855404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473049, 42.684608, 47.017220>,  <33.682045, 42.617573, 47.114311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473049, 42.684608, 47.017220>,  <33.124722, 42.796333, 46.855404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473049, 42.684608, 47.017220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336093, 0.262288, 0.904570,
		-0.358763, -0.923683, 0.134531,
		0.870821, -0.279311, 0.404543,
		33.734295, 42.600815, 47.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894672, 42.494610, 47.421749>,  <33.124722, 42.796333, 46.855404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894672, 42.494610, 47.421749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271744, 42.580276, 47.524120>,  <33.497986, 42.631676, 47.585541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271744, 42.580276, 47.524120>,  <32.894672, 42.494610, 47.421749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271744, 42.580276, 47.524120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319542, 0.358177, 0.877270,
		0.096212, -0.908759, 0.406079,
		0.942675, 0.214163, 0.255925,
		33.554546, 42.644527, 47.600899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939415, 42.305630, 48.095196>,  <32.894672, 42.494610, 47.421749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939415, 42.305630, 48.095196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241642, 42.559902, 48.031914>,  <33.422977, 42.712467, 47.993942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241642, 42.559902, 48.031914>,  <32.939415, 42.305630, 48.095196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241642, 42.559902, 48.031914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226302, 0.479936, 0.847614,
		0.614743, -0.604624, 0.506478,
		0.755565, 0.635682, -0.158210,
		33.468311, 42.750607, 47.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290516, 42.254929, 48.735291>,  <32.939415, 42.305630, 48.095196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290516, 42.254929, 48.735291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408352, 42.589153, 48.549797>,  <33.479053, 42.789688, 48.438499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408352, 42.589153, 48.549797>,  <33.290516, 42.254929, 48.735291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408352, 42.589153, 48.549797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155148, 0.520652, 0.839554,
		0.942945, -0.175378, 0.283015,
		0.294592, 0.835562, -0.463737,
		33.496731, 42.839821, 48.410675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856216, 42.558392, 49.125763>,  <33.290516, 42.254929, 48.735291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856216, 42.558392, 49.125763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681526, 42.851017, 48.916351>,  <33.576714, 43.026592, 48.790703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681526, 42.851017, 48.916351>,  <33.856216, 42.558392, 49.125763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681526, 42.851017, 48.916351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108216, 0.535011, 0.837885,
		0.893063, 0.422579, -0.154485,
		-0.436724, 0.731566, -0.523529,
		33.550510, 43.070488, 48.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998409, 43.026432, 49.557056>,  <33.856216, 42.558392, 49.125763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998409, 43.026432, 49.557056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735271, 43.197044, 49.308758>,  <33.577389, 43.299412, 49.159779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735271, 43.197044, 49.308758>,  <33.998409, 43.026432, 49.557056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735271, 43.197044, 49.308758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186300, 0.706422, 0.682833,
		0.729752, 0.564839, -0.385251,
		-0.657840, 0.426526, -0.620742,
		33.537918, 43.325001, 49.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168835, 43.714478, 49.580845>,  <33.998409, 43.026432, 49.557056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168835, 43.714478, 49.580845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787868, 43.726601, 49.459526>,  <33.559288, 43.733875, 49.386734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787868, 43.726601, 49.459526>,  <34.168835, 43.714478, 49.580845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787868, 43.726601, 49.459526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214575, 0.640051, 0.737762,
		0.216484, 0.767735, -0.603091,
		-0.952414, 0.030305, -0.303297,
		33.502144, 43.735691, 49.368538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899540, 44.431973, 49.676674>,  <34.168835, 43.714478, 49.580845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899540, 44.431973, 49.676674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558914, 44.229321, 49.622757>,  <33.354538, 44.107727, 49.590408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558914, 44.229321, 49.622757>,  <33.899540, 44.431973, 49.676674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558914, 44.229321, 49.622757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416197, 0.496968, 0.761448,
		-0.318789, 0.704517, -0.634058,
		-0.851560, -0.506634, -0.134790,
		33.303448, 44.077332, 49.582321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414928, 44.957153, 49.755329>,  <33.899540, 44.431973, 49.676674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414928, 44.957153, 49.755329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229923, 44.612625, 49.839432>,  <33.118919, 44.405907, 49.889893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229923, 44.612625, 49.839432>,  <33.414928, 44.957153, 49.755329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229923, 44.612625, 49.839432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304503, 0.377037, 0.874712,
		-0.832682, 0.340543, -0.436659,
		-0.462513, -0.861321, 0.210256,
		33.091167, 44.354229, 49.902508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663101, 45.021999, 49.835098>,  <33.414928, 44.957153, 49.755329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663101, 45.021999, 49.835098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770607, 44.707428, 50.057556>,  <32.835110, 44.518684, 50.191032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770607, 44.707428, 50.057556>,  <32.663101, 45.021999, 49.835098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770607, 44.707428, 50.057556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321547, 0.471011, 0.821435,
		-0.907951, -0.399596, -0.126285,
		0.268760, -0.786430, 0.556144,
		32.851234, 44.471500, 50.224400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054085, 44.754379, 50.080978>,  <32.663101, 45.021999, 49.835098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054085, 44.754379, 50.080978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360195, 44.666443, 50.322975>,  <32.543861, 44.613682, 50.468174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360195, 44.666443, 50.322975>,  <32.054085, 44.754379, 50.080978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360195, 44.666443, 50.322975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505381, 0.376906, 0.776229,
		-0.398673, -0.899785, 0.177334,
		0.765277, -0.219840, 0.604997,
		32.589779, 44.600491, 50.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063412, 44.080334, 50.672779>,  <32.054085, 44.754379, 50.080978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063412, 44.080334, 50.672779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243835, 44.427696, 50.755157>,  <32.352089, 44.636112, 50.804585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243835, 44.427696, 50.755157>,  <32.063412, 44.080334, 50.672779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243835, 44.427696, 50.755157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710696, 0.209906, 0.671454,
		0.539865, -0.449235, 0.711852,
		0.451063, 0.868405, 0.205949,
		32.379154, 44.688217, 50.816940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499655, 44.634224, 50.986103>,  <32.063412, 44.080334, 50.672779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499655, 44.634224, 50.986103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200943, 44.850849, 50.831684>,  <31.021717, 44.980824, 50.739033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200943, 44.850849, 50.831684>,  <31.499655, 44.634224, 50.986103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200943, 44.850849, 50.831684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149176, -0.702062, -0.696316,
		-0.648128, -0.462404, 0.605073,
		-0.746778, 0.541564, -0.386046,
		30.976910, 45.013317, 50.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903034, 44.205681, 50.898979>,  <31.499655, 44.634224, 50.986103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903034, 44.205681, 50.898979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881062, 44.506729, 50.636517>,  <30.867878, 44.687359, 50.479038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881062, 44.506729, 50.636517>,  <30.903034, 44.205681, 50.898979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881062, 44.506729, 50.636517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330410, -0.633831, -0.699348,
		-0.942237, 0.178384, 0.283492,
		-0.054934, 0.752621, -0.656159,
		30.864582, 44.732517, 50.439671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305466, 44.111546, 50.527744>,  <30.903034, 44.205681, 50.898979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305466, 44.111546, 50.527744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526197, 44.350983, 50.295475>,  <30.658636, 44.494644, 50.156113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526197, 44.350983, 50.295475>,  <30.305466, 44.111546, 50.527744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526197, 44.350983, 50.295475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303441, -0.504436, -0.808374,
		-0.776795, 0.622282, -0.096724,
		0.551827, 0.598590, -0.580669,
		30.691746, 44.530560, 50.121273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907852, 44.274677, 49.987316>,  <30.305466, 44.111546, 50.527744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907852, 44.274677, 49.987316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.265640, 44.350620, 49.825390>,  <30.480312, 44.396187, 49.728233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.265640, 44.350620, 49.825390>,  <29.907852, 44.274677, 49.987316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265640, 44.350620, 49.825390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251596, -0.534733, -0.806697,
		-0.369624, 0.823418, -0.430536,
		0.894470, 0.189854, -0.404819,
		30.533981, 44.407578, 49.703945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804661, 44.386841, 49.141594>,  <29.907852, 44.274677, 49.987316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804661, 44.386841, 49.141594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198290, 44.326237, 49.178787>,  <30.434467, 44.289875, 49.201103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198290, 44.326237, 49.178787>,  <29.804661, 44.386841, 49.141594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198290, 44.326237, 49.178787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024703, -0.401416, -0.915562,
		0.176046, 0.903276, -0.391280,
		0.984072, -0.151515, 0.092982,
		30.493511, 44.280781, 49.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992081, 44.349796, 48.489197>,  <29.804661, 44.386841, 49.141594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992081, 44.349796, 48.489197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337618, 44.222389, 48.645309>,  <30.544941, 44.145947, 48.738976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337618, 44.222389, 48.645309>,  <29.992081, 44.349796, 48.489197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337618, 44.222389, 48.645309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218117, -0.461863, -0.859713,
		0.454089, 0.827786, -0.329505,
		0.863845, -0.318516, 0.390281,
		30.596771, 44.126835, 48.762394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626251, 44.578480, 48.029507>,  <29.992081, 44.349796, 48.489197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626251, 44.578480, 48.029507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742439, 44.269398, 48.255272>,  <30.812151, 44.083950, 48.390732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742439, 44.269398, 48.255272>,  <30.626251, 44.578480, 48.029507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742439, 44.269398, 48.255272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425171, -0.424196, -0.799555,
		0.857239, 0.472215, 0.205316,
		0.290468, -0.772704, 0.564409,
		30.829580, 44.037586, 48.424595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290089, 44.395557, 47.706848>,  <30.626251, 44.578480, 48.029507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290089, 44.395557, 47.706848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141985, 44.079861, 47.902805>,  <31.053123, 43.890442, 48.020382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141985, 44.079861, 47.902805>,  <31.290089, 44.395557, 47.706848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141985, 44.079861, 47.902805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327420, -0.604414, -0.726278,
		0.869313, -0.108509, 0.482204,
		-0.370258, -0.789246, 0.489897,
		31.030907, 43.843086, 48.049774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802328, 43.991394, 47.788017>,  <31.290089, 44.395557, 47.706848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802328, 43.991394, 47.788017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486977, 43.746731, 47.814327>,  <31.297766, 43.599934, 47.830112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486977, 43.746731, 47.814327>,  <31.802328, 43.991394, 47.788017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486977, 43.746731, 47.814327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330262, -0.511019, -0.793591,
		0.519021, -0.603929, 0.604885,
		-0.788381, -0.611661, 0.065775,
		31.250462, 43.563232, 47.834061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124268, 43.294865, 47.788174>,  <31.802328, 43.991394, 47.788017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124268, 43.294865, 47.788174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740255, 43.213253, 47.711525>,  <31.509850, 43.164288, 47.665535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740255, 43.213253, 47.711525>,  <32.124268, 43.294865, 47.788174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740255, 43.213253, 47.711525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275636, -0.569984, -0.774043,
		0.048701, -0.795922, 0.603437,
		-0.960028, -0.204025, -0.191626,
		31.452248, 43.152046, 47.654037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102589, 42.652424, 47.826317>,  <32.124268, 43.294865, 47.788174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102589, 42.652424, 47.826317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780178, 42.724476, 47.600796>,  <31.586733, 42.767708, 47.465481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780178, 42.724476, 47.600796>,  <32.102589, 42.652424, 47.826317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780178, 42.724476, 47.600796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341707, -0.636169, -0.691755,
		-0.483280, -0.750229, 0.451218,
		-0.806026, 0.180127, -0.563806,
		31.538370, 42.778515, 47.431652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972092, 42.064968, 47.545959>,  <32.102589, 42.652424, 47.826317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972092, 42.064968, 47.545959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.768044, 42.295425, 47.290512>,  <31.645615, 42.433701, 47.137241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.768044, 42.295425, 47.290512>,  <31.972092, 42.064968, 47.545959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768044, 42.295425, 47.290512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430835, -0.471465, -0.769482,
		-0.744417, -0.667670, -0.007717,
		-0.510122, 0.576140, -0.638622,
		31.615007, 42.468266, 47.098927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780754, 41.562801, 47.031601>,  <31.972092, 42.064968, 47.545959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780754, 41.562801, 47.031601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759462, 41.916958, 46.846886>,  <31.746687, 42.129452, 46.736057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759462, 41.916958, 46.846886>,  <31.780754, 41.562801, 47.031601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759462, 41.916958, 46.846886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210569, -0.442096, -0.871902,
		-0.976129, -0.143649, -0.162903,
		-0.053229, 0.885390, -0.461791,
		31.743494, 42.182575, 46.708347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549097, 41.422569, 46.369102>,  <31.780754, 41.562801, 47.031601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549097, 41.422569, 46.369102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.692968, 41.792305, 46.318142>,  <31.779291, 42.014145, 46.287567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.692968, 41.792305, 46.318142>,  <31.549097, 41.422569, 46.369102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692968, 41.792305, 46.318142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295603, -0.242386, -0.924050,
		-0.885014, 0.294701, -0.360418,
		0.359678, 0.924338, -0.127401,
		31.800873, 42.069607, 46.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291773, 41.705151, 45.659958>,  <31.549097, 41.422569, 46.369102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291773, 41.705151, 45.659958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585207, 41.963085, 45.745789>,  <31.761267, 42.117847, 45.797287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585207, 41.963085, 45.745789>,  <31.291773, 41.705151, 45.659958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585207, 41.963085, 45.745789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311134, -0.037964, -0.949607,
		-0.604194, 0.763378, -0.228480,
		0.733584, 0.644835, 0.214575,
		31.805283, 42.156536, 45.810162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248219, 42.324310, 45.260376>,  <31.291773, 41.705151, 45.659958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248219, 42.324310, 45.260376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627714, 42.250202, 45.362804>,  <31.855412, 42.205738, 45.424259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627714, 42.250202, 45.362804>,  <31.248219, 42.324310, 45.260376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627714, 42.250202, 45.362804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248598, -0.062886, -0.966563,
		0.195179, 0.980673, -0.013604,
		0.948739, -0.185270, 0.256067,
		31.912336, 42.194622, 45.439625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676876, 42.769348, 44.783367>,  <31.248219, 42.324310, 45.260376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676876, 42.769348, 44.783367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936028, 42.513405, 44.948696>,  <32.091518, 42.359837, 45.047894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.936028, 42.513405, 44.948696>,  <31.676876, 42.769348, 44.783367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936028, 42.513405, 44.948696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399165, -0.176961, -0.899640,
		0.648786, 0.747839, 0.140761,
		0.647877, -0.639861, 0.413321,
		32.130390, 42.321445, 45.072693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386261, 42.972019, 44.503113>,  <31.676876, 42.769348, 44.783367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386261, 42.972019, 44.503113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389545, 42.587120, 44.611938>,  <32.391518, 42.356182, 44.677235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389545, 42.587120, 44.611938>,  <32.386261, 42.972019, 44.503113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389545, 42.587120, 44.611938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354149, -0.251639, -0.900698,
		0.935153, 0.103747, 0.338711,
		0.008212, -0.962244, 0.272062,
		32.392010, 42.298447, 44.693558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967613, 42.662865, 44.081127>,  <32.386261, 42.972019, 44.503113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967613, 42.662865, 44.081127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766518, 42.347767, 44.223511>,  <32.645863, 42.158707, 44.308941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766518, 42.347767, 44.223511>,  <32.967613, 42.662865, 44.081127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766518, 42.347767, 44.223511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128276, -0.475209, -0.870472,
		0.854869, -0.391956, 0.339954,
		-0.502736, -0.787748, 0.355963,
		32.615696, 42.111443, 44.330299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394115, 42.064865, 44.000111>,  <32.967613, 42.662865, 44.081127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394115, 42.064865, 44.000111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026840, 41.908703, 44.026974>,  <32.806477, 41.815006, 44.043091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026840, 41.908703, 44.026974>,  <33.394115, 42.064865, 44.000111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026840, 41.908703, 44.026974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186782, -0.576158, -0.795710,
		0.349346, -0.718068, 0.601943,
		-0.918188, -0.390410, 0.067156,
		32.751385, 41.791580, 44.047119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.184044, 26.892742, 34.948982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887520, 26.992662, 34.699806>,  <40.709606, 27.052614, 34.550301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887520, 26.992662, 34.699806>,  <41.184044, 26.892742, 34.948982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887520, 26.992662, 34.699806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110666, 0.869958, 0.480547,
		0.661975, 0.425173, -0.617265,
		-0.741311, 0.249800, -0.622943,
		40.665127, 27.067602, 34.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358444, 27.411718, 34.544018>,  <41.184044, 26.892742, 34.948982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358444, 27.411718, 34.544018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958515, 27.416779, 34.549526>,  <40.718555, 27.419815, 34.552830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958515, 27.416779, 34.549526>,  <41.358444, 27.411718, 34.544018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958515, 27.416779, 34.549526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017718, 0.876387, 0.481281,
		-0.005977, 0.481441, -0.876458,
		-0.999825, 0.012652, 0.013769,
		40.658569, 27.420574, 34.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202103, 28.099976, 34.347015>,  <41.358444, 27.411718, 34.544018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202103, 28.099976, 34.347015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.867687, 27.979101, 34.530197>,  <40.667038, 27.906576, 34.640106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.867687, 27.979101, 34.530197>,  <41.202103, 28.099976, 34.347015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867687, 27.979101, 34.530197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159502, 0.932473, 0.324118,
		-0.524978, 0.197930, -0.827781,
		-0.836037, -0.302188, 0.457958,
		40.616875, 27.888445, 34.667583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670803, 28.628574, 34.145111>,  <41.202103, 28.099976, 34.347015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670803, 28.628574, 34.145111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604065, 28.428848, 34.485191>,  <40.564022, 28.309013, 34.689240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604065, 28.428848, 34.485191>,  <40.670803, 28.628574, 34.145111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604065, 28.428848, 34.485191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023340, 0.864049, 0.502867,
		-0.985707, 0.064058, -0.155817,
		-0.166846, -0.499316, 0.850204,
		40.554012, 28.279053, 34.740253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286217, 29.079784, 34.548244>,  <40.670803, 28.628574, 34.145111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286217, 29.079784, 34.548244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381157, 28.809170, 34.827091>,  <40.438122, 28.646801, 34.994400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381157, 28.809170, 34.827091>,  <40.286217, 29.079784, 34.548244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381157, 28.809170, 34.827091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112029, 0.731894, 0.672146,
		-0.964943, -0.081436, 0.249506,
		0.237349, -0.676535, 0.697113,
		40.452362, 28.606209, 35.036224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762157, 29.206648, 35.011570>,  <40.286217, 29.079784, 34.548244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762157, 29.206648, 35.011570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099819, 29.078110, 35.183212>,  <40.302418, 29.000986, 35.286198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099819, 29.078110, 35.183212>,  <39.762157, 29.206648, 35.011570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099819, 29.078110, 35.183212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021651, 0.820216, 0.571644,
		-0.535656, -0.473268, 0.699350,
		0.844159, -0.321346, 0.429107,
		40.353065, 28.981707, 35.311943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674839, 29.344690, 35.719147>,  <39.762157, 29.206648, 35.011570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674839, 29.344690, 35.719147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072651, 29.310438, 35.695225>,  <40.311337, 29.289886, 35.680870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072651, 29.310438, 35.695225>,  <39.674839, 29.344690, 35.719147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072651, 29.310438, 35.695225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104411, 0.799598, 0.591390,
		-0.002817, -0.594400, 0.804165,
		0.994530, -0.085629, -0.059809,
		40.371010, 29.284750, 35.677280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916370, 29.369686, 36.388535>,  <39.674839, 29.344690, 35.719147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916370, 29.369686, 36.388535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232960, 29.448463, 36.157089>,  <40.422913, 29.495729, 36.018223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232960, 29.448463, 36.157089>,  <39.916370, 29.369686, 36.388535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232960, 29.448463, 36.157089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342509, 0.641153, 0.686739,
		0.506224, -0.741713, 0.440000,
		0.791470, 0.196940, -0.578610,
		40.470402, 29.507545, 35.983505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438980, 29.437550, 36.817760>,  <39.916370, 29.369686, 36.388535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438980, 29.437550, 36.817760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585148, 29.619993, 36.493183>,  <40.672848, 29.729460, 36.298439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585148, 29.619993, 36.493183>,  <40.438980, 29.437550, 36.817760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585148, 29.619993, 36.493183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362952, 0.732912, 0.575418,
		0.857167, -0.504782, 0.102274,
		0.365419, 0.456109, -0.811439,
		40.694775, 29.756826, 36.249752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043491, 29.717876, 37.018242>,  <40.438980, 29.437550, 36.817760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043491, 29.717876, 37.018242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.995461, 29.931234, 36.683323>,  <40.966640, 30.059250, 36.482372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.995461, 29.931234, 36.683323>,  <41.043491, 29.717876, 37.018242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995461, 29.931234, 36.683323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476451, 0.770887, 0.422761,
		0.870962, -0.348168, -0.346704,
		-0.120078, 0.533397, -0.837299,
		40.959438, 30.091253, 36.432133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753716, 29.996943, 36.882092>,  <41.043491, 29.717876, 37.018242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753716, 29.996943, 36.882092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489639, 30.215509, 36.675957>,  <41.331192, 30.346649, 36.552277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489639, 30.215509, 36.675957>,  <41.753716, 29.996943, 36.882092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489639, 30.215509, 36.675957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489695, 0.833374, 0.256294,
		0.569514, -0.083155, -0.817765,
		-0.660192, 0.546418, -0.515339,
		41.291580, 30.379435, 36.521355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130615, 30.495872, 36.634300>,  <41.753716, 29.996943, 36.882092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130615, 30.495872, 36.634300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768879, 30.645405, 36.551914>,  <41.551838, 30.735125, 36.502483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768879, 30.645405, 36.551914>,  <42.130615, 30.495872, 36.634300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768879, 30.645405, 36.551914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343644, 0.923932, 0.168105,
		0.253142, 0.081244, -0.964012,
		-0.904339, 0.373831, -0.205967,
		41.497578, 30.757553, 36.490124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151024, 31.030512, 36.106987>,  <42.130615, 30.495872, 36.634300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151024, 31.030512, 36.106987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.809662, 31.106960, 36.300961>,  <41.604843, 31.152830, 36.417347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.809662, 31.106960, 36.300961>,  <42.151024, 31.030512, 36.106987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809662, 31.106960, 36.300961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272706, 0.956577, 0.102916,
		-0.444211, 0.220075, -0.868472,
		-0.853410, 0.191121, 0.484938,
		41.553638, 31.164297, 36.446442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930962, 31.612736, 35.851509>,  <42.151024, 31.030512, 36.106987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930962, 31.612736, 35.851509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726475, 31.621946, 36.195168>,  <41.603783, 31.627474, 36.401363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726475, 31.621946, 36.195168>,  <41.930962, 31.612736, 35.851509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726475, 31.621946, 36.195168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154473, 0.985824, 0.065492,
		-0.845456, 0.166195, -0.507526,
		-0.511216, 0.023029, 0.859143,
		41.573109, 31.628855, 36.452911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410980, 32.183449, 35.837948>,  <41.930962, 31.612736, 35.851509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410980, 32.183449, 35.837948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470730, 32.092182, 36.222786>,  <41.506580, 32.037422, 36.453690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470730, 32.092182, 36.222786>,  <41.410980, 32.183449, 35.837948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470730, 32.092182, 36.222786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043226, 0.973588, 0.224183,
		-0.987835, 0.008100, 0.155292,
		0.149374, -0.228169, 0.962095,
		41.515541, 32.023731, 36.511414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049679, 32.710865, 36.264858>,  <41.410980, 32.183449, 35.837948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049679, 32.710865, 36.264858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.333626, 32.542679, 36.490883>,  <41.503994, 32.441769, 36.626499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.333626, 32.542679, 36.490883>,  <41.049679, 32.710865, 36.264858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333626, 32.542679, 36.490883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269128, 0.903313, 0.334058,
		-0.650887, -0.085063, 0.754394,
		0.709870, -0.420463, 0.565062,
		41.546585, 32.416538, 36.660400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204754, 33.251095, 36.618294>,  <41.049679, 32.710865, 36.264858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204754, 33.251095, 36.618294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482880, 33.000542, 36.759251>,  <41.649757, 32.850208, 36.843822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482880, 33.000542, 36.759251>,  <41.204754, 33.251095, 36.618294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482880, 33.000542, 36.759251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472624, 0.767895, 0.432394,
		-0.541441, -0.134105, 0.829975,
		0.695319, -0.626382, 0.352389,
		41.691475, 32.812626, 36.864967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272652, 33.400021, 37.387272>,  <41.204754, 33.251095, 36.618294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272652, 33.400021, 37.387272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597755, 33.231499, 37.226311>,  <41.792816, 33.130386, 37.129734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597755, 33.231499, 37.226311>,  <41.272652, 33.400021, 37.387272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597755, 33.231499, 37.226311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548081, 0.787140, 0.282875,
		0.197571, -0.450458, 0.870662,
		0.812757, -0.421305, -0.402403,
		41.841583, 33.105106, 37.105591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704739, 33.613087, 37.857468>,  <41.272652, 33.400021, 37.387272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704739, 33.613087, 37.857468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932251, 33.519581, 37.542042>,  <42.068760, 33.463478, 37.352787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932251, 33.519581, 37.542042>,  <41.704739, 33.613087, 37.857468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932251, 33.519581, 37.542042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593477, 0.780442, 0.196710,
		0.569447, -0.579883, 0.582637,
		0.568784, -0.233766, -0.788567,
		42.102886, 33.449451, 37.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418861, 33.505939, 38.106998>,  <41.704739, 33.613087, 37.857468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418861, 33.505939, 38.106998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419010, 33.633183, 37.727776>,  <42.419098, 33.709526, 37.500244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419010, 33.633183, 37.727776>,  <42.418861, 33.505939, 38.106998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419010, 33.633183, 37.727776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706678, 0.670699, 0.225319,
		0.707536, -0.670053, -0.224549,
		0.000371, 0.318105, -0.948055,
		42.419121, 33.728615, 37.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173737, 33.574478, 37.951431>,  <42.418861, 33.505939, 38.106998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173737, 33.574478, 37.951431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958374, 33.778736, 37.683292>,  <42.829159, 33.901291, 37.522411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958374, 33.778736, 37.683292>,  <43.173737, 33.574478, 37.951431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958374, 33.778736, 37.683292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549467, 0.815857, 0.180179,
		0.638912, -0.271323, -0.719844,
		-0.538403, 0.510649, -0.670344,
		42.796852, 33.931931, 37.482189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542641, 33.900391, 37.444641>,  <43.173737, 33.574478, 37.951431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542641, 33.900391, 37.444641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211117, 34.122532, 37.417328>,  <43.012203, 34.255817, 37.400940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211117, 34.122532, 37.417328>,  <43.542641, 33.900391, 37.444641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211117, 34.122532, 37.417328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559441, 0.824694, -0.083105,
		0.010158, -0.107077, -0.994199,
		-0.828808, 0.555351, -0.068280,
		42.962475, 34.289139, 37.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614052, 33.132988, 37.321987>,  <43.542641, 33.900391, 37.444641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614052, 33.132988, 37.321987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860107, 33.420265, 37.191879>,  <44.007740, 33.592632, 37.113815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860107, 33.420265, 37.191879>,  <43.614052, 33.132988, 37.321987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860107, 33.420265, 37.191879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242260, -0.564785, -0.788877,
		-0.750274, 0.406471, -0.521412,
		0.615142, 0.718191, -0.325272,
		44.044651, 33.635723, 37.094299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397636, 33.307243, 36.729988>,  <43.614052, 33.132988, 37.321987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397636, 33.307243, 36.729988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783436, 33.412247, 36.718479>,  <44.014915, 33.475250, 36.711575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783436, 33.412247, 36.718479>,  <43.397636, 33.307243, 36.729988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783436, 33.412247, 36.718479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121950, -0.539385, -0.833182,
		-0.234235, 0.800096, -0.552250,
		0.964501, 0.262508, -0.028771,
		44.072784, 33.490997, 36.709846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530128, 33.644829, 36.110401>,  <43.397636, 33.307243, 36.729988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530128, 33.644829, 36.110401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870487, 33.478535, 36.238865>,  <44.074703, 33.378757, 36.315945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870487, 33.478535, 36.238865>,  <43.530128, 33.644829, 36.110401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870487, 33.478535, 36.238865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115572, -0.448227, -0.886418,
		0.512469, 0.791364, -0.333345,
		0.850893, -0.415736, 0.321162,
		44.125755, 33.353813, 36.335213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901810, 33.680202, 35.534363>,  <43.530128, 33.644829, 36.110401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901810, 33.680202, 35.534363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121021, 33.437977, 35.765175>,  <44.252548, 33.292641, 35.903660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121021, 33.437977, 35.765175>,  <43.901810, 33.680202, 35.534363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121021, 33.437977, 35.765175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130091, -0.619744, -0.773947,
		0.826283, 0.499210, -0.260858,
		0.548027, -0.605564, 0.577026,
		44.285431, 33.256310, 35.938282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546661, 33.463268, 35.040546>,  <43.901810, 33.680202, 35.534363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546661, 33.463268, 35.040546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490795, 33.195400, 35.332310>,  <44.457275, 33.034679, 35.507366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490795, 33.195400, 35.332310>,  <44.546661, 33.463268, 35.040546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490795, 33.195400, 35.332310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005956, -0.736043, -0.676908,
		0.990181, -0.098886, 0.098812,
		-0.139667, -0.669673, 0.729405,
		44.448895, 32.994499, 35.551132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998852, 32.908936, 34.855675>,  <44.546661, 33.463268, 35.040546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998852, 32.908936, 34.855675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.702290, 32.786045, 35.094311>,  <44.524353, 32.712311, 35.237492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.702290, 32.786045, 35.094311>,  <44.998852, 32.908936, 34.855675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702290, 32.786045, 35.094311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231964, -0.716902, -0.657453,
		0.629688, -0.625829, 0.460251,
		-0.741408, -0.307229, 0.596594,
		44.479866, 32.693878, 35.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119076, 32.256542, 34.768318>,  <44.998852, 32.908936, 34.855675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119076, 32.256542, 34.768318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759911, 32.256790, 34.944389>,  <44.544411, 32.256939, 35.050034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759911, 32.256790, 34.944389>,  <45.119076, 32.256542, 34.768318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759911, 32.256790, 34.944389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274822, -0.781942, -0.559500,
		0.343844, -0.623351, 0.702285,
		-0.897911, 0.000622, 0.440177,
		44.490536, 32.256977, 35.076443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014500, 31.605015, 35.112320>,  <45.119076, 32.256542, 34.768318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014500, 31.605015, 35.112320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647690, 31.747049, 35.039673>,  <44.427605, 31.832270, 34.996082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647690, 31.747049, 35.039673>,  <45.014500, 31.605015, 35.112320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647690, 31.747049, 35.039673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273646, -0.891437, -0.361189,
		-0.290157, -0.281518, 0.914635,
		-0.917021, 0.355088, -0.181621,
		44.372585, 31.853575, 34.985188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597286, 31.156916, 35.328587>,  <45.014500, 31.605015, 35.112320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597286, 31.156916, 35.328587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312943, 31.320599, 35.099773>,  <44.142334, 31.418808, 34.962486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312943, 31.320599, 35.099773>,  <44.597286, 31.156916, 35.328587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312943, 31.320599, 35.099773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161782, -0.886647, -0.433224,
		-0.684472, -0.215418, 0.696486,
		-0.710862, 0.409209, -0.572034,
		44.099686, 31.443361, 34.928162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988827, 30.748234, 35.429787>,  <44.597286, 31.156916, 35.328587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988827, 30.748234, 35.429787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932751, 30.936033, 35.081093>,  <43.899105, 31.048712, 34.871876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932751, 30.936033, 35.081093>,  <43.988827, 30.748234, 35.429787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932751, 30.936033, 35.081093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288454, -0.861603, -0.417654,
		-0.947176, 0.192906, 0.256213,
		-0.140186, 0.469497, -0.871734,
		43.890694, 31.076883, 34.819572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400612, 30.420853, 35.072960>,  <43.988827, 30.748234, 35.429787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400612, 30.420853, 35.072960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550541, 30.644953, 34.777493>,  <43.640499, 30.779413, 34.600212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550541, 30.644953, 34.777493>,  <43.400612, 30.420853, 35.072960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550541, 30.644953, 34.777493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149110, -0.749951, -0.644469,
		-0.915027, 0.351704, -0.197559,
		0.374822, 0.560249, -0.738668,
		43.662987, 30.813028, 34.555893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849831, 30.511677, 34.634834>,  <43.400612, 30.420853, 35.072960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849831, 30.511677, 34.634834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194630, 30.519892, 34.432236>,  <43.401508, 30.524820, 34.310677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194630, 30.519892, 34.432236>,  <42.849831, 30.511677, 34.634834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194630, 30.519892, 34.432236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353168, -0.692444, -0.629121,
		-0.363641, 0.721179, -0.589632,
		0.861996, 0.020535, -0.506499,
		43.453228, 30.526052, 34.280285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748001, 30.539032, 33.911289>,  <42.849831, 30.511677, 34.634834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748001, 30.539032, 33.911289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119892, 30.395531, 33.944508>,  <43.343029, 30.309431, 33.964439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119892, 30.395531, 33.944508>,  <42.748001, 30.539032, 33.911289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119892, 30.395531, 33.944508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274673, -0.825840, -0.492487,
		0.245263, 0.435070, -0.866349,
		0.929731, -0.358752, 0.083046,
		43.398811, 30.287905, 33.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806610, 30.295908, 33.268230>,  <42.748001, 30.539032, 33.911289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806610, 30.295908, 33.268230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062569, 30.103331, 33.507812>,  <43.216145, 29.987785, 33.651562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062569, 30.103331, 33.507812>,  <42.806610, 30.295908, 33.268230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062569, 30.103331, 33.507812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350335, -0.876477, -0.330233,
		0.683957, 0.001481, -0.729521,
		0.639897, -0.481441, 0.598954,
		43.254539, 29.958899, 33.687500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117199, 29.772213, 32.895985>,  <42.806610, 30.295908, 33.268230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117199, 29.772213, 32.895985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196491, 29.638716, 33.264618>,  <43.244068, 29.558617, 33.485798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196491, 29.638716, 33.264618>,  <43.117199, 29.772213, 32.895985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196491, 29.638716, 33.264618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184693, -0.936119, -0.299281,
		0.962597, -0.110884, -0.247208,
		0.198231, -0.333744, 0.921585,
		43.255962, 29.538593, 33.541092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514675, 29.224890, 32.732288>,  <43.117199, 29.772213, 32.895985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514675, 29.224890, 32.732288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405125, 29.196547, 33.115948>,  <43.339394, 29.179541, 33.346146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405125, 29.196547, 33.115948>,  <43.514675, 29.224890, 32.732288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405125, 29.196547, 33.115948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114702, -0.987758, -0.105723,
		0.954902, -0.138971, 0.262393,
		-0.273873, -0.070858, 0.959152,
		43.322964, 29.175289, 33.403694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849888, 28.616190, 32.977325>,  <43.514675, 29.224890, 32.732288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849888, 28.616190, 32.977325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518047, 28.679430, 33.191525>,  <43.318943, 28.717375, 33.320045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518047, 28.679430, 33.191525>,  <43.849888, 28.616190, 32.977325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518047, 28.679430, 33.191525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250882, -0.962356, -0.104545,
		0.498814, -0.221078, 0.838039,
		-0.829604, 0.158100, 0.535501,
		43.269165, 28.726860, 33.352177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851429, 27.998779, 33.298771>,  <43.849888, 28.616190, 32.977325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851429, 27.998779, 33.298771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491112, 28.147360, 33.388737>,  <43.274921, 28.236507, 33.442719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491112, 28.147360, 33.388737>,  <43.851429, 27.998779, 33.298771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491112, 28.147360, 33.388737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411802, -0.895075, -0.171054,
		0.137781, -0.246707, 0.959246,
		-0.900797, 0.371451, 0.224918,
		43.220871, 28.258795, 33.456211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604370, 27.504417, 33.729752>,  <43.851429, 27.998779, 33.298771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604370, 27.504417, 33.729752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279377, 27.699907, 33.602619>,  <43.084381, 27.817202, 33.526340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279377, 27.699907, 33.602619>,  <43.604370, 27.504417, 33.729752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279377, 27.699907, 33.602619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467276, -0.871932, -0.146246,
		-0.348603, 0.029693, 0.936800,
		-0.812483, 0.488726, -0.317833,
		43.035633, 27.846525, 33.507271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089031, 27.326769, 34.185013>,  <43.604370, 27.504417, 33.729752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089031, 27.326769, 34.185013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916386, 27.440514, 33.842587>,  <42.812798, 27.508760, 33.637131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916386, 27.440514, 33.842587>,  <43.089031, 27.326769, 34.185013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916386, 27.440514, 33.842587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589813, -0.807008, 0.029313,
		-0.682514, 0.517570, 0.516038,
		-0.431618, 0.284360, -0.856064,
		42.786900, 27.525822, 33.585766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.763081, 38.981441, 41.119129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429245, 38.766308, 41.166790>,  <36.228943, 38.637226, 41.195385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429245, 38.766308, 41.166790>,  <36.763081, 38.981441, 41.119129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429245, 38.766308, 41.166790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333090, -0.664965, -0.668485,
		0.438767, -0.518221, 0.734119,
		-0.834586, -0.537837, 0.119151,
		36.178867, 38.604958, 41.202534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934978, 38.277546, 40.935158>,  <36.763081, 38.981441, 41.119129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934978, 38.277546, 40.935158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535999, 38.264935, 40.909561>,  <36.296612, 38.257366, 40.894203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535999, 38.264935, 40.909561>,  <36.934978, 38.277546, 40.935158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535999, 38.264935, 40.909561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071277, -0.402618, -0.912589,
		0.003008, -0.914825, 0.403840,
		-0.997452, -0.031529, -0.063995,
		36.236763, 38.255474, 40.890362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780499, 37.565624, 40.615658>,  <36.934978, 38.277546, 40.935158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780499, 37.565624, 40.615658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449562, 37.772079, 40.527016>,  <36.250999, 37.895950, 40.473831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449562, 37.772079, 40.527016>,  <36.780499, 37.565624, 40.615658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449562, 37.772079, 40.527016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042050, -0.336507, -0.940742,
		-0.560121, -0.787634, 0.256704,
		-0.827343, 0.516135, -0.221605,
		36.201359, 37.926922, 40.460533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321644, 37.092014, 40.457237>,  <36.780499, 37.565624, 40.615658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321644, 37.092014, 40.457237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176277, 37.433613, 40.308311>,  <36.089058, 37.638573, 40.218956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176277, 37.433613, 40.308311>,  <36.321644, 37.092014, 40.457237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176277, 37.433613, 40.308311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116729, -0.438225, -0.891254,
		-0.924287, -0.280434, 0.258943,
		-0.363413, 0.854000, -0.372310,
		36.067253, 37.689812, 40.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888721, 36.889362, 39.869949>,  <36.321644, 37.092014, 40.457237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888721, 36.889362, 39.869949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910194, 37.285473, 39.818611>,  <35.923077, 37.523140, 39.787807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910194, 37.285473, 39.818611>,  <35.888721, 36.889362, 39.869949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910194, 37.285473, 39.818611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087821, -0.123346, -0.988470,
		-0.994689, 0.064332, 0.080346,
		0.053680, 0.990276, -0.128341,
		35.926300, 37.582558, 39.780109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311665, 37.083580, 39.508984>,  <35.888721, 36.889362, 39.869949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311665, 37.083580, 39.508984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586739, 37.367416, 39.447582>,  <35.751785, 37.537720, 39.410740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586739, 37.367416, 39.447582>,  <35.311665, 37.083580, 39.508984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586739, 37.367416, 39.447582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002288, -0.209318, -0.977845,
		-0.726003, 0.672803, -0.142322,
		0.687688, 0.709593, -0.153505,
		35.793045, 37.580296, 39.401531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133366, 37.520184, 38.830147>,  <35.311665, 37.083580, 39.508984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133366, 37.520184, 38.830147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519718, 37.576359, 38.917183>,  <35.751530, 37.610065, 38.969406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519718, 37.576359, 38.917183>,  <35.133366, 37.520184, 38.830147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519718, 37.576359, 38.917183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241825, -0.188405, -0.951853,
		-0.092684, 0.971998, -0.215939,
		0.965883, 0.140441, 0.217592,
		35.809483, 37.618492, 38.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452553, 37.798031, 38.222923>,  <35.133366, 37.520184, 38.830147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452553, 37.798031, 38.222923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786480, 37.688332, 38.413864>,  <35.986835, 37.622513, 38.528427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786480, 37.688332, 38.413864>,  <35.452553, 37.798031, 38.222923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786480, 37.688332, 38.413864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437881, -0.194756, -0.877685,
		0.333671, 0.941731, -0.042497,
		0.834819, -0.274249, 0.477351,
		36.036926, 37.606056, 38.557068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059589, 38.075859, 37.858807>,  <35.452553, 37.798031, 38.222923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059589, 38.075859, 37.858807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212234, 37.767338, 38.062553>,  <36.303822, 37.582226, 38.184803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212234, 37.767338, 38.062553>,  <36.059589, 38.075859, 37.858807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212234, 37.767338, 38.062553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550265, -0.253205, -0.795673,
		0.742682, 0.583929, 0.327796,
		0.381617, -0.771307, 0.509367,
		36.326721, 37.535946, 38.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725838, 38.066071, 37.650501>,  <36.059589, 38.075859, 37.858807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725838, 38.066071, 37.650501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692677, 37.695873, 37.798336>,  <36.672779, 37.473755, 37.887039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692677, 37.695873, 37.798336>,  <36.725838, 38.066071, 37.650501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692677, 37.695873, 37.798336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453817, -0.365243, -0.812803,
		0.887230, 0.100339, 0.450284,
		-0.082907, -0.925489, 0.369590,
		36.667805, 37.418228, 37.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364826, 37.705303, 37.615227>,  <36.725838, 38.066071, 37.650501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364826, 37.705303, 37.615227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066143, 37.439251, 37.617683>,  <36.886932, 37.279621, 37.619156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066143, 37.439251, 37.617683>,  <37.364826, 37.705303, 37.615227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066143, 37.439251, 37.617683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388021, -0.443072, -0.808162,
		0.540253, -0.601075, 0.588927,
		-0.746704, -0.665128, 0.006141,
		36.842133, 37.239712, 37.619526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712318, 36.992363, 37.591312>,  <37.364826, 37.705303, 37.615227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712318, 36.992363, 37.591312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337284, 36.890736, 37.496326>,  <37.112263, 36.829762, 37.439335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337284, 36.890736, 37.496326>,  <37.712318, 36.992363, 37.591312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337284, 36.890736, 37.496326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341463, -0.543221, -0.767016,
		0.065880, -0.800225, 0.596070,
		-0.937583, -0.254067, -0.237460,
		37.056007, 36.814514, 37.425087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600136, 36.237637, 37.557590>,  <37.712318, 36.992363, 37.591312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600136, 36.237637, 37.557590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310707, 36.381279, 37.321796>,  <37.137051, 36.467464, 37.180321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310707, 36.381279, 37.321796>,  <37.600136, 36.237637, 37.557590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310707, 36.381279, 37.321796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245464, -0.664317, -0.705996,
		-0.645135, -0.655532, 0.392528,
		-0.723566, 0.359111, -0.589484,
		37.093636, 36.489014, 37.144951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706490, 35.513596, 37.384987>,  <37.600136, 36.237637, 37.557590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706490, 35.513596, 37.384987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557201, 35.381252, 37.731682>,  <37.467628, 35.301846, 37.939701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557201, 35.381252, 37.731682>,  <37.706490, 35.513596, 37.384987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557201, 35.381252, 37.731682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433556, 0.888155, 0.152347,
		-0.820205, -0.318921, -0.474923,
		-0.373219, -0.330861, 0.866740,
		37.445236, 35.281994, 37.991703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020428, 34.935329, 37.816040>,  <37.706490, 35.513596, 37.384987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020428, 34.935329, 37.816040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208183, 34.596748, 37.916599>,  <38.320835, 34.393600, 37.976933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208183, 34.596748, 37.916599>,  <38.020428, 34.935329, 37.816040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208183, 34.596748, 37.916599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529230, -0.041784, 0.847449,
		-0.706819, -0.530826, -0.467580,
		0.469385, -0.846451, 0.251395,
		38.348999, 34.342812, 37.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584423, 34.493172, 37.981812>,  <38.020428, 34.935329, 37.816040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584423, 34.493172, 37.981812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909023, 34.413815, 38.201668>,  <38.103783, 34.366199, 38.333580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909023, 34.413815, 38.201668>,  <37.584423, 34.493172, 37.981812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909023, 34.413815, 38.201668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554336, 0.036200, 0.831505,
		-0.184865, -0.979453, -0.080602,
		0.811502, -0.198397, 0.549638,
		38.152473, 34.354298, 38.366558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355160, 34.281517, 38.529945>,  <37.584423, 34.493172, 37.981812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355160, 34.281517, 38.529945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723125, 34.277927, 38.686749>,  <37.943905, 34.275772, 38.780830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723125, 34.277927, 38.686749>,  <37.355160, 34.281517, 38.529945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723125, 34.277927, 38.686749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392040, -0.040325, 0.919064,
		0.007560, -0.999146, -0.040613,
		0.919917, -0.008974, 0.392010,
		37.999100, 34.275234, 38.804352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481121, 33.615757, 39.015305>,  <37.355160, 34.281517, 38.529945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481121, 33.615757, 39.015305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745995, 33.895103, 39.123970>,  <37.904919, 34.062714, 39.189167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745995, 33.895103, 39.123970>,  <37.481121, 33.615757, 39.015305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745995, 33.895103, 39.123970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, -0.077799, 0.948500,
		0.683538, -0.711497, 0.162935,
		0.662179, 0.698369, 0.271661,
		37.944649, 34.104614, 39.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589317, 33.465595, 39.763031>,  <37.481121, 33.615757, 39.015305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589317, 33.465595, 39.763031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698036, 33.846180, 39.705276>,  <37.763268, 34.074532, 39.670624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698036, 33.846180, 39.705276>,  <37.589317, 33.465595, 39.763031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698036, 33.846180, 39.705276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284011, 0.222654, 0.932611,
		0.919493, -0.212469, 0.330741,
		0.271792, 0.951463, -0.144386,
		37.779575, 34.131618, 39.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824463, 33.623520, 40.405155>,  <37.589317, 33.465595, 39.763031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824463, 33.623520, 40.405155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787201, 33.994118, 40.259315>,  <37.764843, 34.216476, 40.171814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787201, 33.994118, 40.259315>,  <37.824463, 33.623520, 40.405155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787201, 33.994118, 40.259315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223245, 0.337427, 0.914497,
		0.970300, 0.166588, 0.175401,
		-0.093159, 0.926494, -0.364596,
		37.759254, 34.272064, 40.149937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241817, 34.149410, 40.836399>,  <37.824463, 33.623520, 40.405155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241817, 34.149410, 40.836399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935299, 34.346848, 40.671890>,  <37.751389, 34.465309, 40.573185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935299, 34.346848, 40.671890>,  <38.241817, 34.149410, 40.836399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935299, 34.346848, 40.671890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339943, 0.231688, 0.911460,
		0.545181, 0.838262, -0.009748,
		-0.766300, 0.493597, -0.411274,
		37.705410, 34.494926, 40.548508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905621, 34.573708, 41.444664>,  <38.241817, 34.149410, 40.836399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905621, 34.573708, 41.444664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642120, 34.676491, 41.161816>,  <37.484020, 34.738159, 40.992107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642120, 34.676491, 41.161816>,  <37.905621, 34.573708, 41.444664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642120, 34.676491, 41.161816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574262, 0.435492, 0.693232,
		0.486075, 0.862740, -0.139322,
		-0.658752, 0.256955, -0.707120,
		37.444496, 34.753578, 40.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703831, 35.352039, 41.534065>,  <37.905621, 34.573708, 41.444664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703831, 35.352039, 41.534065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401791, 35.158081, 41.357563>,  <37.220566, 35.041706, 41.251663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401791, 35.158081, 41.357563>,  <37.703831, 35.352039, 41.534065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401791, 35.158081, 41.357563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638080, 0.388921, 0.664525,
		-0.150612, 0.783336, -0.603075,
		-0.755096, -0.484896, -0.441255,
		37.175262, 35.012611, 41.225185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172905, 35.894531, 41.372742>,  <37.703831, 35.352039, 41.534065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172905, 35.894531, 41.372742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979080, 35.547520, 41.327854>,  <36.862785, 35.339314, 41.300922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979080, 35.547520, 41.327854>,  <37.172905, 35.894531, 41.372742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979080, 35.547520, 41.327854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746845, 0.343496, 0.569415,
		-0.455435, 0.359731, -0.814354,
		-0.484563, -0.867528, -0.112223,
		36.833710, 35.287262, 41.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409172, 36.034138, 41.160931>,  <37.172905, 35.894531, 41.372742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409172, 36.034138, 41.160931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462181, 35.686619, 41.351772>,  <36.493988, 35.478107, 41.466278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462181, 35.686619, 41.351772>,  <36.409172, 36.034138, 41.160931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462181, 35.686619, 41.351772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845535, 0.152081, 0.511803,
		-0.517212, -0.471235, -0.714444,
		0.132526, -0.868798, 0.477103,
		36.501938, 35.425980, 41.494904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694675, 35.963261, 41.461330>,  <36.409172, 36.034138, 41.160931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694675, 35.963261, 41.461330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930553, 35.715977, 41.669209>,  <36.072079, 35.567608, 41.793938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930553, 35.715977, 41.669209>,  <35.694675, 35.963261, 41.461330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930553, 35.715977, 41.669209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496138, 0.230458, 0.837100,
		-0.637268, -0.751473, -0.170816,
		0.589692, -0.618205, 0.519697,
		36.107460, 35.530514, 41.825119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349098, 35.653534, 41.907188>,  <35.694675, 35.963261, 41.461330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349098, 35.653534, 41.907188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700256, 35.562939, 42.075947>,  <35.910954, 35.508583, 42.177200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700256, 35.562939, 42.075947>,  <35.349098, 35.653534, 41.907188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700256, 35.562939, 42.075947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333922, 0.341932, 0.878395,
		-0.343202, -0.912024, 0.224554,
		0.877900, -0.226484, 0.421897,
		35.963627, 35.494995, 42.202515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172840, 35.359985, 42.634525>,  <35.349098, 35.653534, 41.907188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172840, 35.359985, 42.634525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556267, 35.471489, 42.657970>,  <35.786324, 35.538391, 42.672039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556267, 35.471489, 42.657970>,  <35.172840, 35.359985, 42.634525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556267, 35.471489, 42.657970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130368, 0.246355, 0.960371,
		0.253303, -0.928216, 0.272492,
		0.958562, 0.278790, 0.058607,
		35.843838, 35.555115, 42.675556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908337, 34.675625, 42.917870>,  <35.172840, 35.359985, 42.634525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908337, 34.675625, 42.917870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545704, 34.507126, 42.907520>,  <34.328125, 34.406029, 42.901310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545704, 34.507126, 42.907520>,  <34.908337, 34.675625, 42.917870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545704, 34.507126, 42.907520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142932, -0.248766, -0.957959,
		0.397100, -0.872162, 0.285735,
		-0.906577, -0.421246, -0.025875,
		34.273731, 34.380753, 42.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915077, 34.137238, 42.505753>,  <34.908337, 34.675625, 42.917870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915077, 34.137238, 42.505753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522026, 34.211452, 42.507530>,  <34.286194, 34.255981, 42.508598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522026, 34.211452, 42.507530>,  <34.915077, 34.137238, 42.505753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522026, 34.211452, 42.507530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045848, -0.219481, -0.974539,
		-0.179830, -0.957814, 0.224175,
		-0.982629, 0.185530, 0.004445,
		34.227238, 34.267113, 42.508862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665379, 33.658520, 42.012001>,  <34.915077, 34.137238, 42.505753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665379, 33.658520, 42.012001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375465, 33.931404, 42.050533>,  <34.201519, 34.095135, 42.073654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375465, 33.931404, 42.050533>,  <34.665379, 33.658520, 42.012001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375465, 33.931404, 42.050533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161384, -0.032172, -0.986367,
		-0.669811, -0.730447, 0.133416,
		-0.724781, 0.682211, 0.096334,
		34.158031, 34.136066, 42.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052891, 33.368900, 41.653111>,  <34.665379, 33.658520, 42.012001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052891, 33.368900, 41.653111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977966, 33.760925, 41.679611>,  <33.933010, 33.996140, 41.695511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977966, 33.760925, 41.679611>,  <34.052891, 33.368900, 41.653111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977966, 33.760925, 41.679611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233521, 0.021085, -0.972123,
		-0.954139, -0.197562, 0.224916,
		-0.187312, 0.980064, 0.066253,
		33.921772, 34.054943, 41.699486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385860, 33.500881, 41.278267>,  <34.052891, 33.368900, 41.653111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385860, 33.500881, 41.278267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606476, 33.834282, 41.291439>,  <33.738846, 34.034321, 41.299343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606476, 33.834282, 41.291439>,  <33.385860, 33.500881, 41.278267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606476, 33.834282, 41.291439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103132, -0.028968, -0.994246,
		-0.827747, 0.551764, -0.101938,
		0.551542, 0.833497, 0.032927,
		33.771938, 34.084332, 41.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999992, 33.985931, 40.866386>,  <33.385860, 33.500881, 41.278267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999992, 33.985931, 40.866386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386959, 34.084660, 40.888966>,  <33.619141, 34.143894, 40.902515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386959, 34.084660, 40.888966>,  <32.999992, 33.985931, 40.866386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386959, 34.084660, 40.888966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018345, 0.154047, -0.987893,
		-0.252525, 0.956740, 0.144500,
		0.967416, 0.246817, 0.056452,
		33.677185, 34.158707, 40.905903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038486, 34.552509, 40.240768>,  <32.999992, 33.985931, 40.866386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038486, 34.552509, 40.240768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415977, 34.473717, 40.347038>,  <33.642471, 34.426441, 40.410801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415977, 34.473717, 40.347038>,  <33.038486, 34.552509, 40.240768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415977, 34.473717, 40.347038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280997, 0.053906, -0.958193,
		0.174422, 0.978925, 0.106222,
		0.943725, -0.196978, 0.265673,
		33.699097, 34.414623, 40.426739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414097, 35.019768, 39.927052>,  <33.038486, 34.552509, 40.240768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414097, 35.019768, 39.927052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659855, 34.709911, 39.986988>,  <33.807308, 34.523998, 40.022949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659855, 34.709911, 39.986988>,  <33.414097, 35.019768, 39.927052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659855, 34.709911, 39.986988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227659, -0.007786, -0.973710,
		0.755440, 0.632356, 0.171570,
		0.614395, -0.774639, 0.149844,
		33.844173, 34.477520, 40.031940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983093, 35.250427, 39.699341>,  <33.414097, 35.019768, 39.927052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983093, 35.250427, 39.699341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010731, 34.851532, 39.688377>,  <34.027313, 34.612194, 39.681797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010731, 34.851532, 39.688377>,  <33.983093, 35.250427, 39.699341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010731, 34.851532, 39.688377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240187, 0.043297, -0.969761,
		0.968265, 0.060420, 0.242514,
		0.069093, -0.997234, -0.027411,
		34.031460, 34.552361, 39.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660122, 35.103897, 39.420471>,  <33.983093, 35.250427, 39.699341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660122, 35.103897, 39.420471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487755, 34.748268, 39.358685>,  <34.384335, 34.534893, 39.321613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487755, 34.748268, 39.358685>,  <34.660122, 35.103897, 39.420471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487755, 34.748268, 39.358685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397177, -0.033161, -0.917142,
		0.810282, -0.456569, 0.367408,
		-0.430922, -0.889070, -0.154469,
		34.358479, 34.481548, 39.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179008, 34.598274, 39.090351>,  <34.660122, 35.103897, 39.420471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179008, 34.598274, 39.090351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817345, 34.455902, 38.995857>,  <34.600346, 34.370480, 38.939159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817345, 34.455902, 38.995857>,  <35.179008, 34.598274, 39.090351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817345, 34.455902, 38.995857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291266, -0.109104, -0.950400,
		0.312505, -0.928120, 0.202318,
		-0.904160, -0.355933, -0.236235,
		34.546097, 34.349121, 38.924988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290165, 34.066761, 38.550983>,  <35.179008, 34.598274, 39.090351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290165, 34.066761, 38.550983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905365, 34.172871, 38.525082>,  <34.674484, 34.236538, 38.509541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905365, 34.172871, 38.525082>,  <35.290165, 34.066761, 38.550983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905365, 34.172871, 38.525082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037660, -0.105970, -0.993656,
		-0.270453, -0.958332, 0.091952,
		-0.961997, 0.265274, -0.064750,
		34.616764, 34.252453, 38.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.469429, 35.443222, 46.532417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079136, 35.429127, 46.445980>,  <33.844959, 35.420670, 46.394115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.079136, 35.429127, 46.445980>,  <34.469429, 35.443222, 46.532417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079136, 35.429127, 46.445980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206470, -0.476552, -0.854558,
		-0.072867, -0.878440, 0.472265,
		-0.975736, -0.035239, -0.216096,
		33.786415, 35.418556, 46.381149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376598, 34.654312, 46.332870>,  <34.469429, 35.443222, 46.532417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376598, 34.654312, 46.332870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061344, 34.874214, 46.222153>,  <33.872192, 35.006153, 46.155724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.061344, 34.874214, 46.222153>,  <34.376598, 34.654312, 46.332870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061344, 34.874214, 46.222153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030984, -0.484573, -0.874202,
		-0.614722, -0.680413, 0.398943,
		-0.788135, 0.549752, -0.276795,
		33.824902, 35.039139, 46.139114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863655, 34.116196, 46.136391>,  <34.376598, 34.654312, 46.332870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863655, 34.116196, 46.136391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811920, 34.455730, 45.931355>,  <33.780880, 34.659451, 45.808331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811920, 34.455730, 45.931355>,  <33.863655, 34.116196, 46.136391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811920, 34.455730, 45.931355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045083, -0.521435, -0.852099,
		-0.990575, -0.087098, 0.105708,
		-0.129336, 0.848834, -0.512594,
		33.773121, 34.710381, 45.777576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336903, 33.990116, 45.581558>,  <33.863655, 34.116196, 46.136391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336903, 33.990116, 45.581558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553860, 34.307117, 45.470032>,  <33.684036, 34.497318, 45.403114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553860, 34.307117, 45.470032>,  <33.336903, 33.990116, 45.581558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553860, 34.307117, 45.470032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052754, -0.363354, -0.930156,
		-0.838465, 0.489804, -0.238889,
		0.542396, 0.792506, -0.278821,
		33.716579, 34.544868, 45.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002838, 34.110447, 44.812313>,  <33.336903, 33.990116, 45.581558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002838, 34.110447, 44.812313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339893, 34.323410, 44.844582>,  <33.542126, 34.451187, 44.863945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339893, 34.323410, 44.844582>,  <33.002838, 34.110447, 44.812313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339893, 34.323410, 44.844582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242888, -0.242080, -0.939363,
		-0.480591, 0.811137, -0.333300,
		0.842638, 0.532404, 0.080674,
		33.592686, 34.483131, 44.868782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983902, 34.626690, 44.273075>,  <33.002838, 34.110447, 44.812313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983902, 34.626690, 44.273075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.378342, 34.632816, 44.339245>,  <33.615005, 34.636494, 44.378948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.378342, 34.632816, 44.339245>,  <32.983902, 34.626690, 44.273075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378342, 34.632816, 44.339245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166106, -0.071614, -0.983504,
		-0.003218, 0.997315, -0.073163,
		0.986103, 0.015318, 0.165429,
		33.674171, 34.637413, 44.388874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280682, 35.177425, 43.777863>,  <32.983902, 34.626690, 44.273075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280682, 35.177425, 43.777863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.592876, 34.957394, 43.896698>,  <33.780193, 34.825375, 43.967999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.592876, 34.957394, 43.896698>,  <33.280682, 35.177425, 43.777863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592876, 34.957394, 43.896698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249389, -0.161812, -0.954789,
		0.573281, 0.819286, 0.010892,
		0.780483, -0.550079, 0.297085,
		33.827023, 34.792370, 43.985825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878517, 35.475216, 43.416023>,  <33.280682, 35.177425, 43.777863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878517, 35.475216, 43.416023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.965149, 35.101723, 43.530029>,  <34.017128, 34.877628, 43.598434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.965149, 35.101723, 43.530029>,  <33.878517, 35.475216, 43.416023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965149, 35.101723, 43.530029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215514, -0.239018, -0.946797,
		0.952179, 0.266486, 0.149464,
		0.216584, -0.933732, 0.285020,
		34.030125, 34.821602, 43.615536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572685, 35.242245, 43.223541>,  <33.878517, 35.475216, 43.416023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572685, 35.242245, 43.223541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363728, 34.903648, 43.264648>,  <34.238354, 34.700493, 43.289310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363728, 34.903648, 43.264648>,  <34.572685, 35.242245, 43.223541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363728, 34.903648, 43.264648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201115, -0.239430, -0.949856,
		0.828647, -0.475532, 0.295319,
		-0.522394, -0.846489, 0.102766,
		34.207008, 34.649700, 43.295479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324734, 35.223534, 43.375633>,  <34.572685, 35.242245, 43.223541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324734, 35.223534, 43.375633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624283, 35.454792, 43.246052>,  <35.804012, 35.593548, 43.168304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624283, 35.454792, 43.246052>,  <35.324734, 35.223534, 43.375633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624283, 35.454792, 43.246052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054955, 0.432963, 0.899735,
		0.660437, -0.691585, 0.292460,
		0.748868, 0.578146, -0.323951,
		35.848942, 35.628235, 43.148869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868633, 35.116489, 43.760452>,  <35.324734, 35.223534, 43.375633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868633, 35.116489, 43.760452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900372, 35.492016, 43.626396>,  <35.919415, 35.717331, 43.545963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900372, 35.492016, 43.626396>,  <35.868633, 35.116489, 43.760452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900372, 35.492016, 43.626396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119711, 0.342746, 0.931769,
		0.989633, -0.033815, 0.139584,
		0.079350, 0.938819, -0.335145,
		35.924175, 35.773663, 43.525852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392494, 35.484367, 44.103161>,  <35.868633, 35.116489, 43.760452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392494, 35.484367, 44.103161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122997, 35.753796, 43.981586>,  <35.961300, 35.915451, 43.908642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122997, 35.753796, 43.981586>,  <36.392494, 35.484367, 44.103161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122997, 35.753796, 43.981586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088489, 0.481875, 0.871760,
		0.733648, 0.560448, -0.384264,
		-0.673743, 0.673569, -0.303933,
		35.920876, 35.955868, 43.890408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612473, 36.058250, 44.359257>,  <36.392494, 35.484367, 44.103161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612473, 36.058250, 44.359257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237858, 36.175415, 44.282211>,  <36.013088, 36.245712, 44.235985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237858, 36.175415, 44.282211>,  <36.612473, 36.058250, 44.359257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237858, 36.175415, 44.282211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079473, 0.712532, 0.697125,
		0.341442, 0.637575, -0.690591,
		-0.936537, 0.292911, -0.192618,
		35.956898, 36.263287, 44.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688873, 36.866524, 44.403797>,  <36.612473, 36.058250, 44.359257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688873, 36.866524, 44.403797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 36.772488, 44.458500>,  <36.072998, 36.716064, 44.491322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303951, 36.772488, 44.458500>,  <36.688873, 36.866524, 44.403797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303951, 36.772488, 44.458500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092570, 0.755922, 0.648084,
		-0.255734, 0.610995, -0.749190,
		-0.962305, -0.235089, 0.136755,
		36.015259, 36.701962, 44.499527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342865, 37.493031, 44.320240>,  <36.688873, 36.866524, 44.403797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342865, 37.493031, 44.320240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116806, 37.248913, 44.542286>,  <35.981171, 37.102444, 44.675514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116806, 37.248913, 44.542286>,  <36.342865, 37.493031, 44.320240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116806, 37.248913, 44.542286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055281, 0.699374, 0.712615,
		-0.823134, 0.372047, -0.428988,
		-0.565149, -0.610293, 0.555112,
		35.947262, 37.065826, 44.708820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925434, 37.928429, 44.560207>,  <36.342865, 37.493031, 44.320240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925434, 37.928429, 44.560207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887299, 37.621807, 44.814232>,  <35.864418, 37.437836, 44.966648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887299, 37.621807, 44.814232>,  <35.925434, 37.928429, 44.560207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887299, 37.621807, 44.814232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118533, 0.642174, 0.757339,
		-0.988362, -0.003072, -0.152087,
		-0.095340, -0.766553, 0.635065,
		35.858696, 37.391842, 45.004753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385578, 38.164978, 44.937717>,  <35.925434, 37.928429, 44.560207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385578, 38.164978, 44.937717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553177, 37.883018, 45.166649>,  <35.653736, 37.713840, 45.304008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553177, 37.883018, 45.166649>,  <35.385578, 38.164978, 44.937717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553177, 37.883018, 45.166649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088315, 0.595695, 0.798341,
		-0.903684, -0.385045, 0.187339,
		0.418994, -0.704903, 0.572325,
		35.678875, 37.671547, 45.338345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102322, 38.191307, 45.533176>,  <35.385578, 38.164978, 44.937717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102322, 38.191307, 45.533176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396149, 37.956532, 45.669365>,  <35.572445, 37.815666, 45.751076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396149, 37.956532, 45.669365>,  <35.102322, 38.191307, 45.533176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396149, 37.956532, 45.669365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060997, 0.556854, 0.828368,
		-0.675791, -0.587722, 0.444847,
		0.734565, -0.586938, 0.340468,
		35.616520, 37.780449, 45.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933292, 38.096512, 46.211018>,  <35.102322, 38.191307, 45.533176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933292, 38.096512, 46.211018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324802, 38.016300, 46.227917>,  <35.559708, 37.968174, 46.238056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324802, 38.016300, 46.227917>,  <34.933292, 38.096512, 46.211018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324802, 38.016300, 46.227917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058156, 0.469482, 0.881025,
		-0.196511, -0.859868, 0.471180,
		0.978776, -0.200533, 0.042252,
		35.618435, 37.956139, 46.240593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012436, 37.808075, 46.849266>,  <34.933292, 38.096512, 46.211018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012436, 37.808075, 46.849266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355099, 37.965549, 46.715912>,  <35.560696, 38.060032, 46.635899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355099, 37.965549, 46.715912>,  <35.012436, 37.808075, 46.849266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355099, 37.965549, 46.715912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111274, 0.490029, 0.864575,
		0.503748, -0.777740, 0.375978,
		0.856654, 0.393691, -0.333393,
		35.612095, 38.083652, 46.615894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529278, 37.609886, 47.265671>,  <35.012436, 37.808075, 46.849266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529278, 37.609886, 47.265671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689388, 37.943748, 47.114338>,  <35.785454, 38.144066, 47.023537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689388, 37.943748, 47.114338>,  <35.529278, 37.609886, 47.265671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689388, 37.943748, 47.114338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212991, 0.316807, 0.924266,
		0.891301, -0.450538, -0.050965,
		0.400271, 0.834655, -0.378331,
		35.809471, 38.194145, 47.000839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060337, 37.781094, 47.737480>,  <35.529278, 37.609886, 47.265671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060337, 37.781094, 47.737480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960514, 38.111584, 47.535461>,  <35.900620, 38.309879, 47.414249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960514, 38.111584, 47.535461>,  <36.060337, 37.781094, 47.737480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960514, 38.111584, 47.535461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218958, 0.556188, 0.801693,
		0.943282, 0.089480, -0.319708,
		-0.249553, 0.826225, -0.505050,
		35.885647, 38.359451, 47.383945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499062, 38.230259, 47.982868>,  <36.060337, 37.781094, 47.737480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499062, 38.230259, 47.982868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224987, 38.466572, 47.812462>,  <36.060543, 38.608360, 47.710217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224987, 38.466572, 47.812462>,  <36.499062, 38.230259, 47.982868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224987, 38.466572, 47.812462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222283, 0.726599, 0.650111,
		0.693616, 0.350754, -0.629180,
		-0.685191, 0.590783, -0.426014,
		36.019428, 38.643806, 47.684658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.434315, 41.926952, 44.361309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.679920, 41.709290, 44.590004>,  <28.827284, 41.578693, 44.727219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.679920, 41.709290, 44.590004>,  <28.434315, 41.926952, 44.361309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679920, 41.709290, 44.590004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532324, -0.249327, -0.808992,
		0.582766, 0.801081, 0.136576,
		0.614016, -0.544155, 0.571734,
		28.864124, 41.546043, 44.761524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171520, 42.201805, 44.239182>,  <28.434315, 41.926952, 44.361309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171520, 42.201805, 44.239182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.152163, 41.827816, 44.379742>,  <29.140549, 41.603424, 44.464077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.152163, 41.827816, 44.379742>,  <29.171520, 42.201805, 44.239182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152163, 41.827816, 44.379742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488731, -0.328985, -0.808029,
		0.871092, 0.132636, 0.472872,
		-0.048394, -0.934974, 0.351399,
		29.137644, 41.547325, 44.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827438, 41.949314, 44.104877>,  <29.171520, 42.201805, 44.239182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827438, 41.949314, 44.104877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.620575, 41.611000, 44.157314>,  <29.496456, 41.408012, 44.188778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.620575, 41.611000, 44.157314>,  <29.827438, 41.949314, 44.104877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620575, 41.611000, 44.157314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509167, -0.427145, -0.747192,
		0.687963, -0.319670, 0.651550,
		-0.517161, -0.845789, 0.131094,
		29.465427, 41.357262, 44.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367048, 41.410595, 43.884499>,  <29.827438, 41.949314, 44.104877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367048, 41.410595, 43.884499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012457, 41.225922, 43.897202>,  <29.799702, 41.115120, 43.904823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012457, 41.225922, 43.897202>,  <30.367048, 41.410595, 43.884499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012457, 41.225922, 43.897202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335684, -0.688753, -0.642600,
		0.318551, -0.558989, 0.765543,
		-0.886477, -0.461682, 0.031759,
		29.746513, 41.087418, 43.906731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566065, 40.691425, 43.992508>,  <30.367048, 41.410595, 43.884499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566065, 40.691425, 43.992508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218019, 40.756748, 43.806503>,  <30.009192, 40.795940, 43.694901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218019, 40.756748, 43.806503>,  <30.566065, 40.691425, 43.992508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218019, 40.756748, 43.806503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246518, -0.672790, -0.697555,
		-0.426767, -0.721585, 0.545146,
		-0.870115, 0.163305, -0.465008,
		29.956985, 40.805740, 43.667000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385763, 40.020508, 43.776497>,  <30.566065, 40.691425, 43.992508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385763, 40.020508, 43.776497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153484, 40.265408, 43.561855>,  <30.014116, 40.412346, 43.433071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153484, 40.265408, 43.561855>,  <30.385763, 40.020508, 43.776497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153484, 40.265408, 43.561855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136856, -0.576326, -0.805679,
		-0.802533, -0.541294, 0.250883,
		-0.580699, 0.612249, -0.536600,
		29.979275, 40.449081, 43.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922203, 39.510818, 43.356747>,  <30.385763, 40.020508, 43.776497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922203, 39.510818, 43.356747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.929600, 39.862347, 43.166031>,  <29.934038, 40.073265, 43.051601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.929600, 39.862347, 43.166031>,  <29.922203, 39.510818, 43.356747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929600, 39.862347, 43.166031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013123, -0.477041, -0.878783,
		-0.999743, 0.009994, -0.020354,
		0.018493, 0.878824, -0.476788,
		29.935148, 40.125996, 43.022995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391956, 39.477169, 42.907352>,  <29.922203, 39.510818, 43.356747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391956, 39.477169, 42.907352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622387, 39.765873, 42.753883>,  <29.760645, 39.939095, 42.661804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622387, 39.765873, 42.753883>,  <29.391956, 39.477169, 42.907352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622387, 39.765873, 42.753883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104280, -0.530438, -0.841285,
		-0.810716, 0.444636, -0.380838,
		0.576077, 0.721758, -0.383668,
		29.795210, 39.982399, 42.638783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218935, 39.481468, 42.200203>,  <29.391956, 39.477169, 42.907352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218935, 39.481468, 42.200203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543703, 39.709343, 42.149231>,  <29.738564, 39.846069, 42.118649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543703, 39.709343, 42.149231>,  <29.218935, 39.481468, 42.200203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543703, 39.709343, 42.149231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204170, -0.481619, -0.852267,
		-0.546901, 0.665955, -0.507349,
		0.811920, 0.569691, -0.127430,
		29.787279, 39.880249, 42.111000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281963, 39.678883, 41.452110>,  <29.218935, 39.481468, 42.200203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281963, 39.678883, 41.452110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649206, 39.756687, 41.590237>,  <29.869553, 39.803371, 41.673111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649206, 39.756687, 41.590237>,  <29.281963, 39.678883, 41.452110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649206, 39.756687, 41.590237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395023, -0.519771, -0.757493,
		0.032142, 0.831867, -0.554043,
		0.918109, 0.194512, 0.345313,
		29.924639, 39.815041, 41.693832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699854, 40.148129, 40.934689>,  <29.281963, 39.678883, 41.452110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699854, 40.148129, 40.934689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933559, 39.914253, 41.159821>,  <30.073782, 39.773930, 41.294899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.933559, 39.914253, 41.159821>,  <29.699854, 40.148129, 40.934689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933559, 39.914253, 41.159821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310121, -0.480037, -0.820603,
		0.749974, 0.653995, -0.099145,
		0.584263, -0.584684, 0.562833,
		30.108839, 39.738850, 41.328671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428686, 40.144581, 40.681633>,  <29.699854, 40.148129, 40.934689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428686, 40.144581, 40.681633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406185, 39.799137, 40.882034>,  <30.392685, 39.591869, 41.002277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406185, 39.799137, 40.882034>,  <30.428686, 40.144581, 40.681633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406185, 39.799137, 40.882034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475952, -0.464310, -0.746918,
		0.877671, 0.196441, 0.437156,
		-0.056251, -0.863613, 0.501007,
		30.389309, 39.540054, 41.032337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119665, 39.903435, 40.569656>,  <30.428686, 40.144581, 40.681633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119665, 39.903435, 40.569656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.914091, 39.596210, 40.722473>,  <30.790747, 39.411877, 40.814163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.914091, 39.596210, 40.722473>,  <31.119665, 39.903435, 40.569656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914091, 39.596210, 40.722473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462843, -0.623247, -0.630349,
		0.722253, -0.147132, 0.675798,
		-0.513933, -0.768060, 0.382043,
		30.759911, 39.365791, 40.837086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562250, 39.380085, 40.639210>,  <31.119665, 39.903435, 40.569656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562250, 39.380085, 40.639210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205225, 39.209846, 40.579609>,  <30.991011, 39.107704, 40.543850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205225, 39.209846, 40.579609>,  <31.562250, 39.380085, 40.639210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205225, 39.209846, 40.579609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365629, -0.489693, -0.791528,
		0.263907, -0.760967, 0.592691,
		-0.892563, -0.425595, -0.148998,
		30.937456, 39.082169, 40.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127884, 39.126663, 41.061302>,  <31.562250, 39.380085, 40.639210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127884, 39.126663, 41.061302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494804, 39.278694, 41.013809>,  <32.714958, 39.369911, 40.985313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494804, 39.278694, 41.013809>,  <32.127884, 39.126663, 41.061302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494804, 39.278694, 41.013809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121158, 0.550461, 0.826023,
		0.379311, -0.743327, 0.550988,
		0.917302, 0.380076, -0.118736,
		32.769997, 39.392715, 40.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338486, 39.087704, 41.662735>,  <32.127884, 39.126663, 41.061302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338486, 39.087704, 41.662735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595581, 39.348114, 41.501213>,  <32.749836, 39.504360, 41.404301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595581, 39.348114, 41.501213>,  <32.338486, 39.087704, 41.662735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595581, 39.348114, 41.501213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006329, 0.522565, 0.852576,
		0.766061, -0.550537, 0.331751,
		0.642737, 0.651026, -0.403801,
		32.788403, 39.543423, 41.380074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876087, 39.177818, 42.154949>,  <32.338486, 39.087704, 41.662735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876087, 39.177818, 42.154949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887875, 39.501587, 41.920353>,  <32.894947, 39.695847, 41.779594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887875, 39.501587, 41.920353>,  <32.876087, 39.177818, 42.154949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887875, 39.501587, 41.920353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007084, 0.586558, 0.809877,
		0.999540, -0.028024, 0.011553,
		0.029472, 0.809423, -0.586487,
		32.896717, 39.744415, 41.744408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398369, 39.656071, 42.362469>,  <32.876087, 39.177818, 42.154949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398369, 39.656071, 42.362469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149307, 39.880737, 42.144543>,  <32.999870, 40.015537, 42.013786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149307, 39.880737, 42.144543>,  <33.398369, 39.656071, 42.362469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149307, 39.880737, 42.144543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054864, 0.663208, 0.746422,
		0.780571, 0.494654, -0.382135,
		-0.622655, 0.561670, -0.544819,
		32.962509, 40.049236, 41.981098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694115, 40.368011, 42.514977>,  <33.398369, 39.656071, 42.362469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694115, 40.368011, 42.514977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327480, 40.401009, 42.358479>,  <33.107502, 40.420807, 42.264580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327480, 40.401009, 42.358479>,  <33.694115, 40.368011, 42.514977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327480, 40.401009, 42.358479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217654, 0.717879, 0.661269,
		0.335415, 0.691264, -0.640040,
		-0.916583, 0.082492, -0.391243,
		33.052505, 40.425755, 42.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599262, 41.102013, 42.377293>,  <33.694115, 40.368011, 42.514977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599262, 41.102013, 42.377293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225159, 40.964588, 42.411373>,  <33.000698, 40.882133, 42.431824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225159, 40.964588, 42.411373>,  <33.599262, 41.102013, 42.377293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225159, 40.964588, 42.411373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177495, 0.663452, 0.726861,
		-0.306251, 0.664678, -0.681479,
		-0.935257, -0.343561, 0.085206,
		32.944580, 40.861519, 42.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146545, 41.716557, 42.349865>,  <33.599262, 41.102013, 42.377293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146545, 41.716557, 42.349865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986755, 41.396584, 42.528984>,  <32.890881, 41.204597, 42.636456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986755, 41.396584, 42.528984>,  <33.146545, 41.716557, 42.349865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986755, 41.396584, 42.528984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245227, 0.563908, 0.788589,
		-0.883337, 0.205208, -0.421432,
		-0.399473, -0.799936, 0.447798,
		32.866913, 41.156601, 42.663322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509537, 42.036274, 42.638130>,  <33.146545, 41.716557, 42.349865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509537, 42.036274, 42.638130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.601994, 41.677216, 42.788231>,  <32.657467, 41.461781, 42.878292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.601994, 41.677216, 42.788231>,  <32.509537, 42.036274, 42.638130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601994, 41.677216, 42.788231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281205, 0.307591, 0.909017,
		-0.931394, -0.315637, -0.181323,
		0.231146, -0.897642, 0.375247,
		32.671337, 41.407925, 42.900806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946245, 41.980839, 43.006916>,  <32.509537, 42.036274, 42.638130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946245, 41.980839, 43.006916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204388, 41.706406, 43.141258>,  <32.359272, 41.541744, 43.221863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204388, 41.706406, 43.141258>,  <31.946245, 41.980839, 43.006916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204388, 41.706406, 43.141258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260772, 0.215388, 0.941066,
		-0.717992, -0.694906, -0.039910,
		0.645356, -0.686086, 0.335859,
		32.397995, 41.500580, 43.242016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555050, 41.729679, 43.493793>,  <31.946245, 41.980839, 43.006916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555050, 41.729679, 43.493793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.929838, 41.632362, 43.594112>,  <32.154713, 41.573975, 43.654305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.929838, 41.632362, 43.594112>,  <31.555050, 41.729679, 43.493793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929838, 41.632362, 43.594112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227554, 0.119813, 0.966366,
		-0.265156, -0.962525, 0.056900,
		0.936969, -0.243290, 0.250795,
		32.210930, 41.559376, 43.669350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587578, 41.218529, 44.119102>,  <31.555050, 41.729679, 43.493793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587578, 41.218529, 44.119102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935497, 41.414314, 44.094181>,  <32.144249, 41.531784, 44.079227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.935497, 41.414314, 44.094181>,  <31.587578, 41.218529, 44.119102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935497, 41.414314, 44.094181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020094, 0.161296, 0.986702,
		0.493001, -0.856978, 0.150129,
		0.869796, 0.489462, -0.062299,
		32.196438, 41.561153, 44.075493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830280, 41.114975, 44.746288>,  <31.587578, 41.218529, 44.119102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830280, 41.114975, 44.746288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.076572, 41.390163, 44.592628>,  <32.224346, 41.555275, 44.500431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.076572, 41.390163, 44.592628>,  <31.830280, 41.114975, 44.746288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076572, 41.390163, 44.592628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258607, 0.284085, 0.923265,
		0.744312, -0.667825, -0.002995,
		0.615728, 0.687972, -0.384152,
		32.261292, 41.596554, 44.477383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478149, 41.051502, 45.101814>,  <31.830280, 41.114975, 44.746288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478149, 41.051502, 45.101814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 41.428417, 44.972050>,  <32.425201, 41.654568, 44.894192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445057, 41.428417, 44.972050>,  <32.478149, 41.051502, 45.101814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445057, 41.428417, 44.972050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037472, 0.322359, 0.945876,
		0.995867, 0.090411, 0.008639,
		-0.082733, 0.942290, -0.324414,
		32.420238, 41.711105, 44.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949154, 41.411289, 45.538410>,  <32.478149, 41.051502, 45.101814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949154, 41.411289, 45.538410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711140, 41.699810, 45.396618>,  <32.568329, 41.872921, 45.311543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711140, 41.699810, 45.396618>,  <32.949154, 41.411289, 45.538410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711140, 41.699810, 45.396618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229799, 0.269958, 0.935048,
		0.770145, 0.637849, 0.005119,
		-0.595037, 0.721299, -0.354484,
		32.532627, 41.916199, 45.290272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610752, 41.653893, 45.266575>,  <32.949154, 41.411289, 45.538410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610752, 41.653893, 45.266575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.997456, 41.683483, 45.364475>,  <34.229477, 41.701237, 45.423214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.997456, 41.683483, 45.364475>,  <33.610752, 41.653893, 45.266575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997456, 41.683483, 45.364475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247552, -0.510261, -0.823621,
		0.063958, 0.856832, -0.511613,
		0.966761, 0.073974, 0.244746,
		34.287483, 41.705677, 45.437901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852600, 41.870655, 44.717587>,  <33.610752, 41.653893, 45.266575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852600, 41.870655, 44.717587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170845, 41.720211, 44.907551>,  <34.361794, 41.629944, 45.021530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.170845, 41.720211, 44.907551>,  <33.852600, 41.870655, 44.717587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170845, 41.720211, 44.907551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288315, -0.454379, -0.842861,
		0.532797, 0.807516, -0.253073,
		0.795615, -0.376109, 0.474910,
		34.409531, 41.607380, 45.050022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372147, 42.063053, 44.276669>,  <33.852600, 41.870655, 44.717587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372147, 42.063053, 44.276669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526825, 41.769779, 44.500420>,  <34.619633, 41.593815, 44.634670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526825, 41.769779, 44.500420>,  <34.372147, 42.063053, 44.276669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526825, 41.769779, 44.500420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248668, -0.501195, -0.828835,
		0.888047, 0.459610, -0.011492,
		0.386700, -0.733186, 0.559375,
		34.642834, 41.549824, 44.668232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963390, 41.896301, 43.870159>,  <34.372147, 42.063053, 44.276669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963390, 41.896301, 43.870159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891293, 41.590675, 44.117939>,  <34.848034, 41.407299, 44.266605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891293, 41.590675, 44.117939>,  <34.963390, 41.896301, 43.870159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891293, 41.590675, 44.117939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152403, -0.643850, -0.749820,
		0.971744, -0.040742, 0.232493,
		-0.180240, -0.764066, 0.619448,
		34.837219, 41.361454, 44.303772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641521, 41.492455, 43.916294>,  <34.963390, 41.896301, 43.870159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641521, 41.492455, 43.916294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325939, 41.257511, 43.988476>,  <35.136589, 41.116547, 44.031784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325939, 41.257511, 43.988476>,  <35.641521, 41.492455, 43.916294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325939, 41.257511, 43.988476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381815, -0.698730, -0.604974,
		0.481420, -0.408400, 0.775528,
		-0.788957, -0.587355, 0.180450,
		35.089252, 41.081306, 44.042610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871849, 40.777538, 44.020405>,  <35.641521, 41.492455, 43.916294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871849, 40.777538, 44.020405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484039, 40.745739, 43.927708>,  <35.251354, 40.726658, 43.872089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484039, 40.745739, 43.927708>,  <35.871849, 40.777538, 44.020405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484039, 40.745739, 43.927708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190432, -0.839648, -0.508652,
		-0.154145, -0.537281, 0.829198,
		-0.969523, -0.079499, -0.231743,
		35.193184, 40.721889, 43.858185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740059, 39.986805, 44.058163>,  <35.871849, 40.777538, 44.020405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740059, 39.986805, 44.058163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419399, 40.120670, 43.860027>,  <35.227005, 40.200989, 43.741146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.419399, 40.120670, 43.860027>,  <35.740059, 39.986805, 44.058163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419399, 40.120670, 43.860027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073699, -0.766959, -0.637450,
		-0.593235, -0.547517, 0.590167,
		-0.801649, 0.334663, -0.495338,
		35.178905, 40.221069, 43.711426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208740, 39.475594, 43.967487>,  <35.740059, 39.986805, 44.058163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208740, 39.475594, 43.967487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103397, 39.736183, 43.682888>,  <35.040192, 39.892536, 43.512127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103397, 39.736183, 43.682888>,  <35.208740, 39.475594, 43.967487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103397, 39.736183, 43.682888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152255, -0.756360, -0.636190,
		-0.952608, -0.059216, 0.298382,
		-0.263356, 0.651470, -0.711498,
		35.024391, 39.931625, 43.469437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742245, 39.087292, 43.525364>,  <35.208740, 39.475594, 43.967487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742245, 39.087292, 43.525364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879894, 39.398575, 43.315231>,  <34.962482, 39.585346, 43.189152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879894, 39.398575, 43.315231>,  <34.742245, 39.087292, 43.525364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879894, 39.398575, 43.315231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132359, -0.594124, -0.793409,
		-0.929549, 0.203496, -0.307453,
		0.344121, 0.778207, -0.525333,
		34.983131, 39.632038, 43.157631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450291, 38.970612, 42.854153>,  <34.742245, 39.087292, 43.525364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450291, 38.970612, 42.854153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739033, 39.243641, 42.808498>,  <34.912277, 39.407459, 42.781105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739033, 39.243641, 42.808498>,  <34.450291, 38.970612, 42.854153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739033, 39.243641, 42.808498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257331, -0.417831, -0.871320,
		-0.642427, 0.599593, -0.477259,
		0.721851, 0.682573, -0.114132,
		34.955589, 39.448414, 42.774258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378277, 39.189873, 42.183949>,  <34.450291, 38.970612, 42.854153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378277, 39.189873, 42.183949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759663, 39.258327, 42.283237>,  <34.988495, 39.299400, 42.342812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759663, 39.258327, 42.283237>,  <34.378277, 39.189873, 42.183949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759663, 39.258327, 42.283237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293259, -0.335230, -0.895332,
		-0.070012, 0.926463, -0.369818,
		0.953466, 0.171136, 0.248224,
		35.045704, 39.309669, 42.357704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709663, 39.392086, 41.594498>,  <34.378277, 39.189873, 42.183949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709663, 39.392086, 41.594498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010864, 39.270306, 41.827839>,  <35.191586, 39.197239, 41.967842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010864, 39.270306, 41.827839>,  <34.709663, 39.392086, 41.594498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010864, 39.270306, 41.827839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413760, -0.470264, -0.779522,
		0.511652, 0.828350, -0.228143,
		0.753004, -0.304448, 0.583349,
		35.236767, 39.178970, 42.002842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369278, 39.491081, 41.174782>,  <34.709663, 39.392086, 41.594498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369278, 39.491081, 41.174782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501778, 39.241417, 41.457821>,  <35.581276, 39.091618, 41.627644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.501778, 39.241417, 41.457821>,  <35.369278, 39.491081, 41.174782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501778, 39.241417, 41.457821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400212, -0.586195, -0.704419,
		0.854463, 0.516526, 0.055622,
		0.331245, -0.624160, 0.707602,
		35.601151, 39.054169, 41.670101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971268, 39.334335, 40.881905>,  <35.369278, 39.491081, 41.174782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971268, 39.334335, 40.881905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925240, 39.051472, 41.160957>,  <35.897621, 38.881752, 41.328388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925240, 39.051472, 41.160957>,  <35.971268, 39.334335, 40.881905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925240, 39.051472, 41.160957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352917, -0.685580, -0.636733,
		0.928552, 0.172935, 0.328459,
		-0.115072, -0.707159, 0.697628,
		35.890717, 38.839325, 41.370247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.740486, 27.946136, 31.751442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568714, 27.883184, 32.107155>,  <27.465651, 27.845413, 32.320583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568714, 27.883184, 32.107155>,  <27.740486, 27.946136, 31.751442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568714, 27.883184, 32.107155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657262, 0.729776, -0.188239,
		-0.619351, -0.665326, -0.416827,
		-0.429431, -0.157379, 0.889282,
		27.439884, 27.835970, 32.373940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993803, 27.889040, 31.649233>,  <27.740486, 27.946136, 31.751442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993803, 27.889040, 31.649233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011450, 28.002535, 32.032387>,  <27.022038, 28.070631, 32.262280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011450, 28.002535, 32.032387>,  <26.993803, 27.889040, 31.649233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011450, 28.002535, 32.032387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621966, 0.758137, -0.195925,
		-0.781800, -0.587130, 0.209920,
		0.044115, 0.283737, 0.957887,
		27.024685, 28.087656, 32.319752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389795, 28.157227, 31.768347>,  <26.993803, 27.889040, 31.649233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389795, 28.157227, 31.768347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619104, 28.299219, 32.063736>,  <26.756691, 28.384415, 32.240971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619104, 28.299219, 32.063736>,  <26.389795, 28.157227, 31.768347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619104, 28.299219, 32.063736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507319, 0.861519, -0.020301,
		-0.643416, -0.363004, 0.673977,
		0.573274, 0.354984, 0.738474,
		26.791086, 28.405714, 32.285278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867287, 28.465452, 32.215538>,  <26.389795, 28.157227, 31.768347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867287, 28.465452, 32.215538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214132, 28.635914, 32.318691>,  <26.422239, 28.738192, 32.380581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214132, 28.635914, 32.318691>,  <25.867287, 28.465452, 32.215538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214132, 28.635914, 32.318691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468056, 0.874208, 0.129166,
		-0.170397, -0.232705, 0.957504,
		0.867115, 0.426156, 0.257881,
		26.474266, 28.763760, 32.396057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758339, 28.870863, 32.789810>,  <25.867287, 28.465452, 32.215538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758339, 28.870863, 32.789810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115562, 29.046839, 32.752079>,  <26.329897, 29.152424, 32.729439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115562, 29.046839, 32.752079>,  <25.758339, 28.870863, 32.789810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115562, 29.046839, 32.752079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425527, 0.893954, 0.140613,
		0.146187, -0.085436, 0.985561,
		0.893060, 0.439939, -0.094330,
		26.383480, 29.178820, 32.723782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894123, 29.415323, 33.418575>,  <25.758339, 28.870863, 32.789810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894123, 29.415323, 33.418575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145796, 29.503681, 33.120491>,  <26.296799, 29.556696, 32.941639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145796, 29.503681, 33.120491>,  <25.894123, 29.415323, 33.418575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145796, 29.503681, 33.120491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181107, 0.974040, 0.135819,
		0.755865, 0.049508, 0.652853,
		0.629181, 0.220897, -0.745209,
		26.334551, 29.569950, 32.896927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275383, 29.917727, 33.615612>,  <25.894123, 29.415323, 33.418575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275383, 29.917727, 33.615612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316301, 29.967354, 33.220818>,  <26.340853, 29.997129, 32.983940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316301, 29.967354, 33.220818>,  <26.275383, 29.917727, 33.615612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316301, 29.967354, 33.220818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334596, 0.938671, 0.083316,
		0.936793, 0.321720, 0.137531,
		0.102292, 0.124067, -0.986987,
		26.346991, 30.004574, 32.924721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686455, 30.548744, 33.614758>,  <26.275383, 29.917727, 33.615612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686455, 30.548744, 33.614758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.499889, 30.481270, 33.267426>,  <26.387949, 30.440784, 33.059025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.499889, 30.481270, 33.267426>,  <26.686455, 30.548744, 33.614758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499889, 30.481270, 33.267426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027521, 0.983940, -0.176364,
		0.884138, -0.058362, -0.463567,
		-0.466415, -0.168688, -0.868332,
		26.359964, 30.430664, 33.006927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988806, 30.920897, 33.147213>,  <26.686455, 30.548744, 33.614758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988806, 30.920897, 33.147213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.632305, 30.850372, 32.980080>,  <26.418404, 30.808058, 32.879799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.632305, 30.850372, 32.980080>,  <26.988806, 30.920897, 33.147213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632305, 30.850372, 32.980080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057302, 0.957732, -0.281897,
		0.449872, -0.227299, -0.863684,
		-0.891253, -0.176308, -0.417832,
		26.364929, 30.797480, 32.854729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977339, 31.342493, 32.559219>,  <26.988806, 30.920897, 33.147213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977339, 31.342493, 32.559219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589899, 31.271072, 32.628422>,  <26.357435, 31.228220, 32.669945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589899, 31.271072, 32.628422>,  <26.977339, 31.342493, 32.559219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589899, 31.271072, 32.628422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204541, 0.967869, -0.146263,
		-0.141336, -0.177059, -0.973999,
		-0.968601, -0.178550, 0.173011,
		26.299318, 31.217506, 32.680325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600023, 31.585089, 31.968376>,  <26.977339, 31.342493, 32.559219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600023, 31.585089, 31.968376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353361, 31.563946, 32.282558>,  <26.205364, 31.551260, 32.471069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353361, 31.563946, 32.282558>,  <26.600023, 31.585089, 31.968376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353361, 31.563946, 32.282558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129885, 0.990901, -0.035288,
		-0.776444, -0.123780, -0.617910,
		-0.616655, -0.052858, 0.785457,
		26.168364, 31.548088, 32.518196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925692, 31.884871, 31.781580>,  <26.600023, 31.585089, 31.968376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925692, 31.884871, 31.781580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.945507, 31.900248, 32.180794>,  <25.957396, 31.909473, 32.420322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.945507, 31.900248, 32.180794>,  <25.925692, 31.884871, 31.781580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945507, 31.900248, 32.180794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232228, 0.972316, -0.025923,
		-0.971399, -0.230486, 0.057093,
		0.049537, 0.038441, 0.998032,
		25.960367, 31.911779, 32.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262392, 32.258301, 31.991690>,  <25.925692, 31.884871, 31.781580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262392, 32.258301, 31.991690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.524967, 32.282681, 32.292454>,  <25.682512, 32.297310, 32.472912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.524967, 32.282681, 32.292454>,  <25.262392, 32.258301, 31.991690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524967, 32.282681, 32.292454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135968, 0.989966, 0.038459,
		-0.742024, -0.127482, 0.658141,
		0.656440, 0.060949, 0.751912,
		25.721899, 32.300964, 32.518028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921997, 32.644821, 32.462471>,  <25.262392, 32.258301, 31.991690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921997, 32.644821, 32.462471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.300064, 32.673069, 32.590012>,  <25.526905, 32.690018, 32.666538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.300064, 32.673069, 32.590012>,  <24.921997, 32.644821, 32.462471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300064, 32.673069, 32.590012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132649, 0.975191, 0.177220,
		-0.298431, -0.209798, 0.931088,
		0.945168, 0.070620, 0.318856,
		25.583614, 32.694256, 32.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901272, 33.028465, 33.081295>,  <24.921997, 32.644821, 32.462471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901272, 33.028465, 33.081295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289169, 33.069981, 32.992908>,  <25.521908, 33.094891, 32.939877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289169, 33.069981, 32.992908>,  <24.901272, 33.028465, 33.081295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289169, 33.069981, 32.992908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028321, 0.946844, 0.320444,
		0.242480, -0.304491, 0.921135,
		0.969743, 0.103788, -0.220967,
		25.580091, 33.101116, 32.926617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275969, 33.176510, 33.705132>,  <24.901272, 33.028465, 33.081295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275969, 33.176510, 33.705132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.495947, 33.318001, 33.402493>,  <25.627934, 33.402897, 33.220909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.495947, 33.318001, 33.402493>,  <25.275969, 33.176510, 33.705132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495947, 33.318001, 33.402493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005322, 0.907351, 0.420340,
		0.835184, -0.227138, 0.500876,
		0.549945, 0.353726, -0.756596,
		25.660931, 33.424118, 33.175514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834648, 33.472794, 34.034954>,  <25.275969, 33.176510, 33.705132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834648, 33.472794, 34.034954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823357, 33.653042, 33.678047>,  <25.816582, 33.761189, 33.463902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823357, 33.653042, 33.678047>,  <25.834648, 33.472794, 34.034954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823357, 33.653042, 33.678047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072058, 0.891222, 0.447807,
		0.997001, -0.051654, -0.057629,
		-0.028229, 0.450617, -0.892271,
		25.814888, 33.788227, 33.410366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226728, 34.002907, 34.062851>,  <25.834648, 33.472794, 34.034954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226728, 34.002907, 34.062851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023262, 34.118305, 33.738377>,  <25.901182, 34.187546, 33.543690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023262, 34.118305, 33.738377>,  <26.226728, 34.002907, 34.062851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023262, 34.118305, 33.738377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019457, 0.945797, 0.324173,
		0.860744, 0.149113, -0.486709,
		-0.508667, 0.288500, -0.811188,
		25.870663, 34.204857, 33.495022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566872, 34.670696, 33.871784>,  <26.226728, 34.002907, 34.062851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566872, 34.670696, 33.871784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212059, 34.648087, 33.688488>,  <25.999172, 34.634521, 33.578510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212059, 34.648087, 33.688488>,  <26.566872, 34.670696, 33.871784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212059, 34.648087, 33.688488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182690, 0.954446, 0.235917,
		0.424030, 0.292981, -0.856949,
		-0.887031, -0.056520, -0.458238,
		25.945950, 34.631130, 33.551018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650953, 35.154152, 33.420002>,  <26.566872, 34.670696, 33.871784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650953, 35.154152, 33.420002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268549, 35.091961, 33.519493>,  <26.039106, 35.054646, 33.579189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268549, 35.091961, 33.519493>,  <26.650953, 35.154152, 33.420002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268549, 35.091961, 33.519493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118944, 0.980604, 0.155779,
		-0.268127, 0.119342, -0.955963,
		-0.956013, -0.155475, 0.248731,
		25.981745, 35.045319, 33.594112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308601, 35.120960, 33.090576>,  <26.650953, 35.154152, 33.420002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308601, 35.120960, 33.090576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631683, 35.046791, 33.314445>,  <27.825533, 35.002289, 33.448769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631683, 35.046791, 33.314445>,  <27.308601, 35.120960, 33.090576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631683, 35.046791, 33.314445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447203, -0.425939, -0.786502,
		0.384220, 0.885548, -0.261112,
		0.807703, -0.185419, 0.559674,
		27.873995, 34.991165, 33.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911497, 35.363899, 32.702129>,  <27.308601, 35.120960, 33.090576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911497, 35.363899, 32.702129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062811, 35.096859, 32.958633>,  <28.153599, 34.936634, 33.112537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062811, 35.096859, 32.958633>,  <27.911497, 35.363899, 32.702129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062811, 35.096859, 32.958633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547654, -0.397096, -0.736471,
		0.746308, 0.629784, 0.215397,
		0.378284, -0.667597, 0.641261,
		28.176296, 34.896580, 33.151012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532618, 35.337959, 32.549690>,  <27.911497, 35.363899, 32.702129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532618, 35.337959, 32.549690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508402, 34.985321, 32.736935>,  <28.493872, 34.773739, 32.849281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508402, 34.985321, 32.736935>,  <28.532618, 35.337959, 32.549690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508402, 34.985321, 32.736935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363037, -0.456305, -0.812398,
		0.929806, 0.120759, 0.347675,
		-0.060541, -0.881591, 0.468115,
		28.490240, 34.720844, 32.877369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172070, 34.966679, 32.407528>,  <28.532618, 35.337959, 32.549690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172070, 34.966679, 32.407528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918371, 34.678890, 32.520733>,  <28.766151, 34.506218, 32.588654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918371, 34.678890, 32.520733>,  <29.172070, 34.966679, 32.407528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918371, 34.678890, 32.520733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269435, -0.548801, -0.791342,
		0.724661, -0.425654, 0.541926,
		-0.634248, -0.719469, 0.283009,
		28.728096, 34.463051, 32.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562046, 34.367062, 32.213509>,  <29.172070, 34.966679, 32.407528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562046, 34.367062, 32.213509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192289, 34.228226, 32.276791>,  <28.970436, 34.144924, 32.314762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192289, 34.228226, 32.276791>,  <29.562046, 34.367062, 32.213509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192289, 34.228226, 32.276791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148560, -0.709603, -0.688762,
		0.351327, -0.613182, 0.707515,
		-0.924391, -0.347089, 0.158208,
		28.914972, 34.124100, 32.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629911, 33.655529, 32.236973>,  <29.562046, 34.367062, 32.213509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629911, 33.655529, 32.236973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263075, 33.753048, 32.110798>,  <29.042973, 33.811562, 32.035091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263075, 33.753048, 32.110798>,  <29.629911, 33.655529, 32.236973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263075, 33.753048, 32.110798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082301, -0.658402, -0.748153,
		-0.390084, -0.712087, 0.583752,
		-0.917094, 0.243799, -0.315438,
		28.987947, 33.826187, 32.016167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452206, 33.116043, 31.869865>,  <29.629911, 33.655529, 32.236973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452206, 33.116043, 31.869865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137722, 33.337151, 31.759363>,  <28.949032, 33.469814, 31.693062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137722, 33.337151, 31.759363>,  <29.452206, 33.116043, 31.869865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137722, 33.337151, 31.759363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181522, -0.633910, -0.751803,
		-0.590695, -0.540929, 0.598727,
		-0.786211, 0.552769, -0.276257,
		28.901859, 33.502983, 31.676485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874424, 32.702599, 31.826906>,  <29.452206, 33.116043, 31.869865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874424, 32.702599, 31.826906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753811, 33.017212, 31.611332>,  <28.681444, 33.205978, 31.481987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753811, 33.017212, 31.611332>,  <28.874424, 32.702599, 31.826906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753811, 33.017212, 31.611332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425556, -0.616839, -0.662127,
		-0.853218, 0.029695, 0.520708,
		-0.301531, 0.786529, -0.538935,
		28.663351, 33.253170, 31.449652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159521, 32.516918, 31.719282>,  <28.874424, 32.702599, 31.826906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159521, 32.516918, 31.719282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231306, 32.815956, 31.463501>,  <28.274378, 32.995377, 31.310032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231306, 32.815956, 31.463501>,  <28.159521, 32.516918, 31.719282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231306, 32.815956, 31.463501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586873, -0.440317, -0.679486,
		-0.789540, 0.497219, 0.359722,
		0.179462, 0.747593, -0.639452,
		28.285145, 33.040234, 31.271666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511726, 32.643021, 31.438143>,  <28.159521, 32.516918, 31.719282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511726, 32.643021, 31.438143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809866, 32.755505, 31.196358>,  <27.988750, 32.822994, 31.051287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.809866, 32.755505, 31.196358>,  <27.511726, 32.643021, 31.438143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809866, 32.755505, 31.196358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416144, -0.512101, -0.751383,
		-0.520841, 0.811587, -0.264671,
		0.745351, 0.281210, -0.604460,
		28.033472, 32.839867, 31.015020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192114, 32.829079, 30.848650>,  <27.511726, 32.643021, 31.438143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192114, 32.829079, 30.848650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569914, 32.746677, 30.746294>,  <27.796595, 32.697235, 30.684881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569914, 32.746677, 30.746294>,  <27.192114, 32.829079, 30.848650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569914, 32.746677, 30.746294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326444, -0.675746, -0.660909,
		-0.036763, 0.707762, -0.705493,
		0.944501, -0.206007, -0.255888,
		27.853264, 32.684875, 30.669527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147762, 32.736549, 30.151409>,  <27.192114, 32.829079, 30.848650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147762, 32.736549, 30.151409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460888, 32.565910, 30.332611>,  <27.648764, 32.463528, 30.441332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460888, 32.565910, 30.332611>,  <27.147762, 32.736549, 30.151409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460888, 32.565910, 30.332611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232063, -0.875632, -0.423574,
		0.577362, 0.226455, -0.784456,
		0.782815, -0.426599, 0.453005,
		27.695732, 32.437931, 30.468513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531904, 32.381744, 29.614162>,  <27.147762, 32.736549, 30.151409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531904, 32.381744, 29.614162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653946, 32.219601, 29.958857>,  <27.727171, 32.122314, 30.165674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653946, 32.219601, 29.958857>,  <27.531904, 32.381744, 29.614162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653946, 32.219601, 29.958857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284746, -0.902319, -0.323636,
		0.908752, -0.146633, -0.390729,
		0.305106, -0.405363, 0.861737,
		27.745478, 32.097992, 30.217379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876581, 31.820898, 29.434898>,  <27.531904, 32.381744, 29.614162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876581, 31.820898, 29.434898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770576, 31.734808, 29.810865>,  <27.706974, 31.683153, 30.036446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770576, 31.734808, 29.810865>,  <27.876581, 31.820898, 29.434898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770576, 31.734808, 29.810865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372778, -0.876111, -0.305722,
		0.889273, -0.431400, 0.151948,
		-0.265011, -0.215227, 0.939918,
		27.691072, 31.670240, 30.092840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064680, 31.100916, 29.465839>,  <27.876581, 31.820898, 29.434898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064680, 31.100916, 29.465839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832178, 31.161451, 29.785648>,  <27.692677, 31.197773, 29.977533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832178, 31.161451, 29.785648>,  <28.064680, 31.100916, 29.465839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832178, 31.161451, 29.785648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420391, -0.897120, -0.135815,
		0.696715, -0.415056, 0.585079,
		-0.581257, 0.151338, 0.799523,
		27.657801, 31.206852, 30.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129423, 30.506905, 29.970619>,  <28.064680, 31.100916, 29.465839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129423, 30.506905, 29.970619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771902, 30.636190, 30.094975>,  <27.557390, 30.713762, 30.169588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771902, 30.636190, 30.094975>,  <28.129423, 30.506905, 29.970619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771902, 30.636190, 30.094975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372096, -0.921436, -0.111807,
		0.250324, -0.215612, 0.943848,
		-0.893802, 0.323214, 0.310886,
		27.503761, 30.733154, 30.188240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922848, 30.059008, 30.555197>,  <28.129423, 30.506905, 29.970619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922848, 30.059008, 30.555197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610811, 30.237226, 30.379494>,  <27.423590, 30.344158, 30.274071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610811, 30.237226, 30.379494>,  <27.922848, 30.059008, 30.555197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610811, 30.237226, 30.379494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521587, -0.850849, 0.063274,
		-0.345552, 0.278471, 0.896129,
		-0.780090, 0.445545, -0.439260,
		27.376783, 30.370890, 30.247715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308043, 29.773584, 30.922602>,  <27.922848, 30.059008, 30.555197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308043, 29.773584, 30.922602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185482, 29.916035, 30.569492>,  <27.111946, 30.001505, 30.357626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185482, 29.916035, 30.569492>,  <27.308043, 29.773584, 30.922602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185482, 29.916035, 30.569492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538857, -0.829374, -0.147553,
		-0.784698, 0.430479, 0.446023,
		-0.306401, 0.356127, -0.882775,
		27.093561, 30.022873, 30.304661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640718, 29.708549, 31.008230>,  <27.308043, 29.773584, 30.922602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640718, 29.708549, 31.008230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721649, 29.747429, 30.618437>,  <26.770208, 29.770756, 30.384562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.721649, 29.747429, 30.618437>,  <26.640718, 29.708549, 31.008230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721649, 29.747429, 30.618437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415101, -0.892740, -0.175231,
		-0.886992, 0.439963, -0.140279,
		0.202328, 0.097198, -0.974482,
		26.782347, 29.776588, 30.326092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955610, 29.647232, 30.649872>,  <26.640718, 29.708549, 31.008230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955610, 29.647232, 30.649872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230139, 29.578274, 30.367245>,  <26.394855, 29.536900, 30.197668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230139, 29.578274, 30.367245>,  <25.955610, 29.647232, 30.649872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230139, 29.578274, 30.367245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407619, -0.895757, -0.177384,
		-0.602335, 0.409754, -0.685050,
		0.686323, -0.172395, -0.706570,
		26.436035, 29.526556, 30.155273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571321, 29.576511, 29.947821>,  <25.955610, 29.647232, 30.649872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571321, 29.576511, 29.947821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918991, 29.380018, 29.925085>,  <26.127592, 29.262123, 29.911444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918991, 29.380018, 29.925085>,  <25.571321, 29.576511, 29.947821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918991, 29.380018, 29.925085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482662, -0.817720, -0.313643,
		0.107594, 0.300043, -0.947838,
		0.869172, -0.491232, -0.056837,
		26.179743, 29.232649, 29.908033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430416, 29.197735, 29.421434>,  <25.571321, 29.576511, 29.947821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430416, 29.197735, 29.421434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746153, 29.026993, 29.597948>,  <25.935595, 28.924547, 29.703856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746153, 29.026993, 29.597948>,  <25.430416, 29.197735, 29.421434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746153, 29.026993, 29.597948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416472, -0.900378, -0.125976,
		0.451096, -0.084344, -0.888481,
		0.789344, -0.426855, 0.441284,
		25.982956, 28.898935, 29.730333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.620373, 39.005478, 48.262711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292038, 39.091461, 48.051044>,  <36.095036, 39.143051, 47.924046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292038, 39.091461, 48.051044>,  <36.620373, 39.005478, 48.262711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292038, 39.091461, 48.051044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222446, 0.733005, 0.642823,
		0.526065, 0.645364, -0.553860,
		-0.820837, 0.214963, -0.529167,
		36.045788, 39.155949, 47.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579117, 39.784771, 48.059090>,  <36.620373, 39.005478, 48.262711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579117, 39.784771, 48.059090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213543, 39.622509, 48.064354>,  <35.994198, 39.525150, 48.067513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213543, 39.622509, 48.064354>,  <36.579117, 39.784771, 48.059090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213543, 39.622509, 48.064354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329219, 0.759912, 0.560490,
		-0.237369, 0.507915, -0.828057,
		-0.913931, -0.405655, 0.013164,
		35.939362, 39.500813, 48.068302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234753, 40.344650, 47.980072>,  <36.579117, 39.784771, 48.059090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234753, 40.344650, 47.980072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968712, 40.073204, 48.104729>,  <35.809086, 39.910336, 48.179523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968712, 40.073204, 48.104729>,  <36.234753, 40.344650, 47.980072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968712, 40.073204, 48.104729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466998, 0.703641, 0.535538,
		-0.582707, 0.210653, -0.784906,
		-0.665105, -0.678612, 0.311642,
		35.769180, 39.869621, 48.198223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554630, 40.632221, 47.902420>,  <36.234753, 40.344650, 47.980072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554630, 40.632221, 47.902420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484016, 40.332157, 48.157322>,  <35.441650, 40.152119, 48.310265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484016, 40.332157, 48.157322>,  <35.554630, 40.632221, 47.902420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484016, 40.332157, 48.157322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626545, 0.584961, 0.515036,
		-0.759130, -0.308350, -0.573273,
		-0.176531, -0.750160, 0.637256,
		35.431057, 40.107109, 48.348499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799961, 40.606518, 48.102528>,  <35.554630, 40.632221, 47.902420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799961, 40.606518, 48.102528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992390, 40.452934, 48.417778>,  <35.107845, 40.360783, 48.606930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992390, 40.452934, 48.417778>,  <34.799961, 40.606518, 48.102528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992390, 40.452934, 48.417778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515704, 0.603058, 0.608581,
		-0.708960, -0.699209, 0.092101,
		0.481068, -0.383963, 0.788128,
		35.136711, 40.337746, 48.654217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291885, 40.451145, 48.597420>,  <34.799961, 40.606518, 48.102528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291885, 40.451145, 48.597420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627972, 40.474140, 48.813099>,  <34.829624, 40.487938, 48.942505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627972, 40.474140, 48.813099>,  <34.291885, 40.451145, 48.597420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627972, 40.474140, 48.813099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473226, 0.563244, 0.677358,
		-0.264757, -0.824288, 0.500452,
		0.840215, 0.057492, 0.539197,
		34.880035, 40.491386, 48.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116814, 40.223366, 49.202095>,  <34.291885, 40.451145, 48.597420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116814, 40.223366, 49.202095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455624, 40.418560, 49.286400>,  <34.658909, 40.535679, 49.336983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455624, 40.418560, 49.286400>,  <34.116814, 40.223366, 49.202095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455624, 40.418560, 49.286400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400819, 0.325905, 0.856230,
		0.349152, -0.809717, 0.471647,
		0.847016, 0.487999, 0.210760,
		34.709728, 40.564957, 49.349628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240093, 40.084312, 49.916462>,  <34.116814, 40.223366, 49.202095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240093, 40.084312, 49.916462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453106, 40.411518, 49.829506>,  <34.580914, 40.607841, 49.777332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.453106, 40.411518, 49.829506>,  <34.240093, 40.084312, 49.916462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453106, 40.411518, 49.829506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263786, 0.404451, 0.875692,
		0.804253, -0.408991, 0.431165,
		0.532535, 0.818013, -0.217395,
		34.612865, 40.656921, 49.764286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492992, 40.318279, 50.530170>,  <34.240093, 40.084312, 49.916462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492992, 40.318279, 50.530170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514030, 40.633675, 50.285053>,  <34.526653, 40.822914, 50.137985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514030, 40.633675, 50.285053>,  <34.492992, 40.318279, 50.530170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514030, 40.633675, 50.285053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299720, 0.597814, 0.743496,
		0.952576, 0.144561, 0.267770,
		0.052596, 0.788493, -0.612791,
		34.529808, 40.870224, 50.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736809, 40.904850, 51.061932>,  <34.492992, 40.318279, 50.530170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736809, 40.904850, 51.061932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575672, 41.112770, 50.760597>,  <34.478989, 41.237522, 50.579796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575672, 41.112770, 50.760597>,  <34.736809, 40.904850, 51.061932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575672, 41.112770, 50.760597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583854, 0.487922, 0.648881,
		0.704861, 0.701239, 0.106932,
		-0.402846, 0.519804, -0.753339,
		34.454819, 41.268711, 50.534595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896854, 41.559536, 51.187080>,  <34.736809, 40.904850, 51.061932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896854, 41.559536, 51.187080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582726, 41.566814, 50.939556>,  <34.394249, 41.571182, 50.791042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582726, 41.566814, 50.939556>,  <34.896854, 41.559536, 51.187080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582726, 41.566814, 50.939556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420278, 0.718266, 0.554491,
		0.454566, 0.695530, -0.556424,
		-0.785326, 0.018200, -0.618815,
		34.347126, 41.572273, 50.753910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676247, 42.286987, 50.946377>,  <34.896854, 41.559536, 51.187080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676247, 42.286987, 50.946377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352036, 42.052887, 50.937271>,  <34.157509, 41.912426, 50.931808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352036, 42.052887, 50.937271>,  <34.676247, 42.286987, 50.946377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352036, 42.052887, 50.937271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546669, 0.742003, 0.388053,
		-0.210214, 0.326976, -0.921356,
		-0.810533, -0.585251, -0.022768,
		34.108875, 41.877312, 50.930439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122028, 42.650452, 50.680477>,  <34.676247, 42.286987, 50.946377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122028, 42.650452, 50.680477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968506, 42.370197, 50.921078>,  <33.876392, 42.202045, 51.065437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968506, 42.370197, 50.921078>,  <34.122028, 42.650452, 50.680477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968506, 42.370197, 50.921078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645700, 0.669291, 0.367588,
		-0.660124, -0.247308, -0.709277,
		-0.383805, -0.700634, 0.601502,
		33.853363, 42.160007, 51.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374382, 42.617592, 50.536163>,  <34.122028, 42.650452, 50.680477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374382, 42.617592, 50.536163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484734, 42.563110, 50.916759>,  <33.550945, 42.530422, 51.145119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484734, 42.563110, 50.916759>,  <33.374382, 42.617592, 50.536163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484734, 42.563110, 50.916759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502109, 0.823686, 0.263491,
		-0.819619, -0.550446, 0.158851,
		0.275881, -0.136202, 0.951493,
		33.567497, 42.522251, 51.202206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188938, 43.368729, 50.458096>,  <33.374382, 42.617592, 50.536163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188938, 43.368729, 50.458096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922787, 43.663624, 50.411201>,  <32.763096, 43.840561, 50.383064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922787, 43.663624, 50.411201>,  <33.188938, 43.368729, 50.458096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922787, 43.663624, 50.411201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121197, -0.261654, -0.957522,
		-0.736601, -0.622907, 0.263450,
		-0.665380, 0.737241, -0.117240,
		32.723171, 43.884796, 50.376030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570850, 43.209888, 50.211788>,  <33.188938, 43.368729, 50.458096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570850, 43.209888, 50.211788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704994, 43.573700, 50.113567>,  <32.785480, 43.791985, 50.054634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704994, 43.573700, 50.113567>,  <32.570850, 43.209888, 50.211788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704994, 43.573700, 50.113567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153559, -0.309931, -0.938277,
		-0.929491, 0.276955, -0.243604,
		0.335361, 0.909527, -0.245549,
		32.805603, 43.846558, 50.039902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334629, 43.130489, 49.525105>,  <32.570850, 43.209888, 50.211788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334629, 43.130489, 49.525105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601429, 43.427986, 49.542854>,  <32.761509, 43.606483, 49.553505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601429, 43.427986, 49.542854>,  <32.334629, 43.130489, 49.525105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601429, 43.427986, 49.542854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293731, -0.207749, -0.933039,
		-0.684718, 0.635369, -0.357027,
		0.666996, 0.743738, 0.044378,
		32.801529, 43.651108, 49.556168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272350, 43.678417, 48.982586>,  <32.334629, 43.130489, 49.525105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272350, 43.678417, 48.982586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649719, 43.662464, 49.114265>,  <32.876141, 43.652893, 49.193272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649719, 43.662464, 49.114265>,  <32.272350, 43.678417, 48.982586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649719, 43.662464, 49.114265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295802, -0.347470, -0.889813,
		0.149878, 0.936842, -0.316011,
		0.943418, -0.039887, 0.329198,
		32.932743, 43.650497, 49.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574760, 43.804157, 48.345661>,  <32.272350, 43.678417, 48.982586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574760, 43.804157, 48.345661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855667, 43.667183, 48.595318>,  <33.024212, 43.584999, 48.745113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855667, 43.667183, 48.595318>,  <32.574760, 43.804157, 48.345661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855667, 43.667183, 48.595318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459697, -0.451314, -0.764849,
		0.543598, 0.824047, -0.159527,
		0.702268, -0.342436, 0.624145,
		33.066349, 43.564453, 48.782562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164333, 44.062374, 47.961285>,  <32.574760, 43.804157, 48.345661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164333, 44.062374, 47.961285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297729, 43.785294, 48.217083>,  <33.377766, 43.619045, 48.370560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297729, 43.785294, 48.217083>,  <33.164333, 44.062374, 47.961285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297729, 43.785294, 48.217083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485594, -0.455209, -0.746313,
		0.808075, 0.559420, 0.184566,
		0.333486, -0.692701, 0.639494,
		33.397774, 43.577484, 48.408932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966221, 44.019886, 47.975151>,  <33.164333, 44.062374, 47.961285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966221, 44.019886, 47.975151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791748, 43.683361, 48.102859>,  <33.687065, 43.481445, 48.179485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791748, 43.683361, 48.102859>,  <33.966221, 44.019886, 47.975151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791748, 43.683361, 48.102859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397472, -0.498443, -0.770435,
		0.807315, -0.209153, 0.551813,
		-0.436186, -0.841314, 0.319268,
		33.660892, 43.430965, 48.198639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419075, 43.567329, 47.766304>,  <33.966221, 44.019886, 47.975151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419075, 43.567329, 47.766304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117809, 43.313412, 47.835335>,  <33.937050, 43.161060, 47.876755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117809, 43.313412, 47.835335>,  <34.419075, 43.567329, 47.766304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117809, 43.313412, 47.835335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175698, -0.446924, -0.877148,
		0.633940, -0.630311, 0.448138,
		-0.753160, -0.634796, 0.172579,
		33.891861, 43.122974, 47.887108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756374, 43.005184, 47.892399>,  <34.419075, 43.567329, 47.766304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756374, 43.005184, 47.892399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390465, 42.953423, 47.739330>,  <34.170918, 42.922363, 47.647491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390465, 42.953423, 47.739330>,  <34.756374, 43.005184, 47.892399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390465, 42.953423, 47.739330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392070, -0.512541, -0.763926,
		-0.097276, -0.848856, 0.519597,
		-0.914778, -0.129407, -0.382669,
		34.116032, 42.914600, 47.624531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875431, 42.344086, 47.705441>,  <34.756374, 43.005184, 47.892399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875431, 42.344086, 47.705441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535244, 42.431541, 47.514069>,  <34.331131, 42.484016, 47.399246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535244, 42.431541, 47.514069>,  <34.875431, 42.344086, 47.705441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535244, 42.431541, 47.514069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256175, -0.622229, -0.739734,
		-0.459433, -0.751683, 0.473175,
		-0.850469, 0.218642, -0.478434,
		34.280102, 42.497135, 47.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706795, 41.775818, 47.442860>,  <34.875431, 42.344086, 47.705441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706795, 41.775818, 47.442860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428749, 41.984398, 47.244907>,  <34.261921, 42.109547, 47.126137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428749, 41.984398, 47.244907>,  <34.706795, 41.775818, 47.442860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428749, 41.984398, 47.244907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135344, -0.581150, -0.802463,
		-0.706049, -0.624779, 0.333387,
		-0.695110, 0.521456, -0.494881,
		34.220215, 42.140835, 47.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585461, 41.316132, 46.867317>,  <34.706795, 41.775818, 47.442860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585461, 41.316132, 46.867317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398872, 41.653503, 46.760708>,  <34.286919, 41.855927, 46.696743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398872, 41.653503, 46.760708>,  <34.585461, 41.316132, 46.867317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398872, 41.653503, 46.760708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020570, -0.290884, -0.956537,
		-0.884299, -0.451676, 0.118338,
		-0.466468, 0.843431, -0.266519,
		34.258930, 41.906532, 46.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889065, 41.147839, 46.544136>,  <34.585461, 41.316132, 46.867317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889065, 41.147839, 46.544136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086407, 41.475044, 46.425846>,  <34.204811, 41.671368, 46.354870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086407, 41.475044, 46.425846>,  <33.889065, 41.147839, 46.544136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086407, 41.475044, 46.425846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126325, -0.403761, -0.906101,
		-0.860605, 0.409673, -0.302533,
		0.493356, 0.818013, -0.295727,
		34.234413, 41.720448, 46.337128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520100, 41.488918, 45.985847>,  <33.889065, 41.147839, 46.544136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520100, 41.488918, 45.985847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901482, 41.605309, 45.954212>,  <34.130310, 41.675144, 45.935230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901482, 41.605309, 45.954212>,  <33.520100, 41.488918, 45.985847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901482, 41.605309, 45.954212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038293, -0.377022, -0.925413,
		-0.299092, 0.879311, -0.370616,
		0.953456, 0.290976, -0.079093,
		34.187519, 41.692600, 45.930485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012051, 42.106281, 46.083988>,  <33.520100, 41.488918, 45.985847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012051, 42.106281, 46.083988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696289, 42.190971, 45.853504>,  <32.506832, 42.241787, 45.715214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696289, 42.190971, 45.853504>,  <33.012051, 42.106281, 46.083988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696289, 42.190971, 45.853504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443614, 0.452051, 0.773858,
		0.424322, 0.866500, -0.262925,
		-0.789403, 0.211728, -0.576206,
		32.459469, 42.254490, 45.680641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847137, 42.788082, 46.097816>,  <33.012051, 42.106281, 46.083988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847137, 42.788082, 46.097816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504601, 42.598217, 46.016464>,  <32.299076, 42.484299, 45.967655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504601, 42.598217, 46.016464>,  <32.847137, 42.788082, 46.097816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504601, 42.598217, 46.016464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402788, 0.367501, 0.838275,
		-0.323159, 0.799773, -0.505898,
		-0.856347, -0.474665, -0.203378,
		32.247696, 42.455818, 45.955452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378922, 43.254147, 46.268898>,  <32.847137, 42.788082, 46.097816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378922, 43.254147, 46.268898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187351, 42.903214, 46.256744>,  <32.072411, 42.692654, 46.249454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187351, 42.903214, 46.256744>,  <32.378922, 43.254147, 46.268898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187351, 42.903214, 46.256744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513847, 0.252110, 0.820001,
		-0.711752, 0.408331, -0.571555,
		-0.478927, -0.877329, -0.030380,
		32.043674, 42.640015, 46.247631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690634, 43.447762, 46.253647>,  <32.378922, 43.254147, 46.268898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690634, 43.447762, 46.253647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684769, 43.072376, 46.391674>,  <31.681250, 42.847145, 46.474491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684769, 43.072376, 46.391674>,  <31.690634, 43.447762, 46.253647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684769, 43.072376, 46.391674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584189, 0.288119, 0.758756,
		-0.811485, -0.190459, -0.552465,
		-0.014664, -0.938463, 0.345068,
		31.680370, 42.790836, 46.495193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998859, 43.410778, 46.367176>,  <31.690634, 43.447762, 46.253647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998859, 43.410778, 46.367176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.188385, 43.122807, 46.570034>,  <31.302101, 42.950024, 46.691750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.188385, 43.122807, 46.570034>,  <30.998859, 43.410778, 46.367176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188385, 43.122807, 46.570034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639859, 0.114227, 0.759956,
		-0.605047, -0.684580, -0.406533,
		0.473813, -0.719932, 0.507147,
		31.330528, 42.906826, 46.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447113, 42.971645, 46.763458>,  <30.998859, 43.410778, 46.367176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447113, 42.971645, 46.763458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.782755, 42.918304, 46.974407>,  <30.984140, 42.886299, 47.100979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.782755, 42.918304, 46.974407>,  <30.447113, 42.971645, 46.763458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782755, 42.918304, 46.974407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450757, 0.372256, 0.811322,
		-0.304508, -0.918501, 0.252253,
		0.839103, -0.133349, 0.527376,
		31.034485, 42.878300, 47.132622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230499, 42.839924, 47.470676>,  <30.447113, 42.971645, 46.763458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230499, 42.839924, 47.470676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613657, 42.937729, 47.530884>,  <30.843552, 42.996410, 47.567009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613657, 42.937729, 47.530884>,  <30.230499, 42.839924, 47.470676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613657, 42.937729, 47.530884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263113, 0.537630, 0.801078,
		0.114946, -0.806951, 0.579325,
		0.957893, 0.244508, 0.150521,
		30.901026, 43.011082, 47.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819841, 42.250992, 47.622807>,  <30.230499, 42.839924, 47.470676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819841, 42.250992, 47.622807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.464817, 42.069496, 47.654697>,  <29.251802, 41.960598, 47.673832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.464817, 42.069496, 47.654697>,  <29.819841, 42.250992, 47.622807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464817, 42.069496, 47.654697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054431, -0.275130, -0.959865,
		0.457459, -0.847601, 0.268892,
		-0.887563, -0.453735, 0.079725,
		29.198547, 41.933376, 47.678616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870087, 41.596199, 47.332813>,  <29.819841, 42.250992, 47.622807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870087, 41.596199, 47.332813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482447, 41.693855, 47.318703>,  <29.249863, 41.752449, 47.310234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482447, 41.693855, 47.318703>,  <29.870087, 41.596199, 47.332813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482447, 41.693855, 47.318703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023561, -0.233976, -0.971957,
		-0.245559, -0.941087, 0.232497,
		-0.969095, 0.244151, -0.035282,
		29.191717, 41.767097, 47.308121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381655, 41.011425, 46.930012>,  <29.870087, 41.596199, 47.332813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381655, 41.011425, 46.930012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187317, 41.359386, 46.896011>,  <29.070715, 41.568165, 46.875610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187317, 41.359386, 46.896011>,  <29.381655, 41.011425, 46.930012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187317, 41.359386, 46.896011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191187, -0.200661, -0.960824,
		-0.852879, -0.450561, 0.263805,
		-0.485845, 0.869902, -0.084998,
		29.041563, 41.620358, 46.870514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821226, 40.759464, 46.491520>,  <29.381655, 41.011425, 46.930012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821226, 40.759464, 46.491520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820606, 41.155170, 46.433067>,  <28.820234, 41.392593, 46.397995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820606, 41.155170, 46.433067>,  <28.821226, 40.759464, 46.491520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820606, 41.155170, 46.433067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456695, -0.130704, -0.879970,
		-0.889622, 0.065377, 0.451994,
		-0.001548, 0.989263, -0.146135,
		28.820141, 41.451950, 46.389229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292681, 40.798435, 46.093182>,  <28.821226, 40.759464, 46.491520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292681, 40.798435, 46.093182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.480139, 41.151260, 46.073818>,  <28.592613, 41.362953, 46.062202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.480139, 41.151260, 46.073818>,  <28.292681, 40.798435, 46.093182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480139, 41.151260, 46.073818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111697, 0.004812, -0.993731,
		-0.876296, 0.471115, 0.100779,
		0.468646, 0.882059, -0.048406,
		28.620733, 41.415878, 46.059296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952847, 41.150120, 45.447376>,  <28.292681, 40.798435, 46.093182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952847, 41.150120, 45.447376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.313364, 41.305683, 45.523716>,  <28.529675, 41.399021, 45.569519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.313364, 41.305683, 45.523716>,  <27.952847, 41.150120, 45.447376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313364, 41.305683, 45.523716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277440, -0.179836, -0.943762,
		-0.332715, 0.903554, -0.269983,
		0.901292, 0.388908, 0.190848,
		28.583752, 41.422356, 45.580971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019159, 41.563301, 44.826004>,  <27.952847, 41.150120, 45.447376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019159, 41.563301, 44.826004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.374098, 41.499321, 44.998993>,  <28.587061, 41.460934, 45.102787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.374098, 41.499321, 44.998993>,  <28.019159, 41.563301, 44.826004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374098, 41.499321, 44.998993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389699, -0.241209, -0.888793,
		0.246480, 0.957201, -0.151703,
		0.887345, -0.159951, 0.432474,
		28.640301, 41.451336, 45.128735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.411068, 39.272064, 51.298897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748856, 39.100071, 51.426636>,  <32.951530, 38.996876, 51.503277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748856, 39.100071, 51.426636>,  <32.411068, 39.272064, 51.298897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748856, 39.100071, 51.426636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461770, 0.282419, -0.840838,
		0.271355, 0.857529, 0.437048,
		0.844473, -0.429980, 0.319345,
		33.002197, 38.971077, 51.522438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798082, 39.265610, 50.691849>,  <32.411068, 39.272064, 51.298897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798082, 39.265610, 50.691849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.132736, 39.484196, 50.706886>,  <32.333530, 39.615349, 50.715908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.132736, 39.484196, 50.706886>,  <31.798082, 39.265610, 50.691849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132736, 39.484196, 50.706886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040178, 0.007234, -0.999166,
		-0.546286, 0.837448, -0.015904,
		0.836635, 0.546469, 0.037599,
		32.383728, 39.648136, 50.718166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708248, 39.884445, 50.215603>,  <31.798082, 39.265610, 50.691849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708248, 39.884445, 50.215603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.094330, 39.792339, 50.265186>,  <32.325977, 39.737076, 50.294937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.094330, 39.792339, 50.265186>,  <31.708248, 39.884445, 50.215603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094330, 39.792339, 50.265186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075012, -0.210305, -0.974754,
		0.250516, 0.950133, -0.185715,
		0.965202, -0.230260, 0.123957,
		32.383892, 39.723263, 50.302372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028946, 40.165287, 49.668777>,  <31.708248, 39.884445, 50.215603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028946, 40.165287, 49.668777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261620, 39.866844, 49.798370>,  <32.401222, 39.687778, 49.876125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261620, 39.866844, 49.798370>,  <32.028946, 40.165287, 49.668777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261620, 39.866844, 49.798370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184778, -0.266684, -0.945905,
		0.792148, 0.610085, -0.017262,
		0.581686, -0.746108, 0.323983,
		32.436127, 39.643013, 49.895565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565063, 40.112030, 49.146179>,  <32.028946, 40.165287, 49.668777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565063, 40.112030, 49.146179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574196, 39.751869, 49.319962>,  <32.579674, 39.535770, 49.424229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574196, 39.751869, 49.319962>,  <32.565063, 40.112030, 49.146179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574196, 39.751869, 49.319962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312548, -0.406356, -0.858597,
		0.949628, 0.155389, 0.272143,
		0.022830, -0.900405, 0.434453,
		32.581043, 39.481747, 49.450298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088161, 39.871918, 48.776970>,  <32.565063, 40.112030, 49.146179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088161, 39.871918, 48.776970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944366, 39.548569, 48.963428>,  <32.858089, 39.354557, 49.075306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944366, 39.548569, 48.963428>,  <33.088161, 39.871918, 48.776970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944366, 39.548569, 48.963428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229389, -0.560770, -0.795561,
		0.904515, -0.179067, 0.387024,
		-0.359490, -0.808376, 0.466149,
		32.836521, 39.306057, 49.103271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641945, 39.349159, 48.946072>,  <33.088161, 39.871918, 48.776970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641945, 39.349159, 48.946072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285793, 39.177185, 48.886230>,  <33.072102, 39.074001, 48.850327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285793, 39.177185, 48.886230>,  <33.641945, 39.349159, 48.946072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285793, 39.177185, 48.886230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388095, -0.545174, -0.743080,
		0.237918, -0.719682, 0.652268,
		-0.890380, -0.429934, -0.149599,
		33.018681, 39.048206, 48.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828724, 38.712196, 48.655399>,  <33.641945, 39.349159, 48.946072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828724, 38.712196, 48.655399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435432, 38.709709, 48.582485>,  <33.199459, 38.708218, 48.538738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435432, 38.709709, 48.582485>,  <33.828724, 38.712196, 48.655399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435432, 38.709709, 48.582485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155959, -0.546864, -0.822567,
		-0.094566, -0.837198, 0.538661,
		-0.983227, -0.006222, -0.182283,
		33.140465, 38.707844, 48.527802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571289, 37.993095, 48.407234>,  <33.828724, 38.712196, 48.655399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571289, 37.993095, 48.407234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245834, 38.191639, 48.286156>,  <33.050564, 38.310764, 48.213509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245834, 38.191639, 48.286156>,  <33.571289, 37.993095, 48.407234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245834, 38.191639, 48.286156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143114, -0.675636, -0.723211,
		-0.563486, -0.545110, 0.620757,
		-0.813635, 0.496359, -0.302698,
		33.001743, 38.340546, 48.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984806, 37.511528, 48.424126>,  <33.571289, 37.993095, 48.407234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984806, 37.511528, 48.424126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893269, 37.801140, 48.163845>,  <32.838345, 37.974907, 48.007675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893269, 37.801140, 48.163845>,  <32.984806, 37.511528, 48.424126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893269, 37.801140, 48.163845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030659, -0.673472, -0.738576,
		-0.972980, -0.149068, 0.176317,
		-0.228843, 0.724026, -0.650705,
		32.824615, 38.018349, 47.968632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368214, 37.260693, 48.099979>,  <32.984806, 37.511528, 48.424126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368214, 37.260693, 48.099979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.526478, 37.537277, 47.858208>,  <32.621437, 37.703228, 47.713146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.526478, 37.537277, 47.858208>,  <32.368214, 37.260693, 48.099979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526478, 37.537277, 47.858208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098947, -0.686396, -0.720465,
		-0.913053, 0.225251, -0.339995,
		0.395657, 0.691464, -0.604428,
		32.645176, 37.744717, 47.676880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098660, 37.051056, 47.433945>,  <32.368214, 37.260693, 48.099979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098660, 37.051056, 47.433945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377392, 37.319450, 47.332596>,  <32.544632, 37.480488, 47.271786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377392, 37.319450, 47.332596>,  <32.098660, 37.051056, 47.433945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377392, 37.319450, 47.332596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286625, -0.584346, -0.759201,
		-0.657470, 0.456416, -0.599515,
		0.696835, 0.670987, -0.253370,
		32.586441, 37.520748, 47.256584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523249, 37.260880, 47.035427>,  <32.098660, 37.051056, 47.433945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523249, 37.260880, 47.035427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.128942, 37.194969, 47.048794>,  <30.892359, 37.155422, 47.056816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.128942, 37.194969, 47.048794>,  <31.523249, 37.260880, 47.035427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128942, 37.194969, 47.048794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057900, 0.519321, 0.852616,
		-0.157844, 0.838544, -0.521469,
		-0.985765, -0.164773, 0.033420,
		30.833214, 37.145538, 47.058819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200502, 37.948025, 47.069241>,  <31.523249, 37.260880, 47.035427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200502, 37.948025, 47.069241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.938953, 37.685192, 47.219280>,  <30.782024, 37.527493, 47.309303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.938953, 37.685192, 47.219280>,  <31.200502, 37.948025, 47.069241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938953, 37.685192, 47.219280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178698, 0.615857, 0.767325,
		-0.735197, 0.434705, -0.520112,
		-0.653874, -0.657078, 0.375095,
		30.742790, 37.488068, 47.331810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650726, 38.335857, 47.232956>,  <31.200502, 37.948025, 47.069241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650726, 38.335857, 47.232956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608131, 38.009830, 47.460754>,  <30.582575, 37.814217, 47.597435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608131, 38.009830, 47.460754>,  <30.650726, 38.335857, 47.232956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608131, 38.009830, 47.460754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109918, 0.578895, 0.807960,
		-0.988220, 0.023439, -0.151236,
		-0.106488, -0.815065, 0.569499,
		30.576185, 37.765312, 47.631603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105131, 38.458401, 47.819035>,  <30.650726, 38.335857, 47.232956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105131, 38.458401, 47.819035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.234472, 38.111217, 47.969814>,  <30.312077, 37.902908, 48.060284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.234472, 38.111217, 47.969814>,  <30.105131, 38.458401, 47.819035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234472, 38.111217, 47.969814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185722, 0.332395, 0.924673,
		-0.927874, -0.369004, -0.053718,
		0.323352, -0.867957, 0.376953,
		30.331478, 37.850830, 48.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557570, 38.255268, 48.236702>,  <30.105131, 38.458401, 47.819035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557570, 38.255268, 48.236702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.890535, 38.065018, 48.350452>,  <30.090315, 37.950867, 48.418701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.890535, 38.065018, 48.350452>,  <29.557570, 38.255268, 48.236702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890535, 38.065018, 48.350452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259885, 0.118170, 0.958382,
		-0.489432, -0.871676, -0.025241,
		0.832416, -0.475623, 0.284372,
		30.140261, 37.922333, 48.435764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341299, 37.734657, 48.663097>,  <29.557570, 38.255268, 48.236702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341299, 37.734657, 48.663097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.716923, 37.812351, 48.776546>,  <29.942297, 37.858967, 48.844616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.716923, 37.812351, 48.776546>,  <29.341299, 37.734657, 48.663097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716923, 37.812351, 48.776546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316969, 0.169925, 0.933090,
		0.133035, -0.966127, 0.221133,
		0.939059, 0.194226, 0.283626,
		29.998640, 37.870621, 48.861633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308968, 37.470829, 49.308727>,  <29.341299, 37.734657, 48.663097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308968, 37.470829, 49.308727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.648375, 37.682400, 49.302311>,  <29.852018, 37.809341, 49.298462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.648375, 37.682400, 49.302311>,  <29.308968, 37.470829, 49.308727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648375, 37.682400, 49.302311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219250, 0.378992, 0.899052,
		0.481610, -0.759344, 0.437548,
		0.848517, 0.528925, -0.016040,
		29.902929, 37.841076, 49.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571527, 37.383266, 50.004868>,  <29.308968, 37.470829, 49.308727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571527, 37.383266, 50.004868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732334, 37.719101, 49.858727>,  <29.828817, 37.920601, 49.771042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732334, 37.719101, 49.858727>,  <29.571527, 37.383266, 50.004868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732334, 37.719101, 49.858727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278018, 0.492104, 0.824948,
		0.872405, -0.230067, 0.431252,
		0.402014, 0.839585, -0.365352,
		29.852938, 37.970978, 49.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905451, 37.684639, 50.555149>,  <29.571527, 37.383266, 50.004868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905451, 37.684639, 50.555149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902971, 37.991215, 50.298233>,  <29.901484, 38.175159, 50.144085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902971, 37.991215, 50.298233>,  <29.905451, 37.684639, 50.555149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902971, 37.991215, 50.298233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210511, 0.626905, 0.750117,
		0.977572, 0.139857, 0.157459,
		-0.006197, 0.766440, -0.642285,
		29.901112, 38.221146, 50.105549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432346, 38.248989, 50.778027>,  <29.905451, 37.684639, 50.555149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432346, 38.248989, 50.778027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156136, 38.410065, 50.537689>,  <29.990408, 38.506710, 50.393486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156136, 38.410065, 50.537689>,  <30.432346, 38.248989, 50.778027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156136, 38.410065, 50.537689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304902, 0.591215, 0.746659,
		0.655899, 0.698787, -0.285470,
		-0.690529, 0.402693, -0.600839,
		29.948977, 38.530872, 50.357437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473534, 38.956821, 50.767891>,  <30.432346, 38.248989, 50.778027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473534, 38.956821, 50.767891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094076, 38.918606, 50.647263>,  <29.866402, 38.895676, 50.574886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094076, 38.918606, 50.647263>,  <30.473534, 38.956821, 50.767891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094076, 38.918606, 50.647263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270062, 0.741048, 0.614748,
		0.164749, 0.664621, -0.728792,
		-0.948643, -0.095540, -0.301575,
		29.809483, 38.889942, 50.556789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233049, 39.584023, 50.569668>,  <30.473534, 38.956821, 50.767891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233049, 39.584023, 50.569668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.880878, 39.411503, 50.648491>,  <29.669577, 39.307991, 50.695786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.880878, 39.411503, 50.648491>,  <30.233049, 39.584023, 50.569668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880878, 39.411503, 50.648491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200614, 0.715342, 0.669358,
		-0.429654, 0.549789, -0.716331,
		-0.880427, -0.431298, 0.197055,
		29.616751, 39.282112, 50.707607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807577, 40.135372, 50.529213>,  <30.233049, 39.584023, 50.569668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807577, 40.135372, 50.529213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594692, 39.855476, 50.719837>,  <29.466961, 39.687538, 50.834213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594692, 39.855476, 50.719837>,  <29.807577, 40.135372, 50.529213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594692, 39.855476, 50.719837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588930, 0.710391, 0.385366,
		-0.608203, -0.075566, -0.790177,
		-0.532214, -0.699739, 0.476565,
		29.435028, 39.645554, 50.862808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072756, 40.324852, 50.417076>,  <29.807577, 40.135372, 50.529213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072756, 40.324852, 50.417076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079111, 40.085068, 50.737175>,  <29.082924, 39.941196, 50.929234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079111, 40.085068, 50.737175>,  <29.072756, 40.324852, 50.417076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079111, 40.085068, 50.737175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618798, 0.622770, 0.478798,
		-0.785390, -0.502798, -0.361050,
		0.015887, -0.599460, 0.800247,
		29.083878, 39.905231, 50.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323372, 40.973434, 50.001225>,  <29.072756, 40.324852, 50.417076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323372, 40.973434, 50.001225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044640, 41.167206, 50.212791>,  <28.877399, 41.283470, 50.339733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044640, 41.167206, 50.212791>,  <29.323372, 40.973434, 50.001225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044640, 41.167206, 50.212791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125843, 0.808581, -0.574770,
		-0.706109, -0.333957, -0.624406,
		-0.696831, 0.484428, 0.528920,
		28.835590, 41.312534, 50.371468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508579, 40.955841, 49.835102>,  <29.323372, 40.973434, 50.001225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508579, 40.955841, 49.835102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.661570, 41.298504, 49.973583>,  <28.753363, 41.504101, 50.056671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.661570, 41.298504, 49.973583>,  <28.508579, 40.955841, 49.835102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661570, 41.298504, 49.973583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060061, 0.396955, -0.915871,
		-0.922012, 0.329504, 0.203276,
		0.382474, 0.856653, 0.346207,
		28.776312, 41.555500, 50.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050951, 41.517490, 49.737141>,  <28.508579, 40.955841, 49.835102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050951, 41.517490, 49.737141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.429125, 41.646137, 49.716301>,  <28.656029, 41.723328, 49.703796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.429125, 41.646137, 49.716301>,  <28.050951, 41.517490, 49.737141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429125, 41.646137, 49.716301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148997, 0.284581, -0.947002,
		-0.289749, 0.903091, 0.316973,
		0.945434, 0.321621, -0.052101,
		28.712755, 41.742622, 49.700672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083878, 42.262299, 49.414104>,  <28.050951, 41.517490, 49.737141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083878, 42.262299, 49.414104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436024, 42.078808, 49.365906>,  <28.647312, 41.968712, 49.336987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436024, 42.078808, 49.365906>,  <28.083878, 42.262299, 49.414104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436024, 42.078808, 49.365906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019310, 0.219188, -0.975492,
		0.473899, 0.861118, 0.184108,
		0.880368, -0.458729, -0.120501,
		28.700134, 41.941189, 49.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535082, 42.698265, 49.131741>,  <28.083878, 42.262299, 49.414104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535082, 42.698265, 49.131741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.701958, 42.346947, 49.038322>,  <28.802084, 42.136154, 48.982269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.701958, 42.346947, 49.038322>,  <28.535082, 42.698265, 49.131741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701958, 42.346947, 49.038322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066620, 0.285843, -0.955958,
		0.906374, 0.383257, 0.177764,
		0.417190, -0.878298, -0.233548,
		28.827114, 42.083458, 48.968258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936050, 42.812038, 48.474007>,  <28.535082, 42.698265, 49.131741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936050, 42.812038, 48.474007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929850, 42.413090, 48.502293>,  <28.926130, 42.173721, 48.519264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929850, 42.413090, 48.502293>,  <28.936050, 42.812038, 48.474007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929850, 42.413090, 48.502293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206364, -0.072389, -0.975794,
		0.978353, -0.000533, 0.206945,
		-0.015500, -0.997377, 0.070712,
		28.925200, 42.113876, 48.523506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587862, 42.664829, 48.174889>,  <28.936050, 42.812038, 48.474007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587862, 42.664829, 48.174889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.359339, 42.337273, 48.152882>,  <29.222225, 42.140739, 48.139675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.359339, 42.337273, 48.152882>,  <29.587862, 42.664829, 48.174889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359339, 42.337273, 48.152882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160050, -0.045407, -0.986064,
		0.804978, -0.572154, 0.157004,
		-0.571309, -0.818888, -0.055021,
		29.187946, 42.091606, 48.136375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326197, 42.673206, 48.171474>,  <29.587862, 42.664829, 48.174889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326197, 42.673206, 48.171474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.606850, 42.935741, 48.060528>,  <30.775242, 43.093262, 47.993958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.606850, 42.935741, 48.060528>,  <30.326197, 42.673206, 48.171474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606850, 42.935741, 48.060528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085531, 0.464034, 0.881678,
		0.707388, -0.594890, 0.381718,
		0.701632, 0.656337, -0.277370,
		30.817339, 43.132641, 47.977318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769682, 42.687832, 48.652012>,  <30.326197, 42.673206, 48.171474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769682, 42.687832, 48.652012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.815950, 43.049206, 48.486877>,  <30.843712, 43.266029, 48.387798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.815950, 43.049206, 48.486877>,  <30.769682, 42.687832, 48.652012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815950, 43.049206, 48.486877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103235, 0.424308, 0.899614,
		0.987908, -0.061440, 0.142346,
		0.115671, 0.903431, -0.412835,
		30.850651, 43.320236, 48.363026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990055, 43.048702, 49.192146>,  <30.769682, 42.687832, 48.652012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990055, 43.048702, 49.192146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.959890, 43.358307, 48.940681>,  <30.941792, 43.544071, 48.789803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.959890, 43.358307, 48.940681>,  <30.990055, 43.048702, 49.192146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959890, 43.358307, 48.940681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154230, 0.613814, 0.774239,
		0.985153, 0.155343, 0.073089,
		-0.075410, 0.774016, -0.628659,
		30.937267, 43.590511, 48.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637562, 43.504898, 49.363731>,  <30.990055, 43.048702, 49.192146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637562, 43.504898, 49.363731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352192, 43.708847, 49.171459>,  <31.180969, 43.831215, 49.056095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352192, 43.708847, 49.171459>,  <31.637562, 43.504898, 49.363731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352192, 43.708847, 49.171459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148951, 0.780642, 0.606969,
		0.684717, 0.361429, -0.632876,
		-0.713426, 0.509869, -0.480684,
		31.138165, 43.861809, 49.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807177, 44.196198, 49.294319>,  <31.637562, 43.504898, 49.363731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807177, 44.196198, 49.294319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408281, 44.219273, 49.275604>,  <31.168943, 44.233116, 49.264374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408281, 44.219273, 49.275604>,  <31.807177, 44.196198, 49.294319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408281, 44.219273, 49.275604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015956, 0.781589, 0.623590,
		0.072541, 0.621121, -0.780350,
		-0.997238, 0.057687, -0.046787,
		31.109110, 44.236580, 49.261570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647919, 44.865543, 49.147953>,  <31.807177, 44.196198, 49.294319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647919, 44.865543, 49.147953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319805, 44.724026, 49.327713>,  <31.122936, 44.639114, 49.435570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319805, 44.724026, 49.327713>,  <31.647919, 44.865543, 49.147953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319805, 44.724026, 49.327713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007906, 0.778647, 0.627413,
		-0.571899, 0.518211, -0.635916,
		-0.820286, -0.353790, 0.449404,
		31.073719, 44.617889, 49.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439802, 45.336319, 49.487629>,  <31.647919, 44.865543, 49.147953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439802, 45.336319, 49.487629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168631, 45.097858, 49.659679>,  <31.005928, 44.954781, 49.762909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.168631, 45.097858, 49.659679>,  <31.439802, 45.336319, 49.487629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168631, 45.097858, 49.659679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171210, 0.697060, 0.696272,
		-0.714910, 0.398382, -0.574626,
		-0.677931, -0.596153, 0.430129,
		30.965252, 44.919014, 49.788719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812174, 45.728790, 49.608334>,  <31.439802, 45.336319, 49.487629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812174, 45.728790, 49.608334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.828609, 45.429157, 49.872814>,  <30.838470, 45.249378, 50.031502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.828609, 45.429157, 49.872814>,  <30.812174, 45.728790, 49.608334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828609, 45.429157, 49.872814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339886, 0.611821, 0.714250,
		-0.939569, -0.254081, -0.229463,
		0.041087, -0.749079, 0.661206,
		30.840935, 45.204433, 50.071175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213888, 45.867332, 49.940063>,  <30.812174, 45.728790, 49.608334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213888, 45.867332, 49.940063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.456963, 45.644459, 50.166431>,  <30.602806, 45.510735, 50.302250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.456963, 45.644459, 50.166431>,  <30.213888, 45.867332, 49.940063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456963, 45.644459, 50.166431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151067, 0.618473, 0.771149,
		-0.779679, -0.554106, 0.291663,
		0.607684, -0.557188, 0.565917,
		30.639267, 45.477303, 50.336208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.310738, 37.379551, 36.627903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686317, 37.287045, 36.729794>,  <33.911667, 37.231541, 36.790928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686317, 37.287045, 36.729794>,  <33.310738, 37.379551, 36.627903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686317, 37.287045, 36.729794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177805, 0.307673, 0.934731,
		-0.294547, -0.922959, 0.247769,
		0.938950, -0.231267, 0.254731,
		33.968002, 37.217663, 36.806213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215271, 37.074879, 37.227100>,  <33.310738, 37.379551, 36.627903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215271, 37.074879, 37.227100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596142, 37.196903, 37.233887>,  <33.824665, 37.270119, 37.237957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596142, 37.196903, 37.233887>,  <33.215271, 37.074879, 37.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596142, 37.196903, 37.233887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130645, 0.356323, 0.925184,
		0.276193, -0.883160, 0.379139,
		0.952182, 0.305062, 0.016966,
		33.881798, 37.288422, 37.238976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472042, 36.869484, 37.761169>,  <33.215271, 37.074879, 37.227100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472042, 36.869484, 37.761169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737728, 37.159771, 37.689453>,  <33.897141, 37.333942, 37.646423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737728, 37.159771, 37.689453>,  <33.472042, 36.869484, 37.761169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737728, 37.159771, 37.689453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090258, 0.315945, 0.944474,
		0.742072, -0.611153, 0.275358,
		0.664216, 0.725721, -0.179292,
		33.936993, 37.377487, 37.635666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950077, 36.863571, 38.424713>,  <33.472042, 36.869484, 37.761169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950077, 36.863571, 38.424713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016171, 37.219360, 38.254288>,  <34.055824, 37.432835, 38.152031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016171, 37.219360, 38.254288>,  <33.950077, 36.863571, 38.424713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016171, 37.219360, 38.254288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017298, 0.434550, 0.900481,
		0.986103, -0.141417, 0.087187,
		0.165231, 0.889476, -0.426065,
		34.065739, 37.486202, 38.126469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340374, 37.253323, 38.936970>,  <33.950077, 36.863571, 38.424713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340374, 37.253323, 38.936970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193249, 37.537182, 38.696598>,  <34.104973, 37.707497, 38.552376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193249, 37.537182, 38.696598>,  <34.340374, 37.253323, 38.936970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193249, 37.537182, 38.696598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191708, 0.574485, 0.795748,
		0.909925, 0.407888, -0.075257,
		-0.367810, 0.709644, -0.600934,
		34.082905, 37.750076, 38.516319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548058, 37.795380, 39.247017>,  <34.340374, 37.253323, 38.936970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548058, 37.795380, 39.247017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275906, 37.919991, 38.981678>,  <34.112614, 37.994759, 38.822475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275906, 37.919991, 38.981678>,  <34.548058, 37.795380, 39.247017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275906, 37.919991, 38.981678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208305, 0.785611, 0.582601,
		0.702631, 0.534570, -0.469622,
		-0.680382, 0.311529, -0.663348,
		34.071793, 38.013451, 38.782673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653488, 38.442848, 39.061161>,  <34.548058, 37.795380, 39.247017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653488, 38.442848, 39.061161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262508, 38.408077, 38.984177>,  <34.027920, 38.387215, 38.937984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262508, 38.408077, 38.984177>,  <34.653488, 38.442848, 39.061161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262508, 38.408077, 38.984177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187463, 0.776781, 0.601223,
		0.097236, 0.623743, -0.775558,
		-0.977447, -0.086928, -0.192460,
		33.969273, 38.382000, 38.926437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323872, 39.143375, 39.075226>,  <34.653488, 38.442848, 39.061161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323872, 39.143375, 39.075226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028538, 38.885872, 39.155670>,  <33.851337, 38.731369, 39.203938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028538, 38.885872, 39.155670>,  <34.323872, 39.143375, 39.075226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028538, 38.885872, 39.155670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377683, 0.641703, 0.667512,
		-0.558768, 0.416889, -0.716925,
		-0.738332, -0.643755, 0.201111,
		33.807037, 38.692745, 39.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633495, 39.526131, 39.091988>,  <34.323872, 39.143375, 39.075226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633495, 39.526131, 39.091988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599083, 39.196968, 39.316639>,  <33.578434, 38.999470, 39.451431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599083, 39.196968, 39.316639>,  <33.633495, 39.526131, 39.091988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599083, 39.196968, 39.316639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427492, 0.539680, 0.725255,
		-0.899916, -0.177699, -0.398214,
		-0.086031, -0.822902, 0.561632,
		33.573273, 38.950096, 39.485130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270481, 39.717136, 39.600906>,  <33.633495, 39.526131, 39.091988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270481, 39.717136, 39.600906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341145, 39.349598, 39.742058>,  <33.383541, 39.129074, 39.826748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341145, 39.349598, 39.742058>,  <33.270481, 39.717136, 39.600906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341145, 39.349598, 39.742058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355609, 0.274714, 0.893350,
		-0.917788, -0.283303, -0.278218,
		0.176658, -0.918842, 0.352874,
		33.394142, 39.073944, 39.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600044, 39.332851, 39.714104>,  <33.270481, 39.717136, 39.600906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600044, 39.332851, 39.714104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880535, 39.198822, 39.965820>,  <33.048832, 39.118404, 40.116848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880535, 39.198822, 39.965820>,  <32.600044, 39.332851, 39.714104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880535, 39.198822, 39.965820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491999, 0.411364, 0.767278,
		-0.515959, -0.847649, 0.123607,
		0.701230, -0.335070, 0.629290,
		33.090904, 39.098301, 40.154606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234291, 39.104012, 40.299728>,  <32.600044, 39.332851, 39.714104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234291, 39.104012, 40.299728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605690, 39.147911, 40.441631>,  <32.828529, 39.174252, 40.526775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605690, 39.147911, 40.441631>,  <32.234291, 39.104012, 40.299728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605690, 39.147911, 40.441631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363059, 0.468988, 0.805133,
		-0.078017, -0.876359, 0.475297,
		0.928494, 0.109747, 0.354759,
		32.884239, 39.180836, 40.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735277, 38.596161, 40.451908>,  <32.234291, 39.104012, 40.299728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735277, 38.596161, 40.451908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350021, 38.630836, 40.350052>,  <31.118868, 38.651642, 40.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350021, 38.630836, 40.350052>,  <31.735277, 38.596161, 40.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350021, 38.630836, 40.350052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171066, -0.533180, -0.828526,
		-0.207592, -0.841549, 0.498699,
		-0.963142, 0.086685, -0.254644,
		31.061079, 38.656841, 40.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633791, 38.025398, 40.123878>,  <31.735277, 38.596161, 40.451908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633791, 38.025398, 40.123878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308872, 38.230637, 40.012951>,  <31.113920, 38.353779, 39.946396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308872, 38.230637, 40.012951>,  <31.633791, 38.025398, 40.123878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308872, 38.230637, 40.012951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013930, -0.492408, -0.870253,
		-0.583079, -0.703040, 0.407129,
		-0.812297, 0.513097, -0.277320,
		31.065184, 38.384567, 39.929756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007944, 37.523518, 39.980190>,  <31.633791, 38.025398, 40.123878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007944, 37.523518, 39.980190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968813, 37.875877, 39.794960>,  <30.945333, 38.087296, 39.683823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968813, 37.875877, 39.794960>,  <31.007944, 37.523518, 39.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968813, 37.875877, 39.794960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097011, -0.471532, -0.876496,
		-0.990464, -0.040822, 0.131586,
		-0.097827, 0.880903, -0.463076,
		30.939465, 38.140148, 39.656036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382792, 37.441483, 39.530537>,  <31.007944, 37.523518, 39.980190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382792, 37.441483, 39.530537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592171, 37.741684, 39.369171>,  <30.717798, 37.921806, 39.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592171, 37.741684, 39.369171>,  <30.382792, 37.441483, 39.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592171, 37.741684, 39.369171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148696, -0.385732, -0.910550,
		-0.838982, 0.536613, -0.090314,
		0.523450, 0.750505, -0.403414,
		30.749207, 37.966835, 39.248146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999020, 37.620056, 38.934437>,  <30.382792, 37.441483, 39.530537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999020, 37.620056, 38.934437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369066, 37.760067, 38.875595>,  <30.591095, 37.844074, 38.840290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369066, 37.760067, 38.875595>,  <29.999020, 37.620056, 38.934437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369066, 37.760067, 38.875595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036664, -0.467988, -0.882974,
		-0.377910, 0.811460, -0.445777,
		0.925116, 0.350028, -0.147106,
		30.646601, 37.865074, 38.831463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962646, 37.962574, 38.180855>,  <29.999020, 37.620056, 38.934437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962646, 37.962574, 38.180855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348967, 37.899166, 38.262924>,  <30.580759, 37.861122, 38.312164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348967, 37.899166, 38.262924>,  <29.962646, 37.962574, 38.180855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348967, 37.899166, 38.262924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, -0.480283, -0.870669,
		0.236563, 0.862669, -0.447034,
		0.965802, -0.158523, 0.205174,
		30.638708, 37.851608, 38.324478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265148, 38.153107, 37.563118>,  <29.962646, 37.962574, 38.180855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265148, 38.153107, 37.563118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541763, 37.919525, 37.733189>,  <30.707733, 37.779377, 37.835232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541763, 37.919525, 37.733189>,  <30.265148, 38.153107, 37.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541763, 37.919525, 37.733189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047254, -0.550777, -0.833314,
		0.720792, 0.596360, -0.353290,
		0.691539, -0.583951, 0.425176,
		30.749226, 37.744339, 37.860741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693720, 38.000374, 37.014179>,  <30.265148, 38.153107, 37.563118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693720, 38.000374, 37.014179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784536, 37.709545, 37.273354>,  <30.839025, 37.535049, 37.428860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784536, 37.709545, 37.273354>,  <30.693720, 38.000374, 37.014179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784536, 37.709545, 37.273354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192011, -0.618834, -0.761693,
		0.954769, 0.297347, -0.000896,
		0.227042, -0.727069, 0.647937,
		30.852650, 37.491425, 37.467735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221184, 37.655060, 36.731056>,  <30.693720, 38.000374, 37.014179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221184, 37.655060, 36.731056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098587, 37.378601, 36.992859>,  <31.025028, 37.212727, 37.149940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098587, 37.378601, 36.992859>,  <31.221184, 37.655060, 36.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098587, 37.378601, 36.992859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121141, -0.710331, -0.693365,
		0.944134, -0.133222, 0.301436,
		-0.306491, -0.691145, 0.654509,
		31.006639, 37.171257, 37.189213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699078, 37.111069, 36.627338>,  <31.221184, 37.655060, 36.731056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699078, 37.111069, 36.627338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380178, 36.960522, 36.816120>,  <31.188839, 36.870193, 36.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380178, 36.960522, 36.816120>,  <31.699078, 37.111069, 36.627338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380178, 36.960522, 36.816120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069731, -0.834024, -0.547304,
		0.599609, -0.403428, 0.691169,
		-0.797249, -0.376364, 0.471957,
		31.141003, 36.847614, 36.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950027, 36.409241, 36.728687>,  <31.699078, 37.111069, 36.627338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950027, 36.409241, 36.728687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552412, 36.448307, 36.748081>,  <31.313843, 36.471748, 36.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552412, 36.448307, 36.748081>,  <31.950027, 36.409241, 36.728687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552412, 36.448307, 36.748081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108878, -0.864694, -0.490356,
		-0.005964, -0.492712, 0.870172,
		-0.994037, 0.097667, 0.048488,
		31.254200, 36.477608, 36.762627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798712, 35.746265, 36.844154>,  <31.950027, 36.409241, 36.728687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798712, 35.746265, 36.844154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475992, 35.938225, 36.706299>,  <31.282360, 36.053402, 36.623585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475992, 35.938225, 36.706299>,  <31.798712, 35.746265, 36.844154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475992, 35.938225, 36.706299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353093, -0.859320, -0.369992,
		-0.473710, -0.176821, 0.862747,
		-0.806799, 0.479899, -0.344635,
		31.233953, 36.082195, 36.602909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285671, 35.351776, 37.069538>,  <31.798712, 35.746265, 36.844154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285671, 35.351776, 37.069538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142288, 35.568485, 36.765434>,  <31.056259, 35.698513, 36.582973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142288, 35.568485, 36.765434>,  <31.285671, 35.351776, 37.069538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142288, 35.568485, 36.765434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324985, -0.835853, -0.442420,
		-0.875154, 0.088483, 0.475685,
		-0.358456, 0.541776, -0.760255,
		31.034752, 35.731018, 36.537357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542364, 35.179218, 37.026142>,  <31.285671, 35.351776, 37.069538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542364, 35.179218, 37.026142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703762, 35.317085, 36.687107>,  <30.800600, 35.399807, 36.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703762, 35.317085, 36.687107>,  <30.542364, 35.179218, 37.026142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703762, 35.317085, 36.687107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124254, -0.897116, -0.423963,
		-0.906507, 0.276381, -0.319153,
		0.403493, 0.344669, -0.847583,
		30.824810, 35.420486, 36.432831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787437, 34.486382, 36.736462>,  <30.542364, 35.179218, 37.026142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787437, 34.486382, 36.736462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420725, 34.492603, 36.896095>,  <30.200697, 34.496338, 36.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420725, 34.492603, 36.896095>,  <30.787437, 34.486382, 36.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420725, 34.492603, 36.896095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231362, -0.835189, -0.498929,
		0.325551, -0.549742, 0.769286,
		-0.916782, 0.015557, 0.399086,
		30.145691, 34.497269, 37.015820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530161, 33.755127, 36.895390>,  <30.787437, 34.486382, 36.736462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530161, 33.755127, 36.895390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222738, 34.003460, 36.833557>,  <30.038284, 34.152458, 36.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222738, 34.003460, 36.833557>,  <30.530161, 33.755127, 36.895390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222738, 34.003460, 36.833557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413732, -0.666576, -0.620083,
		-0.488005, -0.412613, 0.769157,
		-0.768556, 0.620828, -0.154581,
		29.992172, 34.189709, 36.787182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178997, 33.846996, 37.027458>,  <30.530161, 33.755127, 36.895390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178997, 33.846996, 37.027458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485254, 33.836704, 37.284557>,  <31.669008, 33.830528, 37.438816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485254, 33.836704, 37.284557>,  <31.178997, 33.846996, 37.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485254, 33.836704, 37.284557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637940, 0.097919, 0.763835,
		-0.082592, -0.994862, 0.058556,
		0.765644, -0.025732, 0.642749,
		31.714947, 33.828983, 37.477383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012886, 33.367699, 37.607117>,  <31.178997, 33.846996, 37.027458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012886, 33.367699, 37.607117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271877, 33.653915, 37.712013>,  <31.427273, 33.825645, 37.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271877, 33.653915, 37.712013>,  <31.012886, 33.367699, 37.607117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271877, 33.653915, 37.712013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561552, 0.215332, 0.798932,
		0.515199, -0.664555, 0.541236,
		0.647479, 0.715541, 0.262243,
		31.466122, 33.868576, 37.790688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310135, 33.236225, 38.342850>,  <31.012886, 33.367699, 37.607117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310135, 33.236225, 38.342850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367996, 33.624943, 38.268341>,  <31.402714, 33.858173, 38.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367996, 33.624943, 38.268341>,  <31.310135, 33.236225, 38.342850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367996, 33.624943, 38.268341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508952, 0.234510, 0.828235,
		0.848554, -0.025005, 0.528518,
		0.144653, 0.971792, -0.186268,
		31.411392, 33.916481, 38.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515375, 33.521999, 38.980797>,  <31.310135, 33.236225, 38.342850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515375, 33.521999, 38.980797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365551, 33.827328, 38.770256>,  <31.275656, 34.010525, 38.643932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365551, 33.827328, 38.770256>,  <31.515375, 33.521999, 38.980797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365551, 33.827328, 38.770256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491312, 0.318033, 0.810844,
		0.786331, 0.562312, 0.255907,
		-0.374561, 0.763322, -0.526350,
		31.253183, 34.056324, 38.612350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695461, 34.026173, 39.405270>,  <31.515375, 33.521999, 38.980797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695461, 34.026173, 39.405270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412491, 34.184025, 39.170727>,  <31.242708, 34.278736, 39.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412491, 34.184025, 39.170727>,  <31.695461, 34.026173, 39.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412491, 34.184025, 39.170727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354069, 0.520135, 0.777235,
		0.611707, 0.757447, -0.228230,
		-0.707425, 0.394631, -0.586358,
		31.200264, 34.302414, 38.994820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433929, 34.608940, 39.810825>,  <31.695461, 34.026173, 39.405270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433929, 34.608940, 39.810825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153807, 34.648380, 39.528023>,  <30.985733, 34.672043, 39.358341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153807, 34.648380, 39.528023>,  <31.433929, 34.608940, 39.810825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153807, 34.648380, 39.528023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578349, 0.502182, 0.642904,
		0.418432, 0.859123, -0.294656,
		-0.700305, 0.098598, -0.707002,
		30.943716, 34.677959, 39.315922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212097, 35.343750, 39.728043>,  <31.433929, 34.608940, 39.810825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212097, 35.343750, 39.728043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914503, 35.105854, 39.606205>,  <30.735947, 34.963116, 39.533104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914503, 35.105854, 39.606205>,  <31.212097, 35.343750, 39.728043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914503, 35.105854, 39.606205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612008, 0.423542, 0.667876,
		-0.268204, 0.683300, -0.679093,
		-0.743984, -0.594738, -0.304590,
		30.691307, 34.927433, 39.514828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629204, 35.808174, 39.646217>,  <31.212097, 35.343750, 39.728043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629204, 35.808174, 39.646217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488361, 35.439442, 39.711033>,  <30.403856, 35.218204, 39.749924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488361, 35.439442, 39.711033>,  <30.629204, 35.808174, 39.646217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488361, 35.439442, 39.711033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658465, 0.367010, 0.657060,
		-0.665166, 0.124658, -0.736217,
		-0.352106, -0.921827, 0.162039,
		30.382729, 35.162895, 39.759644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902634, 35.858330, 39.686428>,  <30.629204, 35.808174, 39.646217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902634, 35.858330, 39.686428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006304, 35.515045, 39.863651>,  <30.068506, 35.309074, 39.969986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006304, 35.515045, 39.863651>,  <29.902634, 35.858330, 39.686428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006304, 35.515045, 39.863651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452405, 0.297422, 0.840755,
		-0.853321, -0.418346, -0.311175,
		0.259176, -0.858211, 0.443058,
		30.084057, 35.257584, 39.996571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392384, 35.777340, 40.159370>,  <29.902634, 35.858330, 39.686428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392384, 35.777340, 40.159370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660036, 35.506184, 40.281174>,  <29.820627, 35.343491, 40.354256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660036, 35.506184, 40.281174>,  <29.392384, 35.777340, 40.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660036, 35.506184, 40.281174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171116, 0.258202, 0.950816,
		-0.723174, -0.688329, 0.056773,
		0.669133, -0.677890, 0.304510,
		29.860777, 35.302818, 40.372528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113365, 35.504425, 40.708485>,  <29.392384, 35.777340, 40.159370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113365, 35.504425, 40.708485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501236, 35.412216, 40.740955>,  <29.733957, 35.356892, 40.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501236, 35.412216, 40.740955>,  <29.113365, 35.504425, 40.708485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501236, 35.412216, 40.740955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073271, 0.042662, 0.996399,
		-0.233158, -0.972131, 0.024477,
		0.969674, -0.230525, 0.081176,
		29.792139, 35.343060, 40.765308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148426, 35.167549, 41.317532>,  <29.113365, 35.504425, 40.708485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148426, 35.167549, 41.317532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537500, 35.252075, 41.279106>,  <29.770945, 35.302792, 41.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537500, 35.252075, 41.279106>,  <29.148426, 35.167549, 41.317532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537500, 35.252075, 41.279106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002650, 0.403714, 0.914882,
		0.232105, -0.890148, 0.392127,
		0.972687, 0.211309, -0.096063,
		29.829306, 35.315468, 41.250286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555960, 34.944809, 41.906467>,  <29.148426, 35.167549, 41.317532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555960, 34.944809, 41.906467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777534, 35.243343, 41.758881>,  <29.910479, 35.422466, 41.670330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777534, 35.243343, 41.758881>,  <29.555960, 34.944809, 41.906467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777534, 35.243343, 41.758881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245277, 0.277207, 0.928976,
		0.795610, -0.605091, -0.029505,
		0.553935, 0.746339, -0.368963,
		29.943714, 35.467243, 41.648193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311922, 34.888992, 42.144436>,  <29.555960, 34.944809, 41.906467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311922, 34.888992, 42.144436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220730, 35.270710, 42.067127>,  <30.166014, 35.499741, 42.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220730, 35.270710, 42.067127>,  <30.311922, 34.888992, 42.144436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220730, 35.270710, 42.067127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395859, 0.272197, 0.877043,
		0.889561, 0.123443, -0.439821,
		-0.227983, 0.954291, -0.193269,
		30.152334, 35.556995, 42.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931253, 35.283497, 42.521584>,  <30.311922, 34.888992, 42.144436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931253, 35.283497, 42.521584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686777, 35.591133, 42.446815>,  <30.540091, 35.775715, 42.401955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686777, 35.591133, 42.446815>,  <30.931253, 35.283497, 42.521584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686777, 35.591133, 42.446815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142719, 0.339389, 0.929756,
		0.778508, 0.541583, -0.317196,
		-0.611193, 0.769093, -0.186923,
		30.503420, 35.821861, 42.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218760, 35.912968, 42.768570>,  <30.931253, 35.283497, 42.521584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218760, 35.912968, 42.768570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842680, 36.046036, 42.739285>,  <30.617033, 36.125877, 42.721714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842680, 36.046036, 42.739285>,  <31.218760, 35.912968, 42.768570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842680, 36.046036, 42.739285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107976, 0.494921, 0.862203,
		0.323064, 0.802735, -0.501244,
		-0.940197, 0.332669, -0.073215,
		30.560621, 36.145836, 42.717319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150936, 36.725937, 42.769466>,  <31.218760, 35.912968, 42.768570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150936, 36.725937, 42.769466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822350, 36.535751, 42.895405>,  <30.625198, 36.421638, 42.970966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822350, 36.535751, 42.895405>,  <31.150936, 36.725937, 42.769466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822350, 36.535751, 42.895405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017592, 0.530720, 0.847365,
		-0.569988, 0.701619, -0.427603,
		-0.821465, -0.475465, 0.314847,
		30.575911, 36.393112, 42.989861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752981, 37.279427, 42.975964>,  <31.150936, 36.725937, 42.769466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752981, 37.279427, 42.975964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596642, 36.968533, 43.173199>,  <30.502838, 36.781994, 43.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596642, 36.968533, 43.173199>,  <30.752981, 37.279427, 42.975964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596642, 36.968533, 43.173199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142280, 0.580279, 0.801893,
		-0.909392, 0.243262, -0.337388,
		-0.390849, -0.777239, 0.493089,
		30.479387, 36.735359, 43.321125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499718, 37.507881, 43.590878>,  <30.752981, 37.279427, 42.975964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499718, 37.507881, 43.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498896, 37.123833, 43.702702>,  <30.498404, 36.893402, 43.769798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498896, 37.123833, 43.702702>,  <30.499718, 37.507881, 43.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498896, 37.123833, 43.702702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063978, 0.279116, 0.958124,
		-0.997949, -0.015918, -0.062000,
		-0.002054, -0.960125, 0.279562,
		30.498280, 36.835796, 43.786572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948952, 37.438362, 44.047001>,  <30.499718, 37.507881, 43.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948952, 37.438362, 44.047001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187057, 37.122379, 44.105824>,  <30.329922, 36.932789, 44.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187057, 37.122379, 44.105824>,  <29.948952, 37.438362, 44.047001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187057, 37.122379, 44.105824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044152, 0.150585, 0.987610,
		-0.802317, -0.594381, 0.054759,
		0.595263, -0.789959, 0.147060,
		30.365637, 36.885391, 44.149940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637199, 37.108055, 44.610844>,  <29.948952, 37.438362, 44.047001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637199, 37.108055, 44.610844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015575, 36.978394, 44.615265>,  <30.242601, 36.900597, 44.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015575, 36.978394, 44.615265>,  <29.637199, 37.108055, 44.610844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015575, 36.978394, 44.615265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039195, -0.080405, 0.995991,
		-0.321963, -0.942582, -0.088763,
		0.945941, -0.324152, 0.011058,
		30.299358, 36.881149, 44.618584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602951, 36.507660, 45.030247>,  <29.637199, 37.108055, 44.610844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602951, 36.507660, 45.030247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986948, 36.617153, 45.006638>,  <30.217346, 36.682850, 44.992474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986948, 36.617153, 45.006638>,  <29.602951, 36.507660, 45.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986948, 36.617153, 45.006638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061359, 0.000015, 0.998116,
		0.273217, -0.961806, -0.016781,
		0.959994, 0.273732, -0.059019,
		30.274946, 36.699272, 44.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969597, 35.986126, 45.346661>,  <29.602951, 36.507660, 45.030247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969597, 35.986126, 45.346661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224508, 36.293903, 45.363789>,  <30.377455, 36.478569, 45.374065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224508, 36.293903, 45.363789>,  <29.969597, 35.986126, 45.346661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224508, 36.293903, 45.363789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023885, -0.075263, 0.996877,
		0.770263, -0.634266, -0.066342,
		0.637278, 0.769443, 0.042823,
		30.415691, 36.524734, 45.376637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492777, 35.766254, 45.927563>,  <29.969597, 35.986126, 45.346661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492777, 35.766254, 45.927563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497784, 36.161926, 45.869087>,  <30.500788, 36.399330, 45.834003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497784, 36.161926, 45.869087>,  <30.492777, 35.766254, 45.927563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497784, 36.161926, 45.869087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016680, 0.145970, 0.989148,
		0.999783, -0.014818, -0.014672,
		0.012516, 0.989178, -0.146186,
		30.501539, 36.458679, 45.825230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991154, 35.972912, 46.491405>,  <30.492777, 35.766254, 45.927563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991154, 35.972912, 46.491405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841518, 36.328316, 46.385113>,  <30.751738, 36.541557, 46.321339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841518, 36.328316, 46.385113>,  <30.991154, 35.972912, 46.491405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841518, 36.328316, 46.385113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330119, 0.395345, 0.857161,
		0.866649, 0.232930, -0.441206,
		-0.374087, 0.888508, -0.265730,
		30.729292, 36.594868, 46.305393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456861, 36.563454, 46.770275>,  <30.991154, 35.972912, 46.491405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456861, 36.563454, 46.770275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083866, 36.703987, 46.736732>,  <30.860069, 36.788307, 46.716606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083866, 36.703987, 46.736732>,  <31.456861, 36.563454, 46.770275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083866, 36.703987, 46.736732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067618, 0.397854, 0.914954,
		0.354812, 0.847514, -0.394751,
		-0.932489, 0.351329, -0.083856,
		30.804119, 36.809387, 46.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047909, 37.025650, 46.598766>,  <31.456861, 36.563454, 46.770275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047909, 37.025650, 46.598766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393497, 37.179020, 46.729321>,  <32.600853, 37.271042, 46.807652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393497, 37.179020, 46.729321>,  <32.047909, 37.025650, 46.598766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393497, 37.179020, 46.729321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499902, -0.575457, -0.647262,
		-0.060359, 0.722379, -0.688858,
		0.863976, 0.383429, 0.326385,
		32.652691, 37.294048, 46.827236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419353, 37.314957, 46.057091>,  <32.047909, 37.025650, 46.598766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419353, 37.314957, 46.057091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697086, 37.237694, 46.334389>,  <32.863728, 37.191334, 46.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697086, 37.237694, 46.334389>,  <32.419353, 37.314957, 46.057091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697086, 37.237694, 46.334389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388253, -0.710548, -0.586841,
		0.605938, 0.676618, -0.418362,
		0.694333, -0.193159, 0.693247,
		32.905388, 37.179745, 46.542362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099964, 37.239819, 45.732010>,  <32.419353, 37.314957, 46.057091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099964, 37.239819, 45.732010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104103, 37.043449, 46.080467>,  <33.106586, 36.925629, 46.289539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104103, 37.043449, 46.080467>,  <33.099964, 37.239819, 45.732010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104103, 37.043449, 46.080467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390946, -0.799859, -0.455398,
		0.920355, 0.345283, 0.183644,
		0.010352, -0.490923, 0.871141,
		33.107208, 36.896172, 46.341808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698513, 36.962120, 45.824871>,  <33.099964, 37.239819, 45.732010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698513, 36.962120, 45.824871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487476, 36.716400, 46.059574>,  <33.360855, 36.568970, 46.200397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487476, 36.716400, 46.059574>,  <33.698513, 36.962120, 45.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487476, 36.716400, 46.059574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492992, -0.783906, -0.377425,
		0.691815, 0.090140, 0.716426,
		-0.527590, -0.614301, 0.586756,
		33.329201, 36.532108, 46.235600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167164, 36.447689, 46.105045>,  <33.698513, 36.962120, 45.824871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167164, 36.447689, 46.105045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791504, 36.313004, 46.077847>,  <33.566109, 36.232193, 46.061527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791504, 36.313004, 46.077847>,  <34.167164, 36.447689, 46.105045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791504, 36.313004, 46.077847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339301, -0.878410, -0.336556,
		0.053590, -0.339149, 0.939205,
		-0.939150, -0.336710, -0.068000,
		33.509758, 36.211990, 46.057446>
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
