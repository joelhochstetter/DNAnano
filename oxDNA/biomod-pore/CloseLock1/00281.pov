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
	<24.313795, 35.455505, 34.780037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351770, 35.065254, 34.859161>,  <24.374556, 34.831104, 34.906635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351770, 35.065254, 34.859161>,  <24.313795, 35.455505, 34.780037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351770, 35.065254, 34.859161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935634, 0.155311, 0.316966,
		-0.339964, 0.154988, 0.927579,
		0.094937, -0.975632, 0.197812,
		24.380251, 34.772564, 34.918507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365082, 35.313469, 35.427429>,  <24.313795, 35.455505, 34.780037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365082, 35.313469, 35.427429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558409, 35.055008, 35.191162>,  <24.674404, 34.899933, 35.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558409, 35.055008, 35.191162>,  <24.365082, 35.313469, 35.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.558409, 35.055008, 35.191162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872499, 0.410838, 0.264494,
		0.071766, -0.643194, 0.762332,
		0.483316, -0.646153, -0.590671,
		24.703403, 34.861160, 35.013962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849264, 34.706791, 35.633953>,  <24.365082, 35.313469, 35.427429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849264, 34.706791, 35.633953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952490, 34.927757, 35.316906>,  <25.014425, 35.060337, 35.126678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952490, 34.927757, 35.316906>,  <24.849264, 34.706791, 35.633953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952490, 34.927757, 35.316906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873923, 0.216298, 0.435286,
		0.411900, -0.805016, -0.426951,
		0.258064, 0.552417, -0.792615,
		25.029909, 35.093483, 35.079121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574732, 34.645092, 35.660172>,  <24.849264, 34.706791, 35.633953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574732, 34.645092, 35.660172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480282, 34.942921, 35.410419>,  <25.423613, 35.121620, 35.260567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480282, 34.942921, 35.410419>,  <25.574732, 34.645092, 35.660172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480282, 34.942921, 35.410419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836934, 0.482322, 0.258662,
		0.493747, -0.461489, -0.737049,
		-0.236125, 0.744575, -0.624382,
		25.409445, 35.166294, 35.223106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069403, 34.764610, 35.023338>,  <25.574732, 34.645092, 35.660172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069403, 34.764610, 35.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879709, 35.092815, 35.150997>,  <25.765894, 35.289738, 35.227592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879709, 35.092815, 35.150997>,  <26.069403, 34.764610, 35.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879709, 35.092815, 35.150997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831909, 0.298987, 0.467477,
		0.288152, 0.487194, -0.824385,
		-0.474232, 0.820517, 0.319148,
		25.737440, 35.338970, 35.246742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814623, 34.559353, 34.872612>,  <26.069403, 34.764610, 35.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814623, 34.559353, 34.872612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094843, 34.678604, 35.131950>,  <27.262976, 34.750153, 35.287552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094843, 34.678604, 35.131950>,  <26.814623, 34.559353, 34.872612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094843, 34.678604, 35.131950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218227, -0.775524, 0.592402,
		0.679416, -0.556494, -0.478234,
		0.700550, 0.298124, 0.648345,
		27.305008, 34.768040, 35.326454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395914, 34.005276, 35.058796>,  <26.814623, 34.559353, 34.872612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395914, 34.005276, 35.058796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367506, 34.254360, 35.370487>,  <27.350460, 34.403809, 35.557503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367506, 34.254360, 35.370487>,  <27.395914, 34.005276, 35.058796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367506, 34.254360, 35.370487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039208, -0.778852, 0.625982,
		0.996704, 0.075010, 0.030900,
		-0.071021, 0.622707, 0.779226,
		27.346199, 34.441174, 35.604256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685783, 33.614998, 35.585426>,  <27.395914, 34.005276, 35.058796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685783, 33.614998, 35.585426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482594, 33.902084, 35.775940>,  <27.360680, 34.074337, 35.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482594, 33.902084, 35.775940>,  <27.685783, 33.614998, 35.585426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482594, 33.902084, 35.775940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342868, -0.675716, 0.652571,
		0.790194, 0.168187, 0.589328,
		-0.507972, 0.717719, 0.476281,
		27.330202, 34.117401, 35.918823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829746, 33.497536, 36.237427>,  <27.685783, 33.614998, 35.585426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829746, 33.497536, 36.237427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473688, 33.679745, 36.232647>,  <27.260054, 33.789070, 36.229778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473688, 33.679745, 36.232647>,  <27.829746, 33.497536, 36.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473688, 33.679745, 36.232647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282624, -0.531342, 0.798623,
		0.357440, 0.714268, 0.601713,
		-0.890146, 0.455519, -0.011946,
		27.206644, 33.816399, 36.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731218, 33.616100, 36.929951>,  <27.829746, 33.497536, 36.237427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731218, 33.616100, 36.929951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364918, 33.695129, 36.790028>,  <27.145138, 33.742546, 36.706074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364918, 33.695129, 36.790028>,  <27.731218, 33.616100, 36.929951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364918, 33.695129, 36.790028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399748, -0.361373, 0.842384,
		0.040022, 0.911249, 0.409907,
		-0.915751, 0.197573, -0.349807,
		27.090193, 33.754402, 36.685085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416424, 33.934296, 37.484364>,  <27.731218, 33.616100, 36.929951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416424, 33.934296, 37.484364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145445, 33.776142, 37.236256>,  <26.982859, 33.681252, 37.087391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145445, 33.776142, 37.236256>,  <27.416424, 33.934296, 37.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145445, 33.776142, 37.236256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556941, -0.275134, 0.783657,
		-0.480504, 0.876340, -0.033818,
		-0.677445, -0.395385, -0.620273,
		26.942211, 33.657528, 37.050175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834370, 33.799709, 37.931217>,  <27.416424, 33.934296, 37.484364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834370, 33.799709, 37.931217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707790, 33.592316, 37.613464>,  <26.631842, 33.467880, 37.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707790, 33.592316, 37.613464>,  <26.834370, 33.799709, 37.931217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707790, 33.592316, 37.613464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589448, -0.548646, 0.592907,
		-0.743244, 0.655869, -0.131999,
		-0.316449, -0.518481, -0.794379,
		26.612856, 33.436771, 37.375153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948658, 33.794395, 37.911434>,  <26.834370, 33.799709, 37.931217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948658, 33.794395, 37.911434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122696, 33.480118, 37.735538>,  <26.227118, 33.291550, 37.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122696, 33.480118, 37.735538>,  <25.948658, 33.794395, 37.911434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122696, 33.480118, 37.735538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642682, -0.613059, 0.459477,
		-0.630598, 0.082700, -0.771691,
		0.435093, -0.785697, -0.439743,
		26.253223, 33.244408, 37.603615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420231, 33.430248, 37.599934>,  <25.948658, 33.794395, 37.911434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420231, 33.430248, 37.599934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722702, 33.174885, 37.657387>,  <25.904184, 33.021667, 37.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722702, 33.174885, 37.657387>,  <25.420231, 33.430248, 37.599934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722702, 33.174885, 37.657387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612475, -0.613230, 0.498822,
		-0.230373, -0.465169, -0.854720,
		0.756177, -0.638409, 0.143633,
		25.949554, 32.983360, 37.700478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151834, 32.693134, 37.561653>,  <25.420231, 33.430248, 37.599934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151834, 32.693134, 37.561653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502554, 32.642429, 37.747192>,  <25.712986, 32.612007, 37.858517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502554, 32.642429, 37.747192>,  <25.151834, 32.693134, 37.561653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502554, 32.642429, 37.747192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445110, -0.578927, 0.683169,
		0.181931, -0.805465, -0.564028,
		0.876800, -0.126765, 0.463846,
		25.765594, 32.604401, 37.886345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039736, 31.949577, 37.817631>,  <25.151834, 32.693134, 37.561653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039736, 31.949577, 37.817631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359703, 32.112114, 37.994274>,  <25.551683, 32.209637, 38.100262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359703, 32.112114, 37.994274>,  <25.039736, 31.949577, 37.817631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359703, 32.112114, 37.994274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157463, -0.567980, 0.807839,
		0.579084, -0.715742, -0.390353,
		0.799917, 0.406340, 0.441611,
		25.599678, 32.234016, 38.126759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416050, 31.414282, 38.000267>,  <25.039736, 31.949577, 37.817631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416050, 31.414282, 38.000267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560957, 31.691015, 38.250111>,  <25.647902, 31.857056, 38.400017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560957, 31.691015, 38.250111>,  <25.416050, 31.414282, 38.000267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560957, 31.691015, 38.250111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040160, -0.657915, 0.752020,
		0.931209, -0.297515, -0.210556,
		0.362266, 0.691832, 0.624605,
		25.669636, 31.898565, 38.437492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889103, 31.068403, 38.335300>,  <25.416050, 31.414282, 38.000267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889103, 31.068403, 38.335300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786356, 31.375185, 38.570518>,  <25.724709, 31.559254, 38.711651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786356, 31.375185, 38.570518>,  <25.889103, 31.068403, 38.335300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786356, 31.375185, 38.570518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036371, -0.600360, 0.798902,
		0.965762, 0.226600, 0.126318,
		-0.256868, 0.766955, 0.588046,
		25.709295, 31.605272, 38.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412037, 31.200523, 38.835758>,  <25.889103, 31.068403, 38.335300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412037, 31.200523, 38.835758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049803, 31.303972, 38.970238>,  <25.832462, 31.366041, 39.050926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049803, 31.303972, 38.970238>,  <26.412037, 31.200523, 38.835758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049803, 31.303972, 38.970238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110271, -0.621819, 0.775359,
		0.409583, 0.739226, 0.534590,
		-0.905584, 0.258624, 0.336202,
		25.778128, 31.381559, 39.071098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611778, 31.196854, 39.565216>,  <26.412037, 31.200523, 38.835758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611778, 31.196854, 39.565216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213007, 31.225420, 39.578079>,  <25.973743, 31.242559, 39.585796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213007, 31.225420, 39.578079>,  <26.611778, 31.196854, 39.565216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213007, 31.225420, 39.578079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019021, -0.619082, 0.785096,
		0.075976, 0.782073, 0.618538,
		-0.996928, 0.071414, 0.032160,
		25.913929, 31.246843, 39.587727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433914, 31.115280, 40.307762>,  <26.611778, 31.196854, 39.565216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433914, 31.115280, 40.307762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102297, 31.067135, 40.089333>,  <25.903326, 31.038248, 39.958275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102297, 31.067135, 40.089333>,  <26.433914, 31.115280, 40.307762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102297, 31.067135, 40.089333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321285, -0.696744, 0.641346,
		-0.457669, 0.707150, 0.538961,
		-0.829045, -0.120364, -0.546074,
		25.853584, 31.031025, 39.925510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756338, 31.100220, 40.716110>,  <26.433914, 31.115280, 40.307762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756338, 31.100220, 40.716110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678507, 30.892885, 40.383011>,  <25.631807, 30.768484, 40.183151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678507, 30.892885, 40.383011>,  <25.756338, 31.100220, 40.716110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678507, 30.892885, 40.383011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061822, -0.840804, 0.537798,
		-0.978937, 0.156126, 0.131557,
		-0.194577, -0.518337, -0.832746,
		25.620134, 30.737385, 40.133186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167538, 30.789600, 40.916344>,  <25.756338, 31.100220, 40.716110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167538, 30.789600, 40.916344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342001, 30.578835, 40.624557>,  <25.446678, 30.452375, 40.449486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342001, 30.578835, 40.624557>,  <25.167538, 30.789600, 40.916344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342001, 30.578835, 40.624557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038033, -0.820708, 0.570081,
		-0.899066, -0.220901, -0.377998,
		0.436158, -0.526917, -0.729469,
		25.472849, 30.420759, 40.405716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922712, 30.217970, 40.976696>,  <25.167538, 30.789600, 40.916344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922712, 30.217970, 40.976696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252859, 30.122000, 40.772263>,  <25.450947, 30.064417, 40.649601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252859, 30.122000, 40.772263>,  <24.922712, 30.217970, 40.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252859, 30.122000, 40.772263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112718, -0.816972, 0.565553,
		-0.553232, -0.524397, -0.647258,
		0.825366, -0.239925, -0.511084,
		25.500469, 30.050022, 40.618938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820883, 29.509008, 40.739044>,  <24.922712, 30.217970, 40.976696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820883, 29.509008, 40.739044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216860, 29.544479, 40.694950>,  <25.454445, 29.565762, 40.668491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216860, 29.544479, 40.694950>,  <24.820883, 29.509008, 40.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216860, 29.544479, 40.694950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130381, -0.874321, 0.467508,
		-0.054927, -0.477179, -0.877088,
		0.989942, 0.088677, -0.110238,
		25.513842, 29.571083, 40.661877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215771, 28.878317, 40.381008>,  <24.820883, 29.509008, 40.739044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215771, 28.878317, 40.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434711, 29.084314, 40.644882>,  <25.566076, 29.207912, 40.803207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434711, 29.084314, 40.644882>,  <25.215771, 28.878317, 40.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434711, 29.084314, 40.644882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271485, -0.854884, 0.442120,
		0.791645, -0.062899, -0.607735,
		0.547351, 0.514993, 0.659689,
		25.598917, 29.238811, 40.842789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860443, 28.431393, 40.506359>,  <25.215771, 28.878317, 40.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860443, 28.431393, 40.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800684, 28.700848, 40.795879>,  <25.764828, 28.862520, 40.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800684, 28.700848, 40.795879>,  <25.860443, 28.431393, 40.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800684, 28.700848, 40.795879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392802, -0.631345, 0.668663,
		0.907407, 0.384209, -0.170284,
		-0.149399, 0.673637, 0.723805,
		25.755865, 28.902939, 41.013020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641001, 28.538311, 40.465275>,  <25.860443, 28.431393, 40.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641001, 28.538311, 40.465275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000755, 28.370026, 40.512775>,  <27.216608, 28.269054, 40.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000755, 28.370026, 40.512775>,  <26.641001, 28.538311, 40.465275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000755, 28.370026, 40.512775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266383, -0.312061, 0.911953,
		-0.346618, -0.851830, -0.392735,
		0.899386, -0.420717, 0.118747,
		27.270573, 28.243813, 40.548401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394604, 28.129610, 39.903152>,  <26.641001, 28.538311, 40.465275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394604, 28.129610, 39.903152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099939, 28.017115, 40.149155>,  <25.923140, 27.949617, 40.296757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099939, 28.017115, 40.149155>,  <26.394604, 28.129610, 39.903152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099939, 28.017115, 40.149155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674770, 0.366020, -0.640870,
		-0.044866, -0.887093, -0.459406,
		-0.736663, -0.281240, 0.615005,
		25.878941, 27.932743, 40.333656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152260, 28.519554, 39.837292>,  <26.394604, 28.129610, 39.903152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152260, 28.519554, 39.837292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975246, 28.388491, 39.503391>,  <26.869040, 28.309853, 39.303051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975246, 28.388491, 39.503391>,  <27.152260, 28.519554, 39.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975246, 28.388491, 39.503391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779439, 0.319764, -0.538726,
		0.443441, -0.889039, 0.113885,
		-0.442532, -0.327660, -0.834748,
		26.842487, 28.290194, 39.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696165, 28.067698, 39.375534>,  <27.152260, 28.519554, 39.837292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696165, 28.067698, 39.375534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393690, 28.225391, 39.166626>,  <27.212206, 28.320007, 39.041283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393690, 28.225391, 39.166626>,  <27.696165, 28.067698, 39.375534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393690, 28.225391, 39.166626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653897, 0.425379, -0.625677,
		-0.024501, -0.814637, -0.579454,
		-0.756187, 0.394232, -0.522266,
		27.166834, 28.343660, 39.009945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540100, 27.900301, 39.920319>,  <27.696165, 28.067698, 39.375534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540100, 27.900301, 39.920319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659752, 28.255800, 40.059258>,  <27.731543, 28.469099, 40.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659752, 28.255800, 40.059258>,  <27.540100, 27.900301, 39.920319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659752, 28.255800, 40.059258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630329, -0.457326, 0.627326,
		0.716384, 0.031290, -0.697004,
		0.299129, 0.888748, 0.347345,
		27.749491, 28.522425, 40.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179699, 27.715740, 40.068893>,  <27.540100, 27.900301, 39.920319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179699, 27.715740, 40.068893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086588, 28.058878, 40.252163>,  <28.030722, 28.264761, 40.362125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086588, 28.058878, 40.252163>,  <28.179699, 27.715740, 40.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086588, 28.058878, 40.252163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560827, -0.266485, 0.783874,
		0.794536, 0.439422, -0.419070,
		-0.232776, 0.857843, 0.458172,
		28.016756, 28.316231, 40.389614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797295, 28.134634, 40.165607>,  <28.179699, 27.715740, 40.068893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797295, 28.134634, 40.165607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508076, 28.196135, 40.434998>,  <28.334545, 28.233034, 40.596630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508076, 28.196135, 40.434998>,  <28.797295, 28.134634, 40.165607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508076, 28.196135, 40.434998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631642, -0.247595, 0.734660,
		0.279703, 0.956586, 0.081907,
		-0.723046, 0.153750, 0.673473,
		28.291162, 28.242260, 40.637039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916553, 28.692057, 40.602833>,  <28.797295, 28.134634, 40.165607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916553, 28.692057, 40.602833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735790, 28.363560, 40.742168>,  <28.627333, 28.166462, 40.825771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735790, 28.363560, 40.742168>,  <28.916553, 28.692057, 40.602833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735790, 28.363560, 40.742168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801745, -0.202692, 0.562247,
		-0.391134, 0.533364, 0.750024,
		-0.451906, -0.821242, 0.348342,
		28.600218, 28.117188, 40.846672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617826, 28.486177, 40.475624>,  <28.916553, 28.692057, 40.602833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617826, 28.486177, 40.475624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559040, 28.401936, 40.089039>,  <29.523769, 28.351391, 39.857086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559040, 28.401936, 40.089039>,  <29.617826, 28.486177, 40.475624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559040, 28.401936, 40.089039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257338, 0.935284, -0.242941,
		0.955080, -0.284411, -0.083259,
		-0.146965, -0.210602, -0.966461,
		29.514950, 28.338755, 39.799099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324945, 28.688259, 40.031338>,  <29.617826, 28.486177, 40.475624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324945, 28.688259, 40.031338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993370, 28.717911, 39.809574>,  <29.794426, 28.735703, 39.676517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993370, 28.717911, 39.809574>,  <30.324945, 28.688259, 40.031338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993370, 28.717911, 39.809574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209877, 0.959980, -0.185445,
		0.518474, -0.270080, -0.811321,
		-0.828937, 0.074129, -0.554408,
		29.744688, 28.740149, 39.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548882, 28.901485, 39.409050>,  <30.324945, 28.688259, 40.031338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548882, 28.901485, 39.409050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160181, 28.995842, 39.412071>,  <29.926962, 29.052456, 39.413883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160181, 28.995842, 39.412071>,  <30.548882, 28.901485, 39.409050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160181, 28.995842, 39.412071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219696, 0.915797, -0.336228,
		-0.086235, -0.325069, -0.941750,
		-0.971750, 0.235893, 0.007557,
		29.868656, 29.066610, 39.414337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515741, 29.216137, 38.869637>,  <30.548882, 28.901485, 39.409050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515741, 29.216137, 38.869637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151054, 29.321312, 38.995899>,  <29.932241, 29.384417, 39.071655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151054, 29.321312, 38.995899>,  <30.515741, 29.216137, 38.869637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151054, 29.321312, 38.995899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072285, 0.859035, -0.506787,
		-0.404410, -0.439229, -0.802203,
		-0.911717, 0.262937, 0.315652,
		29.877539, 29.400192, 39.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082216, 29.348434, 38.298626>,  <30.515741, 29.216137, 38.869637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082216, 29.348434, 38.298626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914923, 29.558977, 38.594742>,  <29.814547, 29.685303, 38.772411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914923, 29.558977, 38.594742>,  <30.082216, 29.348434, 38.298626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914923, 29.558977, 38.594742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129073, 0.772286, -0.622025,
		-0.899123, -0.355702, -0.255056,
		-0.418232, 0.526356, 0.740292,
		29.789454, 29.716885, 38.816830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498657, 29.609516, 38.036777>,  <30.082216, 29.348434, 38.298626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498657, 29.609516, 38.036777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565088, 29.826662, 38.366070>,  <29.604946, 29.956949, 38.563644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565088, 29.826662, 38.366070>,  <29.498657, 29.609516, 38.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565088, 29.826662, 38.366070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359420, 0.810725, -0.462107,
		-0.918278, -0.219142, 0.329759,
		0.166077, 0.542865, 0.823235,
		29.614912, 29.989521, 38.613041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845226, 29.978569, 38.162758>,  <29.498657, 29.609516, 38.036777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845226, 29.978569, 38.162758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140526, 30.181250, 38.340855>,  <29.317705, 30.302858, 38.447712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140526, 30.181250, 38.340855>,  <28.845226, 29.978569, 38.162758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140526, 30.181250, 38.340855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299368, 0.837638, -0.456881,
		-0.604457, 0.203999, 0.770076,
		0.738248, 0.506701, 0.445245,
		29.362000, 30.333260, 38.474430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553854, 30.547518, 38.233158>,  <28.845226, 29.978569, 38.162758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553854, 30.547518, 38.233158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930136, 30.674690, 38.280479>,  <29.155905, 30.750994, 38.308872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930136, 30.674690, 38.280479>,  <28.553854, 30.547518, 38.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930136, 30.674690, 38.280479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248825, 0.883722, -0.396385,
		-0.230569, 0.343445, 0.910430,
		0.940704, 0.317931, 0.118301,
		29.212347, 30.770069, 38.315971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548672, 31.184151, 38.635529>,  <28.553854, 30.547518, 38.233158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548672, 31.184151, 38.635529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883547, 31.195148, 38.417038>,  <29.084471, 31.201746, 38.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883547, 31.195148, 38.417038>,  <28.548672, 31.184151, 38.635529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883547, 31.195148, 38.417038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213331, 0.936041, -0.279853,
		0.503596, 0.350816, 0.789506,
		0.837187, 0.027494, -0.546226,
		29.134703, 31.203396, 38.253170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822853, 31.813559, 38.831593>,  <28.548672, 31.184151, 38.635529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822853, 31.813559, 38.831593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034775, 31.739983, 38.500420>,  <29.161928, 31.695837, 38.301716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034775, 31.739983, 38.500420>,  <28.822853, 31.813559, 38.831593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034775, 31.739983, 38.500420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069581, 0.982335, -0.173715,
		0.845262, 0.034426, 0.533242,
		0.529802, -0.183938, -0.827935,
		29.193716, 31.684801, 38.252041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363150, 32.318008, 38.825043>,  <28.822853, 31.813559, 38.831593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363150, 32.318008, 38.825043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361574, 32.187733, 38.446854>,  <29.360630, 32.109566, 38.219940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361574, 32.187733, 38.446854>,  <29.363150, 32.318008, 38.825043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361574, 32.187733, 38.446854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300412, 0.901418, -0.311768,
		0.953802, -0.285257, 0.094293,
		-0.003937, -0.325691, -0.945468,
		29.360394, 32.090027, 38.163212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000071, 32.587360, 38.496548>,  <29.363150, 32.318008, 38.825043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000071, 32.587360, 38.496548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727242, 32.514698, 38.213203>,  <29.563543, 32.471100, 38.043198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727242, 32.514698, 38.213203>,  <30.000071, 32.587360, 38.496548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727242, 32.514698, 38.213203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175792, 0.899524, -0.399942,
		0.709840, -0.397314, -0.581608,
		-0.682073, -0.181652, -0.708363,
		29.522619, 32.460201, 38.000694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308748, 32.892933, 37.958542>,  <30.000071, 32.587360, 38.496548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308748, 32.892933, 37.958542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927496, 32.838589, 37.850407>,  <29.698744, 32.805984, 37.785526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927496, 32.838589, 37.850407>,  <30.308748, 32.892933, 37.958542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927496, 32.838589, 37.850407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022573, 0.859092, -0.511323,
		0.301710, -0.493461, -0.815762,
		-0.953132, -0.135857, -0.270336,
		29.641556, 32.797832, 37.769306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216267, 33.080833, 37.177296>,  <30.308748, 32.892933, 37.958542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216267, 33.080833, 37.177296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859667, 33.114647, 37.355324>,  <29.645708, 33.134933, 37.462139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859667, 33.114647, 37.355324>,  <30.216267, 33.080833, 37.177296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859667, 33.114647, 37.355324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157701, 0.863084, -0.479809,
		-0.424689, -0.497937, -0.756107,
		-0.891498, 0.084530, 0.445067,
		29.592216, 33.140007, 37.488846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772562, 33.311275, 36.704556>,  <30.216267, 33.080833, 37.177296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772562, 33.311275, 36.704556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585205, 33.417568, 37.041599>,  <29.472790, 33.481346, 37.243824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585205, 33.417568, 37.041599>,  <29.772562, 33.311275, 36.704556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585205, 33.417568, 37.041599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255990, 0.871971, -0.417295,
		-0.845622, -0.411158, -0.340400,
		-0.468393, 0.265735, 0.842611,
		29.444687, 33.497288, 37.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213531, 33.656063, 36.480286>,  <29.772562, 33.311275, 36.704556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213531, 33.656063, 36.480286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254284, 33.767437, 36.862301>,  <29.278736, 33.834263, 37.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254284, 33.767437, 36.862301>,  <29.213531, 33.656063, 36.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254284, 33.767437, 36.862301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224858, 0.941631, -0.250539,
		-0.969050, -0.189222, 0.158544,
		0.101883, 0.278435, 0.955036,
		29.284849, 33.850967, 37.148811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555416, 34.100590, 36.695629>,  <29.213531, 33.656063, 36.480286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555416, 34.100590, 36.695629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835367, 34.195560, 36.965088>,  <29.003338, 34.252544, 37.126762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835367, 34.195560, 36.965088>,  <28.555416, 34.100590, 36.695629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835367, 34.195560, 36.965088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172181, 0.971404, -0.163486,
		-0.693198, -0.001568, 0.720746,
		0.699879, 0.237427, 0.673645,
		29.045330, 34.266788, 37.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230600, 34.615910, 36.989456>,  <28.555416, 34.100590, 36.695629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230600, 34.615910, 36.989456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606968, 34.656979, 37.118534>,  <28.832788, 34.681618, 37.195980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606968, 34.656979, 37.118534>,  <28.230600, 34.615910, 36.989456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606968, 34.656979, 37.118534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080499, 0.993429, -0.081357,
		-0.328924, 0.050574, 0.943001,
		0.940919, 0.102671, 0.322691,
		28.889244, 34.687778, 37.215340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274977, 35.114902, 37.585278>,  <28.230600, 34.615910, 36.989456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274977, 35.114902, 37.585278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618082, 35.108494, 37.379761>,  <28.823946, 35.104649, 37.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618082, 35.108494, 37.379761>,  <28.274977, 35.114902, 37.585278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618082, 35.108494, 37.379761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052693, 0.991509, -0.118883,
		0.511335, 0.129047, 0.849637,
		0.857764, -0.016019, -0.513793,
		28.875412, 35.103687, 37.225624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443432, 35.786400, 37.595573>,  <28.274977, 35.114902, 37.585278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443432, 35.786400, 37.595573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734968, 35.657337, 37.354019>,  <28.909889, 35.579899, 37.209087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734968, 35.657337, 37.354019>,  <28.443432, 35.786400, 37.595573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734968, 35.657337, 37.354019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086712, 0.918396, -0.386045,
		0.679171, 0.229001, 0.697342,
		0.728841, -0.322658, -0.603890,
		28.953621, 35.560539, 37.172852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983198, 36.368973, 37.575367>,  <28.443432, 35.786400, 37.595573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983198, 36.368973, 37.575367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985918, 36.136433, 37.249916>,  <28.987551, 35.996910, 37.054646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985918, 36.136433, 37.249916>,  <28.983198, 36.368973, 37.575367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985918, 36.136433, 37.249916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035721, 0.813269, -0.580790,
		0.999339, -0.025114, 0.026297,
		0.006801, -0.581346, -0.813628,
		28.987959, 35.962029, 37.005829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323246, 36.722160, 37.135563>,  <28.983198, 36.368973, 37.575367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323246, 36.722160, 37.135563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201044, 36.448845, 36.870300>,  <29.127724, 36.284855, 36.711143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201044, 36.448845, 36.870300>,  <29.323246, 36.722160, 37.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201044, 36.448845, 36.870300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038656, 0.686983, -0.725645,
		0.951406, -0.247323, -0.183463,
		-0.305505, -0.683290, -0.663160,
		29.109392, 36.243858, 36.671352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854145, 36.835564, 36.692158>,  <29.323246, 36.722160, 37.135563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854145, 36.835564, 36.692158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501184, 36.721352, 36.542580>,  <29.289408, 36.652824, 36.452831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501184, 36.721352, 36.542580>,  <29.854145, 36.835564, 36.692158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501184, 36.721352, 36.542580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046406, 0.738100, -0.673093,
		0.468201, -0.611293, -0.638051,
		-0.882403, -0.285533, -0.373947,
		29.236464, 36.635693, 36.430397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951721, 36.735558, 36.090683>,  <29.854145, 36.835564, 36.692158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951721, 36.735558, 36.090683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560196, 36.811497, 36.121349>,  <29.325279, 36.857059, 36.139748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560196, 36.811497, 36.121349>,  <29.951721, 36.735558, 36.090683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560196, 36.811497, 36.121349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096079, 0.756555, -0.646834,
		-0.180801, -0.625765, -0.758768,
		-0.978815, 0.189850, 0.076663,
		29.266552, 36.868450, 36.144348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568132, 36.844723, 35.484306>,  <29.951721, 36.735558, 36.090683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568132, 36.844723, 35.484306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793941, 36.737572, 35.796600>,  <30.929428, 36.673283, 35.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793941, 36.737572, 35.796600>,  <30.568132, 36.844723, 35.484306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793941, 36.737572, 35.796600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811995, -0.350108, 0.467000,
		0.148245, -0.897590, -0.415158,
		0.564525, -0.267876, 0.780739,
		30.963299, 36.657207, 36.030823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764042, 37.508209, 35.458099>,  <30.568132, 36.844723, 35.484306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764042, 37.508209, 35.458099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009441, 37.748783, 35.253399>,  <31.156681, 37.893127, 35.130581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009441, 37.748783, 35.253399>,  <30.764042, 37.508209, 35.458099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009441, 37.748783, 35.253399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671437, -0.738390, -0.062863,
		-0.415679, -0.305041, -0.856832,
		0.613501, 0.601440, -0.511749,
		31.193491, 37.929214, 35.099873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829189, 37.138382, 34.861813>,  <30.764042, 37.508209, 35.458099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829189, 37.138382, 34.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148201, 37.376652, 34.900017>,  <31.339607, 37.519611, 34.922939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148201, 37.376652, 34.900017>,  <30.829189, 37.138382, 34.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148201, 37.376652, 34.900017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595452, -0.751835, -0.283163,
		-0.096863, 0.282703, -0.954304,
		0.797530, 0.595671, 0.095511,
		31.387461, 37.555351, 34.928669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227362, 37.160908, 34.183857>,  <30.829189, 37.138382, 34.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227362, 37.160908, 34.183857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456005, 37.222881, 34.506165>,  <31.593191, 37.260067, 34.699547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456005, 37.222881, 34.506165>,  <31.227362, 37.160908, 34.183857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456005, 37.222881, 34.506165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663344, -0.665254, -0.342655,
		0.482949, 0.730365, -0.483040,
		0.571608, 0.154937, 0.805766,
		31.627487, 37.269363, 34.747894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910473, 37.445923, 33.942818>,  <31.227362, 37.160908, 34.183857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910473, 37.445923, 33.942818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935410, 37.254208, 34.292995>,  <31.950371, 37.139179, 34.503101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935410, 37.254208, 34.292995>,  <31.910473, 37.445923, 33.942818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935410, 37.254208, 34.292995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693356, -0.610127, -0.383408,
		0.717893, 0.630895, 0.294279,
		0.062343, -0.479287, 0.875441,
		31.954113, 37.110420, 34.555630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247673, 36.778969, 33.935936>,  <31.910473, 37.445923, 33.942818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247673, 36.778969, 33.935936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357864, 36.394505, 33.942715>,  <32.423977, 36.163826, 33.946781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357864, 36.394505, 33.942715>,  <32.247673, 36.778969, 33.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357864, 36.394505, 33.942715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538452, -0.139672, 0.831000,
		-0.796356, -0.238045, -0.556014,
		0.275475, -0.961159, 0.016947,
		32.440506, 36.106155, 33.947800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616611, 36.300964, 34.148453>,  <32.247673, 36.778969, 33.935936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616611, 36.300964, 34.148453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967094, 36.127651, 34.232864>,  <32.177383, 36.023663, 34.283512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967094, 36.127651, 34.232864>,  <31.616611, 36.300964, 34.148453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967094, 36.127651, 34.232864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361550, -0.301441, 0.882278,
		-0.318673, -0.849348, -0.420779,
		0.876202, -0.433291, 0.211021,
		32.229958, 35.997669, 34.296173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580410, 35.694096, 34.661026>,  <31.616611, 36.300964, 34.148453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580410, 35.694096, 34.661026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962719, 35.797955, 34.716282>,  <32.192104, 35.860271, 34.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962719, 35.797955, 34.716282>,  <31.580410, 35.694096, 34.661026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962719, 35.797955, 34.716282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026552, -0.391608, 0.919749,
		0.292909, -0.882738, -0.367394,
		0.955772, 0.259647, 0.138144,
		32.249451, 35.875847, 34.757725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866514, 35.137352, 35.023808>,  <31.580410, 35.694096, 34.661026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866514, 35.137352, 35.023808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125771, 35.433220, 35.096256>,  <32.281326, 35.610741, 35.139725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125771, 35.433220, 35.096256>,  <31.866514, 35.137352, 35.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125771, 35.433220, 35.096256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186320, -0.384647, 0.904064,
		0.738373, -0.552216, -0.387120,
		0.648143, 0.739665, 0.181125,
		32.320213, 35.655121, 35.150593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448532, 34.766754, 35.274662>,  <31.866514, 35.137352, 35.023808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448532, 34.766754, 35.274662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486092, 35.142834, 35.405632>,  <32.508629, 35.368481, 35.484215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486092, 35.142834, 35.405632>,  <32.448532, 34.766754, 35.274662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486092, 35.142834, 35.405632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230385, -0.340473, 0.911592,
		0.968558, -0.010165, -0.248579,
		0.093900, 0.940199, 0.327426,
		32.514263, 35.424892, 35.503860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042793, 34.744263, 35.609306>,  <32.448532, 34.766754, 35.274662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042793, 34.744263, 35.609306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898613, 35.091984, 35.744595>,  <32.812107, 35.300617, 35.825768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898613, 35.091984, 35.744595>,  <33.042793, 34.744263, 35.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898613, 35.091984, 35.744595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275443, -0.247235, 0.928981,
		0.891184, 0.428010, -0.150328,
		-0.360447, 0.869300, 0.338224,
		32.790478, 35.352776, 35.846062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474957, 34.909389, 36.153599>,  <33.042793, 34.744263, 35.609306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474957, 34.909389, 36.153599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146610, 35.124126, 36.231548>,  <32.949600, 35.252968, 36.278320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146610, 35.124126, 36.231548>,  <33.474957, 34.909389, 36.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146610, 35.124126, 36.231548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246750, 0.025641, 0.968740,
		0.515064, 0.843292, -0.153514,
		-0.820867, 0.536843, 0.194876,
		32.900349, 35.285179, 36.290012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683895, 35.426289, 36.661118>,  <33.474957, 34.909389, 36.153599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683895, 35.426289, 36.661118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286133, 35.412403, 36.701031>,  <33.047478, 35.404072, 36.724979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286133, 35.412403, 36.701031>,  <33.683895, 35.426289, 36.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286133, 35.412403, 36.701031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100426, -0.017360, 0.994793,
		-0.032798, 0.999247, 0.020749,
		-0.994404, -0.034711, 0.099780,
		32.987812, 35.401989, 36.730965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397633, 36.087734, 36.962669>,  <33.683895, 35.426289, 36.661118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397633, 36.087734, 36.962669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166080, 35.777439, 37.063168>,  <33.027149, 35.591263, 37.123466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166080, 35.777439, 37.063168>,  <33.397633, 36.087734, 36.962669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166080, 35.777439, 37.063168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085342, 0.248795, 0.964789,
		-0.810936, 0.579937, -0.077818,
		-0.578877, -0.775741, 0.251250,
		32.992416, 35.544716, 37.138542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177879, 36.306976, 37.692924>,  <33.397633, 36.087734, 36.962669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177879, 36.306976, 37.692924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986671, 35.958416, 37.648834>,  <32.871944, 35.749279, 37.622379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986671, 35.958416, 37.648834>,  <33.177879, 36.306976, 37.692924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986671, 35.958416, 37.648834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211133, -0.007815, 0.977426,
		-0.852595, 0.490503, -0.180247,
		-0.478022, -0.871404, -0.110225,
		32.843266, 35.696995, 37.615768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543900, 36.329597, 38.054733>,  <33.177879, 36.306976, 37.692924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543900, 36.329597, 38.054733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672947, 35.952030, 38.026630>,  <32.750378, 35.725491, 38.009769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672947, 35.952030, 38.026630>,  <32.543900, 36.329597, 38.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672947, 35.952030, 38.026630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212270, -0.144487, 0.966470,
		-0.922419, -0.296892, -0.246980,
		0.322622, -0.943917, -0.070257,
		32.769733, 35.668854, 38.005554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091274, 35.884174, 38.471428>,  <32.543900, 36.329597, 38.054733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091274, 35.884174, 38.471428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402767, 35.638603, 38.419792>,  <32.589664, 35.491261, 38.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402767, 35.638603, 38.419792>,  <32.091274, 35.884174, 38.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402767, 35.638603, 38.419792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268119, -0.511724, 0.816242,
		-0.567179, -0.601019, -0.563102,
		0.778729, -0.613934, -0.129094,
		32.636387, 35.454426, 38.381065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836319, 35.330879, 38.527184>,  <32.091274, 35.884174, 38.471428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836319, 35.330879, 38.527184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216961, 35.231709, 38.599819>,  <32.445347, 35.172207, 38.643402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216961, 35.231709, 38.599819>,  <31.836319, 35.330879, 38.527184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216961, 35.231709, 38.599819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276492, -0.432772, 0.858057,
		-0.134153, -0.866740, -0.480379,
		0.951607, -0.247932, 0.181589,
		32.502441, 35.157330, 38.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881584, 34.546566, 38.748432>,  <31.836319, 35.330879, 38.527184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881584, 34.546566, 38.748432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205563, 34.736866, 38.885632>,  <32.399948, 34.851048, 38.967949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205563, 34.736866, 38.885632>,  <31.881584, 34.546566, 38.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205563, 34.736866, 38.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007799, -0.576026, 0.817394,
		0.586453, -0.664720, -0.462839,
		0.809946, 0.475754, 0.342996,
		32.448547, 34.879593, 38.988529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427261, 33.970669, 38.976818>,  <31.881584, 34.546566, 38.748432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427261, 33.970669, 38.976818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543571, 34.307266, 39.158951>,  <32.613358, 34.509224, 39.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543571, 34.307266, 39.158951>,  <32.427261, 33.970669, 38.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543571, 34.307266, 39.158951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058465, -0.490636, 0.869401,
		0.955003, -0.226181, -0.191864,
		0.290777, 0.841498, 0.455336,
		32.630806, 34.559715, 39.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141960, 33.832245, 39.294842>,  <32.427261, 33.970669, 38.976818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141960, 33.832245, 39.294842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967007, 34.126808, 39.501297>,  <32.862034, 34.303547, 39.625168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967007, 34.126808, 39.501297>,  <33.141960, 33.832245, 39.294842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967007, 34.126808, 39.501297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132715, -0.514803, 0.846974,
		0.889426, 0.438955, 0.127436,
		-0.437388, 0.736408, 0.516135,
		32.835789, 34.347729, 39.656139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396019, 33.755428, 39.957363>,  <33.141960, 33.832245, 39.294842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396019, 33.755428, 39.957363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091240, 33.997219, 40.050350>,  <32.908371, 34.142292, 40.106144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091240, 33.997219, 40.050350>,  <33.396019, 33.755428, 39.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091240, 33.997219, 40.050350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060270, -0.291212, 0.954758,
		0.644825, 0.741489, 0.185457,
		-0.761950, 0.604475, 0.232470,
		32.862656, 34.178562, 40.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609516, 34.070778, 40.563992>,  <33.396019, 33.755428, 39.957363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609516, 34.070778, 40.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210003, 34.088837, 40.556129>,  <32.970295, 34.099674, 40.551411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210003, 34.088837, 40.556129>,  <33.609516, 34.070778, 40.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210003, 34.088837, 40.556129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033730, -0.336475, 0.941088,
		0.035878, 0.940609, 0.337590,
		-0.998787, 0.045151, -0.019655,
		32.910366, 34.102383, 40.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473801, 34.322922, 41.172268>,  <33.609516, 34.070778, 40.563992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473801, 34.322922, 41.172268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125710, 34.177422, 41.039371>,  <32.916855, 34.090122, 40.959633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125710, 34.177422, 41.039371>,  <33.473801, 34.322922, 41.172268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125710, 34.177422, 41.039371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285029, -0.178309, 0.941788,
		-0.401816, 0.914272, 0.051490,
		-0.870231, -0.363750, -0.332241,
		32.864639, 34.068298, 40.939697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992744, 34.569691, 41.701332>,  <33.473801, 34.322922, 41.172268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992744, 34.569691, 41.701332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801304, 34.281136, 41.501114>,  <32.686440, 34.108002, 41.380985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801304, 34.281136, 41.501114>,  <32.992744, 34.569691, 41.701332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801304, 34.281136, 41.501114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448623, -0.289135, 0.845659,
		-0.754772, 0.629286, -0.185252,
		-0.478599, -0.721388, -0.500543,
		32.657722, 34.064720, 41.350952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205070, 34.598503, 41.841980>,  <32.992744, 34.569691, 41.701332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205070, 34.598503, 41.841980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295860, 34.223362, 41.736980>,  <32.350334, 33.998276, 41.673981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295860, 34.223362, 41.736980>,  <32.205070, 34.598503, 41.841980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295860, 34.223362, 41.736980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466209, -0.341280, 0.816197,
		-0.855062, -0.062878, -0.514700,
		0.226978, -0.937856, -0.262501,
		32.363953, 33.942005, 41.658230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591106, 34.366169, 41.933056>,  <32.205070, 34.598503, 41.841980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591106, 34.366169, 41.933056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854418, 34.067356, 41.970177>,  <32.012405, 33.888069, 41.992451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854418, 34.067356, 41.970177>,  <31.591106, 34.366169, 41.933056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854418, 34.067356, 41.970177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486047, -0.327653, 0.810186,
		-0.574830, -0.578433, -0.578780,
		0.658277, -0.747034, 0.092801,
		32.051903, 33.843246, 41.998016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195055, 33.696678, 42.063465>,  <31.591106, 34.366169, 41.933056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195055, 33.696678, 42.063465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569286, 33.616940, 42.180050>,  <31.793825, 33.569096, 42.250000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569286, 33.616940, 42.180050>,  <31.195055, 33.696678, 42.063465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569286, 33.616940, 42.180050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349444, -0.641423, 0.682983,
		0.050798, -0.740835, -0.669764,
		0.935579, -0.199351, 0.291463,
		31.849960, 33.557133, 42.267490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113453, 32.994263, 42.423100>,  <31.195055, 33.696678, 42.063465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113453, 32.994263, 42.423100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474024, 33.115566, 42.546688>,  <31.690367, 33.188351, 42.620842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474024, 33.115566, 42.546688>,  <31.113453, 32.994263, 42.423100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474024, 33.115566, 42.546688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179354, -0.387961, 0.904057,
		0.394036, -0.870355, -0.295327,
		0.901426, 0.303263, 0.308973,
		31.744452, 33.206547, 42.639381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463636, 32.482750, 42.857555>,  <31.113453, 32.994263, 42.423100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463636, 32.482750, 42.857555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627825, 32.830467, 42.967712>,  <31.726337, 33.039097, 43.033806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627825, 32.830467, 42.967712>,  <31.463636, 32.482750, 42.857555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627825, 32.830467, 42.967712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115055, -0.250223, 0.961328,
		0.904586, -0.426283, -0.002693,
		0.410471, 0.869294, 0.275394,
		31.750967, 33.091255, 43.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011642, 32.259441, 43.400253>,  <31.463636, 32.482750, 42.857555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011642, 32.259441, 43.400253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998693, 32.655598, 43.454033>,  <31.990923, 32.893291, 43.486301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998693, 32.655598, 43.454033>,  <32.011642, 32.259441, 43.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998693, 32.655598, 43.454033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107495, -0.130287, 0.985632,
		0.993678, 0.046364, -0.102244,
		-0.032377, 0.990392, 0.134447,
		31.988981, 32.952717, 43.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565712, 32.519707, 44.014523>,  <32.011642, 32.259441, 43.400253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565712, 32.519707, 44.014523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300419, 32.817856, 43.987568>,  <32.141243, 32.996746, 43.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300419, 32.817856, 43.987568>,  <32.565712, 32.519707, 44.014523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300419, 32.817856, 43.987568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127663, -0.023953, 0.991528,
		0.737448, 0.666213, 0.111044,
		-0.663229, 0.745376, -0.067387,
		32.101452, 33.041470, 43.967350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861996, 33.176880, 44.448914>,  <32.565712, 32.519707, 44.014523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861996, 33.176880, 44.448914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464733, 33.155807, 44.407234>,  <32.226376, 33.143166, 44.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464733, 33.155807, 44.407234>,  <32.861996, 33.176880, 44.448914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464733, 33.155807, 44.407234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105449, 0.021547, 0.994191,
		-0.050129, 0.998379, -0.026954,
		-0.993160, -0.052680, -0.104198,
		32.166786, 33.140003, 44.375977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618862, 33.644257, 44.957561>,  <32.861996, 33.176880, 44.448914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618862, 33.644257, 44.957561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295174, 33.427441, 44.866913>,  <32.100960, 33.297352, 44.812523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295174, 33.427441, 44.866913>,  <32.618862, 33.644257, 44.957561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295174, 33.427441, 44.866913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278352, 0.014035, 0.960377,
		-0.517385, 0.840233, -0.162236,
		-0.809217, -0.542043, -0.226619,
		32.052410, 33.264828, 44.798927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070503, 33.853737, 45.316151>,  <32.618862, 33.644257, 44.957561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070503, 33.853737, 45.316151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931915, 33.486729, 45.238056>,  <31.848763, 33.266525, 45.191200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931915, 33.486729, 45.238056>,  <32.070503, 33.853737, 45.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931915, 33.486729, 45.238056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259568, -0.106231, 0.959865,
		-0.901433, 0.383243, -0.201352,
		-0.346472, -0.917518, -0.195237,
		31.827974, 33.211472, 45.179485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492479, 33.776031, 45.734253>,  <32.070503, 33.853737, 45.316151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492479, 33.776031, 45.734253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546427, 33.398796, 45.612667>,  <31.578794, 33.172455, 45.539715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546427, 33.398796, 45.612667>,  <31.492479, 33.776031, 45.734253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546427, 33.398796, 45.612667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230528, -0.328217, 0.916041,
		-0.963674, -0.053472, -0.261675,
		0.134868, -0.943088, -0.303967,
		31.586887, 33.115871, 45.521477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915867, 33.400833, 46.039272>,  <31.492479, 33.776031, 45.734253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915867, 33.400833, 46.039272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225832, 33.163815, 45.951271>,  <31.411812, 33.021603, 45.898472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225832, 33.163815, 45.951271>,  <30.915867, 33.400833, 46.039272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225832, 33.163815, 45.951271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153361, -0.513928, 0.844013,
		-0.613182, -0.620296, -0.489122,
		0.774911, -0.592546, -0.220002,
		31.458305, 32.986050, 45.885269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727690, 32.688133, 46.148846>,  <30.915867, 33.400833, 46.039272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727690, 32.688133, 46.148846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124355, 32.724655, 46.185204>,  <31.362354, 32.746567, 46.207020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124355, 32.724655, 46.185204>,  <30.727690, 32.688133, 46.148846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124355, 32.724655, 46.185204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029905, -0.523147, 0.851717,
		0.125318, -0.847337, -0.516057,
		0.991666, 0.091303, 0.090899,
		31.421856, 32.752045, 46.212475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876041, 32.118095, 46.562511>,  <30.727690, 32.688133, 46.148846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876041, 32.118095, 46.562511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220575, 32.320988, 46.551071>,  <31.427296, 32.442722, 46.544209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220575, 32.320988, 46.551071>,  <30.876041, 32.118095, 46.562511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220575, 32.320988, 46.551071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303952, -0.469395, 0.829024,
		0.407082, -0.722761, -0.558481,
		0.861335, 0.507232, -0.028602,
		31.478975, 32.473156, 46.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563780, 31.639664, 46.652184>,  <30.876041, 32.118095, 46.562511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563780, 31.639664, 46.652184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650202, 32.011532, 46.771534>,  <31.702055, 32.234653, 46.843143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650202, 32.011532, 46.771534>,  <31.563780, 31.639664, 46.652184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650202, 32.011532, 46.771534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328274, -0.356972, 0.874533,
		0.919542, -0.090997, -0.382312,
		0.216055, 0.929672, 0.298378,
		31.715017, 32.290432, 46.861046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169853, 31.555161, 47.029442>,  <31.563780, 31.639664, 46.652184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169853, 31.555161, 47.029442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036526, 31.921040, 47.120857>,  <31.956530, 32.140568, 47.175709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036526, 31.921040, 47.120857>,  <32.169853, 31.555161, 47.029442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036526, 31.921040, 47.120857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229491, -0.156401, 0.960663,
		0.914458, 0.372654, -0.157783,
		-0.333317, 0.914696, 0.228543,
		31.936531, 32.195450, 47.189419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699230, 31.798645, 47.423969>,  <32.169853, 31.555161, 47.029442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699230, 31.798645, 47.423969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382130, 32.031445, 47.496437>,  <32.191868, 32.171124, 47.539917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382130, 32.031445, 47.496437>,  <32.699230, 31.798645, 47.423969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382130, 32.031445, 47.496437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080876, -0.194159, 0.977630,
		0.604153, 0.789672, 0.106850,
		-0.792753, 0.581997, 0.181167,
		32.144302, 32.206043, 47.550789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891106, 32.222725, 48.036110>,  <32.699230, 31.798645, 47.423969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891106, 32.222725, 48.036110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498051, 32.168114, 47.985863>,  <32.262218, 32.135345, 47.955715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498051, 32.168114, 47.985863>,  <32.891106, 32.222725, 48.036110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498051, 32.168114, 47.985863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077028, -0.315722, 0.945720,
		-0.168780, 0.938977, 0.299724,
		-0.982639, -0.136532, -0.125615,
		32.203259, 32.127155, 47.948177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582077, 32.577560, 48.584892>,  <32.891106, 32.222725, 48.036110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582077, 32.577560, 48.584892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311123, 32.306320, 48.470818>,  <32.148552, 32.143574, 48.402374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311123, 32.306320, 48.470818>,  <32.582077, 32.577560, 48.584892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311123, 32.306320, 48.470818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233490, -0.169438, 0.957483,
		-0.697594, 0.715168, -0.043557,
		-0.677381, -0.678104, -0.285183,
		32.107910, 32.102890, 48.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849466, 32.754642, 48.834385>,  <32.582077, 32.577560, 48.584892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849466, 32.754642, 48.834385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924932, 32.362267, 48.815758>,  <31.970211, 32.126842, 48.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924932, 32.362267, 48.815758>,  <31.849466, 32.754642, 48.834385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924932, 32.362267, 48.815758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060537, -0.058944, 0.996424,
		-0.980174, -0.185169, -0.070504,
		0.188663, -0.980937, -0.046565,
		31.981531, 32.067986, 48.801788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291605, 32.420231, 49.237671>,  <31.849466, 32.754642, 48.834385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291605, 32.420231, 49.237671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642939, 32.229095, 49.231976>,  <31.853739, 32.114414, 49.228558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642939, 32.229095, 49.231976>,  <31.291605, 32.420231, 49.237671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642939, 32.229095, 49.231976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082110, -0.180146, 0.980207,
		-0.470944, -0.859779, -0.197463,
		0.878333, -0.477837, -0.014243,
		31.906439, 32.085743, 49.227703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116274, 31.779329, 49.410202>,  <31.291605, 32.420231, 49.237671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116274, 31.779329, 49.410202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503601, 31.847031, 49.483646>,  <31.735998, 31.887651, 49.527714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503601, 31.847031, 49.483646>,  <31.116274, 31.779329, 49.410202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503601, 31.847031, 49.483646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130602, -0.283444, 0.950054,
		0.212842, -0.943935, -0.252360,
		0.968319, 0.169253, 0.183609,
		31.794096, 31.897806, 49.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367096, 31.093935, 49.313034>,  <31.116274, 31.779329, 49.410202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367096, 31.093935, 49.313034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245075, 31.065620, 49.692913>,  <31.171864, 31.048632, 49.920841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245075, 31.065620, 49.692913>,  <31.367096, 31.093935, 49.313034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245075, 31.065620, 49.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458644, -0.884887, 0.081363,
		0.834619, 0.460395, 0.302403,
		-0.305052, -0.070788, 0.949701,
		31.153561, 31.044384, 49.977825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013237, 31.063835, 49.825600>,  <31.367096, 31.093935, 49.313034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013237, 31.063835, 49.825600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680542, 30.852907, 49.895058>,  <31.480925, 30.726351, 49.936733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680542, 30.852907, 49.895058>,  <32.013237, 31.063835, 49.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680542, 30.852907, 49.895058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538585, -0.842286, 0.021926,
		0.134694, 0.111758, 0.984565,
		-0.831735, -0.527318, 0.173642,
		31.431021, 30.694712, 49.947151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053562, 30.587957, 50.353905>,  <32.013237, 31.063835, 49.825600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053562, 30.587957, 50.353905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793716, 30.434210, 50.091530>,  <31.637808, 30.341961, 49.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793716, 30.434210, 50.091530>,  <32.053562, 30.587957, 50.353905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793716, 30.434210, 50.091530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415899, -0.901903, 0.116610,
		-0.636415, -0.197053, 0.745751,
		-0.649618, -0.384370, -0.655939,
		31.598831, 30.318899, 49.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446878, 30.104567, 50.604542>,  <32.053562, 30.587957, 50.353905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446878, 30.104567, 50.604542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574026, 30.011282, 50.236938>,  <31.650314, 29.955311, 50.016376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574026, 30.011282, 50.236938>,  <31.446878, 30.104567, 50.604542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574026, 30.011282, 50.236938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220512, -0.924515, 0.310880,
		-0.922131, -0.301475, -0.242462,
		0.317883, -0.233206, -0.919003,
		31.669388, 29.941319, 49.961235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012787, 29.637962, 50.290562>,  <31.446878, 30.104567, 50.604542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012787, 29.637962, 50.290562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394335, 29.591835, 50.179688>,  <31.623264, 29.564159, 50.113163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394335, 29.591835, 50.179688>,  <31.012787, 29.637962, 50.290562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394335, 29.591835, 50.179688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004073, -0.918227, 0.396033,
		-0.300187, -0.378893, -0.875401,
		0.953872, -0.115319, -0.277183,
		31.680496, 29.557240, 50.096531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122704, 29.154116, 49.791916>,  <31.012787, 29.637962, 50.290562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122704, 29.154116, 49.791916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445526, 29.179209, 50.026768>,  <31.639219, 29.194265, 50.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445526, 29.179209, 50.026768>,  <31.122704, 29.154116, 49.791916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445526, 29.179209, 50.026768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184796, -0.917555, 0.352055,
		0.560810, -0.392629, -0.728927,
		0.807058, 0.062733, 0.587130,
		31.687643, 29.198029, 50.202908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660353, 28.973206, 49.157677>,  <31.122704, 29.154116, 49.791916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660353, 28.973206, 49.157677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381655, 28.908960, 48.878033>,  <31.214436, 28.870413, 48.710247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381655, 28.908960, 48.878033>,  <31.660353, 28.973206, 49.157677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381655, 28.908960, 48.878033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642282, 0.294282, -0.707723,
		0.319407, -0.942125, -0.101877,
		-0.696744, -0.160618, -0.699106,
		31.172630, 28.860777, 48.668301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814266, 28.513184, 48.553139>,  <31.660353, 28.973206, 49.157677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814266, 28.513184, 48.553139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535345, 28.762381, 48.411346>,  <31.367992, 28.911898, 48.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535345, 28.762381, 48.411346>,  <31.814266, 28.513184, 48.553139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535345, 28.762381, 48.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576076, 0.192824, -0.794327,
		-0.426507, -0.758090, -0.493346,
		-0.697300, 0.622991, -0.354477,
		31.326155, 28.949278, 48.305004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812332, 28.339428, 47.849495>,  <31.814266, 28.513184, 48.553139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812332, 28.339428, 47.849495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625776, 28.689629, 47.900063>,  <31.513844, 28.899748, 47.930405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625776, 28.689629, 47.900063>,  <31.812332, 28.339428, 47.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625776, 28.689629, 47.900063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403573, 0.337775, -0.850316,
		-0.787154, -0.345556, -0.510862,
		-0.466388, 0.875499, 0.126423,
		31.485861, 28.952278, 47.937988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288965, 28.559689, 47.245552>,  <31.812332, 28.339428, 47.849495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288965, 28.559689, 47.245552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483471, 28.848505, 47.442410>,  <31.600174, 29.021795, 47.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483471, 28.848505, 47.442410>,  <31.288965, 28.559689, 47.245552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483471, 28.848505, 47.442410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604264, 0.128977, -0.786276,
		-0.631197, 0.679724, -0.373585,
		0.486267, 0.722039, 0.492143,
		31.629351, 29.065117, 47.590054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243227, 29.058969, 46.823582>,  <31.288965, 28.559689, 47.245552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243227, 29.058969, 46.823582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562469, 29.081932, 47.063492>,  <31.754015, 29.095709, 47.207436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562469, 29.081932, 47.063492>,  <31.243227, 29.058969, 46.823582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562469, 29.081932, 47.063492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602497, -0.068550, -0.795172,
		-0.004533, 0.995995, -0.089297,
		0.798108, 0.057406, 0.599773,
		31.801903, 29.099154, 47.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689608, 29.434805, 46.423077>,  <31.243227, 29.058969, 46.823582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689608, 29.434805, 46.423077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934212, 29.332811, 46.722687>,  <32.080975, 29.271614, 46.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934212, 29.332811, 46.722687>,  <31.689608, 29.434805, 46.423077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934212, 29.332811, 46.722687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758637, -0.079986, -0.646585,
		0.224782, 0.963631, 0.144529,
		0.611509, -0.254986, 0.749025,
		32.117664, 29.256315, 46.947395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180302, 29.874746, 46.442760>,  <31.689608, 29.434805, 46.423077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180302, 29.874746, 46.442760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310486, 29.527838, 46.593445>,  <32.388596, 29.319693, 46.683857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310486, 29.527838, 46.593445>,  <32.180302, 29.874746, 46.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310486, 29.527838, 46.593445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735080, -0.018528, -0.677727,
		0.594753, 0.497491, 0.631484,
		0.325463, -0.867271, 0.376715,
		32.408123, 29.267656, 46.706459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847244, 29.921535, 46.626202>,  <32.180302, 29.874746, 46.442760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847244, 29.921535, 46.626202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801735, 29.526972, 46.578789>,  <32.774429, 29.290234, 46.550339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801735, 29.526972, 46.578789>,  <32.847244, 29.921535, 46.626202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801735, 29.526972, 46.578789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631974, 0.020203, -0.774726,
		0.766592, -0.163058, 0.621087,
		-0.113778, -0.986410, -0.118536,
		32.767601, 29.231049, 46.543228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542934, 29.632809, 46.255157>,  <32.847244, 29.921535, 46.626202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542934, 29.632809, 46.255157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290024, 29.325226, 46.217350>,  <33.138279, 29.140676, 46.194664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290024, 29.325226, 46.217350>,  <33.542934, 29.632809, 46.255157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290024, 29.325226, 46.217350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318301, -0.146598, -0.936586,
		0.706337, -0.622266, 0.337450,
		-0.632275, -0.768956, -0.094520,
		33.100342, 29.094540, 46.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855804, 29.202955, 45.876396>,  <33.542934, 29.632809, 46.255157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855804, 29.202955, 45.876396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479015, 29.079325, 45.823990>,  <33.252941, 29.005146, 45.792545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479015, 29.079325, 45.823990>,  <33.855804, 29.202955, 45.876396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479015, 29.079325, 45.823990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210877, -0.241130, -0.947305,
		0.261197, -0.919961, 0.292315,
		-0.941970, -0.309076, -0.131016,
		33.196423, 28.986603, 45.784687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007374, 28.818621, 45.423233>,  <33.855804, 29.202955, 45.876396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007374, 28.818621, 45.423233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607971, 28.803864, 45.407097>,  <33.368332, 28.795010, 45.397415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607971, 28.803864, 45.407097>,  <34.007374, 28.818621, 45.423233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607971, 28.803864, 45.407097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045285, -0.144959, -0.988401,
		0.030619, -0.988750, 0.146413,
		-0.998505, -0.036894, -0.040337,
		33.308418, 28.792795, 45.394997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808521, 28.188599, 45.128201>,  <34.007374, 28.818621, 45.423233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808521, 28.188599, 45.128201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506371, 28.443619, 45.067627>,  <33.325081, 28.596630, 45.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506371, 28.443619, 45.067627>,  <33.808521, 28.188599, 45.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506371, 28.443619, 45.067627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031312, -0.195710, -0.980162,
		-0.654537, -0.745138, 0.127873,
		-0.755381, 0.637548, -0.151431,
		33.279755, 28.634884, 45.022198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462086, 27.918829, 44.610298>,  <33.808521, 28.188599, 45.128201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462086, 27.918829, 44.610298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336361, 28.297306, 44.579491>,  <33.260925, 28.524393, 44.561008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336361, 28.297306, 44.579491>,  <33.462086, 27.918829, 44.610298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336361, 28.297306, 44.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085660, -0.052530, -0.994938,
		-0.945449, -0.319314, -0.064541,
		-0.314307, 0.946192, -0.077017,
		33.242069, 28.581163, 44.556385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235512, 27.942375, 43.958351>,  <33.462086, 27.918829, 44.610298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235512, 27.942375, 43.958351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292049, 28.329502, 44.041637>,  <33.325974, 28.561779, 44.091610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292049, 28.329502, 44.041637>,  <33.235512, 27.942375, 43.958351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292049, 28.329502, 44.041637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091164, 0.196705, -0.976215,
		-0.985754, 0.156966, -0.060427,
		0.141347, 0.967817, 0.208212,
		33.334454, 28.619846, 44.104099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919041, 28.334736, 43.319332>,  <33.235512, 27.942375, 43.958351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919041, 28.334736, 43.319332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161274, 28.590441, 43.508904>,  <33.306614, 28.743864, 43.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161274, 28.590441, 43.508904>,  <32.919041, 28.334736, 43.319332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161274, 28.590441, 43.508904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178322, 0.471397, -0.863705,
		-0.775545, 0.607558, 0.171476,
		0.605584, 0.639264, 0.473931,
		33.342949, 28.782221, 43.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933723, 28.930510, 42.910248>,  <32.919041, 28.334736, 43.319332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933723, 28.930510, 42.910248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256554, 28.996916, 43.136902>,  <33.450253, 29.036758, 43.272896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256554, 28.996916, 43.136902>,  <32.933723, 28.930510, 42.910248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256554, 28.996916, 43.136902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351160, 0.636541, -0.686660,
		-0.474681, 0.753164, 0.455436,
		0.807071, 0.166013, 0.566635,
		33.498676, 29.046721, 43.306892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028671, 29.667524, 43.043335>,  <32.933723, 28.930510, 42.910248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028671, 29.667524, 43.043335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374626, 29.468081, 43.066540>,  <33.582199, 29.348415, 43.080463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374626, 29.468081, 43.066540>,  <33.028671, 29.667524, 43.043335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374626, 29.468081, 43.066540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394492, 0.603679, -0.692783,
		0.310406, 0.622063, 0.718809,
		0.864884, -0.498609, 0.058013,
		33.634090, 29.318499, 43.083942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615562, 30.203196, 43.252850>,  <33.028671, 29.667524, 43.043335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615562, 30.203196, 43.252850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779247, 29.878977, 43.085247>,  <33.877457, 29.684446, 42.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779247, 29.878977, 43.085247>,  <33.615562, 30.203196, 43.252850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779247, 29.878977, 43.085247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458873, 0.579726, -0.673315,
		0.788659, 0.083257, 0.609167,
		0.409208, -0.810547, -0.419002,
		33.902008, 29.635813, 42.959545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268875, 30.543509, 43.039158>,  <33.615562, 30.203196, 43.252850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268875, 30.543509, 43.039158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218273, 30.190752, 42.857494>,  <34.187912, 29.979097, 42.748497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218273, 30.190752, 42.857494>,  <34.268875, 30.543509, 43.039158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218273, 30.190752, 42.857494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533635, 0.325445, -0.780589,
		0.836200, -0.341102, 0.429440,
		-0.126501, -0.881893, -0.454161,
		34.180325, 29.926184, 42.721245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820690, 30.586105, 42.607815>,  <34.268875, 30.543509, 43.039158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820690, 30.586105, 42.607815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640228, 30.264921, 42.452011>,  <34.531952, 30.072210, 42.358528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640228, 30.264921, 42.452011>,  <34.820690, 30.586105, 42.607815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640228, 30.264921, 42.452011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492794, 0.139737, -0.858852,
		0.744051, -0.579424, 0.332650,
		-0.451156, -0.802958, -0.389508,
		34.504883, 30.024035, 42.335159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309418, 30.158045, 42.258198>,  <34.820690, 30.586105, 42.607815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309418, 30.158045, 42.258198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936192, 30.138758, 42.115612>,  <34.712257, 30.127186, 42.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936192, 30.138758, 42.115612>,  <35.309418, 30.158045, 42.258198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936192, 30.138758, 42.115612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337462, 0.225786, -0.913860,
		0.124549, -0.972983, -0.194401,
		-0.933063, -0.048217, -0.356466,
		34.656273, 30.124292, 42.008671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283401, 29.756018, 41.615593>,  <35.309418, 30.158045, 42.258198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283401, 29.756018, 41.615593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953648, 29.979574, 41.579762>,  <34.755795, 30.113708, 41.558262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953648, 29.979574, 41.579762>,  <35.283401, 29.756018, 41.615593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953648, 29.979574, 41.579762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177130, 0.104413, -0.978633,
		-0.537598, -0.822640, -0.185074,
		-0.824387, 0.558893, -0.089582,
		34.706333, 30.147242, 41.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385571, 29.816757, 40.939304>,  <35.283401, 29.756018, 41.615593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385571, 29.816757, 40.939304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057308, 30.028732, 41.024799>,  <34.860352, 30.155918, 41.076096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057308, 30.028732, 41.024799>,  <35.385571, 29.816757, 40.939304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057308, 30.028732, 41.024799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095767, 0.241209, -0.965736,
		-0.563338, -0.813009, -0.147199,
		-0.820658, 0.529939, 0.213742,
		34.811111, 30.187714, 41.088921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875069, 29.685091, 40.372452>,  <35.385571, 29.816757, 40.939304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875069, 29.685091, 40.372452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751526, 30.011211, 40.568367>,  <34.677399, 30.206884, 40.685917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751526, 30.011211, 40.568367>,  <34.875069, 29.685091, 40.372452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751526, 30.011211, 40.568367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060414, 0.497107, -0.865584,
		-0.949188, -0.296931, -0.104280,
		-0.308857, 0.815302, 0.489786,
		34.658867, 30.255802, 40.715302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127544, 29.748917, 40.244915>,  <34.875069, 29.685091, 40.372452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127544, 29.748917, 40.244915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290760, 30.099125, 40.348423>,  <34.388691, 30.309250, 40.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290760, 30.099125, 40.348423>,  <34.127544, 29.748917, 40.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290760, 30.099125, 40.348423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324073, 0.403882, -0.855486,
		-0.853510, 0.265214, 0.448534,
		0.408042, 0.875523, 0.258769,
		34.413174, 30.361782, 40.426052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697369, 30.245707, 39.908524>,  <34.127544, 29.748917, 40.244915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697369, 30.245707, 39.908524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053425, 30.401270, 40.003517>,  <34.267059, 30.494608, 40.060513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053425, 30.401270, 40.003517>,  <33.697369, 30.245707, 39.908524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053425, 30.401270, 40.003517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024401, 0.561092, -0.827394,
		-0.455033, 0.730701, 0.508940,
		0.890140, 0.388910, 0.237486,
		34.320465, 30.517942, 40.074764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719048, 30.881826, 39.738308>,  <33.697369, 30.245707, 39.908524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719048, 30.881826, 39.738308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117207, 30.895514, 39.774117>,  <34.356102, 30.903725, 39.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117207, 30.895514, 39.774117>,  <33.719048, 30.881826, 39.738308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117207, 30.895514, 39.774117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048476, 0.626016, -0.778302,
		-0.082670, 0.779060, 0.621476,
		0.995397, 0.034216, 0.089519,
		34.415825, 30.905779, 39.800972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894463, 31.596296, 39.545147>,  <33.719048, 30.881826, 39.738308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894463, 31.596296, 39.545147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227139, 31.384491, 39.478333>,  <34.426746, 31.257408, 39.438244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227139, 31.384491, 39.478333>,  <33.894463, 31.596296, 39.545147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227139, 31.384491, 39.478333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262747, 0.640360, -0.721736,
		0.489133, 0.556375, 0.671712,
		0.831693, -0.529515, -0.167035,
		34.476646, 31.225636, 39.428223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437595, 32.033802, 39.498444>,  <33.894463, 31.596296, 39.545147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437595, 32.033802, 39.498444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556652, 31.720898, 39.279545>,  <34.628086, 31.533155, 39.148205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556652, 31.720898, 39.279545>,  <34.437595, 32.033802, 39.498444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556652, 31.720898, 39.279545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364755, 0.622916, -0.692047,
		0.882250, 0.006371, 0.470739,
		0.297640, -0.782263, -0.547244,
		34.645943, 31.486219, 39.115372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104343, 32.161819, 39.112305>,  <34.437595, 32.033802, 39.498444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104343, 32.161819, 39.112305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967148, 31.835154, 38.926655>,  <34.884830, 31.639153, 38.815266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967148, 31.835154, 38.926655>,  <35.104343, 32.161819, 39.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967148, 31.835154, 38.926655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229226, 0.406392, -0.884478,
		0.910941, -0.409756, 0.047814,
		-0.342989, -0.816668, -0.464126,
		34.864250, 31.590153, 38.787418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625462, 32.003822, 38.782719>,  <35.104343, 32.161819, 39.112305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625462, 32.003822, 38.782719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302681, 31.844629, 38.608166>,  <35.109013, 31.749113, 38.503433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302681, 31.844629, 38.608166>,  <35.625462, 32.003822, 38.782719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302681, 31.844629, 38.608166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335410, 0.299352, -0.893246,
		0.486131, -0.867177, -0.108075,
		-0.806955, -0.397985, -0.436384,
		35.060593, 31.725233, 38.477249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900169, 31.631397, 38.224499>,  <35.625462, 32.003822, 38.782719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900169, 31.631397, 38.224499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512756, 31.672613, 38.133869>,  <35.280308, 31.697342, 38.079491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512756, 31.672613, 38.133869>,  <35.900169, 31.631397, 38.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512756, 31.672613, 38.133869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242517, 0.185770, -0.952195,
		-0.056025, -0.977176, -0.204913,
		-0.968528, 0.103041, -0.226574,
		35.222198, 31.703526, 38.065895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819366, 31.285074, 37.623928>,  <35.900169, 31.631397, 38.224499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819366, 31.285074, 37.623928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472717, 31.484657, 37.623272>,  <35.264729, 31.604406, 37.622879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472717, 31.484657, 37.623272>,  <35.819366, 31.285074, 37.623928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472717, 31.484657, 37.623272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133723, 0.229091, -0.964176,
		-0.480707, -0.835799, -0.265258,
		-0.866625, 0.498957, -0.001640,
		35.212730, 31.634344, 37.622780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414513, 31.127979, 36.882805>,  <35.819366, 31.285074, 37.623928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414513, 31.127979, 36.882805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297947, 31.478786, 37.035599>,  <35.228008, 31.689272, 37.127274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297947, 31.478786, 37.035599>,  <35.414513, 31.127979, 36.882805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297947, 31.478786, 37.035599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074339, 0.418870, -0.904998,
		-0.953703, -0.235336, -0.187263,
		-0.291417, 0.877020, 0.381983,
		35.210522, 31.741892, 37.150192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935551, 31.436966, 36.366638>,  <35.414513, 31.127979, 36.882805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935551, 31.436966, 36.366638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994591, 31.757612, 36.598370>,  <35.030014, 31.950001, 36.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994591, 31.757612, 36.598370>,  <34.935551, 31.436966, 36.366638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994591, 31.757612, 36.598370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110344, 0.568742, -0.815081,
		-0.982873, 0.184231, -0.004507,
		0.147600, 0.801618, 0.579329,
		35.038872, 31.998098, 36.772167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420727, 31.968042, 36.210899>,  <34.935551, 31.436966, 36.366638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420727, 31.968042, 36.210899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741817, 32.162025, 36.349724>,  <34.934471, 32.278416, 36.433018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741817, 32.162025, 36.349724>,  <34.420727, 31.968042, 36.210899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741817, 32.162025, 36.349724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097506, 0.467406, -0.878649,
		-0.588323, 0.739154, 0.327913,
		0.802725, 0.484956, 0.347058,
		34.982635, 32.307514, 36.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298664, 32.710979, 35.976120>,  <34.420727, 31.968042, 36.210899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298664, 32.710979, 35.976120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690742, 32.661114, 36.037674>,  <34.925987, 32.631195, 36.074604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690742, 32.661114, 36.037674>,  <34.298664, 32.710979, 35.976120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690742, 32.661114, 36.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194917, 0.469850, -0.860958,
		0.035026, 0.873900, 0.484842,
		0.980194, -0.124660, 0.153881,
		34.984802, 32.623714, 36.083839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572796, 33.305408, 35.625092>,  <34.298664, 32.710979, 35.976120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572796, 33.305408, 35.625092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901333, 33.085056, 35.684319>,  <35.098454, 32.952847, 35.719856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901333, 33.085056, 35.684319>,  <34.572796, 33.305408, 35.625092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901333, 33.085056, 35.684319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436155, 0.439178, -0.785424,
		0.367646, 0.709685, 0.600986,
		0.821343, -0.550882, 0.148071,
		35.147736, 32.919792, 35.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120258, 33.759567, 35.311741>,  <34.572796, 33.305408, 35.625092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120258, 33.759567, 35.311741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318378, 33.414948, 35.356285>,  <35.437252, 33.208176, 35.383011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318378, 33.414948, 35.356285>,  <35.120258, 33.759567, 35.311741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318378, 33.414948, 35.356285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603426, 0.248993, -0.757548,
		0.624940, 0.442413, 0.643211,
		0.495305, -0.861552, 0.111358,
		35.466969, 33.156483, 35.389694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943230, 33.927776, 35.380890>,  <35.120258, 33.759567, 35.311741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943230, 33.927776, 35.380890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899403, 33.548401, 35.261925>,  <35.873104, 33.320774, 35.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899403, 33.548401, 35.261925>,  <35.943230, 33.927776, 35.380890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899403, 33.548401, 35.261925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760160, 0.112833, -0.639863,
		0.640430, -0.296193, 0.708604,
		-0.109569, -0.948440, -0.297415,
		35.866531, 33.263870, 35.172699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578953, 33.491100, 35.434109>,  <35.943230, 33.927776, 35.380890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578953, 33.491100, 35.434109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354328, 33.328259, 35.145966>,  <36.219555, 33.230553, 34.973080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354328, 33.328259, 35.145966>,  <36.578953, 33.491100, 35.434109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354328, 33.328259, 35.145966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765323, 0.075386, -0.639216,
		0.314532, -0.910266, 0.269232,
		-0.561560, -0.407104, -0.720359,
		36.185860, 33.206127, 34.929859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097340, 33.306194, 35.033165>,  <36.578953, 33.491100, 35.434109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097340, 33.306194, 35.033165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779148, 33.222412, 34.805710>,  <36.588234, 33.172142, 34.669235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779148, 33.222412, 34.805710>,  <37.097340, 33.306194, 35.033165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779148, 33.222412, 34.805710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528501, 0.219317, -0.820114,
		0.296492, -0.952904, -0.063762,
		-0.795474, -0.209459, -0.568637,
		36.540504, 33.159576, 34.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326649, 32.764023, 34.481953>,  <37.097340, 33.306194, 35.033165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326649, 32.764023, 34.481953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010292, 32.977520, 34.362209>,  <36.820480, 33.105618, 34.290363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010292, 32.977520, 34.362209>,  <37.326649, 32.764023, 34.481953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010292, 32.977520, 34.362209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407706, 0.094755, -0.908183,
		-0.456367, -0.840324, -0.292550,
		-0.790889, 0.533739, -0.299362,
		36.773026, 33.137642, 34.272400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310776, 32.147068, 34.123310>,  <37.326649, 32.764023, 34.481953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310776, 32.147068, 34.123310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689438, 32.112885, 33.999023>,  <37.916634, 32.092377, 33.924454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689438, 32.112885, 33.999023>,  <37.310776, 32.147068, 34.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689438, 32.112885, 33.999023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238156, -0.464015, 0.853212,
		-0.217086, -0.881696, -0.418911,
		0.946655, -0.085455, -0.310713,
		37.973434, 32.087250, 33.905811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596806, 31.431356, 34.157124>,  <37.310776, 32.147068, 34.123310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596806, 31.431356, 34.157124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899830, 31.684877, 34.219612>,  <38.081642, 31.836990, 34.257103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899830, 31.684877, 34.219612>,  <37.596806, 31.431356, 34.157124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899830, 31.684877, 34.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293347, -0.544335, 0.785905,
		0.583142, -0.549542, -0.598289,
		0.757557, 0.633801, 0.156218,
		38.127098, 31.875017, 34.266476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101421, 31.039059, 34.201260>,  <37.596806, 31.431356, 34.157124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101421, 31.039059, 34.201260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157913, 31.375488, 34.410122>,  <38.191807, 31.577345, 34.535439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157913, 31.375488, 34.410122>,  <38.101421, 31.039059, 34.201260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157913, 31.375488, 34.410122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177693, -0.540417, 0.822420,
		0.973899, -0.023365, -0.225775,
		0.141229, 0.841073, 0.522160,
		38.200283, 31.627810, 34.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694328, 30.774988, 34.704742>,  <38.101421, 31.039059, 34.201260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694328, 30.774988, 34.704742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524685, 31.104755, 34.854656>,  <38.422897, 31.302616, 34.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524685, 31.104755, 34.854656>,  <38.694328, 30.774988, 34.704742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524685, 31.104755, 34.854656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025250, -0.402923, 0.914886,
		0.905258, 0.397477, 0.150068,
		-0.424112, 0.824418, 0.374785,
		38.397453, 31.352081, 34.967091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118526, 30.937401, 35.350281>,  <38.694328, 30.774988, 34.704742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118526, 30.937401, 35.350281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767323, 31.128859, 35.350842>,  <38.556602, 31.243734, 35.351177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767323, 31.128859, 35.350842>,  <39.118526, 30.937401, 35.350281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767323, 31.128859, 35.350842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047329, -0.089731, 0.994841,
		0.476302, 0.873411, 0.101438,
		-0.878007, 0.478646, 0.001401,
		38.503922, 31.272451, 35.351261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121510, 31.266727, 35.973583>,  <39.118526, 30.937401, 35.350281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121510, 31.266727, 35.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741657, 31.280939, 35.849045>,  <38.513744, 31.289465, 35.774323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741657, 31.280939, 35.849045>,  <39.121510, 31.266727, 35.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741657, 31.280939, 35.849045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307558, -0.296003, 0.904318,
		-0.060029, 0.954526, 0.292021,
		-0.949634, 0.035528, -0.311341,
		38.456768, 31.291597, 35.755642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674774, 31.702002, 36.380081>,  <39.121510, 31.266727, 35.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674774, 31.702002, 36.380081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464386, 31.395323, 36.232826>,  <38.338154, 31.211315, 36.144474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464386, 31.395323, 36.232826>,  <38.674774, 31.702002, 36.380081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464386, 31.395323, 36.232826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391173, -0.166276, 0.905172,
		-0.755206, 0.620102, -0.212454,
		-0.525973, -0.766698, -0.368140,
		38.306595, 31.165314, 36.122383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368263, 31.557188, 36.904999>,  <38.674774, 31.702002, 36.380081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368263, 31.557188, 36.904999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197552, 31.271646, 36.682911>,  <38.095123, 31.100323, 36.549656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197552, 31.271646, 36.682911>,  <38.368263, 31.557188, 36.904999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197552, 31.271646, 36.682911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436540, -0.375065, 0.817777,
		-0.792016, 0.591390, -0.151554,
		-0.426783, -0.713852, -0.555223,
		38.069515, 31.057491, 36.516346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652580, 31.572916, 37.011723>,  <38.368263, 31.557188, 36.904999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652580, 31.572916, 37.011723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733696, 31.200272, 36.891071>,  <37.782364, 30.976685, 36.818680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733696, 31.200272, 36.891071>,  <37.652580, 31.572916, 37.011723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733696, 31.200272, 36.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492927, -0.363274, 0.790604,
		-0.846109, -0.011644, -0.532883,
		0.202788, -0.931610, -0.301630,
		37.794533, 30.920788, 36.800583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008186, 31.174103, 36.995911>,  <37.652580, 31.572916, 37.011723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008186, 31.174103, 36.995911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320389, 30.925934, 37.026585>,  <37.507710, 30.777033, 37.044991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320389, 30.925934, 37.026585>,  <37.008186, 31.174103, 36.995911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320389, 30.925934, 37.026585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288145, -0.248175, 0.924868,
		-0.554780, -0.743963, -0.372475,
		0.780507, -0.620425, 0.076687,
		37.554543, 30.739807, 37.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786922, 30.681049, 37.509632>,  <37.008186, 31.174103, 36.995911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786922, 30.681049, 37.509632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177414, 30.594536, 37.504082>,  <37.411709, 30.542627, 37.500751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177414, 30.594536, 37.504082>,  <36.786922, 30.681049, 37.509632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177414, 30.594536, 37.504082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091861, -0.470905, 0.877389,
		-0.196296, -0.855261, -0.479580,
		0.976232, -0.216282, -0.013872,
		37.470284, 30.529652, 37.499920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825798, 30.034906, 37.539146>,  <36.786922, 30.681049, 37.509632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825798, 30.034906, 37.539146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177185, 30.140600, 37.698383>,  <37.388016, 30.204016, 37.793926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177185, 30.140600, 37.698383>,  <36.825798, 30.034906, 37.539146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177185, 30.140600, 37.698383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115513, -0.691012, 0.713554,
		0.463636, -0.672817, -0.576506,
		0.878464, 0.264235, 0.398097,
		37.440723, 30.219872, 37.817814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087601, 29.408422, 37.717419>,  <36.825798, 30.034906, 37.539146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087601, 29.408422, 37.717419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311737, 29.672039, 37.918091>,  <37.446220, 29.830208, 38.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311737, 29.672039, 37.918091>,  <37.087601, 29.408422, 37.717419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311737, 29.672039, 37.918091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114736, -0.661626, 0.741004,
		0.820274, -0.357657, -0.446354,
		0.560344, 0.659040, 0.501678,
		37.479839, 29.869751, 38.068596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651142, 29.009315, 38.001461>,  <37.087601, 29.408422, 37.717419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651142, 29.009315, 38.001461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666935, 29.342888, 38.221642>,  <37.676411, 29.543032, 38.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666935, 29.342888, 38.221642>,  <37.651142, 29.009315, 38.001461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666935, 29.342888, 38.221642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026397, -0.551564, 0.833715,
		0.998872, -0.018382, -0.043787,
		0.039477, 0.833930, 0.550456,
		37.678780, 29.593067, 38.386780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225880, 28.965036, 38.511337>,  <37.651142, 29.009315, 38.001461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225880, 28.965036, 38.511337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928890, 29.197701, 38.644241>,  <37.750694, 29.337299, 38.723984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928890, 29.197701, 38.644241>,  <38.225880, 28.965036, 38.511337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928890, 29.197701, 38.644241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050472, -0.543176, 0.838100,
		0.667969, 0.605499, 0.432653,
		-0.742476, 0.581662, 0.332264,
		37.706146, 29.372200, 38.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389954, 28.991165, 39.251999>,  <38.225880, 28.965036, 38.511337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389954, 28.991165, 39.251999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011208, 29.119240, 39.239799>,  <37.783962, 29.196085, 39.232479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011208, 29.119240, 39.239799>,  <38.389954, 28.991165, 39.251999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011208, 29.119240, 39.239799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126229, -0.282717, 0.950861,
		0.295832, 0.904185, 0.308111,
		-0.946863, 0.320187, -0.030498,
		37.727150, 29.215296, 39.230652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248432, 29.393867, 39.857430>,  <38.389954, 28.991165, 39.251999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248432, 29.393867, 39.857430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874836, 29.301811, 39.748104>,  <37.650677, 29.246578, 39.682510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874836, 29.301811, 39.748104>,  <38.248432, 29.393867, 39.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874836, 29.301811, 39.748104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194747, -0.313425, 0.929429,
		-0.299560, 0.921304, 0.247917,
		-0.933990, -0.230139, -0.273311,
		37.594639, 29.232769, 39.666111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810974, 29.649235, 40.445751>,  <38.248432, 29.393867, 39.857430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810974, 29.649235, 40.445751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557426, 29.401020, 40.261082>,  <37.405296, 29.252090, 40.150280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557426, 29.401020, 40.261082>,  <37.810974, 29.649235, 40.445751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557426, 29.401020, 40.261082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404526, -0.242773, 0.881714,
		-0.659219, 0.745650, -0.097137,
		-0.633868, -0.620538, -0.461675,
		37.367268, 29.214859, 40.122578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155781, 29.748131, 40.816528>,  <37.810974, 29.649235, 40.445751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155781, 29.748131, 40.816528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104511, 29.412792, 40.604588>,  <37.073750, 29.211588, 40.477421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104511, 29.412792, 40.604588>,  <37.155781, 29.748131, 40.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104511, 29.412792, 40.604588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562451, -0.378586, 0.735066,
		-0.816836, 0.392232, -0.423005,
		-0.128173, -0.838348, -0.529854,
		37.066059, 29.161287, 40.445633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362225, 29.550898, 40.708836>,  <37.155781, 29.748131, 40.816528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362225, 29.550898, 40.708836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580711, 29.221981, 40.644974>,  <36.711803, 29.024632, 40.606655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580711, 29.221981, 40.644974>,  <36.362225, 29.550898, 40.708836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580711, 29.221981, 40.644974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510216, -0.477766, 0.715136,
		-0.664327, -0.309159, -0.680508,
		0.546214, -0.822290, -0.159655,
		36.744576, 28.975294, 40.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860622, 29.093622, 40.894119>,  <36.362225, 29.550898, 40.708836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860622, 29.093622, 40.894119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206551, 28.892954, 40.902298>,  <36.414108, 28.772552, 40.907207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206551, 28.892954, 40.902298>,  <35.860622, 29.093622, 40.894119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206551, 28.892954, 40.902298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370180, -0.609573, 0.700991,
		-0.339200, -0.613799, -0.712877,
		0.864818, -0.501669, 0.020449,
		36.465996, 28.742453, 40.908432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673500, 28.364241, 40.954292>,  <35.860622, 29.093622, 40.894119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673500, 28.364241, 40.954292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053562, 28.400995, 41.073467>,  <36.281597, 28.423048, 41.144974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053562, 28.400995, 41.073467>,  <35.673500, 28.364241, 40.954292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053562, 28.400995, 41.073467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222278, -0.470479, 0.853956,
		0.218641, -0.877614, -0.426603,
		0.950152, 0.091885, 0.297940,
		36.338608, 28.428560, 41.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825535, 27.731688, 41.322227>,  <35.673500, 28.364241, 40.954292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825535, 27.731688, 41.322227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110153, 27.994471, 41.421913>,  <36.280926, 28.152140, 41.481724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110153, 27.994471, 41.421913>,  <35.825535, 27.731688, 41.322227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110153, 27.994471, 41.421913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023218, -0.376473, 0.926137,
		0.702254, -0.653204, -0.283132,
		0.711548, 0.656957, 0.249213,
		36.323616, 28.191557, 41.496677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388321, 27.409182, 41.637814>,  <35.825535, 27.731688, 41.322227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388321, 27.409182, 41.637814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396469, 27.787846, 41.766449>,  <36.401360, 28.015045, 41.843628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396469, 27.787846, 41.766449>,  <36.388321, 27.409182, 41.637814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396469, 27.787846, 41.766449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110593, -0.317545, 0.941772,
		0.993657, -0.054750, 0.098226,
		0.020370, 0.946661, 0.321585,
		36.402580, 28.071844, 41.862926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755695, 27.433922, 42.282356>,  <36.388321, 27.409182, 41.637814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755695, 27.433922, 42.282356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616787, 27.808411, 42.303867>,  <36.533443, 28.033104, 42.316772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616787, 27.808411, 42.303867>,  <36.755695, 27.433922, 42.282356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616787, 27.808411, 42.303867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267011, -0.153683, 0.951361,
		0.898950, 0.316018, 0.303350,
		-0.347267, 0.936223, 0.053773,
		36.512608, 28.089277, 42.320000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992306, 27.710821, 42.908421>,  <36.755695, 27.433922, 42.282356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992306, 27.710821, 42.908421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690674, 27.957556, 42.818199>,  <36.509693, 28.105597, 42.764069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690674, 27.957556, 42.818199>,  <36.992306, 27.710821, 42.908421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690674, 27.957556, 42.818199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327125, -0.054956, 0.943382,
		0.569515, 0.785172, 0.243223,
		-0.754083, 0.616835, -0.225552,
		36.464447, 28.142607, 42.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979279, 28.129173, 43.378529>,  <36.992306, 27.710821, 42.908421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979279, 28.129173, 43.378529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605919, 28.122833, 43.235138>,  <36.381901, 28.119030, 43.149101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605919, 28.122833, 43.235138>,  <36.979279, 28.129173, 43.378529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605919, 28.122833, 43.235138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348152, -0.201890, 0.915440,
		-0.086883, 0.979280, 0.182927,
		-0.933403, -0.015850, -0.358479,
		36.325897, 28.118078, 43.127594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663704, 28.469408, 43.892715>,  <36.979279, 28.129173, 43.378529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663704, 28.469408, 43.892715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355694, 28.286455, 43.714787>,  <36.170887, 28.176683, 43.608028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355694, 28.286455, 43.714787>,  <36.663704, 28.469408, 43.892715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355694, 28.286455, 43.714787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402695, -0.192362, 0.894893,
		-0.494874, 0.868216, -0.036062,
		-0.770023, -0.457381, -0.444822,
		36.124687, 28.149240, 43.581341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021412, 28.752911, 44.162979>,  <36.663704, 28.469408, 43.892715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021412, 28.752911, 44.162979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903759, 28.399059, 44.018250>,  <35.833168, 28.186749, 43.931412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903759, 28.399059, 44.018250>,  <36.021412, 28.752911, 44.162979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903759, 28.399059, 44.018250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575730, -0.138185, 0.805878,
		-0.762902, 0.445347, -0.468664,
		-0.294133, -0.884630, -0.361822,
		35.815517, 28.133671, 43.909702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369915, 28.750351, 44.464779>,  <36.021412, 28.752911, 44.162979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369915, 28.750351, 44.464779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475159, 28.376396, 44.369484>,  <35.538307, 28.152023, 44.312305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475159, 28.376396, 44.369484>,  <35.369915, 28.750351, 44.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475159, 28.376396, 44.369484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439040, -0.335917, 0.833309,
		-0.859079, -0.114656, -0.498836,
		0.263111, -0.934887, -0.238240,
		35.554092, 28.095930, 44.298012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745598, 28.262522, 44.539753>,  <35.369915, 28.750351, 44.464779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745598, 28.262522, 44.539753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073559, 28.034529, 44.561199>,  <35.270336, 27.897734, 44.574066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073559, 28.034529, 44.561199>,  <34.745598, 28.262522, 44.539753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073559, 28.034529, 44.561199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284033, -0.323688, 0.902525,
		-0.497070, -0.755213, -0.427287,
		0.819907, -0.569982, 0.053611,
		35.319530, 27.863535, 44.577282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467651, 27.726442, 44.931229>,  <34.745598, 28.262522, 44.539753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467651, 27.726442, 44.931229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866825, 27.721722, 44.956516>,  <35.106327, 27.718889, 44.971687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866825, 27.721722, 44.956516>,  <34.467651, 27.726442, 44.931229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866825, 27.721722, 44.956516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062349, -0.418599, 0.906029,
		0.015769, -0.908095, -0.418468,
		0.997930, -0.011803, 0.063220,
		35.166203, 27.718180, 44.975483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480434, 27.240496, 45.496281>,  <34.467651, 27.726442, 44.931229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480434, 27.240496, 45.496281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843967, 27.401134, 45.451111>,  <35.062088, 27.497517, 45.424007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843967, 27.401134, 45.451111>,  <34.480434, 27.240496, 45.496281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843967, 27.401134, 45.451111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234548, -0.268041, 0.934420,
		0.344991, -0.875714, -0.337797,
		0.908828, 0.401596, -0.112926,
		35.116615, 27.521614, 45.417233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025017, 26.782938, 45.698528>,  <34.480434, 27.240496, 45.496281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025017, 26.782938, 45.698528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230785, 27.123560, 45.738976>,  <35.354244, 27.327934, 45.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230785, 27.123560, 45.738976>,  <35.025017, 26.782938, 45.698528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230785, 27.123560, 45.738976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248286, -0.260766, 0.932928,
		0.820809, -0.454810, -0.345572,
		0.514419, 0.851557, 0.101117,
		35.385113, 27.379026, 45.769310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500481, 26.610989, 46.171276>,  <35.025017, 26.782938, 45.698528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500481, 26.610989, 46.171276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467266, 27.008966, 46.193859>,  <35.447338, 27.247753, 46.207409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467266, 27.008966, 46.193859>,  <35.500481, 26.610989, 46.171276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467266, 27.008966, 46.193859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115453, -0.046665, 0.992216,
		0.989836, 0.088909, -0.110994,
		-0.083037, 0.994946, 0.056455,
		35.442356, 27.307449, 46.210796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998688, 26.812189, 46.680244>,  <35.500481, 26.610989, 46.171276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998688, 26.812189, 46.680244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732552, 27.109589, 46.653316>,  <35.572868, 27.288029, 46.637161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732552, 27.109589, 46.653316>,  <35.998688, 26.812189, 46.680244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732552, 27.109589, 46.653316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184803, -0.076666, 0.979781,
		0.723304, 0.664329, 0.188410,
		-0.665342, 0.743498, -0.067317,
		35.532948, 27.332638, 46.633121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200455, 27.349401, 47.199493>,  <35.998688, 26.812189, 46.680244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200455, 27.349401, 47.199493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810738, 27.391987, 47.120079>,  <35.576908, 27.417538, 47.072430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810738, 27.391987, 47.120079>,  <36.200455, 27.349401, 47.199493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810738, 27.391987, 47.120079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187722, 0.103550, 0.976749,
		0.124545, 0.988911, -0.080903,
		-0.974294, 0.106461, -0.198537,
		35.518448, 27.423925, 47.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970818, 27.916739, 47.627560>,  <36.200455, 27.349401, 47.199493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970818, 27.916739, 47.627560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646259, 27.705502, 47.527355>,  <35.451527, 27.578758, 47.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646259, 27.705502, 47.527355>,  <35.970818, 27.916739, 47.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646259, 27.705502, 47.527355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305923, 0.018492, 0.951877,
		-0.498048, 0.848985, -0.176561,
		-0.811393, -0.528094, -0.250514,
		35.402840, 27.547073, 47.452202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994690, 28.573992, 47.996632>,  <35.970818, 27.916739, 47.627560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994690, 28.573992, 47.996632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283283, 28.824184, 48.115452>,  <36.456440, 28.974300, 48.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283283, 28.824184, 48.115452>,  <35.994690, 28.573992, 47.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283283, 28.824184, 48.115452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136099, 0.292536, -0.946520,
		-0.678929, 0.723324, 0.125931,
		0.721480, 0.625480, 0.297055,
		36.499725, 29.011829, 48.204567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862820, 29.181517, 47.648396>,  <35.994690, 28.573992, 47.996632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862820, 29.181517, 47.648396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241020, 29.216520, 47.773849>,  <36.467941, 29.237522, 47.849121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241020, 29.216520, 47.773849>,  <35.862820, 29.181517, 47.648396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241020, 29.216520, 47.773849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256196, 0.394582, -0.882422,
		-0.200976, 0.914684, 0.350658,
		0.945501, 0.087508, 0.313640,
		36.524670, 29.242773, 47.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137486, 29.829771, 47.340481>,  <35.862820, 29.181517, 47.648396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137486, 29.829771, 47.340481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456791, 29.612934, 47.445488>,  <36.648373, 29.482832, 47.508492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456791, 29.612934, 47.445488>,  <36.137486, 29.829771, 47.340481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456791, 29.612934, 47.445488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448714, 0.244489, -0.859581,
		0.401790, 0.803966, 0.438411,
		0.798261, -0.542093, 0.262518,
		36.696270, 29.450306, 47.524242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711246, 30.264210, 47.117798>,  <36.137486, 29.829771, 47.340481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711246, 30.264210, 47.117798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845100, 29.889080, 47.154690>,  <36.925411, 29.664001, 47.176823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845100, 29.889080, 47.154690>,  <36.711246, 30.264210, 47.117798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845100, 29.889080, 47.154690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564052, 0.120938, -0.816835,
		0.754894, 0.325362, 0.569451,
		0.334636, -0.937824, 0.092226,
		36.945492, 29.607733, 47.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330402, 30.310722, 47.245590>,  <36.711246, 30.264210, 47.117798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330402, 30.310722, 47.245590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293053, 29.939898, 47.100353>,  <37.270641, 29.717402, 47.013210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293053, 29.939898, 47.100353>,  <37.330402, 30.310722, 47.245590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293053, 29.939898, 47.100353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505972, 0.269898, -0.819236,
		0.857481, -0.260209, 0.443867,
		-0.093373, -0.927063, -0.363091,
		37.265041, 29.661779, 46.991425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003548, 30.110054, 47.128269>,  <37.330402, 30.310722, 47.245590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003548, 30.110054, 47.128269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747215, 29.902353, 46.902100>,  <37.593414, 29.777733, 46.766396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747215, 29.902353, 46.902100>,  <38.003548, 30.110054, 47.128269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747215, 29.902353, 46.902100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549519, 0.204042, -0.810183,
		0.536060, -0.829906, 0.154582,
		-0.640835, -0.519252, -0.565428,
		37.554966, 29.746578, 46.732471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476025, 29.811630, 46.604527>,  <38.003548, 30.110054, 47.128269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476025, 29.811630, 46.604527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115643, 29.757313, 46.439682>,  <37.899414, 29.724722, 46.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115643, 29.757313, 46.439682>,  <38.476025, 29.811630, 46.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115643, 29.757313, 46.439682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410059, 0.044070, -0.910994,
		0.141872, -0.989756, 0.015980,
		-0.900957, -0.135797, -0.412111,
		37.845356, 29.716574, 46.316048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650223, 29.373220, 46.140099>,  <38.476025, 29.811630, 46.604527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650223, 29.373220, 46.140099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302547, 29.524187, 46.012310>,  <38.093941, 29.614767, 45.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302547, 29.524187, 46.012310>,  <38.650223, 29.373220, 46.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302547, 29.524187, 46.012310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387358, 0.118144, -0.914328,
		-0.307341, -0.918475, -0.248887,
		-0.869192, 0.377419, -0.319468,
		38.041790, 29.637413, 45.916470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482014, 29.000954, 45.518147>,  <38.650223, 29.373220, 46.140099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482014, 29.000954, 45.518147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243786, 29.320831, 45.487698>,  <38.100849, 29.512758, 45.469429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243786, 29.320831, 45.487698>,  <38.482014, 29.000954, 45.518147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243786, 29.320831, 45.487698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233149, 0.081400, -0.969028,
		-0.768728, -0.594867, -0.234927,
		-0.595566, 0.799692, -0.076118,
		38.065117, 29.560740, 45.464863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145844, 28.921959, 44.949169>,  <38.482014, 29.000954, 45.518147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145844, 28.921959, 44.949169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120289, 29.311758, 45.035213>,  <38.104958, 29.545637, 45.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120289, 29.311758, 45.035213>,  <38.145844, 28.921959, 44.949169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120289, 29.311758, 45.035213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204250, 0.223758, -0.953003,
		-0.976832, -0.016945, -0.213336,
		-0.063885, 0.974497, 0.215113,
		38.101124, 29.604107, 45.099747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857906, 29.119984, 44.334541>,  <38.145844, 28.921959, 44.949169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857906, 29.119984, 44.334541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992954, 29.453140, 44.509953>,  <38.073982, 29.653034, 44.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992954, 29.453140, 44.509953>,  <37.857906, 29.119984, 44.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992954, 29.453140, 44.509953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077113, 0.439839, -0.894759,
		-0.938118, 0.335905, 0.084271,
		0.337620, 0.832892, 0.438524,
		38.094238, 29.703009, 44.641510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436672, 29.620346, 44.143291>,  <37.857906, 29.119984, 44.334541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436672, 29.620346, 44.143291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756508, 29.843920, 44.231152>,  <37.948410, 29.978064, 44.283867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756508, 29.843920, 44.231152>,  <37.436672, 29.620346, 44.143291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756508, 29.843920, 44.231152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096268, 0.480317, -0.871796,
		-0.592776, 0.675937, 0.437865,
		0.799593, 0.558932, 0.219649,
		37.996387, 30.011599, 44.297047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273365, 30.209021, 43.895325>,  <37.436672, 29.620346, 44.143291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273365, 30.209021, 43.895325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669033, 30.242119, 43.943813>,  <37.906433, 30.261978, 43.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669033, 30.242119, 43.943813>,  <37.273365, 30.209021, 43.895325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669033, 30.242119, 43.943813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058991, 0.532120, -0.844612,
		-0.134391, 0.842616, 0.521476,
		0.989171, 0.082746, 0.121219,
		37.965786, 30.266943, 43.980179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411385, 31.001152, 43.887348>,  <37.273365, 30.209021, 43.895325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411385, 31.001152, 43.887348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729733, 30.780212, 43.788147>,  <37.920742, 30.647648, 43.728626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729733, 30.780212, 43.788147>,  <37.411385, 31.001152, 43.887348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729733, 30.780212, 43.788147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049351, 0.467419, -0.882657,
		0.603458, 0.690238, 0.399262,
		0.795866, -0.552350, -0.248004,
		37.968491, 30.614508, 43.713745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890675, 31.430529, 43.547684>,  <37.411385, 31.001152, 43.887348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890675, 31.430529, 43.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023739, 31.076805, 43.416637>,  <38.103577, 30.864571, 43.338009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023739, 31.076805, 43.416637>,  <37.890675, 31.430529, 43.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023739, 31.076805, 43.416637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046380, 0.362319, -0.930900,
		0.941904, 0.294482, 0.161544,
		0.332663, -0.884311, -0.327612,
		38.123539, 30.811512, 43.318356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539764, 31.640062, 43.267593>,  <37.890675, 31.430529, 43.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539764, 31.640062, 43.267593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443745, 31.287785, 43.104252>,  <38.386131, 31.076418, 43.006248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443745, 31.287785, 43.104252>,  <38.539764, 31.640062, 43.267593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443745, 31.287785, 43.104252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229936, 0.357100, -0.905322,
		0.943136, -0.311218, 0.116782,
		-0.240050, -0.880694, -0.408354,
		38.371731, 31.023577, 42.981747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191029, 31.429581, 42.928875>,  <38.539764, 31.640062, 43.267593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191029, 31.429581, 42.928875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861233, 31.252390, 42.788025>,  <38.663357, 31.146076, 42.703514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861233, 31.252390, 42.788025>,  <39.191029, 31.429581, 42.928875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861233, 31.252390, 42.788025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234192, 0.299360, -0.924953,
		0.515145, -0.845077, -0.143077,
		-0.824488, -0.442977, -0.352123,
		38.613888, 31.119497, 42.682388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391899, 31.303017, 42.309109>,  <39.191029, 31.429581, 42.928875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391899, 31.303017, 42.309109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005924, 31.212803, 42.255394>,  <38.774338, 31.158674, 42.223164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005924, 31.212803, 42.255394>,  <39.391899, 31.303017, 42.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005924, 31.212803, 42.255394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087388, 0.206402, -0.974557,
		0.247516, -0.952119, -0.179456,
		-0.964935, -0.225537, -0.134292,
		38.716442, 31.145144, 42.215107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363316, 30.821730, 41.826374>,  <39.391899, 31.303017, 42.309109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363316, 30.821730, 41.826374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997311, 30.982750, 41.815742>,  <38.777706, 31.079361, 41.809364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997311, 30.982750, 41.815742>,  <39.363316, 30.821730, 41.826374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997311, 30.982750, 41.815742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109526, 0.184473, -0.976716,
		-0.388274, -0.896618, -0.212884,
		-0.915012, 0.402550, -0.026577,
		38.722809, 31.103516, 41.807770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861904, 30.331070, 41.413761>,  <39.363316, 30.821730, 41.826374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861904, 30.331070, 41.413761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750668, 30.715057, 41.427162>,  <38.683926, 30.945450, 41.435204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750668, 30.715057, 41.427162>,  <38.861904, 30.331070, 41.413761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750668, 30.715057, 41.427162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001275, 0.035249, -0.999378,
		-0.960553, -0.277879, -0.011027,
		-0.278095, 0.959969, 0.033504,
		38.667240, 31.003048, 41.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450916, 30.430609, 40.841492>,  <38.861904, 30.331070, 41.413761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450916, 30.430609, 40.841492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516384, 30.813560, 40.936684>,  <38.555664, 31.043331, 40.993801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516384, 30.813560, 40.936684>,  <38.450916, 30.430609, 40.841492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516384, 30.813560, 40.936684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002506, 0.241639, -0.970363,
		-0.986512, 0.158224, 0.041948,
		0.163671, 0.957379, 0.237983,
		38.565487, 31.100775, 41.008080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926994, 30.752068, 40.536182>,  <38.450916, 30.430609, 40.841492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926994, 30.752068, 40.536182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223282, 31.015095, 40.591240>,  <38.401054, 31.172911, 40.624275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223282, 31.015095, 40.591240>,  <37.926994, 30.752068, 40.536182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223282, 31.015095, 40.591240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061512, 0.270403, -0.960780,
		-0.668998, 0.703197, 0.240740,
		0.740714, 0.657569, 0.137644,
		38.445496, 31.212366, 40.632534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713787, 31.409412, 40.193417>,  <37.926994, 30.752068, 40.536182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713787, 31.409412, 40.193417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104195, 31.483150, 40.239723>,  <38.338440, 31.527393, 40.267509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104195, 31.483150, 40.239723>,  <37.713787, 31.409412, 40.193417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104195, 31.483150, 40.239723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061926, 0.274722, -0.959527,
		-0.208690, 0.943686, 0.256719,
		0.976019, 0.184346, 0.115771,
		38.396999, 31.538454, 40.274456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836460, 32.091057, 39.889137>,  <37.713787, 31.409412, 40.193417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836460, 32.091057, 39.889137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201138, 31.928802, 39.915260>,  <38.419945, 31.831450, 39.930935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201138, 31.928802, 39.915260>,  <37.836460, 32.091057, 39.889137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201138, 31.928802, 39.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246616, 0.413153, -0.876633,
		0.328615, 0.815330, 0.476707,
		0.911698, -0.405639, 0.065305,
		38.474648, 31.807112, 39.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271801, 32.572067, 39.754082>,  <37.836460, 32.091057, 39.889137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271801, 32.572067, 39.754082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501205, 32.255608, 39.669075>,  <38.638847, 32.065731, 39.618069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501205, 32.255608, 39.669075>,  <38.271801, 32.572067, 39.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501205, 32.255608, 39.669075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293772, 0.440795, -0.848173,
		0.764709, 0.424008, 0.485220,
		0.573514, -0.791149, -0.212518,
		38.673260, 32.018261, 39.605320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904713, 32.873436, 39.608662>,  <38.271801, 32.572067, 39.754082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904713, 32.873436, 39.608662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925102, 32.510960, 39.440750>,  <38.937336, 32.293472, 39.340004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925102, 32.510960, 39.440750>,  <38.904713, 32.873436, 39.608662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925102, 32.510960, 39.440750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309360, 0.413979, -0.856106,
		0.949578, -0.086226, 0.301441,
		0.050971, -0.906193, -0.419780,
		38.940395, 32.239101, 39.314816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607872, 32.780704, 39.416561>,  <38.904713, 32.873436, 39.608662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607872, 32.780704, 39.416561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429939, 32.506386, 39.186153>,  <39.323177, 32.341793, 39.047909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429939, 32.506386, 39.186153>,  <39.607872, 32.780704, 39.416561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429939, 32.506386, 39.186153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475114, 0.364501, -0.800878,
		0.759203, -0.629933, 0.163691,
		-0.444834, -0.685802, -0.576020,
		39.296490, 32.300644, 39.013348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136349, 32.413155, 39.119453>,  <39.607872, 32.780704, 39.416561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136349, 32.413155, 39.119453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818619, 32.335388, 38.889236>,  <39.627979, 32.288731, 38.751106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818619, 32.335388, 38.889236>,  <40.136349, 32.413155, 39.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818619, 32.335388, 38.889236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475777, 0.390004, -0.788374,
		0.377731, -0.900057, -0.217295,
		-0.794327, -0.194410, -0.575542,
		39.580322, 32.277065, 38.716572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386765, 31.997458, 38.514656>,  <40.136349, 32.413155, 39.119453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386765, 31.997458, 38.514656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035587, 32.160938, 38.414921>,  <39.824879, 32.259026, 38.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035587, 32.160938, 38.414921>,  <40.386765, 31.997458, 38.514656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035587, 32.160938, 38.414921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417650, 0.399215, -0.816208,
		-0.234047, -0.820724, -0.521185,
		-0.877947, 0.408704, -0.249341,
		39.772202, 32.283550, 38.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324226, 31.718567, 37.823215>,  <40.386765, 31.997458, 38.514656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324226, 31.718567, 37.823215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070213, 32.026337, 37.850685>,  <39.917805, 32.210999, 37.867168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070213, 32.026337, 37.850685>,  <40.324226, 31.718567, 37.823215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070213, 32.026337, 37.850685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301747, 0.328916, -0.894853,
		-0.711110, -0.547542, -0.441045,
		-0.635036, 0.769423, 0.068676,
		39.879704, 32.257164, 37.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931107, 31.728258, 37.186172>,  <40.324226, 31.718567, 37.823215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931107, 31.728258, 37.186172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894810, 32.094463, 37.342941>,  <39.873032, 32.314186, 37.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894810, 32.094463, 37.342941>,  <39.931107, 31.728258, 37.186172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894810, 32.094463, 37.342941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279826, 0.401131, -0.872234,
		-0.955753, 0.030523, -0.292583,
		-0.090741, 0.915512, 0.391923,
		39.867588, 32.369118, 37.460518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493469, 32.262905, 36.776661>,  <39.931107, 31.728258, 37.186172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493469, 32.262905, 36.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746601, 32.477535, 36.999950>,  <39.898479, 32.606316, 37.133923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746601, 32.477535, 36.999950>,  <39.493469, 32.262905, 36.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746601, 32.477535, 36.999950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183823, 0.596217, -0.781495,
		-0.752153, 0.597168, 0.278669,
		0.632831, 0.536578, 0.558220,
		39.936451, 32.638508, 37.167416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377998, 33.006302, 36.656696>,  <39.493469, 32.262905, 36.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377998, 33.006302, 36.656696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734879, 32.986370, 36.836250>,  <39.949005, 32.974411, 36.943981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734879, 32.986370, 36.836250>,  <39.377998, 33.006302, 36.656696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734879, 32.986370, 36.836250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411474, 0.499422, -0.762409,
		-0.186190, 0.864925, 0.466088,
		0.892201, -0.049830, 0.448881,
		40.002541, 32.971420, 36.970913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774811, 33.747887, 36.526123>,  <39.377998, 33.006302, 36.656696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774811, 33.747887, 36.526123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060368, 33.488583, 36.632050>,  <40.231701, 33.333000, 36.695606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060368, 33.488583, 36.632050>,  <39.774811, 33.747887, 36.526123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060368, 33.488583, 36.632050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662161, 0.501881, -0.556469,
		0.227830, 0.572606, 0.787537,
		0.713888, -0.648257, 0.264814,
		40.274532, 33.294106, 36.711494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382072, 34.205883, 36.783924>,  <39.774811, 33.747887, 36.526123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382072, 34.205883, 36.783924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557312, 33.848255, 36.746605>,  <40.662457, 33.633678, 36.724213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557312, 33.848255, 36.746605>,  <40.382072, 34.205883, 36.783924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557312, 33.848255, 36.746605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874426, 0.447927, -0.186391,
		0.208436, 0.000079, 0.978036,
		0.438103, -0.894070, -0.093295,
		40.688744, 33.580032, 36.718616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035465, 34.217922, 37.144176>,  <40.382072, 34.205883, 36.783924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035465, 34.217922, 37.144176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111778, 33.897659, 36.917004>,  <41.157566, 33.705502, 36.780701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111778, 33.897659, 36.917004>,  <41.035465, 34.217922, 37.144176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111778, 33.897659, 36.917004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908400, 0.363275, -0.206980,
		0.372036, -0.476424, 0.796623,
		0.190783, -0.800657, -0.567935,
		41.169014, 33.657463, 36.746624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717476, 33.946423, 37.265575>,  <41.035465, 34.217922, 37.144176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717476, 33.946423, 37.265575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624706, 33.837296, 36.892097>,  <41.569046, 33.771820, 36.668011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624706, 33.837296, 36.892097>,  <41.717476, 33.946423, 37.265575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624706, 33.837296, 36.892097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828090, 0.448244, -0.336667,
		0.510372, -0.851261, 0.121962,
		-0.231923, -0.272821, -0.933692,
		41.555130, 33.755451, 36.611988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359520, 33.660461, 37.023987>,  <41.717476, 33.946423, 37.265575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359520, 33.660461, 37.023987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141720, 33.735924, 36.697079>,  <42.011040, 33.781200, 36.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141720, 33.735924, 36.697079>,  <42.359520, 33.660461, 37.023987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141720, 33.735924, 36.697079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733435, 0.579821, -0.354797,
		0.406935, -0.792600, -0.454080,
		-0.544497, 0.188659, -0.817270,
		41.978371, 33.792522, 36.451897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896019, 33.672207, 36.474606>,  <42.359520, 33.660461, 37.023987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896019, 33.672207, 36.474606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567047, 33.827633, 36.308411>,  <42.369663, 33.920887, 36.208694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567047, 33.827633, 36.308411>,  <42.896019, 33.672207, 36.474606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567047, 33.827633, 36.308411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562419, 0.665074, -0.491286,
		0.085433, -0.637725, -0.765512,
		-0.822427, 0.388566, -0.415488,
		42.320320, 33.944202, 36.183765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070774, 33.848400, 35.764378>,  <42.896019, 33.672207, 36.474606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070774, 33.848400, 35.764378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760254, 34.086903, 35.846195>,  <42.573940, 34.230003, 35.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760254, 34.086903, 35.846195>,  <43.070774, 33.848400, 35.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760254, 34.086903, 35.846195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517067, 0.787916, -0.334408,
		-0.360557, -0.153838, -0.919963,
		-0.776299, 0.596256, 0.204544,
		42.527363, 34.265778, 35.907558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766071, 34.206184, 35.126266>,  <43.070774, 33.848400, 35.764378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766071, 34.206184, 35.126266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697178, 34.433552, 35.448071>,  <42.655842, 34.569973, 35.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697178, 34.433552, 35.448071>,  <42.766071, 34.206184, 35.126266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697178, 34.433552, 35.448071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697840, 0.646833, -0.307613,
		-0.695237, 0.508438, -0.508071,
		-0.172235, 0.568417, 0.804511,
		42.645508, 34.604076, 35.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560951, 34.269314, 35.072170>,  <42.766071, 34.206184, 35.126266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560951, 34.269314, 35.072170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511600, 34.392879, 35.449390>,  <43.481991, 34.467018, 35.675724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511600, 34.392879, 35.449390>,  <43.560951, 34.269314, 35.072170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511600, 34.392879, 35.449390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942114, 0.262094, -0.209112,
		-0.311766, -0.914263, 0.258697,
		-0.123380, 0.308916, 0.943053,
		43.474586, 34.485554, 35.732307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100407, 33.859566, 35.523846>,  <43.560951, 34.269314, 35.072170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100407, 33.859566, 35.523846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846409, 33.745754, 35.811131>,  <43.694012, 33.677467, 35.983501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846409, 33.745754, 35.811131>,  <44.100407, 33.859566, 35.523846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846409, 33.745754, 35.811131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761441, -0.073633, 0.644039,
		-0.130366, 0.955835, 0.263411,
		-0.634991, -0.284532, 0.718212,
		43.655910, 33.660393, 36.026592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278713, 34.248669, 36.188931>,  <44.100407, 33.859566, 35.523846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278713, 34.248669, 36.188931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060665, 33.927444, 36.285213>,  <43.929836, 33.734711, 36.342983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060665, 33.927444, 36.285213>,  <44.278713, 34.248669, 36.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060665, 33.927444, 36.285213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581730, -0.155582, 0.798363,
		-0.603682, 0.575232, 0.551974,
		-0.545121, -0.803058, 0.240708,
		43.897129, 33.686527, 36.357426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460110, 34.133148, 36.820721>,  <44.278713, 34.248669, 36.188931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460110, 34.133148, 36.820721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265808, 33.784973, 36.788776>,  <44.149227, 33.576069, 36.769608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265808, 33.784973, 36.788776>,  <44.460110, 34.133148, 36.820721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265808, 33.784973, 36.788776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482223, -0.343065, 0.806081,
		-0.729043, 0.353046, 0.586391,
		-0.485754, -0.870439, -0.079862,
		44.120083, 33.523842, 36.764816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298233, 33.905891, 37.481178>,  <44.460110, 34.133148, 36.820721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298233, 33.905891, 37.481178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288963, 33.578468, 37.251598>,  <44.283401, 33.382015, 37.113850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288963, 33.578468, 37.251598>,  <44.298233, 33.905891, 37.481178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288963, 33.578468, 37.251598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680653, -0.433412, 0.590649,
		-0.732240, -0.376975, 0.567199,
		-0.023171, -0.818562, -0.573951,
		44.282013, 33.332901, 37.079414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280766, 33.322880, 37.972103>,  <44.298233, 33.905891, 37.481178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280766, 33.322880, 37.972103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426575, 33.250401, 37.606747>,  <44.514061, 33.206913, 37.387531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426575, 33.250401, 37.606747>,  <44.280766, 33.322880, 37.972103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426575, 33.250401, 37.606747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763016, -0.504152, 0.404521,
		-0.533789, -0.844391, -0.045516,
		0.364521, -0.181199, -0.913395,
		44.535931, 33.196041, 37.332729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174213, 33.917366, 38.416714>,  <44.280766, 33.322880, 37.972103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174213, 33.917366, 38.416714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166214, 34.130981, 38.078625>,  <44.161415, 34.259151, 37.875771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166214, 34.130981, 38.078625>,  <44.174213, 33.917366, 38.416714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166214, 34.130981, 38.078625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245312, 0.816928, 0.521968,
		0.969238, 0.217784, 0.114666,
		-0.020003, 0.534040, -0.845222,
		44.160213, 34.291195, 37.825058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644871, 34.432945, 38.567371>,  <44.174213, 33.917366, 38.416714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644871, 34.432945, 38.567371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435890, 34.557899, 38.250019>,  <44.310501, 34.632874, 38.059608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435890, 34.557899, 38.250019>,  <44.644871, 34.432945, 38.567371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435890, 34.557899, 38.250019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058538, 0.915135, 0.398875,
		0.850659, 0.254836, -0.459825,
		-0.522450, 0.312389, -0.793385,
		44.279156, 34.651615, 38.012005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938820, 35.140030, 38.357227>,  <44.644871, 34.432945, 38.567371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938820, 35.140030, 38.357227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567200, 35.118717, 38.210785>,  <44.344227, 35.105930, 38.122921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567200, 35.118717, 38.210785>,  <44.938820, 35.140030, 38.357227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567200, 35.118717, 38.210785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203294, 0.900302, 0.384875,
		0.309098, 0.431994, -0.847254,
		-0.929048, -0.053277, -0.366103,
		44.288486, 35.102734, 38.100952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839905, 35.723984, 37.996387>,  <44.938820, 35.140030, 38.357227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839905, 35.723984, 37.996387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465878, 35.610180, 38.080959>,  <44.241463, 35.541897, 38.131702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465878, 35.610180, 38.080959>,  <44.839905, 35.723984, 37.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465878, 35.610180, 38.080959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202110, 0.917943, 0.341368,
		-0.291206, 0.276469, -0.915841,
		-0.935067, -0.284509, 0.211433,
		44.185356, 35.524826, 38.144390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391342, 36.289227, 37.683758>,  <44.839905, 35.723984, 37.996387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391342, 36.289227, 37.683758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172817, 36.097057, 37.958199>,  <44.041702, 35.981754, 38.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172817, 36.097057, 37.958199>,  <44.391342, 36.289227, 37.683758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172817, 36.097057, 37.958199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261876, 0.876051, 0.404915,
		-0.795592, 0.041535, -0.604407,
		-0.546310, -0.480427, 0.686102,
		44.008923, 35.952930, 38.164028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753555, 36.688866, 37.813404>,  <44.391342, 36.289227, 37.683758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753555, 36.688866, 37.813404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753407, 36.460060, 38.141502>,  <43.753319, 36.322777, 38.338360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753407, 36.460060, 38.141502>,  <43.753555, 36.688866, 37.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753407, 36.460060, 38.141502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103104, 0.815897, 0.568930,
		-0.994671, -0.084359, -0.059281,
		-0.000372, -0.572010, 0.820247,
		43.753296, 36.288456, 38.387577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303699, 37.049915, 38.298691>,  <43.753555, 36.688866, 37.813404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303699, 37.049915, 38.298691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520370, 36.816086, 38.540302>,  <43.650375, 36.675789, 38.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520370, 36.816086, 38.540302>,  <43.303699, 37.049915, 38.298691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520370, 36.816086, 38.540302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052527, 0.740723, 0.669754,
		-0.838941, -0.331065, 0.431942,
		0.541682, -0.584573, 0.604033,
		43.682877, 36.640713, 38.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040546, 37.028351, 39.008785>,  <43.303699, 37.049915, 38.298691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040546, 37.028351, 39.008785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429806, 36.943203, 39.043823>,  <43.663361, 36.892113, 39.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429806, 36.943203, 39.043823>,  <43.040546, 37.028351, 39.008785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429806, 36.943203, 39.043823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137498, 0.842742, 0.520461,
		-0.184609, -0.494441, 0.849381,
		0.973146, -0.212870, 0.087594,
		43.721748, 36.879341, 39.070103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271042, 37.237770, 39.756538>,  <43.040546, 37.028351, 39.008785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271042, 37.237770, 39.756538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609383, 37.228447, 39.543377>,  <43.812389, 37.222855, 39.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609383, 37.228447, 39.543377>,  <43.271042, 37.237770, 39.756538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609383, 37.228447, 39.543377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345269, 0.785445, 0.513678,
		0.406596, -0.618492, 0.672419,
		0.845854, -0.023306, -0.532905,
		43.863140, 37.221455, 39.383507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822094, 37.400837, 40.196613>,  <43.271042, 37.237770, 39.756538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822094, 37.400837, 40.196613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976074, 37.464317, 39.832935>,  <44.068462, 37.502403, 39.614731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976074, 37.464317, 39.832935>,  <43.822094, 37.400837, 40.196613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976074, 37.464317, 39.832935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661559, 0.639450, 0.391719,
		0.643548, -0.752275, 0.141166,
		0.384949, 0.158700, -0.909191,
		44.091560, 37.511925, 39.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387394, 37.715382, 40.366127>,  <43.822094, 37.400837, 40.196613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387394, 37.715382, 40.366127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401703, 37.786736, 39.972805>,  <44.410290, 37.829548, 39.736813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401703, 37.786736, 39.972805>,  <44.387394, 37.715382, 40.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401703, 37.786736, 39.972805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436858, 0.882158, 0.175932,
		0.898818, -0.435861, -0.046369,
		0.035777, 0.178388, -0.983310,
		44.412437, 37.840252, 39.677811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106976, 37.842316, 40.155914>,  <44.387394, 37.715382, 40.366127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106976, 37.842316, 40.155914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879589, 38.020290, 39.879108>,  <44.743156, 38.127075, 39.713024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879589, 38.020290, 39.879108>,  <45.106976, 37.842316, 40.155914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879589, 38.020290, 39.879108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471979, 0.865327, 0.168653,
		0.673857, -0.230743, -0.701908,
		-0.568465, 0.444934, -0.692013,
		44.709049, 38.153770, 39.671505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643822, 38.352467, 39.858089>,  <45.106976, 37.842316, 40.155914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643822, 38.352467, 39.858089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274925, 38.471336, 39.759163>,  <45.053589, 38.542660, 39.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274925, 38.471336, 39.759163>,  <45.643822, 38.352467, 39.858089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274925, 38.471336, 39.759163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244660, 0.943887, 0.221852,
		0.299368, 0.144092, -0.943195,
		-0.922237, 0.297177, -0.247316,
		44.998253, 38.560490, 39.684967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804611, 38.965103, 39.509247>,  <45.643822, 38.352467, 39.858089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804611, 38.965103, 39.509247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423180, 38.967182, 39.629688>,  <45.194321, 38.968430, 39.701954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423180, 38.967182, 39.629688>,  <45.804611, 38.965103, 39.509247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423180, 38.967182, 39.629688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110017, 0.936758, 0.332237,
		-0.280331, 0.349940, -0.893844,
		-0.953578, 0.005202, 0.301101,
		45.137108, 38.968742, 39.720020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420616, 39.563004, 39.194370>,  <45.804611, 38.965103, 39.509247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420616, 39.563004, 39.194370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266426, 39.452122, 39.546410>,  <45.173912, 39.385593, 39.757633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266426, 39.452122, 39.546410>,  <45.420616, 39.563004, 39.194370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266426, 39.452122, 39.546410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063171, 0.943642, 0.324883,
		-0.920553, 0.180831, -0.346240,
		-0.385475, -0.277200, 0.880096,
		45.150784, 39.368961, 39.810440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968231, 40.139832, 39.384628>,  <45.420616, 39.563004, 39.194370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968231, 40.139832, 39.384628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967159, 39.947346, 39.735268>,  <44.966518, 39.831856, 39.945652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967159, 39.947346, 39.735268>,  <44.968231, 40.139832, 39.384628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967159, 39.947346, 39.735268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059976, 0.874949, 0.480486,
		-0.998196, 0.053862, 0.026518,
		-0.002678, -0.481210, 0.876601,
		44.966354, 39.802982, 39.998249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570271, 40.589340, 39.797016>,  <44.968231, 40.139832, 39.384628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570271, 40.589340, 39.797016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740112, 40.350426, 40.069180>,  <44.842018, 40.207077, 40.232479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740112, 40.350426, 40.069180>,  <44.570271, 40.589340, 39.797016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740112, 40.350426, 40.069180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041524, 0.763581, 0.644376,
		-0.904424, -0.245354, 0.349025,
		0.424609, -0.597282, 0.680413,
		44.867496, 40.171242, 40.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137264, 40.564758, 40.470482>,  <44.570271, 40.589340, 39.797016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137264, 40.564758, 40.470482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524857, 40.492180, 40.537594>,  <44.757412, 40.448631, 40.577862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524857, 40.492180, 40.537594>,  <44.137264, 40.564758, 40.470482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524857, 40.492180, 40.537594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046963, 0.801738, 0.595828,
		-0.242622, -0.569468, 0.785392,
		0.968983, -0.181445, 0.167775,
		44.815552, 40.437748, 40.587925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198185, 40.657936, 41.126793>,  <44.137264, 40.564758, 40.470482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198185, 40.657936, 41.126793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573551, 40.671970, 40.989307>,  <44.798771, 40.680393, 40.906815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573551, 40.671970, 40.989307>,  <44.198185, 40.657936, 41.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573551, 40.671970, 40.989307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140012, 0.870861, 0.471167,
		0.315863, -0.490276, 0.812318,
		0.938418, 0.035090, -0.343717,
		44.855076, 40.682499, 40.886192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574257, 40.692345, 41.710209>,  <44.198185, 40.657936, 41.126793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574257, 40.692345, 41.710209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808605, 40.851929, 41.428047>,  <44.949215, 40.947678, 41.258751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808605, 40.851929, 41.428047>,  <44.574257, 40.692345, 41.710209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808605, 40.851929, 41.428047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271192, 0.723732, 0.634560,
		0.763685, -0.563068, 0.315816,
		0.585867, 0.398957, -0.705403,
		44.984364, 40.971615, 41.216427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177811, 40.837723, 42.040142>,  <44.574257, 40.692345, 41.710209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177811, 40.837723, 42.040142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187256, 41.068256, 41.713394>,  <45.192924, 41.206577, 41.517345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187256, 41.068256, 41.713394>,  <45.177811, 40.837723, 42.040142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187256, 41.068256, 41.713394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176104, 0.801924, 0.570881,
		0.984088, -0.157335, -0.082559,
		0.023614, 0.576337, -0.816871,
		45.194340, 41.241158, 41.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801025, 41.279411, 42.176834>,  <45.177811, 40.837723, 42.040142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801025, 41.279411, 42.176834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551201, 41.453976, 41.917770>,  <45.401306, 41.558712, 41.762333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551201, 41.453976, 41.917770>,  <45.801025, 41.279411, 42.176834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551201, 41.453976, 41.917770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185011, 0.888375, 0.420191,
		0.758741, 0.142612, -0.635589,
		-0.624566, 0.436407, -0.647662,
		45.363831, 41.584896, 41.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062214, 41.951836, 41.971886>,  <45.801025, 41.279411, 42.176834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062214, 41.951836, 41.971886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670944, 41.970398, 41.890877>,  <45.436180, 41.981537, 41.842270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670944, 41.970398, 41.890877>,  <46.062214, 41.951836, 41.971886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670944, 41.970398, 41.890877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009295, 0.983534, 0.180484,
		0.207566, 0.174663, -0.962501,
		-0.978177, 0.046409, -0.202525,
		45.377491, 41.984322, 41.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967224, 42.398960, 41.460106>,  <46.062214, 41.951836, 41.971886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967224, 42.398960, 41.460106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633091, 42.411594, 41.679638>,  <45.432610, 42.419174, 41.811356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633091, 42.411594, 41.679638>,  <45.967224, 42.398960, 41.460106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633091, 42.411594, 41.679638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108949, 0.988058, 0.108955,
		-0.538835, 0.150809, -0.828802,
		-0.835336, 0.031588, 0.548831,
		45.382488, 42.421070, 41.844288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602066, 42.956818, 41.151447>,  <45.967224, 42.398960, 41.460106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602066, 42.956818, 41.151447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594673, 42.872581, 41.542408>,  <45.590237, 42.822041, 41.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594673, 42.872581, 41.542408>,  <45.602066, 42.956818, 41.151447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594673, 42.872581, 41.542408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225411, 0.951522, 0.209272,
		-0.974088, 0.224185, 0.029884,
		-0.018480, -0.210586, 0.977401,
		45.589130, 42.809406, 41.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925125, 43.258518, 41.815357>,  <45.602066, 42.956818, 41.151447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925125, 43.258518, 41.815357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244415, 43.494785, 41.862591>,  <46.435989, 43.636547, 41.890930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244415, 43.494785, 41.862591>,  <45.925125, 43.258518, 41.815357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244415, 43.494785, 41.862591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296322, -0.214381, -0.930717,
		-0.524431, 0.777914, -0.346153,
		0.798226, 0.590670, 0.118085,
		46.483883, 43.671986, 41.898018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192451, 43.408195, 41.191734>,  <45.925125, 43.258518, 41.815357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192451, 43.408195, 41.191734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504913, 43.538818, 41.404583>,  <46.692390, 43.617191, 41.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504913, 43.538818, 41.404583>,  <46.192451, 43.408195, 41.191734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504913, 43.538818, 41.404583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559192, 0.013095, -0.828934,
		-0.277664, 0.945086, -0.172380,
		0.781157, 0.326559, 0.532121,
		46.739262, 43.636787, 41.564220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739838, 43.164986, 40.659012>,  <46.192451, 43.408195, 41.191734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739838, 43.164986, 40.659012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045475, 43.318275, 40.451435>,  <47.228855, 43.410252, 40.326889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045475, 43.318275, 40.451435>,  <46.739838, 43.164986, 40.659012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045475, 43.318275, 40.451435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266646, -0.544880, -0.794988,
		-0.587425, 0.745816, -0.314150,
		0.764089, 0.383229, -0.518945,
		47.274700, 43.433243, 40.295753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585308, 43.472553, 40.053658>,  <46.739838, 43.164986, 40.659012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585308, 43.472553, 40.053658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944229, 43.299797, 40.017170>,  <47.159580, 43.196144, 39.995277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944229, 43.299797, 40.017170>,  <46.585308, 43.472553, 40.053658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944229, 43.299797, 40.017170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389038, -0.676126, -0.625701,
		0.208562, 0.596929, -0.774711,
		0.897302, -0.431890, -0.091214,
		47.213421, 43.170231, 39.989807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926964, 43.468296, 39.336857>,  <46.585308, 43.472553, 40.053658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926964, 43.468296, 39.336857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043835, 43.150116, 39.549229>,  <47.113956, 42.959209, 39.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.043835, 43.150116, 39.549229>,  <46.926964, 43.468296, 39.336857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043835, 43.150116, 39.549229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219482, -0.596113, -0.772319,
		0.930838, 0.109125, -0.348758,
		0.292178, -0.795450, 0.530934,
		47.131489, 42.911480, 39.708508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310764, 42.993805, 38.917850>,  <46.926964, 43.468296, 39.336857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310764, 42.993805, 38.917850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181919, 42.767689, 39.221611>,  <47.104614, 42.632019, 39.403866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181919, 42.767689, 39.221611>,  <47.310764, 42.993805, 38.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181919, 42.767689, 39.221611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256094, -0.720215, -0.644752,
		0.911405, -0.402160, 0.087221,
		-0.322111, -0.565294, 0.759399,
		47.085285, 42.598099, 39.449432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720818, 42.321838, 38.974617>,  <47.310764, 42.993805, 38.917850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720818, 42.321838, 38.974617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368641, 42.270699, 39.157249>,  <47.157333, 42.240017, 39.266830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368641, 42.270699, 39.157249>,  <47.720818, 42.321838, 38.974617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368641, 42.270699, 39.157249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153544, -0.834195, -0.529663,
		0.448596, -0.536446, 0.714833,
		-0.880446, -0.127846, 0.456585,
		47.104507, 42.232346, 39.294224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.789814, 41.635319, 39.382454>,  <47.720818, 42.321838, 38.974617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.789814, 41.635319, 39.382454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414566, 41.743889, 39.296429>,  <47.189415, 41.809032, 39.244816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414566, 41.743889, 39.296429>,  <47.789814, 41.635319, 39.382454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414566, 41.743889, 39.296429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156309, -0.886047, -0.436449,
		-0.309018, -0.375827, 0.873649,
		-0.938124, 0.271429, -0.215059,
		47.133129, 41.825317, 39.231911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284271, 41.072720, 39.479183>,  <47.789814, 41.635319, 39.382454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284271, 41.072720, 39.479183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091869, 41.315132, 39.225773>,  <46.976429, 41.460579, 39.073727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091869, 41.315132, 39.225773>,  <47.284271, 41.072720, 39.479183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091869, 41.315132, 39.225773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341485, -0.795052, -0.501279,
		-0.807484, -0.024772, 0.589369,
		-0.480996, 0.606035, -0.633532,
		46.947567, 41.496944, 39.035717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957054, 40.586956, 39.100151>,  <47.284271, 41.072720, 39.479183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957054, 40.586956, 39.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831200, 40.910702, 38.901783>,  <46.755688, 41.104950, 38.782764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831200, 40.910702, 38.901783>,  <46.957054, 40.586956, 39.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831200, 40.910702, 38.901783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448758, -0.587215, -0.673643,
		-0.836432, 0.010592, 0.547969,
		-0.314640, 0.809362, -0.495918,
		46.736809, 41.153511, 38.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213272, 40.611961, 38.889442>,  <46.957054, 40.586956, 39.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213272, 40.611961, 38.889442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410748, 40.835510, 38.622932>,  <46.529232, 40.969639, 38.463024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410748, 40.835510, 38.622932>,  <46.213272, 40.611961, 38.889442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410748, 40.835510, 38.622932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477172, -0.466433, -0.744814,
		-0.727031, 0.685639, 0.036404,
		0.493693, 0.558874, -0.666279,
		46.558857, 41.003174, 38.423050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748932, 40.925591, 38.401108>,  <46.213272, 40.611961, 38.889442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748932, 40.925591, 38.401108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111080, 40.920017, 38.231354>,  <46.328369, 40.916676, 38.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.111080, 40.920017, 38.231354>,  <45.748932, 40.925591, 38.401108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.111080, 40.920017, 38.231354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387829, -0.434043, -0.813139,
		-0.172873, 0.900784, -0.398374,
		0.905375, -0.013931, -0.424385,
		46.382694, 40.915836, 38.104038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607727, 40.966652, 37.593246>,  <45.748932, 40.925591, 38.401108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607727, 40.966652, 37.593246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977036, 40.816765, 37.627087>,  <46.198620, 40.726833, 37.647388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977036, 40.816765, 37.627087>,  <45.607727, 40.966652, 37.593246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977036, 40.816765, 37.627087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223111, -0.702329, -0.675984,
		0.312721, 0.605241, -0.732044,
		0.923270, -0.374722, 0.084597,
		46.254017, 40.704350, 37.652466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891685, 40.882244, 36.902344>,  <45.607727, 40.966652, 37.593246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891685, 40.882244, 36.902344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142113, 40.647213, 37.107399>,  <46.292370, 40.506195, 37.230431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142113, 40.647213, 37.107399>,  <45.891685, 40.882244, 36.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142113, 40.647213, 37.107399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187365, -0.751511, -0.632555,
		0.756927, 0.299969, -0.580586,
		0.626063, -0.587580, 0.512635,
		46.329933, 40.470940, 37.261189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280792, 40.550800, 36.350319>,  <45.891685, 40.882244, 36.902344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280792, 40.550800, 36.350319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316353, 40.334808, 36.685108>,  <46.337688, 40.205215, 36.885983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316353, 40.334808, 36.685108>,  <46.280792, 40.550800, 36.350319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316353, 40.334808, 36.685108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165784, -0.836599, -0.522128,
		0.982147, -0.092339, -0.163893,
		0.088900, -0.539978, 0.836971,
		46.343021, 40.172813, 36.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676243, 39.920399, 36.101765>,  <46.280792, 40.550800, 36.350319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676243, 39.920399, 36.101765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475338, 39.852318, 36.440884>,  <46.354797, 39.811470, 36.644356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475338, 39.852318, 36.440884>,  <46.676243, 39.920399, 36.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475338, 39.852318, 36.440884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155437, -0.946698, -0.282139,
		0.850633, -0.273486, 0.449031,
		-0.502258, -0.170201, 0.847802,
		46.324661, 39.801258, 36.695225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766079, 39.130714, 36.109463>,  <46.676243, 39.920399, 36.101765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766079, 39.130714, 36.109463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497379, 39.226677, 36.389805>,  <46.336159, 39.284252, 36.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497379, 39.226677, 36.389805>,  <46.766079, 39.130714, 36.109463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497379, 39.226677, 36.389805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383343, -0.922154, -0.051770,
		0.633876, -0.303444, 0.711423,
		-0.671750, 0.239903, 0.700855,
		46.295853, 39.298649, 36.600060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852612, 38.596161, 36.612938>,  <46.766079, 39.130714, 36.109463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852612, 38.596161, 36.612938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489536, 38.761890, 36.639572>,  <46.271690, 38.861328, 36.655552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489536, 38.761890, 36.639572>,  <46.852612, 38.596161, 36.612938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489536, 38.761890, 36.639572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419108, -0.903036, -0.094206,
		0.021095, -0.113415, 0.993324,
		-0.907691, 0.414323, 0.066582,
		46.217228, 38.886189, 36.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557022, 38.222641, 37.061817>,  <46.852612, 38.596161, 36.612938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557022, 38.222641, 37.061817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271301, 38.391277, 36.838375>,  <46.099869, 38.492458, 36.704308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271301, 38.391277, 36.838375>,  <46.557022, 38.222641, 37.061817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271301, 38.391277, 36.838375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457752, -0.885220, -0.082753,
		-0.529378, 0.196594, 0.825293,
		-0.714298, 0.421587, -0.558608,
		46.057011, 38.517754, 36.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943581, 37.898773, 37.333733>,  <46.557022, 38.222641, 37.061817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943581, 37.898773, 37.333733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840382, 38.052628, 36.979221>,  <45.778461, 38.144939, 36.766514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840382, 38.052628, 36.979221>,  <45.943581, 37.898773, 37.333733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840382, 38.052628, 36.979221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613754, -0.773707, -0.157110,
		-0.746151, 0.503425, 0.435686,
		-0.258000, 0.384632, -0.886281,
		45.762981, 38.168018, 36.713337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251488, 37.723400, 37.406776>,  <45.943581, 37.898773, 37.333733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251488, 37.723400, 37.406776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341976, 37.780987, 37.021423>,  <45.396267, 37.815540, 36.790211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341976, 37.780987, 37.021423>,  <45.251488, 37.723400, 37.406776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341976, 37.780987, 37.021423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475736, -0.846709, -0.238242,
		-0.850000, 0.512209, -0.123052,
		0.226219, 0.143966, -0.963379,
		45.409843, 37.824177, 36.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735630, 37.381119, 37.100151>,  <45.251488, 37.723400, 37.406776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735630, 37.381119, 37.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998497, 37.423920, 36.801704>,  <45.156216, 37.449600, 36.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998497, 37.423920, 36.801704>,  <44.735630, 37.381119, 37.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998497, 37.423920, 36.801704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257846, -0.898240, -0.355923,
		-0.708271, 0.426283, -0.562704,
		0.657167, 0.106999, -0.746112,
		45.195648, 37.456020, 36.577869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317863, 37.369217, 36.463825>,  <44.735630, 37.381119, 37.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317863, 37.369217, 36.463825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697193, 37.286503, 36.367561>,  <44.924793, 37.236874, 36.309803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697193, 37.286503, 36.367561>,  <44.317863, 37.369217, 36.463825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697193, 37.286503, 36.367561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315443, -0.696290, -0.644730,
		-0.034250, 0.687329, -0.725539,
		0.948326, -0.206785, -0.240661,
		44.981689, 37.224468, 36.295364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281883, 37.204502, 35.794491>,  <44.317863, 37.369217, 36.463825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281883, 37.204502, 35.794491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638710, 37.049778, 35.887947>,  <44.852806, 36.956944, 35.944019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638710, 37.049778, 35.887947>,  <44.281883, 37.204502, 35.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638710, 37.049778, 35.887947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214790, -0.817819, -0.533890,
		0.397589, 0.426084, -0.812635,
		0.892070, -0.386814, 0.233637,
		44.906330, 36.933735, 35.958038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513649, 36.927135, 35.131470>,  <44.281883, 37.204502, 35.794491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513649, 36.927135, 35.131470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720245, 36.744572, 35.421276>,  <44.844204, 36.635033, 35.595161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720245, 36.744572, 35.421276>,  <44.513649, 36.927135, 35.131470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720245, 36.744572, 35.421276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159512, -0.882581, -0.442275,
		0.841303, 0.112864, -0.528651,
		0.516494, -0.456414, 0.724514,
		44.875195, 36.607647, 35.638630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107712, 36.589581, 34.852467>,  <44.513649, 36.927135, 35.131470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107712, 36.589581, 34.852467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079338, 36.394745, 35.200653>,  <45.062313, 36.277843, 35.409565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079338, 36.394745, 35.200653>,  <45.107712, 36.589581, 34.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079338, 36.394745, 35.200653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029683, -0.873309, -0.486261,
		0.997040, -0.008652, 0.076402,
		-0.070930, -0.487089, 0.870467,
		45.058060, 36.248619, 35.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774933, 36.171860, 35.118179>,  <45.107712, 36.589581, 34.852467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774933, 36.171860, 35.118179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404514, 36.041019, 35.193485>,  <45.182262, 35.962517, 35.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404514, 36.041019, 35.193485>,  <45.774933, 36.171860, 35.118179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404514, 36.041019, 35.193485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172502, -0.810523, -0.559728,
		0.335682, -0.485858, 0.807007,
		-0.926046, -0.327101, 0.188267,
		45.126701, 35.942890, 35.249966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237949, 35.641350, 34.990902>,  <45.774933, 36.171860, 35.118179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237949, 35.641350, 34.990902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486752, 35.586060, 34.682617>,  <46.636032, 35.552887, 34.497646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486752, 35.586060, 34.682617>,  <46.237949, 35.641350, 34.990902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486752, 35.586060, 34.682617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703432, -0.333706, 0.627554,
		-0.343937, -0.932488, -0.110334,
		0.622006, -0.138226, -0.770716,
		46.673355, 35.544594, 34.451401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509651, 34.854694, 34.910648>,  <46.237949, 35.641350, 34.990902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509651, 34.854694, 34.910648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777199, 35.118134, 34.772739>,  <46.937725, 35.276196, 34.689995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777199, 35.118134, 34.772739>,  <46.509651, 34.854694, 34.910648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777199, 35.118134, 34.772739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673656, -0.340892, 0.655729,
		0.314333, -0.670851, -0.671680,
		0.668867, 0.658598, -0.344769,
		46.977859, 35.315712, 34.669308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093987, 34.589775, 34.944473>,  <46.509651, 34.854694, 34.910648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093987, 34.589775, 34.944473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226482, 34.964550, 34.899876>,  <47.305977, 35.189415, 34.873116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226482, 34.964550, 34.899876>,  <47.093987, 34.589775, 34.944473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226482, 34.964550, 34.899876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738795, -0.184037, 0.648315,
		0.586912, -0.297115, -0.753164,
		0.331235, 0.936938, -0.111494,
		47.325851, 35.245632, 34.866428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836529, 34.606514, 34.919338>,  <47.093987, 34.589775, 34.944473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836529, 34.606514, 34.919338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712242, 34.958080, 35.064095>,  <47.637672, 35.169022, 35.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.712242, 34.958080, 35.064095>,  <47.836529, 34.606514, 34.919338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.712242, 34.958080, 35.064095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646136, -0.083929, 0.758593,
		0.697112, 0.469537, -0.541821,
		-0.310713, 0.878914, 0.361893,
		47.619030, 35.221756, 35.172661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.761868, 35.031925, 42.860271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374046, 35.099712, 42.930988>,  <35.141354, 35.140385, 42.973419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374046, 35.099712, 42.930988>,  <35.761868, 35.031925, 42.860271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374046, 35.099712, 42.930988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118658, 0.306430, -0.944469,
		-0.214231, -0.936687, -0.276990,
		-0.969549, 0.169467, 0.176792,
		35.083183, 35.150551, 42.984024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353153, 34.591587, 42.434597>,  <35.761868, 35.031925, 42.860271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353153, 34.591587, 42.434597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129040, 34.914459, 42.508934>,  <34.994572, 35.108185, 42.553535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129040, 34.914459, 42.508934>,  <35.353153, 34.591587, 42.434597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129040, 34.914459, 42.508934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078877, 0.171348, -0.982048,
		-0.824536, -0.564885, -0.032336,
		-0.560285, 0.807183, 0.185839,
		34.960953, 35.156612, 42.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016945, 34.630619, 41.926514>,  <35.353153, 34.591587, 42.434597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016945, 34.630619, 41.926514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882862, 34.980034, 42.067688>,  <34.802410, 35.189682, 42.152393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.882862, 34.980034, 42.067688>,  <35.016945, 34.630619, 41.926514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882862, 34.980034, 42.067688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217242, 0.292851, -0.931152,
		-0.916755, -0.388804, 0.091603,
		-0.335210, 0.873538, 0.352938,
		34.782299, 35.242096, 42.173569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360310, 34.613220, 41.752167>,  <35.016945, 34.630619, 41.926514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360310, 34.613220, 41.752167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472843, 34.995014, 41.791767>,  <34.540363, 35.224091, 41.815525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472843, 34.995014, 41.791767>,  <34.360310, 34.613220, 41.752167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472843, 34.995014, 41.791767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199428, 0.159069, -0.966915,
		-0.938658, 0.252285, 0.235104,
		0.281336, 0.954489, 0.098998,
		34.557243, 35.281361, 41.821468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842449, 34.938950, 41.336666>,  <34.360310, 34.613220, 41.752167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842449, 34.938950, 41.336666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147480, 35.192642, 41.387634>,  <34.330498, 35.344856, 41.418217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147480, 35.192642, 41.387634>,  <33.842449, 34.938950, 41.336666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147480, 35.192642, 41.387634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001166, 0.198322, -0.980136,
		-0.646900, 0.747277, 0.151975,
		0.762574, 0.634228, 0.127423,
		34.376251, 35.382912, 41.425861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728821, 35.336124, 40.777081>,  <33.842449, 34.938950, 41.336666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728821, 35.336124, 40.777081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094055, 35.457069, 40.886517>,  <34.313194, 35.529636, 40.952179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094055, 35.457069, 40.886517>,  <33.728821, 35.336124, 40.777081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094055, 35.457069, 40.886517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214111, 0.215498, -0.952742,
		-0.347035, 0.928513, 0.132028,
		0.913085, 0.302366, 0.273590,
		34.367981, 35.547779, 40.968594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784714, 36.040550, 40.497162>,  <33.728821, 35.336124, 40.777081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784714, 36.040550, 40.497162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148415, 35.893715, 40.575661>,  <34.366634, 35.805614, 40.622761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148415, 35.893715, 40.575661>,  <33.784714, 36.040550, 40.497162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148415, 35.893715, 40.575661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323953, 0.327998, -0.887396,
		0.261384, 0.870438, 0.417152,
		0.909248, -0.367088, 0.196248,
		34.421188, 35.783588, 40.634537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261631, 36.540688, 40.191086>,  <33.784714, 36.040550, 40.497162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261631, 36.540688, 40.191086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477093, 36.208145, 40.245781>,  <34.606369, 36.008617, 40.278599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477093, 36.208145, 40.245781>,  <34.261631, 36.540688, 40.191086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477093, 36.208145, 40.245781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442999, 0.141414, -0.885299,
		0.716663, 0.537444, 0.444464,
		0.538652, -0.831358, 0.136741,
		34.638687, 35.958736, 40.286804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969166, 36.732208, 40.157627>,  <34.261631, 36.540688, 40.191086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969166, 36.732208, 40.157627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940166, 36.343124, 40.069466>,  <34.922768, 36.109673, 40.016567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940166, 36.343124, 40.069466>,  <34.969166, 36.732208, 40.157627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940166, 36.343124, 40.069466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531158, 0.149385, -0.834000,
		0.844166, -0.177534, 0.505832,
		-0.072499, -0.972710, -0.220404,
		34.918415, 36.051311, 40.003345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635353, 36.574898, 39.797173>,  <34.969166, 36.732208, 40.157627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635353, 36.574898, 39.797173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388988, 36.277390, 39.693283>,  <35.241169, 36.098885, 39.630947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388988, 36.277390, 39.693283>,  <35.635353, 36.574898, 39.797173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388988, 36.277390, 39.693283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488420, -0.101824, -0.866647,
		0.618141, -0.660633, 0.425987,
		-0.615912, -0.743771, -0.259725,
		35.204216, 36.054256, 39.615364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980591, 36.109600, 39.397205>,  <35.635353, 36.574898, 39.797173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980591, 36.109600, 39.397205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628773, 35.961811, 39.277275>,  <35.417683, 35.873138, 39.205318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628773, 35.961811, 39.277275>,  <35.980591, 36.109600, 39.397205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628773, 35.961811, 39.277275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337641, -0.040648, -0.940397,
		0.335262, -0.928353, 0.160500,
		-0.879544, -0.369470, -0.299823,
		35.364910, 35.850971, 39.187328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170120, 35.390633, 39.073627>,  <35.980591, 36.109600, 39.397205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170120, 35.390633, 39.073627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816898, 35.526443, 38.944050>,  <35.604965, 35.607929, 38.866302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816898, 35.526443, 38.944050>,  <36.170120, 35.390633, 39.073627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816898, 35.526443, 38.944050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284942, -0.160553, -0.945003,
		-0.372864, -0.926793, 0.045032,
		-0.883052, 0.339526, -0.323947,
		35.551983, 35.628300, 38.846867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930828, 34.884598, 38.579205>,  <36.170120, 35.390633, 39.073627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930828, 34.884598, 38.579205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728191, 35.214668, 38.479248>,  <35.606609, 35.412712, 38.419273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728191, 35.214668, 38.479248>,  <35.930828, 34.884598, 38.579205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728191, 35.214668, 38.479248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306311, -0.098670, -0.946804,
		-0.805938, -0.556189, -0.202776,
		-0.506594, 0.825178, -0.249888,
		35.576214, 35.462223, 38.404282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586567, 34.779243, 37.861622>,  <35.930828, 34.884598, 38.579205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586567, 34.779243, 37.861622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566608, 35.175819, 37.909897>,  <35.554634, 35.413765, 37.938862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566608, 35.175819, 37.909897>,  <35.586567, 34.779243, 37.861622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566608, 35.175819, 37.909897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293531, 0.130056, -0.947061,
		-0.954646, -0.011835, -0.297507,
		-0.049901, 0.991436, 0.120683,
		35.551640, 35.473251, 37.946102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225693, 34.973507, 37.267685>,  <35.586567, 34.779243, 37.861622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225693, 34.973507, 37.267685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432278, 35.295063, 37.385689>,  <35.556229, 35.487995, 37.456490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432278, 35.295063, 37.385689>,  <35.225693, 34.973507, 37.267685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432278, 35.295063, 37.385689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337180, 0.125770, -0.933002,
		-0.787131, 0.581333, -0.206099,
		0.516463, 0.803887, 0.295011,
		35.587215, 35.536228, 37.474194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198624, 35.523300, 36.741207>,  <35.225693, 34.973507, 37.267685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198624, 35.523300, 36.741207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505817, 35.645649, 36.966293>,  <35.690132, 35.719059, 37.101345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505817, 35.645649, 36.966293>,  <35.198624, 35.523300, 36.741207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505817, 35.645649, 36.966293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517560, 0.221157, -0.826572,
		-0.377275, 0.926029, 0.011536,
		0.767981, 0.305874, 0.562713,
		35.736210, 35.737411, 37.135109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429256, 36.217060, 36.484280>,  <35.198624, 35.523300, 36.741207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429256, 36.217060, 36.484280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754482, 36.074783, 36.668629>,  <35.949619, 35.989418, 36.779240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754482, 36.074783, 36.668629>,  <35.429256, 36.217060, 36.484280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754482, 36.074783, 36.668629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569456, 0.321390, -0.756590,
		0.120991, 0.877607, 0.463862,
		0.813069, -0.355690, 0.460873,
		35.998402, 35.968075, 36.806892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870350, 36.744095, 36.508511>,  <35.429256, 36.217060, 36.484280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870350, 36.744095, 36.508511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121490, 36.440098, 36.575695>,  <36.272175, 36.257698, 36.616005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121490, 36.440098, 36.575695>,  <35.870350, 36.744095, 36.508511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121490, 36.440098, 36.575695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669963, 0.417867, -0.613626,
		0.396167, 0.497794, 0.771526,
		0.627855, -0.759992, 0.167958,
		36.309849, 36.212101, 36.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507996, 36.997974, 36.457912>,  <35.870350, 36.744095, 36.508511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507996, 36.997974, 36.457912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589306, 36.608715, 36.414722>,  <36.638092, 36.375160, 36.388809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589306, 36.608715, 36.414722>,  <36.507996, 36.997974, 36.457912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589306, 36.608715, 36.414722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704081, 0.221919, -0.674553,
		0.680403, 0.061096, 0.730287,
		0.203277, -0.973149, -0.107978,
		36.650288, 36.316769, 36.382328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314266, 36.924870, 36.375362>,  <36.507996, 36.997974, 36.457912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314266, 36.924870, 36.375362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194153, 36.574409, 36.224529>,  <37.122086, 36.364132, 36.134029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194153, 36.574409, 36.224529>,  <37.314266, 36.924870, 36.375362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194153, 36.574409, 36.224529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393699, 0.246237, -0.885646,
		0.868811, -0.414400, 0.271000,
		-0.300281, -0.876151, -0.377082,
		37.104069, 36.311565, 36.111404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899014, 36.639408, 35.888702>,  <37.314266, 36.924870, 36.375362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899014, 36.639408, 35.888702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548527, 36.480686, 35.779316>,  <37.338234, 36.385452, 35.713684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548527, 36.480686, 35.779316>,  <37.899014, 36.639408, 35.888702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548527, 36.480686, 35.779316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120852, 0.368401, -0.921779,
		0.466513, -0.840729, -0.274845,
		-0.876219, -0.396807, -0.273467,
		37.285660, 36.361645, 35.697277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885273, 36.027481, 35.349030>,  <37.899014, 36.639408, 35.888702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885273, 36.027481, 35.349030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552856, 36.248783, 35.326118>,  <37.353409, 36.381565, 35.312370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552856, 36.248783, 35.326118>,  <37.885273, 36.027481, 35.349030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552856, 36.248783, 35.326118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231645, 0.250638, -0.939958,
		-0.505685, -0.794408, -0.336450,
		-0.831037, 0.553260, -0.057277,
		37.303547, 36.414761, 35.308937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268658, 35.434994, 35.226185>,  <37.885273, 36.027481, 35.349030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268658, 35.434994, 35.226185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666981, 35.470642, 35.234509>,  <38.905975, 35.492031, 35.239502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666981, 35.470642, 35.234509>,  <38.268658, 35.434994, 35.226185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666981, 35.470642, 35.234509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011463, -0.104170, 0.994493,
		0.090793, -0.990559, -0.102711,
		0.995804, 0.089116, 0.020812,
		38.965721, 35.497375, 35.240753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434769, 34.809940, 35.586102>,  <38.268658, 35.434994, 35.226185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434769, 34.809940, 35.586102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710995, 35.095852, 35.630299>,  <38.876728, 35.267399, 35.656818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710995, 35.095852, 35.630299>,  <38.434769, 34.809940, 35.586102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710995, 35.095852, 35.630299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020566, -0.133307, 0.990861,
		0.722981, -0.686524, -0.077356,
		0.690562, 0.714783, 0.110497,
		38.918163, 35.310287, 35.663448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770699, 34.625557, 36.119732>,  <38.434769, 34.809940, 35.586102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770699, 34.625557, 36.119732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890278, 35.007263, 36.121231>,  <38.962025, 35.236286, 36.122131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890278, 35.007263, 36.121231>,  <38.770699, 34.625557, 36.119732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890278, 35.007263, 36.121231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020825, -0.010454, 0.999728,
		0.954042, -0.298788, -0.022998,
		0.298947, 0.954262, 0.003752,
		38.979961, 35.293541, 36.122356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216457, 34.593601, 36.630676>,  <38.770699, 34.625557, 36.119732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216457, 34.593601, 36.630676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138874, 34.981853, 36.573750>,  <39.092323, 35.214806, 36.539593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138874, 34.981853, 36.573750>,  <39.216457, 34.593601, 36.630676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138874, 34.981853, 36.573750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095618, 0.125675, 0.987453,
		0.976338, 0.205135, 0.068434,
		-0.193961, 0.970631, -0.142316,
		39.080685, 35.273045, 36.531055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675224, 34.873936, 37.094894>,  <39.216457, 34.593601, 36.630676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675224, 34.873936, 37.094894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407356, 35.155678, 37.000732>,  <39.246635, 35.324722, 36.944233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407356, 35.155678, 37.000732>,  <39.675224, 34.873936, 37.094894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407356, 35.155678, 37.000732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206194, 0.128175, 0.970080,
		0.713457, 0.698177, 0.059399,
		-0.669674, 0.704358, -0.235407,
		39.206455, 35.366985, 36.930111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794811, 35.378910, 37.484951>,  <39.675224, 34.873936, 37.094894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794811, 35.378910, 37.484951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412262, 35.452160, 37.393890>,  <39.182732, 35.496109, 37.339256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412262, 35.452160, 37.393890>,  <39.794811, 35.378910, 37.484951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412262, 35.452160, 37.393890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250642, -0.113887, 0.961357,
		0.150121, 0.976471, 0.154817,
		-0.956369, 0.183123, -0.227648,
		39.125351, 35.507095, 37.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620689, 35.633533, 38.046688>,  <39.794811, 35.378910, 37.484951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620689, 35.633533, 38.046688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270897, 35.561089, 37.866695>,  <39.061020, 35.517620, 37.758701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270897, 35.561089, 37.866695>,  <39.620689, 35.633533, 38.046688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270897, 35.561089, 37.866695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420740, -0.178411, 0.889465,
		-0.241375, 0.967144, 0.079816,
		-0.874480, -0.181112, -0.449980,
		39.008553, 35.506756, 37.731701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272511, 36.100636, 38.352184>,  <39.620689, 35.633533, 38.046688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272511, 36.100636, 38.352184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056618, 35.800850, 38.198826>,  <38.927082, 35.620979, 38.106812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056618, 35.800850, 38.198826>,  <39.272511, 36.100636, 38.352184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056618, 35.800850, 38.198826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330316, -0.230359, 0.915328,
		-0.774324, 0.620675, -0.123228,
		-0.539734, -0.749465, -0.383392,
		38.894699, 35.576012, 38.083809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628914, 36.098045, 38.728161>,  <39.272511, 36.100636, 38.352184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628914, 36.098045, 38.728161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648525, 35.725300, 38.584366>,  <38.660290, 35.501652, 38.498089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648525, 35.725300, 38.584366>,  <38.628914, 36.098045, 38.728161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648525, 35.725300, 38.584366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375006, -0.350759, 0.858102,
		-0.925725, 0.092739, -0.366651,
		0.049026, -0.931863, -0.359484,
		38.663235, 35.445740, 38.476521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901760, 35.808456, 38.843632>,  <38.628914, 36.098045, 38.728161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901760, 35.808456, 38.843632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170395, 35.513115, 38.818958>,  <38.331577, 35.335911, 38.804153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170395, 35.513115, 38.818958>,  <37.901760, 35.808456, 38.843632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170395, 35.513115, 38.818958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279248, -0.329347, 0.901971,
		-0.686289, -0.588526, -0.427369,
		0.671586, -0.738354, -0.061683,
		38.371872, 35.291607, 38.800453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609146, 35.283165, 39.172112>,  <37.901760, 35.808456, 38.843632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609146, 35.283165, 39.172112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994030, 35.174709, 39.182175>,  <38.224960, 35.109634, 39.188213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994030, 35.174709, 39.182175>,  <37.609146, 35.283165, 39.172112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994030, 35.174709, 39.182175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084750, -0.210385, 0.973938,
		-0.258790, -0.939264, -0.225414,
		0.962208, -0.271149, 0.025157,
		38.282692, 35.093369, 39.189724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529526, 34.696503, 39.475109>,  <37.609146, 35.283165, 39.172112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529526, 34.696503, 39.475109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908768, 34.818913, 39.509624>,  <38.136314, 34.892361, 39.530334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908768, 34.818913, 39.509624>,  <37.529526, 34.696503, 39.475109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908768, 34.818913, 39.509624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021975, -0.333798, 0.942389,
		0.317201, -0.891586, -0.323200,
		0.948104, 0.306029, 0.086288,
		38.193199, 34.910721, 39.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843899, 34.158234, 39.868465>,  <37.529526, 34.696503, 39.475109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843899, 34.158234, 39.868465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087936, 34.473541, 39.900536>,  <38.234360, 34.662724, 39.919777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087936, 34.473541, 39.900536>,  <37.843899, 34.158234, 39.868465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087936, 34.473541, 39.900536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150249, -0.214452, 0.965109,
		0.777955, -0.576758, -0.249271,
		0.610091, 0.788264, 0.080177,
		38.270966, 34.710022, 39.924587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447025, 33.990520, 40.116890>,  <37.843899, 34.158234, 39.868465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447025, 33.990520, 40.116890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431255, 34.379578, 40.208469>,  <38.421795, 34.613010, 40.263416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431255, 34.379578, 40.208469>,  <38.447025, 33.990520, 40.116890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431255, 34.379578, 40.208469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267077, -0.210531, 0.940397,
		0.962868, 0.098220, -0.251470,
		-0.039424, 0.972640, 0.228946,
		38.419430, 34.671371, 40.277153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990486, 34.086826, 40.555496>,  <38.447025, 33.990520, 40.116890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990486, 34.086826, 40.555496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756409, 34.406059, 40.612930>,  <38.615963, 34.597599, 40.647388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756409, 34.406059, 40.612930>,  <38.990486, 34.086826, 40.555496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756409, 34.406059, 40.612930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129143, -0.266530, 0.955136,
		0.800546, 0.540395, 0.259038,
		-0.585192, 0.798082, 0.143581,
		38.580853, 34.645485, 40.656006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170139, 34.289066, 41.232735>,  <38.990486, 34.086826, 40.555496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170139, 34.289066, 41.232735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819839, 34.469727, 41.164524>,  <38.609661, 34.578121, 41.123596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819839, 34.469727, 41.164524>,  <39.170139, 34.289066, 41.232735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819839, 34.469727, 41.164524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296822, -0.225149, 0.928011,
		0.380739, 0.863320, 0.331233,
		-0.875748, 0.451648, -0.170529,
		38.557114, 34.605221, 41.113365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088383, 34.647518, 41.824856>,  <39.170139, 34.289066, 41.232735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088383, 34.647518, 41.824856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729141, 34.575626, 41.664303>,  <38.513596, 34.532494, 41.567970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729141, 34.575626, 41.664303>,  <39.088383, 34.647518, 41.824856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729141, 34.575626, 41.664303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362510, -0.214182, 0.907035,
		-0.248987, 0.960117, 0.127205,
		-0.898105, -0.179726, -0.401381,
		38.459709, 34.521709, 41.543888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683250, 35.033417, 42.266949>,  <39.088383, 34.647518, 41.824856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683250, 35.033417, 42.266949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409512, 34.803394, 42.087627>,  <38.245266, 34.665382, 41.980034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409512, 34.803394, 42.087627>,  <38.683250, 35.033417, 42.266949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409512, 34.803394, 42.087627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522874, -0.041490, 0.851399,
		-0.508199, 0.817064, -0.272286,
		-0.684351, -0.575051, -0.448307,
		38.204205, 34.630878, 41.953136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.003410, 35.225864, 42.481438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970711, 34.857182, 42.329773>,  <37.951092, 34.635971, 42.238773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970711, 34.857182, 42.329773>,  <38.003410, 35.225864, 42.481438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970711, 34.857182, 42.329773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637663, -0.244008, 0.730648,
		-0.765965, 0.301509, -0.567793,
		-0.081751, -0.921712, -0.379162,
		37.946186, 34.580669, 42.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269363, 35.020378, 42.566292>,  <38.003410, 35.225864, 42.481438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269363, 35.020378, 42.566292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447708, 34.666851, 42.509609>,  <37.554714, 34.454735, 42.475597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447708, 34.666851, 42.509609>,  <37.269363, 35.020378, 42.566292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447708, 34.666851, 42.509609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552436, -0.396272, 0.733337,
		-0.704289, -0.248679, -0.664933,
		0.445860, -0.883814, -0.141711,
		37.581467, 34.401707, 42.467094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732738, 34.445271, 42.583225>,  <37.269363, 35.020378, 42.566292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732738, 34.445271, 42.583225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077557, 34.264751, 42.675488>,  <37.284447, 34.156441, 42.730846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077557, 34.264751, 42.675488>,  <36.732738, 34.445271, 42.583225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077557, 34.264751, 42.675488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418987, -0.378497, 0.825342,
		-0.285171, -0.808128, -0.515371,
		0.862048, -0.451297, 0.230659,
		37.336170, 34.129360, 42.744686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527699, 33.918091, 42.914867>,  <36.732738, 34.445271, 42.583225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527699, 33.918091, 42.914867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909950, 33.885513, 43.028107>,  <37.139301, 33.865967, 43.096050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909950, 33.885513, 43.028107>,  <36.527699, 33.918091, 42.914867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909950, 33.885513, 43.028107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293945, -0.200467, 0.934564,
		-0.019361, -0.976309, -0.215511,
		0.955626, -0.081442, 0.283100,
		37.196640, 33.861080, 43.113037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710728, 33.139698, 43.265568>,  <36.527699, 33.918091, 42.914867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710728, 33.139698, 43.265568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965149, 33.421402, 43.391708>,  <37.117802, 33.590424, 43.467392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965149, 33.421402, 43.391708>,  <36.710728, 33.139698, 43.265568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965149, 33.421402, 43.391708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235957, -0.211591, 0.948448,
		0.734684, -0.677673, 0.031593,
		0.636053, 0.704264, 0.315355,
		37.155964, 33.632683, 43.486313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182766, 32.796108, 43.757248>,  <36.710728, 33.139698, 43.265568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182766, 32.796108, 43.757248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170170, 33.188354, 43.834602>,  <37.162613, 33.423702, 43.881016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170170, 33.188354, 43.834602>,  <37.182766, 32.796108, 43.757248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170170, 33.188354, 43.834602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409538, -0.189157, 0.892468,
		0.911749, -0.051092, 0.407557,
		-0.031495, 0.980617, 0.193388,
		37.160721, 33.482540, 43.892620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295471, 32.818760, 44.430111>,  <37.182766, 32.796108, 43.757248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295471, 32.818760, 44.430111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235142, 33.212502, 44.393658>,  <37.198944, 33.448746, 44.371784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235142, 33.212502, 44.393658>,  <37.295471, 32.818760, 44.430111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235142, 33.212502, 44.393658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205076, 0.059026, 0.976964,
		0.967055, 0.166038, 0.192964,
		-0.150823, 0.984351, -0.091132,
		37.189896, 33.507809, 44.366318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719749, 33.217831, 44.969006>,  <37.295471, 32.818760, 44.430111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719749, 33.217831, 44.969006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390469, 33.415432, 44.857079>,  <37.192898, 33.533993, 44.789925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390469, 33.415432, 44.857079>,  <37.719749, 33.217831, 44.969006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390469, 33.415432, 44.857079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325393, -0.006650, 0.945556,
		0.465244, 0.869436, 0.166218,
		-0.823206, 0.494000, -0.279814,
		37.143505, 33.563633, 44.773136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627205, 33.857903, 45.465652>,  <37.719749, 33.217831, 44.969006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627205, 33.857903, 45.465652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274025, 33.768650, 45.300426>,  <37.062119, 33.715099, 45.201290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274025, 33.768650, 45.300426>,  <37.627205, 33.857903, 45.465652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274025, 33.768650, 45.300426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377508, -0.185611, 0.907214,
		-0.279092, 0.956955, 0.079653,
		-0.882947, -0.223126, -0.413060,
		37.009140, 33.701714, 45.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193699, 34.267826, 45.933437>,  <37.627205, 33.857903, 45.465652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193699, 34.267826, 45.933437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956886, 34.001465, 45.751858>,  <36.814800, 33.841648, 45.642910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956886, 34.001465, 45.751858>,  <37.193699, 34.267826, 45.933437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956886, 34.001465, 45.751858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452587, -0.191354, 0.870947,
		-0.666834, 0.721078, -0.188093,
		-0.592028, -0.665905, -0.453952,
		36.779278, 33.801693, 45.615673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530785, 34.460365, 46.223522>,  <37.193699, 34.267826, 45.933437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530785, 34.460365, 46.223522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528545, 34.085373, 46.084320>,  <36.527203, 33.860378, 46.000801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528545, 34.085373, 46.084320>,  <36.530785, 34.460365, 46.223522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528545, 34.085373, 46.084320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328720, -0.326943, 0.886031,
		-0.944411, 0.119355, -0.306337,
		-0.005597, -0.937476, -0.348003,
		36.526867, 33.804131, 45.979919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031433, 34.195530, 46.595928>,  <36.530785, 34.460365, 46.223522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031433, 34.195530, 46.595928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200119, 33.869923, 46.436165>,  <36.301331, 33.674557, 46.340309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200119, 33.869923, 46.436165>,  <36.031433, 34.195530, 46.595928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200119, 33.869923, 46.436165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272352, -0.533871, 0.800503,
		-0.864857, -0.228809, -0.446844,
		0.421719, -0.814020, -0.399406,
		36.326633, 33.625717, 46.316341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504684, 33.687092, 46.577393>,  <36.031433, 34.195530, 46.595928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504684, 33.687092, 46.577393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853653, 33.491589, 46.577583>,  <36.063034, 33.374287, 46.577698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853653, 33.491589, 46.577583>,  <35.504684, 33.687092, 46.577393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853653, 33.491589, 46.577583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354892, -0.632810, 0.688189,
		-0.336055, -0.600559, -0.725532,
		0.872422, -0.488754, 0.000475,
		36.115379, 33.344963, 46.577724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294617, 33.031170, 46.598083>,  <35.504684, 33.687092, 46.577393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294617, 33.031170, 46.598083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677593, 33.000214, 46.709309>,  <35.907379, 32.981640, 46.776043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677593, 33.000214, 46.709309>,  <35.294617, 33.031170, 46.598083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677593, 33.000214, 46.709309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261180, -0.642324, 0.720559,
		0.122842, -0.762517, -0.635199,
		0.957442, -0.077387, 0.278059,
		35.964825, 32.976997, 46.792725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460979, 32.341110, 46.522861>,  <35.294617, 33.031170, 46.598083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460979, 32.341110, 46.522861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703938, 32.515282, 46.788635>,  <35.849712, 32.619785, 46.948097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703938, 32.515282, 46.788635>,  <35.460979, 32.341110, 46.522861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703938, 32.515282, 46.788635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218725, -0.712400, 0.666818,
		0.763695, -0.550350, -0.337468,
		0.607395, 0.435433, 0.664431,
		35.886158, 32.645912, 46.987965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907375, 31.778101, 46.808804>,  <35.460979, 32.341110, 46.522861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907375, 31.778101, 46.808804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.876934, 32.086590, 47.061604>,  <35.858669, 32.271683, 47.213284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.876934, 32.086590, 47.061604>,  <35.907375, 31.778101, 46.808804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876934, 32.086590, 47.061604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070252, -0.636410, 0.768146,
		0.994622, 0.014056, 0.102610,
		-0.076099, 0.771223, 0.632000,
		35.854103, 32.317955, 47.251202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097050, 31.495058, 47.404179>,  <35.907375, 31.778101, 46.808804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097050, 31.495058, 47.404179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933823, 31.832945, 47.542706>,  <35.835884, 32.035675, 47.625820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933823, 31.832945, 47.542706>,  <36.097050, 31.495058, 47.404179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933823, 31.832945, 47.542706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058382, -0.402707, 0.913465,
		0.911082, 0.352540, 0.213649,
		-0.408071, 0.844715, 0.346317,
		35.811401, 32.086361, 47.646599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551640, 31.716906, 47.951229>,  <36.097050, 31.495058, 47.404179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551640, 31.716906, 47.951229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194736, 31.882120, 48.024193>,  <35.980595, 31.981249, 48.067970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194736, 31.882120, 48.024193>,  <36.551640, 31.716906, 47.951229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194736, 31.882120, 48.024193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006274, -0.415295, 0.909665,
		0.451479, 0.810513, 0.373142,
		-0.892260, 0.413036, 0.182412,
		35.927059, 32.006031, 48.078915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669750, 31.738272, 48.646004>,  <36.551640, 31.716906, 47.951229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669750, 31.738272, 48.646004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284901, 31.823961, 48.578571>,  <36.053989, 31.875376, 48.538113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284901, 31.823961, 48.578571>,  <36.669750, 31.738272, 48.646004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284901, 31.823961, 48.578571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237310, -0.353904, 0.904674,
		0.134144, 0.910417, 0.391339,
		-0.962127, 0.214225, -0.168577,
		35.996262, 31.888229, 48.528000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523010, 32.100731, 49.214142>,  <36.669750, 31.738272, 48.646004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523010, 32.100731, 49.214142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191780, 31.935743, 49.062263>,  <35.993042, 31.836752, 48.971138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191780, 31.935743, 49.062263>,  <36.523010, 32.100731, 49.214142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191780, 31.935743, 49.062263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170764, -0.459516, 0.871599,
		-0.533979, 0.786586, 0.310079,
		-0.828074, -0.412465, -0.379693,
		35.943359, 31.812004, 48.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985229, 32.118526, 49.706562>,  <36.523010, 32.100731, 49.214142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985229, 32.118526, 49.706562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864613, 31.840401, 49.445606>,  <35.792244, 31.673527, 49.289032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864613, 31.840401, 49.445606>,  <35.985229, 32.118526, 49.706562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864613, 31.840401, 49.445606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101008, -0.657095, 0.747010,
		-0.948087, 0.291153, 0.127911,
		-0.301544, -0.695310, -0.652392,
		35.774151, 31.631807, 49.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356693, 31.899548, 49.997997>,  <35.985229, 32.118526, 49.706562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356693, 31.899548, 49.997997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484360, 31.624485, 49.737148>,  <35.560959, 31.459448, 49.580639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484360, 31.624485, 49.737148>,  <35.356693, 31.899548, 49.997997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484360, 31.624485, 49.737148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114891, -0.711111, 0.693629,
		-0.940707, -0.146463, -0.305972,
		0.319171, -0.687655, -0.652120,
		35.580112, 31.418188, 49.541512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726028, 32.006905, 50.435577>,  <35.356693, 31.899548, 49.997997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726028, 32.006905, 50.435577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530109, 31.886475, 50.108299>,  <34.412560, 31.814215, 49.911930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530109, 31.886475, 50.108299>,  <34.726028, 32.006905, 50.435577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530109, 31.886475, 50.108299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145841, -0.896959, 0.417366,
		-0.859552, 0.323752, 0.395419,
		-0.489798, -0.301080, -0.818199,
		34.383171, 31.796150, 49.862839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069160, 31.903728, 50.690319>,  <34.726028, 32.006905, 50.435577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069160, 31.903728, 50.690319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227283, 31.670876, 50.406109>,  <34.322159, 31.531164, 50.235580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227283, 31.670876, 50.406109>,  <34.069160, 31.903728, 50.690319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227283, 31.670876, 50.406109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012982, -0.769918, 0.638011,
		-0.918457, -0.261435, -0.296798,
		0.395309, -0.582132, -0.710530,
		34.345875, 31.496237, 50.192951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096230, 32.688950, 50.392670>,  <34.069160, 31.903728, 50.690319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096230, 32.688950, 50.392670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766937, 32.875397, 50.522301>,  <33.569363, 32.987263, 50.600079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766937, 32.875397, 50.522301>,  <34.096230, 32.688950, 50.392670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766937, 32.875397, 50.522301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313753, 0.102195, -0.943989,
		-0.473127, -0.878802, 0.062115,
		-0.823231, 0.466115, 0.324078,
		33.519966, 33.015232, 50.619526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471951, 32.330830, 50.005867>,  <34.096230, 32.688950, 50.392670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471951, 32.330830, 50.005867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350403, 32.696827, 50.112034>,  <33.277473, 32.916428, 50.175735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350403, 32.696827, 50.112034>,  <33.471951, 32.330830, 50.005867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350403, 32.696827, 50.112034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308144, 0.169226, -0.936167,
		-0.901505, -0.366259, 0.230528,
		-0.303868, 0.914996, 0.265419,
		33.259243, 32.971325, 50.191658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882042, 32.435787, 49.695526>,  <33.471951, 32.330830, 50.005867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882042, 32.435787, 49.695526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985977, 32.812214, 49.782127>,  <33.048340, 33.038071, 49.834087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985977, 32.812214, 49.782127>,  <32.882042, 32.435787, 49.695526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985977, 32.812214, 49.782127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205867, 0.273035, -0.939719,
		-0.943452, 0.199608, 0.264681,
		0.259843, 0.941068, 0.216502,
		33.063931, 33.094536, 49.847076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423599, 32.851112, 49.255447>,  <32.882042, 32.435787, 49.695526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423599, 32.851112, 49.255447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.711304, 33.099457, 49.380154>,  <32.883926, 33.248463, 49.454975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.711304, 33.099457, 49.380154>,  <32.423599, 32.851112, 49.255447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711304, 33.099457, 49.380154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053638, 0.397782, -0.915910,
		-0.692668, 0.675499, 0.252806,
		0.719259, 0.620862, 0.311764,
		32.927082, 33.285717, 49.473682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225723, 33.543880, 49.085609>,  <32.423599, 32.851112, 49.255447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225723, 33.543880, 49.085609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622250, 33.571640, 49.130302>,  <32.860165, 33.588295, 49.157120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622250, 33.571640, 49.130302>,  <32.225723, 33.543880, 49.085609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622250, 33.571640, 49.130302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075480, 0.395517, -0.915352,
		-0.107717, 0.915833, 0.386843,
		0.991312, 0.069400, 0.111731,
		32.919643, 33.592461, 49.163822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408302, 34.191269, 48.890354>,  <32.225723, 33.543880, 49.085609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408302, 34.191269, 48.890354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759834, 34.004608, 48.850567>,  <32.970753, 33.892612, 48.826694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759834, 34.004608, 48.850567>,  <32.408302, 34.191269, 48.890354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759834, 34.004608, 48.850567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137320, 0.447015, -0.883924,
		0.456945, 0.763162, 0.456931,
		0.878832, -0.466650, -0.099464,
		33.023483, 33.864613, 48.820728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940952, 34.721054, 48.592354>,  <32.408302, 34.191269, 48.890354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940952, 34.721054, 48.592354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101067, 34.360641, 48.525524>,  <33.197136, 34.144394, 48.485428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.101067, 34.360641, 48.525524>,  <32.940952, 34.721054, 48.592354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101067, 34.360641, 48.525524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300918, 0.301450, -0.904752,
		0.865574, 0.311885, 0.391803,
		0.400288, -0.901030, -0.167076,
		33.221153, 34.090332, 48.475403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596367, 34.849056, 48.395954>,  <32.940952, 34.721054, 48.592354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596367, 34.849056, 48.395954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516216, 34.480629, 48.262398>,  <33.468128, 34.259571, 48.182262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516216, 34.480629, 48.262398>,  <33.596367, 34.849056, 48.395954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516216, 34.480629, 48.262398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448432, 0.216787, -0.867128,
		0.871068, -0.323477, 0.369598,
		-0.200372, -0.921068, -0.333894,
		33.456104, 34.204308, 48.162231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190536, 34.671925, 47.970703>,  <33.596367, 34.849056, 48.395954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190536, 34.671925, 47.970703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932922, 34.387421, 47.858044>,  <33.778355, 34.216717, 47.790447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932922, 34.387421, 47.858044>,  <34.190536, 34.671925, 47.970703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932922, 34.387421, 47.858044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385909, 0.015821, -0.922401,
		0.660524, -0.702750, 0.264293,
		-0.644036, -0.711261, -0.281648,
		33.739712, 34.174042, 47.773548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643028, 34.242474, 47.546276>,  <34.190536, 34.671925, 47.970703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643028, 34.242474, 47.546276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269360, 34.168777, 47.424042>,  <34.045158, 34.124557, 47.350700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269360, 34.168777, 47.424042>,  <34.643028, 34.242474, 47.546276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269360, 34.168777, 47.424042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319437, -0.050154, -0.946279,
		0.159020, -0.981600, 0.105707,
		-0.934170, -0.184244, -0.305584,
		33.989109, 34.113503, 47.332367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734669, 33.633793, 47.117771>,  <34.643028, 34.242474, 47.546276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734669, 33.633793, 47.117771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394695, 33.812466, 47.005993>,  <34.190712, 33.919670, 46.938927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394695, 33.812466, 47.005993>,  <34.734669, 33.633793, 47.117771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394695, 33.812466, 47.005993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219917, -0.181221, -0.958538,
		-0.478808, -0.876145, 0.055791,
		-0.849929, 0.446686, -0.279450,
		34.139717, 33.946472, 46.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676983, 33.406651, 46.535988>,  <34.734669, 33.633793, 47.117771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676983, 33.406651, 46.535988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405621, 33.699039, 46.506462>,  <34.242802, 33.874474, 46.488747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405621, 33.699039, 46.506462>,  <34.676983, 33.406651, 46.535988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405621, 33.699039, 46.506462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166753, 0.055351, -0.984444,
		-0.715514, -0.680161, -0.159442,
		-0.678405, 0.730970, -0.073814,
		34.202099, 33.918331, 46.484318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226490, 33.238018, 45.942993>,  <34.676983, 33.406651, 46.535988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226490, 33.238018, 45.942993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210693, 33.634785, 45.991234>,  <34.201214, 33.872845, 46.020176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210693, 33.634785, 45.991234>,  <34.226490, 33.238018, 45.942993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210693, 33.634785, 45.991234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090409, 0.123745, -0.988187,
		-0.995121, -0.028126, -0.094566,
		-0.039496, 0.991915, 0.120599,
		34.198845, 33.932358, 46.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874954, 33.520092, 45.392059>,  <34.226490, 33.238018, 45.942993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874954, 33.520092, 45.392059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067211, 33.853226, 45.501873>,  <34.182568, 34.053104, 45.567760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067211, 33.853226, 45.501873>,  <33.874954, 33.520092, 45.392059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067211, 33.853226, 45.501873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071035, 0.275066, -0.958798,
		-0.874033, 0.480343, 0.073049,
		0.480645, 0.832832, 0.274538,
		34.211403, 34.103077, 45.584236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506702, 34.146278, 45.118713>,  <33.874954, 33.520092, 45.392059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506702, 34.146278, 45.118713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891232, 34.235939, 45.182743>,  <34.121948, 34.289734, 45.221161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891232, 34.235939, 45.182743>,  <33.506702, 34.146278, 45.118713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891232, 34.235939, 45.182743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093047, 0.282715, -0.954680,
		-0.259247, 0.932646, 0.250923,
		0.961318, 0.224150, 0.160073,
		34.179626, 34.303185, 45.230766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714844, 34.835201, 44.830627>,  <33.506702, 34.146278, 45.118713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714844, 34.835201, 44.830627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087143, 34.697094, 44.878792>,  <34.310524, 34.614231, 44.907692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087143, 34.697094, 44.878792>,  <33.714844, 34.835201, 44.830627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087143, 34.697094, 44.878792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276836, 0.450212, -0.848923,
		0.238892, 0.823469, 0.514616,
		0.930748, -0.345265, 0.120414,
		34.366367, 34.593513, 44.914917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121387, 35.415691, 44.856968>,  <33.714844, 34.835201, 44.830627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121387, 35.415691, 44.856968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346985, 35.107025, 44.739357>,  <34.482342, 34.921825, 44.668793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346985, 35.107025, 44.739357>,  <34.121387, 35.415691, 44.856968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346985, 35.107025, 44.739357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314281, 0.529842, -0.787715,
		0.763635, 0.351860, 0.541347,
		0.563994, -0.771661, -0.294023,
		34.516182, 34.875526, 44.651150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757881, 35.741413, 44.567024>,  <34.121387, 35.415691, 44.856968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757881, 35.741413, 44.567024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761497, 35.374973, 44.406689>,  <34.763668, 35.155109, 44.310486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761497, 35.374973, 44.406689>,  <34.757881, 35.741413, 44.567024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761497, 35.374973, 44.406689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228069, 0.392181, -0.891167,
		0.973603, -0.083365, 0.212479,
		0.009038, -0.916103, -0.400841,
		34.764210, 35.100143, 44.286438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454910, 35.613445, 44.218506>,  <34.757881, 35.741413, 44.567024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454910, 35.613445, 44.218506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199593, 35.349102, 44.060596>,  <35.046402, 35.190495, 43.965851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199593, 35.349102, 44.060596>,  <35.454910, 35.613445, 44.218506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199593, 35.349102, 44.060596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169222, 0.379833, -0.909445,
		0.750964, -0.647297, -0.130613,
		-0.638292, -0.660858, -0.394778,
		35.008106, 35.150845, 43.942162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708305, 35.473179, 43.550388>,  <35.454910, 35.613445, 44.218506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708305, 35.473179, 43.550388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341518, 35.317184, 43.516724>,  <35.121445, 35.223587, 43.496525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341518, 35.317184, 43.516724>,  <35.708305, 35.473179, 43.550388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341518, 35.317184, 43.516724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011806, 0.184328, -0.982794,
		0.398788, -0.902183, -0.164419,
		-0.916967, -0.389985, -0.084159,
		35.066429, 35.200188, 43.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.299473, 41.920460, 40.332806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275578, 41.698738, 40.664871>,  <45.261242, 41.565704, 40.864109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275578, 41.698738, 40.664871>,  <45.299473, 41.920460, 40.332806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275578, 41.698738, 40.664871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137696, -0.819124, -0.556845,
		0.988671, -0.147575, -0.027393,
		-0.059738, -0.554308, 0.830165,
		45.257656, 41.532444, 40.913921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745064, 41.340851, 40.234928>,  <45.299473, 41.920460, 40.332806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745064, 41.340851, 40.234928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.530472, 41.242874, 40.557964>,  <45.401718, 41.184090, 40.751785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.530472, 41.242874, 40.557964>,  <45.745064, 41.340851, 40.234928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530472, 41.242874, 40.557964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168629, -0.906543, -0.386969,
		0.826897, -0.343782, 0.445035,
		-0.536476, -0.244937, 0.807589,
		45.369530, 41.169392, 40.800240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099125, 40.811996, 40.515106>,  <45.745064, 41.340851, 40.234928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099125, 40.811996, 40.515106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721153, 40.769051, 40.638771>,  <45.494370, 40.743282, 40.712971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721153, 40.769051, 40.638771>,  <46.099125, 40.811996, 40.515106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721153, 40.769051, 40.638771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019163, -0.961190, -0.275222,
		0.326714, -0.254141, 0.910314,
		-0.944929, -0.107364, 0.309164,
		45.437675, 40.736843, 40.731522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053959, 40.091053, 40.866310>,  <46.099125, 40.811996, 40.515106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053959, 40.091053, 40.866310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683418, 40.193573, 40.755909>,  <45.461094, 40.255085, 40.689667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683418, 40.193573, 40.755909>,  <46.053959, 40.091053, 40.866310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683418, 40.193573, 40.755909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179480, -0.944611, -0.274766,
		-0.331140, -0.204993, 0.921045,
		-0.926355, 0.256296, -0.276007,
		45.405514, 40.270462, 40.673107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599335, 39.480274, 41.181911>,  <46.053959, 40.091053, 40.866310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599335, 39.480274, 41.181911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375523, 39.673393, 40.912441>,  <45.241238, 39.789265, 40.750759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375523, 39.673393, 40.912441>,  <45.599335, 39.480274, 41.181911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375523, 39.673393, 40.912441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325538, -0.875517, -0.357065,
		-0.762203, 0.019519, 0.647044,
		-0.559528, 0.482793, -0.673676,
		45.207664, 39.818230, 40.710339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966282, 39.064606, 41.152798>,  <45.599335, 39.480274, 41.181911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966282, 39.064606, 41.152798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932533, 39.284050, 40.820076>,  <44.912285, 39.415718, 40.620441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932533, 39.284050, 40.820076>,  <44.966282, 39.064606, 41.152798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932533, 39.284050, 40.820076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372767, -0.791546, -0.484251,
		-0.924081, 0.269213, 0.271291,
		-0.084372, 0.548615, -0.831807,
		44.907223, 39.448635, 40.570534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289494, 39.073296, 40.772114>,  <44.966282, 39.064606, 41.152798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289494, 39.073296, 40.772114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533825, 39.165730, 40.469196>,  <44.680424, 39.221191, 40.287445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533825, 39.165730, 40.469196>,  <44.289494, 39.073296, 40.772114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533825, 39.165730, 40.469196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474152, -0.659228, -0.583608,
		-0.634091, 0.715555, -0.293105,
		0.610827, 0.231084, -0.757292,
		44.717072, 39.235054, 40.242008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879532, 39.111900, 40.136513>,  <44.289494, 39.073296, 40.772114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879532, 39.111900, 40.136513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254581, 39.053776, 40.010178>,  <44.479610, 39.018902, 39.934376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254581, 39.053776, 40.010178>,  <43.879532, 39.111900, 40.136513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254581, 39.053776, 40.010178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312551, -0.750157, -0.582732,
		-0.152251, 0.645097, -0.748779,
		0.937620, -0.145310, -0.315838,
		44.535866, 39.010181, 39.915424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775829, 38.936668, 39.375694>,  <43.879532, 39.111900, 40.136513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775829, 38.936668, 39.375694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148071, 38.827835, 39.473629>,  <44.371418, 38.762535, 39.532391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148071, 38.827835, 39.473629>,  <43.775829, 38.936668, 39.375694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148071, 38.827835, 39.473629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083998, -0.809811, -0.580646,
		0.356254, 0.519787, -0.776469,
		0.930606, -0.272080, 0.244838,
		44.427254, 38.746212, 39.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043285, 38.730961, 38.740845>,  <43.775829, 38.936668, 39.375694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043285, 38.730961, 38.740845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251617, 38.547798, 39.029026>,  <44.376617, 38.437901, 39.201935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251617, 38.547798, 39.029026>,  <44.043285, 38.730961, 38.740845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251617, 38.547798, 39.029026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185337, -0.884483, -0.428182,
		0.833299, 0.089484, -0.545533,
		0.520830, -0.457911, 0.720454,
		44.407867, 38.410423, 39.245163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329590, 38.170227, 38.435249>,  <44.043285, 38.730961, 38.740845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329590, 38.170227, 38.435249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371986, 38.060543, 38.817574>,  <44.397427, 37.994732, 39.046967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371986, 38.060543, 38.817574>,  <44.329590, 38.170227, 38.435249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371986, 38.060543, 38.817574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131837, -0.956614, -0.259823,
		0.985588, -0.098471, -0.137547,
		0.105995, -0.274212, 0.955810,
		44.403786, 37.978279, 39.104317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664913, 37.646847, 38.387569>,  <44.329590, 38.170227, 38.435249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664913, 37.646847, 38.387569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.520588, 37.611092, 38.758907>,  <44.433990, 37.589638, 38.981709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.520588, 37.611092, 38.758907>,  <44.664913, 37.646847, 38.387569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520588, 37.611092, 38.758907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040035, -0.992994, -0.111171,
		0.931777, -0.077278, 0.354710,
		-0.360816, -0.089386, 0.928344,
		44.412342, 37.584274, 39.037411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995445, 37.129890, 38.770134>,  <44.664913, 37.646847, 38.387569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995445, 37.129890, 38.770134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641273, 37.154430, 38.954414>,  <44.428768, 37.169155, 39.064983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641273, 37.154430, 38.954414>,  <44.995445, 37.129890, 38.770134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641273, 37.154430, 38.954414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158218, -0.971834, -0.174661,
		0.437011, -0.227542, 0.870199,
		-0.885432, 0.061352, 0.460703,
		44.375645, 37.172836, 39.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949081, 36.570858, 39.129776>,  <44.995445, 37.129890, 38.770134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949081, 36.570858, 39.129776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560795, 36.665882, 39.115467>,  <44.327824, 36.722897, 39.106884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560795, 36.665882, 39.115467>,  <44.949081, 36.570858, 39.129776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560795, 36.665882, 39.115467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209541, -0.910069, -0.357584,
		-0.117499, -0.339617, 0.933196,
		-0.970715, 0.237558, -0.035768,
		44.269581, 36.737148, 39.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518536, 36.036274, 39.425880>,  <44.949081, 36.570858, 39.129776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518536, 36.036274, 39.425880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274845, 36.236816, 39.180122>,  <44.128632, 36.357143, 39.032669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274845, 36.236816, 39.180122>,  <44.518536, 36.036274, 39.425880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274845, 36.236816, 39.180122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264963, -0.858947, -0.438184,
		-0.747419, -0.104162, 0.656136,
		-0.609228, 0.501359, -0.614394,
		44.092075, 36.387222, 38.995804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941219, 35.569340, 39.446911>,  <44.518536, 36.036274, 39.425880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941219, 35.569340, 39.446911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869236, 35.803967, 39.131050>,  <43.826046, 35.944744, 38.941532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869236, 35.803967, 39.131050>,  <43.941219, 35.569340, 39.446911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869236, 35.803967, 39.131050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187458, -0.808499, -0.557843,
		-0.965647, 0.047640, 0.255452,
		-0.179957, 0.586566, -0.789656,
		43.815250, 35.979935, 38.894154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363091, 35.329128, 39.116535>,  <43.941219, 35.569340, 39.446911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363091, 35.329128, 39.116535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550938, 35.522861, 38.821270>,  <43.663647, 35.639103, 38.644112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550938, 35.522861, 38.821270>,  <43.363091, 35.329128, 39.116535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550938, 35.522861, 38.821270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092763, -0.804395, -0.586808,
		-0.877984, 0.344048, -0.332829,
		0.469617, 0.484334, -0.738161,
		43.691822, 35.668163, 38.599823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057697, 35.023808, 38.535187>,  <43.363091, 35.329128, 39.116535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057697, 35.023808, 38.535187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390213, 35.183586, 38.380573>,  <43.589722, 35.279453, 38.287807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390213, 35.183586, 38.380573>,  <43.057697, 35.023808, 38.535187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390213, 35.183586, 38.380573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072574, -0.767436, -0.637004,
		-0.551087, 0.501481, -0.666948,
		0.831286, 0.399448, -0.386530,
		43.639599, 35.303421, 38.264614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068829, 35.071072, 37.712952>,  <43.057697, 35.023808, 38.535187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068829, 35.071072, 37.712952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452900, 35.066425, 37.824604>,  <43.683342, 35.063637, 37.891594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452900, 35.066425, 37.824604>,  <43.068829, 35.071072, 37.712952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452900, 35.066425, 37.824604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188978, -0.708849, -0.679574,
		0.205759, 0.705265, -0.678429,
		0.960183, -0.011620, 0.279131,
		43.740955, 35.062939, 37.908344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447586, 35.111248, 37.090549>,  <43.068829, 35.071072, 37.712952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447586, 35.111248, 37.090549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704098, 34.955658, 37.355110>,  <43.858006, 34.862305, 37.513847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704098, 34.955658, 37.355110>,  <43.447586, 35.111248, 37.090549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704098, 34.955658, 37.355110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272618, -0.690243, -0.670256,
		0.717241, 0.610135, -0.336601,
		0.641284, -0.388972, 0.661405,
		43.896484, 34.838966, 37.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114437, 34.985668, 36.735855>,  <43.447586, 35.111248, 37.090549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114437, 34.985668, 36.735855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132294, 34.755104, 37.062229>,  <44.143005, 34.616764, 37.258053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132294, 34.755104, 37.062229>,  <44.114437, 34.985668, 36.735855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132294, 34.755104, 37.062229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291949, -0.773570, -0.562455,
		0.955392, 0.263319, 0.133752,
		0.044639, -0.576414, 0.815938,
		44.145687, 34.582180, 37.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362038, 35.591118, 36.174427>,  <44.114437, 34.985668, 36.735855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362038, 35.591118, 36.174427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692993, 35.624477, 35.952263>,  <44.891567, 35.644493, 35.818966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692993, 35.624477, 35.952263>,  <44.362038, 35.591118, 36.174427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692993, 35.624477, 35.952263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287440, 0.786706, 0.546326,
		0.482505, -0.611669, 0.626937,
		0.827386, 0.083398, -0.555408,
		44.941208, 35.649498, 35.785641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018349, 35.583725, 36.561447>,  <44.362038, 35.591118, 36.174427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018349, 35.583725, 36.561447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041260, 35.799656, 36.225517>,  <45.055008, 35.929214, 36.023960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.041260, 35.799656, 36.225517>,  <45.018349, 35.583725, 36.561447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041260, 35.799656, 36.225517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092894, 0.834675, 0.542851,
		0.994027, -0.109107, -0.002339,
		0.057277, 0.539826, -0.839825,
		45.058441, 35.961605, 35.973568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575802, 36.004795, 36.618649>,  <45.018349, 35.583725, 36.561447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575802, 36.004795, 36.618649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366104, 36.189728, 36.332592>,  <45.240288, 36.300686, 36.160957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366104, 36.189728, 36.332592>,  <45.575802, 36.004795, 36.618649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366104, 36.189728, 36.332592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301167, 0.886175, 0.352126,
		0.796537, -0.030778, -0.603806,
		-0.524240, 0.462328, -0.715140,
		45.208832, 36.328426, 36.118050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010181, 36.473759, 36.375103>,  <45.575802, 36.004795, 36.618649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010181, 36.473759, 36.375103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665768, 36.620914, 36.234665>,  <45.459118, 36.709209, 36.150402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665768, 36.620914, 36.234665>,  <46.010181, 36.473759, 36.375103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665768, 36.620914, 36.234665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337219, 0.929830, 0.147309,
		0.380651, 0.008444, -0.924680,
		-0.861039, 0.367893, -0.351093,
		45.407455, 36.731281, 36.129337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187595, 37.004601, 35.947422>,  <46.010181, 36.473759, 36.375103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187595, 37.004601, 35.947422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811653, 37.085278, 36.057686>,  <45.586086, 37.133686, 36.123844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811653, 37.085278, 36.057686>,  <46.187595, 37.004601, 35.947422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811653, 37.085278, 36.057686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286243, 0.905433, 0.313458,
		-0.186366, 0.373511, -0.908712,
		-0.939858, 0.201695, 0.275657,
		45.529697, 37.145786, 36.140385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043049, 37.598682, 35.582268>,  <46.187595, 37.004601, 35.947422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043049, 37.598682, 35.582268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785305, 37.560814, 35.885803>,  <45.630657, 37.538094, 36.067924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785305, 37.560814, 35.885803>,  <46.043049, 37.598682, 35.582268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785305, 37.560814, 35.885803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251115, 0.911088, 0.326896,
		-0.722314, 0.401195, -0.563298,
		-0.644363, -0.094669, 0.758838,
		45.591995, 37.532413, 36.113453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647381, 38.064724, 35.460541>,  <46.043049, 37.598682, 35.582268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647381, 38.064724, 35.460541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.578255, 38.016556, 35.851566>,  <45.536777, 37.987656, 36.086182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.578255, 38.016556, 35.851566>,  <45.647381, 38.064724, 35.460541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578255, 38.016556, 35.851566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217596, 0.963308, 0.157132,
		-0.960618, 0.239869, -0.140273,
		-0.172817, -0.120421, 0.977565,
		45.526409, 37.980431, 36.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309528, 38.589340, 35.575191>,  <45.647381, 38.064724, 35.460541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309528, 38.589340, 35.575191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429890, 38.472912, 35.938450>,  <45.502106, 38.403053, 36.156406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429890, 38.472912, 35.938450>,  <45.309528, 38.589340, 35.575191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429890, 38.472912, 35.938450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290414, 0.935021, 0.203461,
		-0.908359, 0.202516, 0.365884,
		0.300905, -0.291074, 0.908148,
		45.520161, 38.385590, 36.210896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203236, 39.224937, 35.998455>,  <45.309528, 38.589340, 35.575191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203236, 39.224937, 35.998455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438068, 38.995155, 36.226608>,  <45.578968, 38.857285, 36.363499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438068, 38.995155, 36.226608>,  <45.203236, 39.224937, 35.998455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438068, 38.995155, 36.226608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279690, 0.805134, 0.523004,
		-0.759673, -0.147519, 0.633352,
		0.587086, -0.574454, 0.570379,
		45.614193, 38.822819, 36.397720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075539, 39.528191, 36.667599>,  <45.203236, 39.224937, 35.998455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075539, 39.528191, 36.667599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421593, 39.327602, 36.670837>,  <45.629227, 39.207249, 36.672783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.421593, 39.327602, 36.670837>,  <45.075539, 39.528191, 36.667599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421593, 39.327602, 36.670837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420209, 0.733564, 0.534143,
		-0.273802, -0.458701, 0.845356,
		0.865134, -0.501475, 0.008101,
		45.681133, 39.177158, 36.673267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262154, 39.378983, 37.403282>,  <45.075539, 39.528191, 36.667599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262154, 39.378983, 37.403282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.586754, 39.389175, 37.169762>,  <45.781513, 39.395290, 37.029652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.586754, 39.389175, 37.169762>,  <45.262154, 39.378983, 37.403282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586754, 39.389175, 37.169762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360655, 0.764225, 0.534684,
		0.459781, -0.644446, 0.610976,
		0.811498, 0.025486, -0.583799,
		45.830204, 39.396820, 36.994621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820843, 39.252796, 37.857449>,  <45.262154, 39.378983, 37.403282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820843, 39.252796, 37.857449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962421, 39.428909, 37.527390>,  <46.047367, 39.534576, 37.329353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962421, 39.428909, 37.527390>,  <45.820843, 39.252796, 37.857449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962421, 39.428909, 37.527390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487449, 0.666120, 0.564515,
		0.798196, -0.602027, 0.021156,
		0.353946, 0.440281, -0.825151,
		46.068604, 39.560993, 37.279842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427990, 39.548336, 38.104507>,  <45.820843, 39.252796, 37.857449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427990, 39.548336, 38.104507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399818, 39.728264, 37.748371>,  <46.382915, 39.836220, 37.534691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399818, 39.728264, 37.748371>,  <46.427990, 39.548336, 38.104507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399818, 39.728264, 37.748371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595873, 0.734781, 0.324086,
		0.799984, -0.507704, -0.319785,
		-0.070432, 0.449815, -0.890340,
		46.378689, 39.863209, 37.481270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165310, 39.715321, 37.903328>,  <46.427990, 39.548336, 38.104507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165310, 39.715321, 37.903328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.922039, 39.955647, 37.695812>,  <46.776077, 40.099842, 37.571304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.922039, 39.955647, 37.695812>,  <47.165310, 39.715321, 37.903328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922039, 39.955647, 37.695812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402000, 0.796664, 0.451356,
		0.684481, 0.065953, -0.726042,
		-0.608179, 0.600814, -0.518788,
		46.739586, 40.135891, 37.540176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507866, 40.356453, 37.636696>,  <47.165310, 39.715321, 37.903328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507866, 40.356453, 37.636696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.118946, 40.447830, 37.656464>,  <46.885593, 40.502655, 37.668324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.118946, 40.447830, 37.656464>,  <47.507866, 40.356453, 37.636696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118946, 40.447830, 37.656464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227940, 0.880072, 0.416554,
		0.051668, 0.416281, -0.907767,
		-0.972303, 0.228439, 0.049415,
		46.827255, 40.516361, 37.671288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472424, 41.022137, 37.486404>,  <47.507866, 40.356453, 37.636696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472424, 41.022137, 37.486404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.127087, 40.976814, 37.683094>,  <46.919884, 40.949619, 37.801109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.127087, 40.976814, 37.683094>,  <47.472424, 41.022137, 37.486404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127087, 40.976814, 37.683094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208467, 0.807333, 0.552046,
		-0.459538, 0.579116, -0.673387,
		-0.863346, -0.113307, 0.491726,
		46.868084, 40.942822, 37.830612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149391, 41.685055, 37.547516>,  <47.472424, 41.022137, 37.486404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149391, 41.685055, 37.547516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007904, 41.467091, 37.851608>,  <46.923012, 41.336311, 38.034065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007904, 41.467091, 37.851608>,  <47.149391, 41.685055, 37.547516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007904, 41.467091, 37.851608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026742, 0.806552, 0.590558,
		-0.934970, 0.229221, -0.270720,
		-0.353718, -0.544914, 0.760232,
		46.901787, 41.303616, 38.079678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629654, 42.136066, 37.952770>,  <47.149391, 41.685055, 37.547516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629654, 42.136066, 37.952770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679699, 41.851349, 38.229233>,  <46.709728, 41.680519, 38.395111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679699, 41.851349, 38.229233>,  <46.629654, 42.136066, 37.952770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679699, 41.851349, 38.229233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166193, 0.671752, 0.721893,
		-0.978124, -0.205186, -0.034248,
		0.125116, -0.711792, 0.691157,
		46.717236, 41.637810, 38.436581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080662, 42.245216, 38.407085>,  <46.629654, 42.136066, 37.952770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080662, 42.245216, 38.407085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366867, 42.030029, 38.585358>,  <46.538589, 41.900917, 38.692322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366867, 42.030029, 38.585358>,  <46.080662, 42.245216, 38.407085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366867, 42.030029, 38.585358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027719, 0.659319, 0.751352,
		-0.698047, -0.525250, 0.486665,
		0.715515, -0.537969, 0.445676,
		46.581520, 41.868637, 38.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868858, 42.125568, 39.081741>,  <46.080662, 42.245216, 38.407085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868858, 42.125568, 39.081741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.261509, 42.052971, 39.105293>,  <46.497101, 42.009415, 39.119423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.261509, 42.052971, 39.105293>,  <45.868858, 42.125568, 39.081741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261509, 42.052971, 39.105293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107053, 0.779318, 0.617416,
		-0.157942, -0.599770, 0.784430,
		0.981628, -0.181491, 0.058881,
		46.555996, 41.998524, 39.122959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923676, 41.999123, 39.798595>,  <45.868858, 42.125568, 39.081741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923676, 41.999123, 39.798595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265148, 42.114670, 39.625263>,  <46.470032, 42.183998, 39.521263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265148, 42.114670, 39.625263>,  <45.923676, 41.999123, 39.798595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265148, 42.114670, 39.625263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089237, 0.738630, 0.668178,
		0.513086, -0.609084, 0.604781,
		0.853686, 0.288864, -0.433333,
		46.521255, 42.201328, 39.495262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.431778, 35.383728, 39.766338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069210, 35.228657, 39.699287>,  <38.851669, 35.135612, 39.659058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069210, 35.228657, 39.699287>,  <39.431778, 35.383728, 39.766338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069210, 35.228657, 39.699287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249434, -0.171069, -0.953162,
		0.340849, -0.905780, 0.251762,
		-0.906424, -0.387682, -0.167624,
		38.797283, 35.112350, 39.648998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573109, 34.865547, 39.264027>,  <39.431778, 35.383728, 39.766338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573109, 34.865547, 39.264027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184040, 34.948616, 39.222496>,  <38.950600, 34.998455, 39.197578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184040, 34.948616, 39.222496>,  <39.573109, 34.865547, 39.264027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184040, 34.948616, 39.222496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085467, -0.095518, -0.991752,
		-0.215871, -0.973525, 0.075159,
		-0.972674, 0.207667, -0.103823,
		38.892239, 35.010918, 39.191349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321648, 34.371330, 38.770073>,  <39.573109, 34.865547, 39.264027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321648, 34.371330, 38.770073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053566, 34.668167, 38.765572>,  <38.892715, 34.846268, 38.762871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053566, 34.668167, 38.765572>,  <39.321648, 34.371330, 38.770073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053566, 34.668167, 38.765572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062636, 0.041444, -0.997176,
		-0.739528, -0.669018, -0.074258,
		-0.670206, 0.742090, -0.011255,
		38.852505, 34.890793, 38.762196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920498, 34.220963, 38.118843>,  <39.321648, 34.371330, 38.770073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920498, 34.220963, 38.118843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838131, 34.598156, 38.223438>,  <38.788712, 34.824474, 38.286194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838131, 34.598156, 38.223438>,  <38.920498, 34.220963, 38.118843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838131, 34.598156, 38.223438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058276, 0.254923, -0.965204,
		-0.976832, -0.213991, 0.002460,
		-0.205918, 0.942986, 0.261487,
		38.776356, 34.881050, 38.301884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261028, 34.507923, 37.755096>,  <38.920498, 34.220963, 38.118843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261028, 34.507923, 37.755096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456573, 34.838280, 37.867466>,  <38.573902, 35.036491, 37.934887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456573, 34.838280, 37.867466>,  <38.261028, 34.507923, 37.755096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456573, 34.838280, 37.867466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069812, 0.283957, -0.956292,
		-0.869562, 0.487109, 0.081159,
		0.488864, 0.825890, 0.280924,
		38.603233, 35.086048, 37.951744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948238, 34.952663, 37.318630>,  <38.261028, 34.507923, 37.755096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948238, 34.952663, 37.318630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278191, 35.145287, 37.437069>,  <38.476162, 35.260860, 37.508133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278191, 35.145287, 37.437069>,  <37.948238, 34.952663, 37.318630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278191, 35.145287, 37.437069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022565, 0.495309, -0.868424,
		-0.564854, 0.723029, 0.397705,
		0.824882, 0.481559, 0.296092,
		38.525654, 35.289753, 37.525898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914154, 35.745941, 37.017345>,  <37.948238, 34.952663, 37.318630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914154, 35.745941, 37.017345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293095, 35.667976, 37.118954>,  <38.520462, 35.621197, 37.179920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293095, 35.667976, 37.118954>,  <37.914154, 35.745941, 37.017345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293095, 35.667976, 37.118954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311248, 0.374512, -0.873422,
		0.075106, 0.906505, 0.415462,
		0.947356, -0.194911, 0.254020,
		38.577301, 35.609505, 37.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321735, 36.268295, 36.654541>,  <37.914154, 35.745941, 37.017345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321735, 36.268295, 36.654541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592617, 35.982674, 36.725567>,  <38.755146, 35.811302, 36.768181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592617, 35.982674, 36.725567>,  <38.321735, 36.268295, 36.654541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592617, 35.982674, 36.725567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403916, 0.159055, -0.900863,
		0.615019, 0.681787, 0.396128,
		0.677203, -0.714050, 0.177563,
		38.795776, 35.768459, 36.778835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928257, 36.592285, 36.540455>,  <38.321735, 36.268295, 36.654541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928257, 36.592285, 36.540455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967556, 36.195576, 36.507626>,  <38.991135, 35.957550, 36.487930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967556, 36.195576, 36.507626>,  <38.928257, 36.592285, 36.540455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967556, 36.195576, 36.507626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371172, 0.113036, -0.921658,
		0.923352, 0.060087, 0.379223,
		0.098245, -0.991772, -0.082070,
		38.997028, 35.898045, 36.483006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309891, 36.550602, 36.008400>,  <38.928257, 36.592285, 36.540455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309891, 36.550602, 36.008400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208294, 36.165195, 36.042160>,  <39.147335, 35.933952, 36.062416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208294, 36.165195, 36.042160>,  <39.309891, 36.550602, 36.008400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208294, 36.165195, 36.042160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322723, -0.166685, -0.931701,
		0.911777, -0.209408, 0.353286,
		-0.253993, -0.963517, 0.084399,
		39.132095, 35.876141, 36.067478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871830, 36.193672, 35.792515>,  <39.309891, 36.550602, 36.008400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871830, 36.193672, 35.792515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572723, 35.928669, 35.774910>,  <39.393261, 35.769669, 35.764347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572723, 35.928669, 35.774910>,  <39.871830, 36.193672, 35.792515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572723, 35.928669, 35.774910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257676, -0.228472, -0.938831,
		0.611924, -0.713365, 0.341555,
		-0.747765, -0.662504, -0.044009,
		39.348392, 35.729919, 35.761707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212364, 35.616951, 35.581863>,  <39.871830, 36.193672, 35.792515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212364, 35.616951, 35.581863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828751, 35.627205, 35.469017>,  <39.598583, 35.633358, 35.401310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828751, 35.627205, 35.469017>,  <40.212364, 35.616951, 35.581863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828751, 35.627205, 35.469017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252943, -0.370912, -0.893557,
		-0.127547, -0.928314, 0.349234,
		-0.959037, 0.025635, -0.282119,
		39.541039, 35.634895, 35.384380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878426, 35.434608, 35.198708>,  <40.212364, 35.616951, 35.581863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878426, 35.434608, 35.198708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167362, 35.592621, 35.425747>,  <41.340725, 35.687428, 35.561970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167362, 35.592621, 35.425747>,  <40.878426, 35.434608, 35.198708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167362, 35.592621, 35.425747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549146, 0.171190, -0.818005,
		-0.420306, 0.902576, -0.093272,
		0.722345, 0.395033, 0.567598,
		41.384064, 35.711132, 35.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926998, 35.514713, 36.011734>,  <40.878426, 35.434608, 35.198708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926998, 35.514713, 36.011734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752491, 35.831642, 35.841137>,  <40.647785, 36.021801, 35.738777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752491, 35.831642, 35.841137>,  <40.926998, 35.514713, 36.011734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752491, 35.831642, 35.841137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143797, -0.529276, -0.836175,
		-0.888252, -0.303468, 0.344840,
		-0.436268, 0.792322, -0.426493,
		40.621609, 36.069340, 35.713188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556980, 35.097507, 36.119106>,  <40.926998, 35.514713, 36.011734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556980, 35.097507, 36.119106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848602, 34.834290, 36.043793>,  <42.023575, 34.676361, 35.998604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848602, 34.834290, 36.043793>,  <41.556980, 35.097507, 36.119106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848602, 34.834290, 36.043793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659150, -0.749124, 0.065834,
		-0.184370, 0.076112, -0.979905,
		0.729060, -0.658043, -0.188285,
		42.067322, 34.636875, 35.987309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304413, 34.647053, 35.638554>,  <41.556980, 35.097507, 36.119106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304413, 34.647053, 35.638554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615803, 34.436607, 35.775482>,  <41.802635, 34.310341, 35.857639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615803, 34.436607, 35.775482>,  <41.304413, 34.647053, 35.638554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615803, 34.436607, 35.775482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616666, -0.742775, 0.260785,
		0.117064, -0.414111, -0.902667,
		0.778472, -0.526115, 0.342320,
		41.849346, 34.278774, 35.878178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222851, 33.920803, 35.386284>,  <41.304413, 34.647053, 35.638554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222851, 33.920803, 35.386284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468365, 33.889717, 35.700539>,  <41.615673, 33.871067, 35.889091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468365, 33.889717, 35.700539>,  <41.222851, 33.920803, 35.386284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468365, 33.889717, 35.700539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497806, -0.810474, 0.308743,
		0.612748, -0.580598, -0.536140,
		0.613782, -0.077712, 0.785641,
		41.652500, 33.866402, 35.936230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354897, 33.186295, 35.454941>,  <41.222851, 33.920803, 35.386284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354897, 33.186295, 35.454941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410641, 33.376347, 35.802464>,  <41.444088, 33.490379, 36.010979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410641, 33.376347, 35.802464>,  <41.354897, 33.186295, 35.454941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410641, 33.376347, 35.802464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621159, -0.641346, 0.450374,
		0.771194, -0.602431, 0.205758,
		0.139357, 0.475134, 0.868808,
		41.452450, 33.518887, 36.063107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238926, 32.640018, 35.852570>,  <41.354897, 33.186295, 35.454941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238926, 32.640018, 35.852570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218643, 32.940022, 36.116364>,  <41.206474, 33.120022, 36.274639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218643, 32.940022, 36.116364>,  <41.238926, 32.640018, 35.852570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218643, 32.940022, 36.116364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599791, -0.550857, 0.580351,
		0.798548, -0.366127, 0.477778,
		-0.050705, 0.750005, 0.659485,
		41.203430, 33.165024, 36.314209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303967, 32.455116, 36.502186>,  <41.238926, 32.640018, 35.852570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303967, 32.455116, 36.502186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114189, 32.803337, 36.554394>,  <41.000320, 33.012268, 36.585720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114189, 32.803337, 36.554394>,  <41.303967, 32.455116, 36.502186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114189, 32.803337, 36.554394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656198, -0.448596, 0.606767,
		0.586774, 0.202232, 0.784091,
		-0.474448, 0.870554, 0.130520,
		40.971855, 33.064503, 36.593552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222004, 32.506889, 37.193649>,  <41.303967, 32.455116, 36.502186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222004, 32.506889, 37.193649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953335, 32.772083, 37.061401>,  <40.792133, 32.931198, 36.982052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953335, 32.772083, 37.061401>,  <41.222004, 32.506889, 37.193649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953335, 32.772083, 37.061401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616795, -0.253217, 0.745282,
		0.410391, 0.704510, 0.579003,
		-0.671672, 0.662983, -0.330621,
		40.751835, 32.970978, 36.962215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029099, 32.933609, 37.743771>,  <41.222004, 32.506889, 37.193649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029099, 32.933609, 37.743771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722530, 32.939476, 37.486904>,  <40.538589, 32.942997, 37.332783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722530, 32.939476, 37.486904>,  <41.029099, 32.933609, 37.743771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722530, 32.939476, 37.486904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629203, -0.218252, 0.745969,
		-0.129216, 0.975782, 0.176500,
		-0.766425, 0.014664, -0.642167,
		40.492603, 32.943874, 37.294254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592140, 33.337433, 38.078674>,  <41.029099, 32.933609, 37.743771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592140, 33.337433, 38.078674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405769, 33.105888, 37.810993>,  <40.293945, 32.966961, 37.650387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405769, 33.105888, 37.810993>,  <40.592140, 33.337433, 38.078674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405769, 33.105888, 37.810993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709320, -0.207754, 0.673575,
		-0.528936, 0.788515, -0.313799,
		-0.465931, -0.578862, -0.669198,
		40.265991, 32.932228, 37.610233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847359, 33.524204, 38.114254>,  <40.592140, 33.337433, 38.078674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847359, 33.524204, 38.114254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857651, 33.177177, 37.915592>,  <39.863827, 32.968964, 37.796394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857651, 33.177177, 37.915592>,  <39.847359, 33.524204, 38.114254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857651, 33.177177, 37.915592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718785, -0.361340, 0.593954,
		-0.694756, 0.341707, -0.632890,
		0.025731, -0.867566, -0.496657,
		39.865372, 32.916908, 37.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133629, 33.277332, 37.850353>,  <39.847359, 33.524204, 38.114254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133629, 33.277332, 37.850353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380463, 32.964951, 37.888969>,  <39.528564, 32.777523, 37.912140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380463, 32.964951, 37.888969>,  <39.133629, 33.277332, 37.850353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380463, 32.964951, 37.888969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634830, -0.421580, 0.647504,
		-0.464973, -0.460848, -0.755923,
		0.617082, -0.780954, 0.096537,
		39.565586, 32.730663, 37.917931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679924, 32.810097, 37.933403>,  <39.133629, 33.277332, 37.850353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679924, 32.810097, 37.933403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023022, 32.664677, 38.078793>,  <39.228878, 32.577423, 38.166027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023022, 32.664677, 38.078793>,  <38.679924, 32.810097, 37.933403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023022, 32.664677, 38.078793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501789, -0.438401, 0.745662,
		-0.111739, -0.821971, -0.558460,
		0.857742, -0.363549, 0.363470,
		39.280346, 32.555611, 38.187832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515743, 32.048569, 37.965405>,  <38.679924, 32.810097, 37.933403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515743, 32.048569, 37.965405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827515, 32.126610, 38.203541>,  <39.014576, 32.173435, 38.346420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827515, 32.126610, 38.203541>,  <38.515743, 32.048569, 37.965405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827515, 32.126610, 38.203541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381922, -0.605301, 0.698389,
		0.496618, -0.771716, -0.397273,
		0.779427, 0.195105, 0.595338,
		39.061344, 32.185143, 38.382141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531765, 31.478516, 38.362270>,  <38.515743, 32.048569, 37.965405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531765, 31.478516, 38.362270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767117, 31.739132, 38.553814>,  <38.908329, 31.895502, 38.668739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767117, 31.739132, 38.553814>,  <38.531765, 31.478516, 38.362270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767117, 31.739132, 38.553814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241220, -0.423817, 0.873036,
		0.771767, -0.629186, -0.092200,
		0.588378, 0.651539, 0.478860,
		38.943630, 31.934593, 38.697472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623959, 30.672846, 38.245495>,  <38.531765, 31.478516, 38.362270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623959, 30.672846, 38.245495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262115, 30.557562, 38.119884>,  <38.045010, 30.488392, 38.044518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262115, 30.557562, 38.119884>,  <38.623959, 30.672846, 38.245495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262115, 30.557562, 38.119884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282863, 0.145213, -0.948104,
		0.318855, -0.946492, -0.049838,
		-0.904611, -0.288210, -0.314030,
		37.990730, 30.471100, 38.025677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700100, 30.181507, 37.687389>,  <38.623959, 30.672846, 38.245495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700100, 30.181507, 37.687389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323044, 30.298140, 37.622379>,  <38.096809, 30.368118, 37.583374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323044, 30.298140, 37.622379>,  <38.700100, 30.181507, 37.687389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323044, 30.298140, 37.622379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222197, 0.184704, -0.957347,
		-0.249125, -0.938544, -0.238897,
		-0.942637, 0.291581, -0.162527,
		38.040253, 30.385614, 37.573620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493702, 29.859312, 37.071663>,  <38.700100, 30.181507, 37.687389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493702, 29.859312, 37.071663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231884, 30.161402, 37.085587>,  <38.074795, 30.342655, 37.093941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231884, 30.161402, 37.085587>,  <38.493702, 29.859312, 37.071663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231884, 30.161402, 37.085587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001080, 0.046971, -0.998896,
		-0.756023, -0.653784, -0.031560,
		-0.654544, 0.755222, 0.034805,
		38.035522, 30.387968, 37.096027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212341, 29.755661, 36.413445>,  <38.493702, 29.859312, 37.071663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212341, 29.755661, 36.413445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045685, 30.099800, 36.530891>,  <37.945690, 30.306284, 36.601360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045685, 30.099800, 36.530891>,  <38.212341, 29.755661, 36.413445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045685, 30.099800, 36.530891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017238, 0.330406, -0.943682,
		-0.908908, -0.388115, -0.152491,
		-0.416641, 0.860348, 0.293618,
		37.920692, 30.357904, 36.618977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635010, 30.020668, 35.975525>,  <38.212341, 29.755661, 36.413445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635010, 30.020668, 35.975525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787231, 30.342451, 36.157963>,  <37.878563, 30.535521, 36.267426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787231, 30.342451, 36.157963>,  <37.635010, 30.020668, 35.975525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787231, 30.342451, 36.157963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053578, 0.473198, -0.879325,
		-0.923206, 0.359067, 0.136975,
		0.380553, 0.804459, 0.456097,
		37.901398, 30.583790, 36.294792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379921, 30.473646, 35.503246>,  <37.635010, 30.020668, 35.975525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379921, 30.473646, 35.503246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650478, 30.679276, 35.714233>,  <37.812813, 30.802652, 35.840824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650478, 30.679276, 35.714233>,  <37.379921, 30.473646, 35.503246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650478, 30.679276, 35.714233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094120, 0.649943, -0.754132,
		-0.730500, 0.559736, 0.391234,
		0.676395, 0.514071, 0.527466,
		37.853397, 30.833496, 35.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230534, 31.253145, 35.572830>,  <37.379921, 30.473646, 35.503246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230534, 31.253145, 35.572830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627224, 31.222223, 35.613827>,  <37.865238, 31.203671, 35.638424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627224, 31.222223, 35.613827>,  <37.230534, 31.253145, 35.572830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627224, 31.222223, 35.613827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126739, 0.716755, -0.685711,
		-0.020455, 0.693027, 0.720621,
		0.991725, -0.077304, 0.102495,
		37.924740, 31.199032, 35.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527950, 31.919556, 35.749676>,  <37.230534, 31.253145, 35.572830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527950, 31.919556, 35.749676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832916, 31.720640, 35.584061>,  <38.015896, 31.601292, 35.484692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832916, 31.720640, 35.584061>,  <37.527950, 31.919556, 35.749676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832916, 31.720640, 35.584061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209334, 0.794988, -0.569362,
		0.612295, 0.347417, 0.710209,
		0.762413, -0.497288, -0.414041,
		38.061642, 31.571453, 35.459846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983250, 32.437172, 35.592133>,  <37.527950, 31.919556, 35.749676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983250, 32.437172, 35.592133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097015, 32.116459, 35.381889>,  <38.165276, 31.924032, 35.255745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097015, 32.116459, 35.381889>,  <37.983250, 32.437172, 35.592133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097015, 32.116459, 35.381889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135780, 0.576409, -0.805802,
		0.949039, 0.157812, 0.272802,
		0.284411, -0.801778, -0.525607,
		38.182339, 31.875925, 35.224209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604126, 32.661606, 35.197422>,  <37.983250, 32.437172, 35.592133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604126, 32.661606, 35.197422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471451, 32.347961, 34.987606>,  <38.391846, 32.159775, 34.861717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471451, 32.347961, 34.987606>,  <38.604126, 32.661606, 35.197422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471451, 32.347961, 34.987606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219161, 0.476763, -0.851273,
		0.917578, -0.397320, 0.013709,
		-0.331692, -0.784114, -0.524544,
		38.371944, 32.112728, 34.830242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180252, 32.534397, 34.882999>,  <38.604126, 32.661606, 35.197422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180252, 32.534397, 34.882999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836769, 32.439388, 34.701363>,  <38.630680, 32.382381, 34.592381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836769, 32.439388, 34.701363>,  <39.180252, 32.534397, 34.882999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836769, 32.439388, 34.701363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280731, 0.523274, -0.804596,
		0.428721, -0.818393, -0.382663,
		-0.858713, -0.237522, -0.454087,
		38.579155, 32.368130, 34.565136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389679, 32.373993, 34.284519>,  <39.180252, 32.534397, 34.882999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389679, 32.373993, 34.284519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013733, 32.510517, 34.279324>,  <38.788166, 32.592430, 34.276207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013733, 32.510517, 34.279324>,  <39.389679, 32.373993, 34.284519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013733, 32.510517, 34.279324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166931, 0.425837, -0.889268,
		-0.297984, -0.837957, -0.457203,
		-0.939862, 0.341309, -0.012988,
		38.731773, 32.612911, 34.275429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.667843, 28.122972, 41.043682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.308125, 28.293407, 41.004269>,  <37.092293, 28.395668, 40.980621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.308125, 28.293407, 41.004269>,  <37.667843, 28.122972, 41.043682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308125, 28.293407, 41.004269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248640, 0.312795, -0.916699,
		-0.359775, -0.848886, -0.387240,
		-0.899300, 0.426089, -0.098532,
		37.038334, 28.421234, 40.974709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449535, 27.886639, 40.373451>,  <37.667843, 28.122972, 41.043682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449535, 27.886639, 40.373451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223114, 28.202965, 40.466572>,  <37.087261, 28.392761, 40.522442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223114, 28.202965, 40.466572>,  <37.449535, 27.886639, 40.373451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223114, 28.202965, 40.466572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256616, 0.437399, -0.861876,
		-0.783410, -0.428128, -0.450527,
		-0.566053, 0.790815, 0.232798,
		37.053299, 28.440208, 40.536411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937313, 27.984367, 39.825851>,  <37.449535, 27.886639, 40.373451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937313, 27.984367, 39.825851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003746, 28.330074, 40.015781>,  <37.043606, 28.537498, 40.129738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003746, 28.330074, 40.015781>,  <36.937313, 27.984367, 39.825851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003746, 28.330074, 40.015781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122979, 0.459599, -0.879571,
		-0.978413, 0.204475, -0.029955,
		0.166083, 0.864268, 0.474824,
		37.053570, 28.589355, 40.158230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699837, 28.445889, 39.367847>,  <36.937313, 27.984367, 39.825851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699837, 28.445889, 39.367847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906193, 28.681671, 39.616489>,  <37.030006, 28.823141, 39.765675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.906193, 28.681671, 39.616489>,  <36.699837, 28.445889, 39.367847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906193, 28.681671, 39.616489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224060, 0.607515, -0.762051,
		-0.826832, 0.532415, 0.181339,
		0.515894, 0.589457, 0.621606,
		37.060963, 28.858509, 39.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335213, 29.071653, 39.331516>,  <36.699837, 28.445889, 39.367847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335213, 29.071653, 39.331516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714718, 29.128357, 39.444481>,  <36.942421, 29.162378, 39.512260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714718, 29.128357, 39.444481>,  <36.335213, 29.071653, 39.331516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714718, 29.128357, 39.444481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159763, 0.555897, -0.815754,
		-0.272633, 0.819075, 0.504765,
		0.948761, 0.141759, 0.282414,
		36.999348, 29.170885, 39.529205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513317, 29.748085, 39.102280>,  <36.335213, 29.071653, 39.331516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513317, 29.748085, 39.102280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874142, 29.584627, 39.157845>,  <37.090637, 29.486553, 39.191185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874142, 29.584627, 39.157845>,  <36.513317, 29.748085, 39.102280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874142, 29.584627, 39.157845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363842, 0.546831, -0.754052,
		0.232176, 0.730743, 0.641957,
		0.902061, -0.408644, 0.138914,
		37.144760, 29.462034, 39.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954742, 30.320768, 39.174450>,  <36.513317, 29.748085, 39.102280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954742, 30.320768, 39.174450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192463, 30.019747, 39.060982>,  <37.335094, 29.839134, 38.992901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192463, 30.019747, 39.060982>,  <36.954742, 30.320768, 39.174450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192463, 30.019747, 39.060982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357226, 0.563022, -0.745249,
		0.720555, 0.341565, 0.603435,
		0.594298, -0.752555, -0.283673,
		37.370750, 29.793980, 38.975880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604416, 30.595505, 39.210682>,  <36.954742, 30.320768, 39.174450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604416, 30.595505, 39.210682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596203, 30.295078, 38.946720>,  <37.591274, 30.114822, 38.788342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596203, 30.295078, 38.946720>,  <37.604416, 30.595505, 39.210682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596203, 30.295078, 38.946720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286244, 0.627998, -0.723659,
		0.957937, -0.203750, 0.202096,
		-0.020530, -0.751069, -0.659905,
		37.590042, 30.069757, 38.748749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077915, 30.801388, 38.769341>,  <37.604416, 30.595505, 39.210682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077915, 30.801388, 38.769341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903019, 30.510481, 38.557716>,  <37.798080, 30.335938, 38.430744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903019, 30.510481, 38.557716>,  <38.077915, 30.801388, 38.769341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903019, 30.510481, 38.557716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202104, 0.493765, -0.845784,
		0.876341, -0.476736, -0.068911,
		-0.437242, -0.727268, -0.529057,
		37.771847, 30.292301, 38.398998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858681, 31.034090, 38.861301>,  <38.077915, 30.801388, 38.769341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858681, 31.034090, 38.861301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866234, 31.409443, 38.999336>,  <38.870766, 31.634655, 39.082157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866234, 31.409443, 38.999336>,  <38.858681, 31.034090, 38.861301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866234, 31.409443, 38.999336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093034, -0.341997, 0.935084,
		0.995484, -0.049764, 0.080843,
		0.018885, 0.938382, 0.345082,
		38.871899, 31.690958, 39.102859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346058, 30.928757, 39.433163>,  <38.858681, 31.034090, 38.861301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346058, 30.928757, 39.433163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167263, 31.282846, 39.484676>,  <39.059986, 31.495300, 39.515583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167263, 31.282846, 39.484676>,  <39.346058, 30.928757, 39.433163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167263, 31.282846, 39.484676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085291, -0.185482, 0.978939,
		0.890465, 0.426589, 0.158410,
		-0.446987, 0.885222, 0.128781,
		39.033169, 31.548412, 39.523312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609215, 31.177759, 40.085484>,  <39.346058, 30.928757, 39.433163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609215, 31.177759, 40.085484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267815, 31.376877, 40.023865>,  <39.062973, 31.496347, 39.986893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267815, 31.376877, 40.023865>,  <39.609215, 31.177759, 40.085484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267815, 31.376877, 40.023865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229248, -0.093227, 0.968893,
		0.467949, 0.862270, 0.193688,
		-0.853504, 0.497795, -0.154048,
		39.011765, 31.526215, 39.977650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637379, 31.790718, 40.497822>,  <39.609215, 31.177759, 40.085484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637379, 31.790718, 40.497822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254765, 31.699383, 40.425270>,  <39.025196, 31.644581, 40.381737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254765, 31.699383, 40.425270>,  <39.637379, 31.790718, 40.497822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254765, 31.699383, 40.425270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152762, -0.137468, 0.978656,
		-0.248401, 0.963828, 0.096611,
		-0.956536, -0.228340, -0.181383,
		38.967804, 31.630880, 40.370853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279606, 32.190239, 40.936199>,  <39.637379, 31.790718, 40.497822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279606, 32.190239, 40.936199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026066, 31.900074, 40.828861>,  <38.873940, 31.725975, 40.764458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026066, 31.900074, 40.828861>,  <39.279606, 32.190239, 40.936199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026066, 31.900074, 40.828861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311743, -0.077910, 0.946967,
		-0.707846, 0.683894, -0.176757,
		-0.633854, -0.725409, -0.268348,
		38.835911, 31.682451, 40.748356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744740, 32.381577, 41.308174>,  <39.279606, 32.190239, 40.936199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744740, 32.381577, 41.308174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689747, 31.998030, 41.208832>,  <38.656754, 31.767902, 41.149227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689747, 31.998030, 41.208832>,  <38.744740, 32.381577, 41.308174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689747, 31.998030, 41.208832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343885, -0.188935, 0.919808,
		-0.928893, 0.211861, -0.303764,
		-0.137480, -0.958863, -0.248356,
		38.648502, 31.710371, 41.134323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054787, 32.184700, 41.616589>,  <38.744740, 32.381577, 41.308174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054787, 32.184700, 41.616589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245937, 31.842270, 41.537834>,  <38.360626, 31.636810, 41.490582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245937, 31.842270, 41.537834>,  <38.054787, 32.184700, 41.616589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245937, 31.842270, 41.537834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370777, -0.399763, 0.838280,
		-0.796342, -0.327592, -0.508451,
		0.477874, -0.856080, -0.196885,
		38.389301, 31.585445, 41.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569530, 31.718056, 41.706680>,  <38.054787, 32.184700, 41.616589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569530, 31.718056, 41.706680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921539, 31.532217, 41.746094>,  <38.132744, 31.420713, 41.769741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921539, 31.532217, 41.746094>,  <37.569530, 31.718056, 41.706680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921539, 31.532217, 41.746094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278283, -0.336304, 0.899699,
		-0.384864, -0.819174, -0.425245,
		0.880022, -0.464601, 0.098531,
		38.185547, 31.392838, 41.775654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395195, 31.097492, 42.123234>,  <37.569530, 31.718056, 41.706680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395195, 31.097492, 42.123234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795097, 31.095306, 42.131836>,  <38.035038, 31.093994, 42.136997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795097, 31.095306, 42.131836>,  <37.395195, 31.097492, 42.123234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795097, 31.095306, 42.131836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021119, -0.532331, 0.846273,
		0.006824, -0.846519, -0.532315,
		0.999753, -0.005467, 0.021510,
		38.095024, 31.093666, 42.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615997, 30.451864, 42.189892>,  <37.395195, 31.097492, 42.123234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615997, 30.451864, 42.189892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906864, 30.681772, 42.340023>,  <38.081383, 30.819717, 42.430103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906864, 30.681772, 42.340023>,  <37.615997, 30.451864, 42.189892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906864, 30.681772, 42.340023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000065, -0.546813, 0.837255,
		0.686461, -0.608799, -0.397662,
		0.727166, 0.574769, 0.375327,
		38.125015, 30.854202, 42.452621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980049, 29.886288, 42.426247>,  <37.615997, 30.451864, 42.189892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980049, 29.886288, 42.426247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074036, 30.224041, 42.618832>,  <38.130428, 30.426693, 42.734383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074036, 30.224041, 42.618832>,  <37.980049, 29.886288, 42.426247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074036, 30.224041, 42.618832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011891, -0.497792, 0.867215,
		0.971931, -0.198041, -0.127004,
		0.234966, 0.844383, 0.481465,
		38.144524, 30.477356, 42.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456490, 29.627876, 42.890541>,  <37.980049, 29.886288, 42.426247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456490, 29.627876, 42.890541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343330, 29.988773, 43.020725>,  <38.275436, 30.205313, 43.098835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343330, 29.988773, 43.020725>,  <38.456490, 29.627876, 42.890541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343330, 29.988773, 43.020725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091016, -0.363044, 0.927316,
		0.954823, 0.232710, 0.184822,
		-0.282895, 0.902244, 0.325462,
		38.258461, 30.259447, 43.118362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901470, 29.839279, 43.402416>,  <38.456490, 29.627876, 42.890541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901470, 29.839279, 43.402416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589207, 30.072529, 43.492340>,  <38.401848, 30.212479, 43.546295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589207, 30.072529, 43.492340>,  <38.901470, 29.839279, 43.402416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589207, 30.072529, 43.492340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105090, -0.232110, 0.966996,
		0.616060, 0.778517, 0.119918,
		-0.780657, 0.583126, 0.224808,
		38.355011, 30.247467, 43.559784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239151, 30.200279, 43.993027>,  <38.901470, 29.839279, 43.402416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239151, 30.200279, 43.993027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839809, 30.223150, 43.991199>,  <38.600204, 30.236874, 43.990105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839809, 30.223150, 43.991199>,  <39.239151, 30.200279, 43.993027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839809, 30.223150, 43.991199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008549, -0.069599, 0.997538,
		0.056719, 0.995935, 0.069973,
		-0.998354, 0.057177, -0.004566,
		38.540302, 30.240303, 43.989830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.153509, 33.911148, 43.899517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436474, 33.628891, 43.915730>,  <31.606253, 33.459538, 43.925457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436474, 33.628891, 43.915730>,  <31.153509, 33.911148, 43.899517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436474, 33.628891, 43.915730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266465, 0.213145, -0.939982,
		0.654649, 0.675753, 0.338809,
		0.707411, -0.705639, 0.040529,
		31.648697, 33.417198, 43.927887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823553, 34.203644, 43.635063>,  <31.153509, 33.911148, 43.899517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823553, 34.203644, 43.635063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870125, 33.808826, 43.590908>,  <31.898067, 33.571934, 43.564415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870125, 33.808826, 43.590908>,  <31.823553, 34.203644, 43.635063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870125, 33.808826, 43.590908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242126, 0.135995, -0.960667,
		0.963234, 0.085124, 0.254824,
		0.116430, -0.987046, -0.110384,
		31.905054, 33.512714, 43.557793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436268, 34.198994, 43.196754>,  <31.823553, 34.203644, 43.635063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436268, 34.198994, 43.196754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228642, 33.858646, 43.164276>,  <32.104065, 33.654438, 43.144791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228642, 33.858646, 43.164276>,  <32.436268, 34.198994, 43.196754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228642, 33.858646, 43.164276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145630, 0.005563, -0.989323,
		0.842238, -0.525346, 0.121025,
		-0.519064, -0.850870, -0.081191,
		32.072922, 33.603386, 43.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900433, 33.647438, 43.118954>,  <32.436268, 34.198994, 43.196754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900433, 33.647438, 43.118954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550522, 33.522911, 42.970440>,  <32.340576, 33.448193, 42.881332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550522, 33.522911, 42.970440>,  <32.900433, 33.647438, 43.118954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550522, 33.522911, 42.970440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395902, -0.017466, -0.918127,
		0.279348, -0.950144, 0.138532,
		-0.874772, -0.311322, -0.371285,
		32.288090, 33.429516, 42.859055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057865, 33.239967, 42.594368>,  <32.900433, 33.647438, 43.118954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057865, 33.239967, 42.594368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681881, 33.336872, 42.498219>,  <32.456291, 33.395016, 42.440529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681881, 33.336872, 42.498219>,  <33.057865, 33.239967, 42.594368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681881, 33.336872, 42.498219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248928, 0.004861, -0.968510,
		-0.233469, -0.970197, -0.064876,
		-0.939961, 0.242267, -0.240374,
		32.399891, 33.409554, 42.426105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950977, 32.900440, 42.041752>,  <33.057865, 33.239967, 42.594368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950977, 32.900440, 42.041752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649357, 33.159962, 42.000839>,  <32.468384, 33.315674, 41.976292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649357, 33.159962, 42.000839>,  <32.950977, 32.900440, 42.041752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649357, 33.159962, 42.000839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249313, 0.138657, -0.958445,
		-0.607657, -0.748220, -0.266309,
		-0.754053, 0.648800, -0.102285,
		32.423141, 33.354603, 41.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578121, 32.754566, 41.364788>,  <32.950977, 32.900440, 42.041752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578121, 32.754566, 41.364788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493904, 33.131405, 41.469193>,  <32.443375, 33.357510, 41.531834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493904, 33.131405, 41.469193>,  <32.578121, 32.754566, 41.364788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493904, 33.131405, 41.469193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146198, 0.294333, -0.944454,
		-0.966590, -0.160692, -0.199703,
		-0.210546, 0.942097, 0.261007,
		32.430740, 33.414032, 41.547493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137821, 33.042686, 40.757404>,  <32.578121, 32.754566, 41.364788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137821, 33.042686, 40.757404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276474, 33.366421, 40.947067>,  <32.359665, 33.560661, 41.060863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276474, 33.366421, 40.947067>,  <32.137821, 33.042686, 40.757404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276474, 33.366421, 40.947067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088730, 0.474939, -0.875534,
		-0.933794, 0.345562, 0.092818,
		0.346635, 0.809333, 0.474157,
		32.380463, 33.609222, 41.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704149, 33.605537, 40.573910>,  <32.137821, 33.042686, 40.757404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704149, 33.605537, 40.573910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054077, 33.759541, 40.691521>,  <32.264034, 33.851944, 40.762089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054077, 33.759541, 40.691521>,  <31.704149, 33.605537, 40.573910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054077, 33.759541, 40.691521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006986, 0.616905, -0.787006,
		-0.484396, 0.686436, 0.542371,
		0.874821, 0.385012, 0.294031,
		32.316525, 33.875046, 40.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660410, 34.288708, 40.415043>,  <31.704149, 33.605537, 40.573910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660410, 34.288708, 40.415043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054340, 34.238258, 40.462727>,  <32.290699, 34.207989, 40.491337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054340, 34.238258, 40.462727>,  <31.660410, 34.288708, 40.415043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054340, 34.238258, 40.462727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173468, 0.694663, -0.698106,
		0.005234, 0.708192, 0.706000,
		0.984826, -0.126122, 0.119212,
		32.349789, 34.200420, 40.498489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015278, 34.946793, 40.638638>,  <31.660410, 34.288708, 40.415043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015278, 34.946793, 40.638638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261570, 34.697403, 40.445908>,  <32.409344, 34.547768, 40.330269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261570, 34.697403, 40.445908>,  <32.015278, 34.946793, 40.638638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261570, 34.697403, 40.445908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169169, 0.701827, -0.691969,
		0.769586, 0.344553, 0.537606,
		0.615726, -0.623476, -0.481829,
		32.446289, 34.510361, 40.301357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353077, 35.430435, 40.185883>,  <32.015278, 34.946793, 40.638638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353077, 35.430435, 40.185883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492695, 35.082138, 40.047333>,  <32.576466, 34.873158, 39.964203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.492695, 35.082138, 40.047333>,  <32.353077, 35.430435, 40.185883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492695, 35.082138, 40.047333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377288, 0.468913, -0.798607,
		0.857801, 0.148067, 0.492193,
		0.349044, -0.870745, -0.346370,
		32.597408, 34.820915, 39.943420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966389, 35.688717, 39.832912>,  <32.353077, 35.430435, 40.185883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966389, 35.688717, 39.832912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871243, 35.329926, 39.683865>,  <32.814156, 35.114651, 39.594437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871243, 35.329926, 39.683865>,  <32.966389, 35.688717, 39.832912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871243, 35.329926, 39.683865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317967, 0.290583, -0.902473,
		0.917779, -0.333144, 0.216092,
		-0.237861, -0.896982, -0.372620,
		32.799885, 35.060829, 39.572079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530930, 35.443535, 39.430405>,  <32.966389, 35.688717, 39.832912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530930, 35.443535, 39.430405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189442, 35.282639, 39.298119>,  <32.984550, 35.186100, 39.218746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189442, 35.282639, 39.298119>,  <33.530930, 35.443535, 39.430405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189442, 35.282639, 39.298119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203801, 0.326348, -0.923018,
		0.479203, -0.855395, -0.196631,
		-0.853715, -0.402239, -0.330718,
		32.933327, 35.161968, 39.198902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207821, 35.167419, 39.511772>,  <33.530930, 35.443535, 39.430405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207821, 35.167419, 39.511772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519817, 35.417576, 39.502773>,  <34.707016, 35.567669, 39.497375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519817, 35.417576, 39.502773>,  <34.207821, 35.167419, 39.511772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519817, 35.417576, 39.502773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098152, -0.086750, 0.991383,
		0.618046, -0.775478, -0.129047,
		0.779990, 0.625387, -0.022499,
		34.753815, 35.605190, 39.496025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864407, 34.771706, 39.760040>,  <34.207821, 35.167419, 39.511772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864407, 34.771706, 39.760040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896770, 35.161945, 39.841679>,  <34.916191, 35.396091, 39.890663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896770, 35.161945, 39.841679>,  <34.864407, 34.771706, 39.760040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896770, 35.161945, 39.841679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063488, -0.199307, 0.977878,
		0.994697, -0.092080, 0.045813,
		0.080912, 0.975601, 0.204096,
		34.921043, 35.454624, 39.902908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313248, 34.825001, 40.346752>,  <34.864407, 34.771706, 39.760040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313248, 34.825001, 40.346752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114990, 35.172153, 40.333389>,  <34.996037, 35.380444, 40.325371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.114990, 35.172153, 40.333389>,  <35.313248, 34.825001, 40.346752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114990, 35.172153, 40.333389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061145, 0.003501, 0.998123,
		0.866370, 0.496757, 0.051331,
		-0.495645, 0.867882, -0.033407,
		34.966297, 35.432518, 40.323368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636513, 35.287949, 40.824398>,  <35.313248, 34.825001, 40.346752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636513, 35.287949, 40.824398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268482, 35.432247, 40.763313>,  <35.047665, 35.518826, 40.726662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268482, 35.432247, 40.763313>,  <35.636513, 35.287949, 40.824398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268482, 35.432247, 40.763313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215462, -0.140456, 0.966358,
		0.327165, 0.922026, 0.206958,
		-0.920075, 0.360751, -0.152710,
		34.992458, 35.540474, 40.717499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589615, 35.826305, 41.297760>,  <35.636513, 35.287949, 40.824398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589615, 35.826305, 41.297760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207954, 35.745274, 41.209618>,  <34.978958, 35.696655, 41.156731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207954, 35.745274, 41.209618>,  <35.589615, 35.826305, 41.297760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207954, 35.745274, 41.209618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193423, -0.144545, 0.970409,
		-0.228433, 0.968540, 0.098735,
		-0.954152, -0.202576, -0.220357,
		34.921707, 35.684502, 41.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260548, 36.241535, 41.755024>,  <35.589615, 35.826305, 41.297760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260548, 36.241535, 41.755024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975304, 35.987270, 41.636761>,  <34.804157, 35.834713, 41.565804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975304, 35.987270, 41.636761>,  <35.260548, 36.241535, 41.755024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975304, 35.987270, 41.636761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323287, -0.076052, 0.943240,
		-0.622066, 0.768214, -0.151267,
		-0.713106, -0.635660, -0.295663,
		34.761372, 35.796574, 41.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712051, 36.556461, 42.118809>,  <35.260548, 36.241535, 41.755024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712051, 36.556461, 42.118809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647282, 36.174240, 42.020267>,  <34.608421, 35.944908, 41.961143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647282, 36.174240, 42.020267>,  <34.712051, 36.556461, 42.118809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647282, 36.174240, 42.020267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291195, -0.192262, 0.937145,
		-0.942860, 0.223484, -0.247122,
		-0.161924, -0.955558, -0.246353,
		34.598705, 35.887573, 41.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405029, 36.401276, 42.680874>,  <34.712051, 36.556461, 42.118809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405029, 36.401276, 42.680874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478992, 36.038719, 42.528942>,  <34.523373, 35.821186, 42.437782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478992, 36.038719, 42.528942>,  <34.405029, 36.401276, 42.680874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478992, 36.038719, 42.528942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021440, -0.390119, 0.920515,
		-0.982522, -0.162070, -0.091570,
		0.184911, -0.906389, -0.379826,
		34.534466, 35.766804, 42.414993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022518, 36.049484, 42.969887>,  <34.405029, 36.401276, 42.680874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022518, 36.049484, 42.969887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311253, 35.796600, 42.857269>,  <34.484493, 35.644871, 42.789700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311253, 35.796600, 42.857269>,  <34.022518, 36.049484, 42.969887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311253, 35.796600, 42.857269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054307, -0.353823, 0.933734,
		-0.689933, -0.689290, -0.221068,
		0.721833, -0.632209, -0.281548,
		34.527802, 35.606937, 42.772804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854012, 35.479069, 43.250149>,  <34.022518, 36.049484, 42.969887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854012, 35.479069, 43.250149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230213, 35.364071, 43.177700>,  <34.455933, 35.295074, 43.134232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230213, 35.364071, 43.177700>,  <33.854012, 35.479069, 43.250149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230213, 35.364071, 43.177700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034703, -0.448984, 0.892866,
		-0.338011, -0.846028, -0.412294,
		0.940502, -0.287490, -0.181121,
		34.512363, 35.277824, 43.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856926, 34.783669, 43.386429>,  <33.854012, 35.479069, 43.250149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856926, 34.783669, 43.386429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238930, 34.896931, 43.421688>,  <34.468132, 34.964890, 43.442844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238930, 34.896931, 43.421688>,  <33.856926, 34.783669, 43.386429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238930, 34.896931, 43.421688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086965, -0.551577, 0.829578,
		0.283524, -0.784592, -0.551389,
		0.955014, 0.283157, 0.088153,
		34.525433, 34.981876, 43.448135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245003, 34.212921, 43.455875>,  <33.856926, 34.783669, 43.386429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245003, 34.212921, 43.455875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471962, 34.501816, 43.614082>,  <34.608135, 34.675152, 43.709007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471962, 34.501816, 43.614082>,  <34.245003, 34.212921, 43.455875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471962, 34.501816, 43.614082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011678, -0.473216, 0.880869,
		0.823363, -0.504419, -0.260066,
		0.567395, 0.722238, 0.395519,
		34.642181, 34.718487, 43.732738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710281, 33.906094, 43.838943>,  <34.245003, 34.212921, 43.455875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710281, 33.906094, 43.838943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741676, 34.282337, 43.971062>,  <34.760513, 34.508083, 44.050335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741676, 34.282337, 43.971062>,  <34.710281, 33.906094, 43.838943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741676, 34.282337, 43.971062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210485, -0.339488, 0.916757,
		0.974441, -0.002435, -0.224631,
		0.078491, 0.940607, 0.330298,
		34.765224, 34.564518, 44.070152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337074, 33.994694, 44.231415>,  <34.710281, 33.906094, 43.838943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337074, 33.994694, 44.231415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078754, 34.259216, 44.384052>,  <34.923763, 34.417931, 44.475636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078754, 34.259216, 44.384052>,  <35.337074, 33.994694, 44.231415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078754, 34.259216, 44.384052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227650, -0.310280, 0.922985,
		0.728779, 0.682934, 0.049832,
		-0.645800, 0.661308, 0.381595,
		34.885014, 34.457607, 44.498531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106625, 34.208717, 44.378277>,  <35.337074, 33.994694, 44.231415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106625, 34.208717, 44.378277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431213, 34.023518, 44.520908>,  <36.625965, 33.912399, 44.606487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431213, 34.023518, 44.520908>,  <36.106625, 34.208717, 44.378277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431213, 34.023518, 44.520908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525109, 0.309900, -0.792605,
		0.256472, 0.830418, 0.494599,
		0.811470, -0.462999, 0.356579,
		36.674656, 33.884617, 44.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657310, 34.698948, 44.405170>,  <36.106625, 34.208717, 44.378277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657310, 34.698948, 44.405170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824451, 34.337643, 44.366169>,  <36.924736, 34.120857, 44.342770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824451, 34.337643, 44.366169>,  <36.657310, 34.698948, 44.405170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824451, 34.337643, 44.366169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484173, 0.312213, -0.817374,
		0.768749, 0.294334, 0.567797,
		0.417854, -0.903267, -0.097505,
		36.949806, 34.066662, 44.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423386, 34.743874, 44.319317>,  <36.657310, 34.698948, 44.405170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423386, 34.743874, 44.319317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303020, 34.397312, 44.159920>,  <37.230801, 34.189377, 44.064281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303020, 34.397312, 44.159920>,  <37.423386, 34.743874, 44.319317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303020, 34.397312, 44.159920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582422, 0.163917, -0.796188,
		0.755139, -0.471678, 0.455286,
		-0.300915, -0.866401, -0.398496,
		37.212746, 34.137390, 44.040371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027988, 34.438133, 43.982479>,  <37.423386, 34.743874, 44.319317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027988, 34.438133, 43.982479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740238, 34.208881, 43.825497>,  <37.567589, 34.071331, 43.731308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.740238, 34.208881, 43.825497>,  <38.027988, 34.438133, 43.982479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740238, 34.208881, 43.825497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520344, -0.070360, -0.851053,
		0.460151, -0.816438, 0.348840,
		-0.719377, -0.573130, -0.392453,
		37.524426, 34.036942, 43.707760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404510, 33.836300, 43.563480>,  <38.027988, 34.438133, 43.982479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404510, 33.836300, 43.563480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033428, 33.855877, 43.415440>,  <37.810780, 33.867622, 43.326614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033428, 33.855877, 43.415440>,  <38.404510, 33.836300, 43.563480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033428, 33.855877, 43.415440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366782, -0.065236, -0.928017,
		-0.069588, -0.996668, 0.042559,
		-0.927701, 0.048969, -0.370099,
		37.755116, 33.870560, 43.304409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402534, 33.450123, 43.029480>,  <38.404510, 33.836300, 43.563480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402534, 33.450123, 43.029480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081852, 33.675659, 42.950138>,  <37.889442, 33.810982, 42.902534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081852, 33.675659, 42.950138>,  <38.402534, 33.450123, 43.029480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081852, 33.675659, 42.950138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290976, 0.078287, -0.953522,
		-0.522109, -0.822162, -0.226829,
		-0.801708, 0.563844, -0.198355,
		37.841339, 33.844810, 42.890633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148243, 33.217274, 42.371017>,  <38.402534, 33.450123, 43.029480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148243, 33.217274, 42.371017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989574, 33.584278, 42.382545>,  <37.894371, 33.804482, 42.389462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989574, 33.584278, 42.382545>,  <38.148243, 33.217274, 42.371017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989574, 33.584278, 42.382545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290808, 0.155381, -0.944080,
		-0.870679, -0.366110, -0.328454,
		-0.396673, 0.917508, 0.028819,
		37.870571, 33.859531, 42.391190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838871, 33.373802, 41.744396>,  <38.148243, 33.217274, 42.371017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838871, 33.373802, 41.744396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876205, 33.743450, 41.892601>,  <37.898605, 33.965240, 41.981525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876205, 33.743450, 41.892601>,  <37.838871, 33.373802, 41.744396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876205, 33.743450, 41.892601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315772, 0.325450, -0.891274,
		-0.944233, 0.200191, -0.261435,
		0.093341, 0.924124, 0.370515,
		37.904209, 34.020687, 42.003757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497108, 33.783566, 41.298508>,  <37.838871, 33.373802, 41.744396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497108, 33.783566, 41.298508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719204, 34.042706, 41.507126>,  <37.852459, 34.198189, 41.632298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719204, 34.042706, 41.507126>,  <37.497108, 33.783566, 41.298508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719204, 34.042706, 41.507126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303107, 0.426337, -0.852269,
		-0.774494, 0.631293, 0.040350,
		0.555234, 0.647847, 0.521545,
		37.885773, 34.237061, 41.663589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253189, 34.395660, 41.050201>,  <37.497108, 33.783566, 41.298508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253189, 34.395660, 41.050201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620926, 34.451759, 41.197250>,  <37.841568, 34.485420, 41.285480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620926, 34.451759, 41.197250>,  <37.253189, 34.395660, 41.050201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620926, 34.451759, 41.197250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250892, 0.510779, -0.822288,
		-0.303095, 0.848196, 0.434393,
		0.919340, 0.140246, 0.367620,
		37.896729, 34.493832, 41.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378128, 35.111603, 41.043148>,  <37.253189, 34.395660, 41.050201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378128, 35.111603, 41.043148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749752, 34.963669, 41.046631>,  <37.972725, 34.874908, 41.048721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749752, 34.963669, 41.046631>,  <37.378128, 35.111603, 41.043148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749752, 34.963669, 41.046631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205748, 0.497020, -0.842994,
		0.307440, 0.784982, 0.537852,
		0.929058, -0.369832, 0.008705,
		38.028469, 34.852718, 41.049244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829765, 35.656960, 40.960670>,  <37.378128, 35.111603, 41.043148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829765, 35.656960, 40.960670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055168, 35.340881, 40.864288>,  <38.190411, 35.151234, 40.806458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055168, 35.340881, 40.864288>,  <37.829765, 35.656960, 40.960670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055168, 35.340881, 40.864288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315915, 0.475624, -0.820963,
		0.763323, 0.386493, 0.517649,
		0.563503, -0.790193, -0.240956,
		38.224220, 35.103825, 40.792000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436028, 35.916576, 40.575672>,  <37.829765, 35.656960, 40.960670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436028, 35.916576, 40.575672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407104, 35.529797, 40.477875>,  <38.389751, 35.297729, 40.419197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407104, 35.529797, 40.477875>,  <38.436028, 35.916576, 40.575672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407104, 35.529797, 40.477875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225175, 0.222979, -0.948460,
		0.971631, -0.123639, 0.201609,
		-0.072312, -0.966951, -0.244494,
		38.385410, 35.239712, 40.404526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856544, 35.901566, 40.089287>,  <38.436028, 35.916576, 40.575672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856544, 35.901566, 40.089287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630482, 35.576401, 40.033039>,  <38.494843, 35.381302, 39.999290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630482, 35.576401, 40.033039>,  <38.856544, 35.901566, 40.089287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630482, 35.576401, 40.033039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128401, 0.081696, -0.988351,
		0.814931, -0.576628, 0.058207,
		-0.565156, -0.812912, -0.140616,
		38.460934, 35.332527, 39.990852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.816895, 29.786434, 40.447918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428537, 29.714548, 40.511246>,  <26.195522, 29.671417, 40.549244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428537, 29.714548, 40.511246>,  <26.816895, 29.786434, 40.447918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428537, 29.714548, 40.511246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239198, 0.761171, -0.602829,
		-0.012173, -0.623154, -0.782005,
		-0.970895, -0.179716, 0.158323,
		26.137268, 29.660633, 40.558743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503284, 29.825792, 39.829468>,  <26.816895, 29.786434, 40.447918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503284, 29.825792, 39.829468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.195345, 29.868820, 40.081104>,  <26.010580, 29.894636, 40.232086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.195345, 29.868820, 40.081104>,  <26.503284, 29.825792, 39.829468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195345, 29.868820, 40.081104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386981, 0.705154, -0.594141,
		-0.507521, -0.700847, -0.501235,
		-0.769850, 0.107571, 0.629095,
		25.964390, 29.901091, 40.269833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870956, 29.824026, 39.355457>,  <26.503284, 29.825792, 39.829468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870956, 29.824026, 39.355457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753164, 30.011438, 39.688625>,  <25.682489, 30.123886, 39.888527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753164, 30.011438, 39.688625>,  <25.870956, 29.824026, 39.355457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753164, 30.011438, 39.688625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250659, 0.803188, -0.540425,
		-0.922200, -0.367924, -0.119081,
		-0.294479, 0.468531, 0.832923,
		25.664820, 30.151999, 39.938503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286758, 30.006952, 39.148754>,  <25.870956, 29.824026, 39.355457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286758, 30.006952, 39.148754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400217, 30.236517, 39.456043>,  <25.468292, 30.374256, 39.640419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400217, 30.236517, 39.456043>,  <25.286758, 30.006952, 39.148754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400217, 30.236517, 39.456043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233619, 0.818348, -0.525099,
		-0.930036, -0.030530, 0.366197,
		0.283646, 0.573911, 0.768226,
		25.485312, 30.408689, 39.686512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886780, 30.669060, 39.132374>,  <25.286758, 30.006952, 39.148754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886780, 30.669060, 39.132374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.184359, 30.776438, 39.377151>,  <25.362906, 30.840864, 39.524017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.184359, 30.776438, 39.377151>,  <24.886780, 30.669060, 39.132374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184359, 30.776438, 39.377151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047716, 0.892084, -0.449342,
		-0.666531, 0.363487, 0.650856,
		0.743949, 0.268444, 0.611946,
		25.407543, 30.856972, 39.560734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616594, 31.255703, 39.475494>,  <24.886780, 30.669060, 39.132374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616594, 31.255703, 39.475494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.016031, 31.255833, 39.496696>,  <25.255693, 31.255911, 39.509418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.016031, 31.255833, 39.496696>,  <24.616594, 31.255703, 39.475494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016031, 31.255833, 39.496696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022807, 0.900069, -0.435150,
		-0.047850, 0.435747, 0.898796,
		0.998594, 0.000323, 0.053007,
		25.315609, 31.255930, 39.512600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753098, 31.933569, 39.676182>,  <24.616594, 31.255703, 39.475494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753098, 31.933569, 39.676182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.066446, 31.768492, 39.490273>,  <25.254456, 31.669445, 39.378727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.066446, 31.768492, 39.490273>,  <24.753098, 31.933569, 39.676182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066446, 31.768492, 39.490273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127054, 0.838294, -0.530208,
		0.608430, 0.356298, 0.709130,
		0.783371, -0.412692, -0.464774,
		25.301458, 31.644684, 39.350842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284668, 32.549038, 39.490273>,  <24.753098, 31.933569, 39.676182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284668, 32.549038, 39.490273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459970, 32.260883, 39.275249>,  <25.565153, 32.087990, 39.146236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459970, 32.260883, 39.275249>,  <25.284668, 32.549038, 39.490273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459970, 32.260883, 39.275249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445491, 0.693514, -0.566194,
		0.780684, 0.008662, 0.624866,
		0.438258, -0.720391, -0.537557,
		25.591448, 32.044765, 39.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987852, 32.828373, 39.279423>,  <25.284668, 32.549038, 39.490273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987852, 32.828373, 39.279423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930998, 32.525257, 39.024689>,  <25.896885, 32.343388, 38.871849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930998, 32.525257, 39.024689>,  <25.987852, 32.828373, 39.279423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930998, 32.525257, 39.024689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423438, 0.534977, -0.731095,
		0.894705, -0.373575, 0.244836,
		-0.142137, -0.757787, -0.636832,
		25.888357, 32.297920, 38.833637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560764, 32.830269, 38.782566>,  <25.987852, 32.828373, 39.279423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560764, 32.830269, 38.782566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285507, 32.606487, 38.597755>,  <26.120354, 32.472218, 38.486870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285507, 32.606487, 38.597755>,  <26.560764, 32.830269, 38.782566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285507, 32.606487, 38.597755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285095, 0.377082, -0.881209,
		0.667219, -0.738120, -0.099988,
		-0.688142, -0.559454, -0.462031,
		26.079065, 32.438652, 38.459145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933523, 32.341427, 38.379574>,  <26.560764, 32.830269, 38.782566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933523, 32.341427, 38.379574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571894, 32.418663, 38.227066>,  <26.354916, 32.465004, 38.135563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571894, 32.418663, 38.227066>,  <26.933523, 32.341427, 38.379574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571894, 32.418663, 38.227066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427264, 0.428529, -0.796121,
		0.009661, -0.882655, -0.469922,
		-0.904075, 0.193089, -0.381267,
		26.300671, 32.476589, 38.112686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959522, 32.110935, 37.688251>,  <26.933523, 32.341427, 38.379574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959522, 32.110935, 37.688251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657690, 32.372620, 37.708721>,  <26.476591, 32.529629, 37.721001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657690, 32.372620, 37.708721>,  <26.959522, 32.110935, 37.688251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657690, 32.372620, 37.708721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377560, 0.496617, -0.781550,
		-0.536709, -0.570423, -0.621741,
		-0.754581, 0.654209, 0.051170,
		26.431316, 32.568882, 37.724072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613625, 32.181190, 36.964195>,  <26.959522, 32.110935, 37.688251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613625, 32.181190, 36.964195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531242, 32.506310, 37.182163>,  <26.481813, 32.701382, 37.312946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531242, 32.506310, 37.182163>,  <26.613625, 32.181190, 36.964195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531242, 32.506310, 37.182163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318805, 0.582214, -0.747924,
		-0.925173, 0.019685, -0.379034,
		-0.205956, 0.812797, 0.544924,
		26.469456, 32.750149, 37.345642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432995, 32.571468, 36.473335>,  <26.613625, 32.181190, 36.964195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432995, 32.571468, 36.473335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453388, 32.867298, 36.741791>,  <26.465624, 33.044796, 36.902866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453388, 32.867298, 36.741791>,  <26.432995, 32.571468, 36.473335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453388, 32.867298, 36.741791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323016, 0.623683, -0.711815,
		-0.945019, 0.253080, -0.207096,
		0.050984, 0.739574, 0.671142,
		26.468683, 33.089169, 36.943134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034515, 33.165668, 36.217052>,  <26.432995, 32.571468, 36.473335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034515, 33.165668, 36.217052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317041, 33.319485, 36.454792>,  <26.486557, 33.411774, 36.597435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317041, 33.319485, 36.454792>,  <26.034515, 33.165668, 36.217052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317041, 33.319485, 36.454792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249521, 0.650468, -0.717377,
		-0.662464, 0.654996, 0.363485,
		0.706315, 0.384539, 0.594347,
		26.528936, 33.434845, 36.633095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837217, 33.857761, 36.276478>,  <26.034515, 33.165668, 36.217052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837217, 33.857761, 36.276478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213148, 33.842926, 36.412331>,  <26.438707, 33.834023, 36.493843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213148, 33.842926, 36.412331>,  <25.837217, 33.857761, 36.276478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213148, 33.842926, 36.412331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250082, 0.751985, -0.609900,
		-0.232774, 0.658136, 0.716012,
		0.939827, -0.037093, 0.339631,
		26.495096, 33.831799, 36.514221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081093, 34.555267, 36.208668>,  <25.837217, 33.857761, 36.276478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081093, 34.555267, 36.208668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431675, 34.367947, 36.253433>,  <26.642023, 34.255554, 36.280293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431675, 34.367947, 36.253433>,  <26.081093, 34.555267, 36.208668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431675, 34.367947, 36.253433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438151, 0.679362, -0.588635,
		0.199629, 0.564945, 0.800615,
		0.876454, -0.468299, 0.111911,
		26.694611, 34.227455, 36.287006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571835, 34.890453, 36.668343>,  <26.081093, 34.555267, 36.208668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571835, 34.890453, 36.668343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792389, 34.664299, 36.422962>,  <26.924721, 34.528606, 36.275734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792389, 34.664299, 36.422962>,  <26.571835, 34.890453, 36.668343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792389, 34.664299, 36.422962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437184, 0.822097, -0.364729,
		0.710524, -0.067082, 0.700469,
		0.551386, -0.565382, -0.613446,
		26.957804, 34.494686, 36.238930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158550, 35.294563, 36.565861>,  <26.571835, 34.890453, 36.668343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158550, 35.294563, 36.565861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193779, 35.031166, 36.266895>,  <27.214916, 34.873127, 36.087517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193779, 35.031166, 36.266895>,  <27.158550, 35.294563, 36.565861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193779, 35.031166, 36.266895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395703, 0.711718, -0.580411,
		0.914146, -0.244637, 0.323249,
		0.088072, -0.658491, -0.747418,
		27.220201, 34.833618, 36.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839937, 35.399364, 36.249134>,  <27.158550, 35.294563, 36.565861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839937, 35.399364, 36.249134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653427, 35.178421, 35.972733>,  <27.541521, 35.045853, 35.806892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.653427, 35.178421, 35.972733>,  <27.839937, 35.399364, 36.249134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653427, 35.178421, 35.972733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433056, 0.538602, -0.722752,
		0.771396, -0.636243, -0.011932,
		-0.466272, -0.552361, -0.691004,
		27.513546, 35.012714, 35.765430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503094, 35.479645, 35.880470>,  <27.839937, 35.399364, 36.249134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503094, 35.479645, 35.880470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727337, 35.706802, 36.121540>,  <28.861883, 35.843098, 36.266182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727337, 35.706802, 36.121540>,  <28.503094, 35.479645, 35.880470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727337, 35.706802, 36.121540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057450, -0.752711, 0.655840,
		0.826088, -0.333044, -0.454600,
		0.560606, 0.567898, 0.602672,
		28.895519, 35.877171, 36.302341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128820, 35.167603, 35.989727>,  <28.503094, 35.479645, 35.880470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128820, 35.167603, 35.989727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143721, 35.419636, 36.299980>,  <29.152660, 35.570854, 36.486134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.143721, 35.419636, 36.299980>,  <29.128820, 35.167603, 35.989727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143721, 35.419636, 36.299980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399609, -0.720807, 0.566348,
		0.915929, 0.288855, -0.278635,
		0.037250, 0.630079, 0.775637,
		29.154896, 35.608658, 36.532673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718540, 35.067753, 36.271862>,  <29.128820, 35.167603, 35.989727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718540, 35.067753, 36.271862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513884, 35.244217, 36.566780>,  <29.391090, 35.350094, 36.743729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513884, 35.244217, 36.566780>,  <29.718540, 35.067753, 36.271862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513884, 35.244217, 36.566780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211738, -0.766911, 0.605818,
		0.832700, 0.466075, 0.298974,
		-0.511642, 0.441161, 0.737292,
		29.360392, 35.376564, 36.787968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098158, 35.124966, 36.803341>,  <29.718540, 35.067753, 36.271862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098158, 35.124966, 36.803341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725851, 35.100311, 36.947491>,  <29.502466, 35.085518, 37.033981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725851, 35.100311, 36.947491>,  <30.098158, 35.124966, 36.803341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725851, 35.100311, 36.947491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300733, -0.689626, 0.658768,
		0.207921, 0.721538, 0.660418,
		-0.930768, -0.061638, 0.360378,
		29.446621, 35.081821, 37.055603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146975, 34.968906, 37.565105>,  <30.098158, 35.124966, 36.803341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146975, 34.968906, 37.565105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769447, 34.877769, 37.469360>,  <29.542931, 34.823090, 37.411915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769447, 34.877769, 37.469360>,  <30.146975, 34.968906, 37.565105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769447, 34.877769, 37.469360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065093, -0.838314, 0.541288,
		-0.323988, 0.495297, 0.806047,
		-0.943819, -0.227839, -0.239364,
		29.486301, 34.809418, 37.397552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962646, 34.459969, 38.042534>,  <30.146975, 34.968906, 37.565105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962646, 34.459969, 38.042534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658712, 34.423088, 37.785114>,  <29.476353, 34.400959, 37.630665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658712, 34.423088, 37.785114>,  <29.962646, 34.459969, 38.042534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658712, 34.423088, 37.785114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156870, -0.934639, 0.319127,
		-0.630907, 0.343437, 0.695706,
		-0.759834, -0.092204, -0.643545,
		29.430761, 34.395428, 37.592052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346390, 34.179146, 38.441906>,  <29.962646, 34.459969, 38.042534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346390, 34.179146, 38.441906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292526, 34.082478, 38.057518>,  <29.260208, 34.024475, 37.826885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292526, 34.082478, 38.057518>,  <29.346390, 34.179146, 38.441906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292526, 34.082478, 38.057518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196504, -0.944028, 0.264947,
		-0.971212, 0.224512, 0.079632,
		-0.134659, -0.241672, -0.960969,
		29.252129, 34.009975, 37.769226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877230, 33.708298, 38.446877>,  <29.346390, 34.179146, 38.441906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877230, 33.708298, 38.446877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055042, 33.646072, 38.094017>,  <29.161730, 33.608738, 37.882301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055042, 33.646072, 38.094017>,  <28.877230, 33.708298, 38.446877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055042, 33.646072, 38.094017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199414, -0.977278, 0.071847,
		-0.873285, 0.143975, -0.465451,
		0.444531, -0.155560, -0.882153,
		29.188402, 33.599403, 37.829372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384615, 33.294353, 38.015228>,  <28.877230, 33.708298, 38.446877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384615, 33.294353, 38.015228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760847, 33.230469, 37.895363>,  <28.986586, 33.192139, 37.823444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760847, 33.230469, 37.895363>,  <28.384615, 33.294353, 38.015228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760847, 33.230469, 37.895363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133849, -0.985416, 0.105068,
		-0.312078, -0.058714, -0.948241,
		0.940580, -0.159711, -0.299668,
		29.043022, 33.182556, 37.805462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344286, 32.688805, 37.475067>,  <28.384615, 33.294353, 38.015228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344286, 32.688805, 37.475067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729935, 32.726376, 37.574383>,  <28.961325, 32.748920, 37.633972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729935, 32.726376, 37.574383>,  <28.344286, 32.688805, 37.475067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729935, 32.726376, 37.574383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108371, -0.993086, -0.045123,
		0.242330, 0.070411, -0.967635,
		0.964122, 0.093929, 0.248285,
		29.019171, 32.754555, 37.648869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786860, 32.282608, 36.993526>,  <28.344286, 32.688805, 37.475067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786860, 32.282608, 36.993526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002831, 32.341431, 37.325031>,  <29.132414, 32.376724, 37.523933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002831, 32.341431, 37.325031>,  <28.786860, 32.282608, 36.993526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002831, 32.341431, 37.325031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070507, -0.989061, 0.129561,
		0.838752, -0.011520, -0.544392,
		0.539929, 0.147053, 0.828765,
		29.164810, 32.385548, 37.573662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293633, 31.643307, 36.920231>,  <28.786860, 32.282608, 36.993526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293633, 31.643307, 36.920231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345505, 31.792381, 37.287773>,  <29.376629, 31.881826, 37.508297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345505, 31.792381, 37.287773>,  <29.293633, 31.643307, 36.920231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345505, 31.792381, 37.287773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166130, -0.921744, 0.350412,
		0.977539, 0.107207, -0.181448,
		0.129682, 0.372686, 0.918851,
		29.384409, 31.904186, 37.563427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935690, 31.371784, 37.219265>,  <29.293633, 31.643307, 36.920231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935690, 31.371784, 37.219265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707277, 31.473352, 37.531532>,  <29.570230, 31.534294, 37.718895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707277, 31.473352, 37.531532>,  <29.935690, 31.371784, 37.219265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707277, 31.473352, 37.531532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324905, -0.803407, 0.498973,
		0.753897, 0.538573, 0.376270,
		-0.571031, 0.253923, 0.780671,
		29.535969, 31.549530, 37.765732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303097, 31.174917, 37.752098>,  <29.935690, 31.371784, 37.219265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303097, 31.174917, 37.752098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937916, 31.187283, 37.914852>,  <29.718807, 31.194702, 38.012505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937916, 31.187283, 37.914852>,  <30.303097, 31.174917, 37.752098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937916, 31.187283, 37.914852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229707, -0.785199, 0.575063,
		0.337266, 0.618472, 0.709749,
		-0.912955, 0.030915, 0.406888,
		29.664030, 31.196556, 38.036919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463085, 31.077267, 38.389843>,  <30.303097, 31.174917, 37.752098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463085, 31.077267, 38.389843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078024, 30.974512, 38.355644>,  <29.846987, 30.912859, 38.335125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078024, 30.974512, 38.355644>,  <30.463085, 31.077267, 38.389843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078024, 30.974512, 38.355644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170127, -0.819610, 0.547080,
		-0.210613, 0.512102, 0.832703,
		-0.962652, -0.256888, -0.085498,
		29.789228, 30.897446, 38.329994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209860, 31.069862, 39.100212>,  <30.463085, 31.077267, 38.389843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209860, 31.069862, 39.100212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961416, 30.830297, 38.898014>,  <29.812349, 30.686558, 38.776695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961416, 30.830297, 38.898014>,  <30.209860, 31.069862, 39.100212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961416, 30.830297, 38.898014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121295, -0.710683, 0.692977,
		-0.774281, 0.369100, 0.514057,
		-0.621109, -0.598911, -0.505498,
		29.775084, 30.650623, 38.746365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899073, 30.721104, 39.639687>,  <30.209860, 31.069862, 39.100212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899073, 30.721104, 39.639687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788832, 30.500824, 39.324528>,  <29.722687, 30.368656, 39.135433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.788832, 30.500824, 39.324528>,  <29.899073, 30.721104, 39.639687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788832, 30.500824, 39.324528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186128, -0.773554, 0.605781,
		-0.943081, 0.313602, 0.110692,
		-0.275601, -0.550698, -0.787894,
		29.706152, 30.335615, 39.088161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370705, 30.298109, 39.878674>,  <29.899073, 30.721104, 39.639687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370705, 30.298109, 39.878674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486906, 30.112043, 39.544193>,  <29.556627, 30.000404, 39.343506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486906, 30.112043, 39.544193>,  <29.370705, 30.298109, 39.878674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486906, 30.112043, 39.544193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303358, -0.873580, 0.380568,
		-0.907514, 0.143112, -0.394889,
		0.290503, -0.465163, -0.836200,
		29.574059, 29.972494, 39.293335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797758, 29.839808, 39.606049>,  <29.370705, 30.298109, 39.878674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797758, 29.839808, 39.606049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132975, 29.685493, 39.451717>,  <29.334105, 29.592905, 39.359119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132975, 29.685493, 39.451717>,  <28.797758, 29.839808, 39.606049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132975, 29.685493, 39.451717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303750, -0.917310, 0.257446,
		-0.453239, -0.098556, -0.885924,
		0.838039, -0.385784, -0.385825,
		29.384386, 29.569757, 39.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595167, 29.260113, 39.310997>,  <28.797758, 29.839808, 39.606049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595167, 29.260113, 39.310997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989161, 29.195395, 39.335087>,  <29.225557, 29.156563, 39.349541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989161, 29.195395, 39.335087>,  <28.595167, 29.260113, 39.310997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989161, 29.195395, 39.335087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167406, -0.980368, 0.104184,
		0.042182, -0.112701, -0.992733,
		0.984985, -0.161795, 0.060220,
		29.284657, 29.146856, 39.353153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641346, 28.672882, 38.951244>,  <28.595167, 29.260113, 39.310997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641346, 28.672882, 38.951244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956316, 28.705576, 39.195633>,  <29.145298, 28.725193, 39.342266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956316, 28.705576, 39.195633>,  <28.641346, 28.672882, 38.951244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956316, 28.705576, 39.195633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084022, -0.967687, 0.237743,
		0.610660, -0.238539, -0.755111,
		0.787423, 0.081734, 0.610971,
		29.192543, 28.730097, 39.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124554, 28.085888, 38.806122>,  <28.641346, 28.672882, 38.951244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124554, 28.085888, 38.806122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138760, 28.233971, 39.177429>,  <29.147284, 28.322821, 39.400215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138760, 28.233971, 39.177429>,  <29.124554, 28.085888, 38.806122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138760, 28.233971, 39.177429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017356, -0.928487, 0.370958,
		0.999218, -0.029285, -0.026548,
		0.035513, 0.370208, 0.928270,
		29.149414, 28.345034, 39.455910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.105843, 30.576609, 44.608173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756573, 30.404503, 44.516579>,  <38.547012, 30.301239, 44.461620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756573, 30.404503, 44.516579>,  <39.105843, 30.576609, 44.608173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756573, 30.404503, 44.516579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229347, -0.051848, 0.971963,
		-0.430076, 0.901212, -0.053408,
		-0.873175, -0.430266, -0.228989,
		38.494621, 30.275423, 44.447884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636482, 30.857838, 45.098019>,  <39.105843, 30.576609, 44.608173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636482, 30.857838, 45.098019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458527, 30.521774, 44.973953>,  <38.351753, 30.320135, 44.899513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458527, 30.521774, 44.973953>,  <38.636482, 30.857838, 45.098019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458527, 30.521774, 44.973953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237089, -0.223481, 0.945434,
		-0.863631, 0.494153, -0.099767,
		-0.444893, -0.840160, -0.310164,
		38.325058, 30.269726, 44.880905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020229, 30.871086, 45.328339>,  <38.636482, 30.857838, 45.098019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020229, 30.871086, 45.328339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038113, 30.478296, 45.254883>,  <38.048843, 30.242622, 45.210812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038113, 30.478296, 45.254883>,  <38.020229, 30.871086, 45.328339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038113, 30.478296, 45.254883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538913, -0.178486, 0.823235,
		-0.841174, 0.062163, -0.537179,
		0.044704, -0.981977, -0.183638,
		38.051525, 30.183702, 45.199791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394699, 30.685820, 45.367153>,  <38.020229, 30.871086, 45.328339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394699, 30.685820, 45.367153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614986, 30.357376, 45.427147>,  <37.747158, 30.160311, 45.463142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614986, 30.357376, 45.427147>,  <37.394699, 30.685820, 45.367153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614986, 30.357376, 45.427147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498363, -0.179315, 0.848222,
		-0.669586, -0.541877, -0.507961,
		0.550717, -0.821107, 0.149985,
		37.780201, 30.111044, 45.472141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927444, 30.151369, 45.623318>,  <37.394699, 30.685820, 45.367153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927444, 30.151369, 45.623318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280437, 29.992552, 45.724182>,  <37.492233, 29.897263, 45.784702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280437, 29.992552, 45.724182>,  <36.927444, 30.151369, 45.623318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280437, 29.992552, 45.724182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401695, -0.357318, 0.843187,
		-0.244677, -0.845390, -0.474815,
		0.882482, -0.397039, 0.252162,
		37.545181, 29.873440, 45.799831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714954, 29.549400, 45.771465>,  <36.927444, 30.151369, 45.623318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714954, 29.549400, 45.771465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072090, 29.577333, 45.949432>,  <37.286373, 29.594093, 46.056213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072090, 29.577333, 45.949432>,  <36.714954, 29.549400, 45.771465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072090, 29.577333, 45.949432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390740, -0.371131, 0.842368,
		0.223949, -0.925951, -0.304075,
		0.892843, 0.069833, 0.444920,
		37.339943, 29.598284, 46.082909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869820, 28.847965, 46.107826>,  <36.714954, 29.549400, 45.771465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869820, 28.847965, 46.107826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106834, 29.118389, 46.283024>,  <37.249043, 29.280643, 46.388142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106834, 29.118389, 46.283024>,  <36.869820, 28.847965, 46.107826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106834, 29.118389, 46.283024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137750, -0.450680, 0.881993,
		0.793677, -0.582949, -0.173918,
		0.592538, 0.676061, 0.437996,
		37.284595, 29.321207, 46.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160164, 28.390528, 46.594692>,  <36.869820, 28.847965, 46.107826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160164, 28.390528, 46.594692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208309, 28.769173, 46.714317>,  <37.237198, 28.996359, 46.786095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208309, 28.769173, 46.714317>,  <37.160164, 28.390528, 46.594692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208309, 28.769173, 46.714317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203688, -0.271298, 0.940696,
		0.971609, -0.174143, 0.160159,
		0.120365, 0.946610, 0.299066,
		37.244419, 29.053156, 46.804039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470448, 28.367758, 47.269516>,  <37.160164, 28.390528, 46.594692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470448, 28.367758, 47.269516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312870, 28.735403, 47.267048>,  <37.218323, 28.955990, 47.265568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.312870, 28.735403, 47.267048>,  <37.470448, 28.367758, 47.269516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312870, 28.735403, 47.267048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219737, -0.087656, 0.971613,
		0.892483, 0.384116, 0.236495,
		-0.393942, 0.919115, -0.006173,
		37.194687, 29.011137, 47.265198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654995, 28.637651, 47.860558>,  <37.470448, 28.367758, 47.269516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654995, 28.637651, 47.860558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357780, 28.883078, 47.753651>,  <37.179451, 29.030333, 47.689507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357780, 28.883078, 47.753651>,  <37.654995, 28.637651, 47.860558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357780, 28.883078, 47.753651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210374, 0.164968, 0.963602,
		0.635322, 0.772220, 0.006501,
		-0.743040, 0.613565, -0.267263,
		37.134869, 29.067146, 47.673473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767990, 29.168722, 48.262024>,  <37.654995, 28.637651, 47.860558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767990, 29.168722, 48.262024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390221, 29.190546, 48.132359>,  <37.163559, 29.203640, 48.054558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390221, 29.190546, 48.132359>,  <37.767990, 29.168722, 48.262024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390221, 29.190546, 48.132359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325710, -0.022040, 0.945213,
		0.044424, 0.998267, 0.038585,
		-0.944426, 0.054557, -0.324166,
		37.106892, 29.206913, 48.035110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465874, 29.801231, 48.639893>,  <37.767990, 29.168722, 48.262024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465874, 29.801231, 48.639893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193359, 29.538721, 48.510185>,  <37.029850, 29.381216, 48.432362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193359, 29.538721, 48.510185>,  <37.465874, 29.801231, 48.639893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193359, 29.538721, 48.510185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410257, -0.024544, 0.911639,
		-0.606245, 0.754122, -0.252520,
		-0.681290, -0.656275, -0.324264,
		36.988972, 29.341839, 48.412907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843357, 29.917034, 48.945721>,  <37.465874, 29.801231, 48.639893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843357, 29.917034, 48.945721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809937, 29.535765, 48.829456>,  <36.789886, 29.307003, 48.759697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809937, 29.535765, 48.829456>,  <36.843357, 29.917034, 48.945721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809937, 29.535765, 48.829456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414667, -0.231975, 0.879909,
		-0.906130, 0.194041, -0.375868,
		-0.083547, -0.953171, -0.290662,
		36.784874, 29.249813, 48.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319092, 30.412704, 49.302917>,  <36.843357, 29.917034, 48.945721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319092, 30.412704, 49.302917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980110, 30.604408, 49.394241>,  <35.776722, 30.719431, 49.449036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980110, 30.604408, 49.394241>,  <36.319092, 30.412704, 49.302917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980110, 30.604408, 49.394241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048017, 0.497510, -0.866128,
		-0.528686, -0.723045, -0.444631,
		-0.847458, 0.479260, 0.228308,
		35.725872, 30.748186, 49.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878078, 30.473053, 48.674320>,  <36.319092, 30.412704, 49.302917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878078, 30.473053, 48.674320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747936, 30.754047, 48.927509>,  <35.669853, 30.922644, 49.079422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747936, 30.754047, 48.927509>,  <35.878078, 30.473053, 48.674320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747936, 30.754047, 48.927509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070141, 0.685481, -0.724704,
		-0.942988, -0.191386, -0.272296,
		-0.325352, 0.702486, 0.632977,
		35.650330, 30.964792, 49.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309689, 30.772257, 48.402149>,  <35.878078, 30.473053, 48.674320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309689, 30.772257, 48.402149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442158, 31.044302, 48.663765>,  <35.521637, 31.207529, 48.820736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442158, 31.044302, 48.663765>,  <35.309689, 30.772257, 48.402149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442158, 31.044302, 48.663765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013322, 0.689717, -0.723956,
		-0.943477, 0.248465, 0.219352,
		0.331169, 0.680114, 0.654043,
		35.541508, 31.248337, 48.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809986, 31.308464, 48.436302>,  <35.309689, 30.772257, 48.402149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809986, 31.308464, 48.436302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149940, 31.469427, 48.572403>,  <35.353912, 31.566004, 48.654064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149940, 31.469427, 48.572403>,  <34.809986, 31.308464, 48.436302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149940, 31.469427, 48.572403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011938, 0.660203, -0.750992,
		-0.526836, 0.634193, 0.565900,
		0.849883, 0.402405, 0.340247,
		35.404907, 31.590149, 48.674477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681145, 32.064034, 48.428837>,  <34.809986, 31.308464, 48.436302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681145, 32.064034, 48.428837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078293, 32.022778, 48.452763>,  <35.316582, 31.998024, 48.467117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078293, 32.022778, 48.452763>,  <34.681145, 32.064034, 48.428837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078293, 32.022778, 48.452763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113080, 0.655576, -0.746614,
		0.037795, 0.748052, 0.662563,
		0.992867, -0.103141, 0.059812,
		35.376152, 31.991835, 48.470707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882824, 32.667103, 48.463928>,  <34.681145, 32.064034, 48.428837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882824, 32.667103, 48.463928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192112, 32.453251, 48.327515>,  <35.377686, 32.324940, 48.245667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192112, 32.453251, 48.327515>,  <34.882824, 32.667103, 48.463928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192112, 32.453251, 48.327515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197545, 0.714100, -0.671593,
		0.602588, 0.451917, 0.657768,
		0.773216, -0.534632, -0.341034,
		35.424076, 32.292862, 48.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371086, 33.200409, 48.344334>,  <34.882824, 32.667103, 48.463928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371086, 33.200409, 48.344334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517017, 32.882874, 48.149719>,  <35.604576, 32.692352, 48.032951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517017, 32.882874, 48.149719>,  <35.371086, 33.200409, 48.344334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517017, 32.882874, 48.149719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389816, 0.604784, -0.694464,
		0.845543, 0.063699, 0.530093,
		0.364829, -0.793838, -0.486540,
		35.626465, 32.644722, 48.003757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010513, 33.427753, 48.012108>,  <35.371086, 33.200409, 48.344334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010513, 33.427753, 48.012108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923100, 33.107796, 47.788532>,  <35.870651, 32.915821, 47.654385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923100, 33.107796, 47.788532>,  <36.010513, 33.427753, 48.012108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923100, 33.107796, 47.788532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363904, 0.464668, -0.807253,
		0.905437, -0.379815, 0.189536,
		-0.218536, -0.799890, -0.558944,
		35.857540, 32.867828, 47.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778893, 33.298645, 47.732464>,  <36.010513, 33.427753, 48.012108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778893, 33.298645, 47.732464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511124, 33.096207, 47.514935>,  <36.350464, 32.974743, 47.384415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.511124, 33.096207, 47.514935>,  <36.778893, 33.298645, 47.732464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511124, 33.096207, 47.514935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410530, 0.358097, -0.838589,
		0.619147, -0.784625, -0.031951,
		-0.669419, -0.506094, -0.543827,
		36.310299, 32.944378, 47.351788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129551, 32.839413, 47.222332>,  <36.778893, 33.298645, 47.732464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129551, 32.839413, 47.222332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765720, 32.906410, 47.070217>,  <36.547421, 32.946609, 46.978951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765720, 32.906410, 47.070217>,  <37.129551, 32.839413, 47.222332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765720, 32.906410, 47.070217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415536, 0.364654, -0.833281,
		-0.000902, -0.915954, -0.401282,
		-0.909577, 0.167498, -0.380283,
		36.492847, 32.956661, 46.956131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209599, 32.667683, 46.586956>,  <37.129551, 32.839413, 47.222332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209599, 32.667683, 46.586956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880428, 32.894707, 46.597229>,  <36.682926, 33.030922, 46.603394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880428, 32.894707, 46.597229>,  <37.209599, 32.667683, 46.586956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880428, 32.894707, 46.597229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171979, 0.291937, -0.940849,
		-0.541489, -0.769835, -0.337852,
		-0.822930, 0.567562, 0.025685,
		36.633549, 33.064976, 46.604935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919353, 32.546703, 45.940800>,  <37.209599, 32.667683, 46.586956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919353, 32.546703, 45.940800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731052, 32.881264, 46.053101>,  <36.618073, 33.082001, 46.120480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731052, 32.881264, 46.053101>,  <36.919353, 32.546703, 45.940800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731052, 32.881264, 46.053101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120118, 0.254493, -0.959586,
		-0.874052, -0.485448, -0.019335,
		-0.470750, 0.836405, 0.280751,
		36.589828, 33.132187, 46.137325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405933, 32.543079, 45.544830>,  <36.919353, 32.546703, 45.940800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405933, 32.543079, 45.544830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433022, 32.925495, 45.658955>,  <36.449272, 33.154945, 45.727428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433022, 32.925495, 45.658955>,  <36.405933, 32.543079, 45.544830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433022, 32.925495, 45.658955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032393, 0.283713, -0.958362,
		-0.997179, 0.074139, -0.011757,
		0.067716, 0.956039, 0.285314,
		36.453335, 33.212307, 45.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946995, 32.936676, 45.078598>,  <36.405933, 32.543079, 45.544830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946995, 32.936676, 45.078598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216343, 33.192383, 45.227142>,  <36.377953, 33.345806, 45.316269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216343, 33.192383, 45.227142>,  <35.946995, 32.936676, 45.078598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216343, 33.192383, 45.227142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228401, 0.297859, -0.926883,
		-0.703136, 0.708959, 0.054562,
		0.673374, 0.639263, 0.371363,
		36.418354, 33.384163, 45.338551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833992, 33.494808, 44.629669>,  <35.946995, 32.936676, 45.078598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833992, 33.494808, 44.629669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188622, 33.575386, 44.796242>,  <36.401398, 33.623734, 44.896187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188622, 33.575386, 44.796242>,  <35.833992, 33.494808, 44.629669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188622, 33.575386, 44.796242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375817, 0.211251, -0.902294,
		-0.269730, 0.956449, 0.111583,
		0.886570, 0.201441, 0.416431,
		36.454594, 33.635818, 44.921169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500771, 33.998547, 45.140671>,  <35.833992, 33.494808, 44.629669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500771, 33.998547, 45.140671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204350, 34.255074, 45.061115>,  <35.026497, 34.408989, 45.013382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204350, 34.255074, 45.061115>,  <35.500771, 33.998547, 45.140671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204350, 34.255074, 45.061115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330882, -0.091046, 0.939270,
		0.584265, 0.761852, 0.279671,
		-0.741048, 0.641320, -0.198888,
		34.982037, 34.447468, 45.001450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415932, 34.653500, 45.661648>,  <35.500771, 33.998547, 45.140671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415932, 34.653500, 45.661648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067501, 34.525330, 45.512760>,  <34.858444, 34.448425, 45.423428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067501, 34.525330, 45.512760>,  <35.415932, 34.653500, 45.661648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067501, 34.525330, 45.512760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341486, -0.149569, 0.927910,
		-0.353002, 0.935390, 0.020864,
		-0.871078, -0.320429, -0.372221,
		34.806179, 34.429199, 45.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843437, 35.016449, 46.134010>,  <35.415932, 34.653500, 45.661648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843437, 35.016449, 46.134010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641819, 34.732773, 45.936836>,  <34.520847, 34.562569, 45.818531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641819, 34.732773, 45.936836>,  <34.843437, 35.016449, 46.134010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641819, 34.732773, 45.936836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488983, -0.236134, 0.839724,
		-0.711924, 0.664296, -0.227762,
		-0.504043, -0.709191, -0.492939,
		34.490604, 34.520016, 45.788956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253952, 35.183155, 46.280289>,  <34.843437, 35.016449, 46.134010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253952, 35.183155, 46.280289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226295, 34.793232, 46.195473>,  <34.209702, 34.559277, 46.144581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226295, 34.793232, 46.195473>,  <34.253952, 35.183155, 46.280289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226295, 34.793232, 46.195473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306759, -0.181479, 0.934326,
		-0.949273, 0.129645, -0.286485,
		-0.069140, -0.974812, -0.212043,
		34.205555, 34.500790, 46.131859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538822, 34.993465, 46.433636>,  <34.253952, 35.183155, 46.280289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538822, 34.993465, 46.433636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725945, 34.640076, 46.443691>,  <33.838219, 34.428043, 46.449726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725945, 34.640076, 46.443691>,  <33.538822, 34.993465, 46.433636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725945, 34.640076, 46.443691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377641, -0.174082, 0.909441,
		-0.799092, -0.434932, -0.415073,
		0.467802, -0.883475, 0.025141,
		33.866283, 34.375034, 46.451233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976242, 34.398731, 46.589668>,  <33.538822, 34.993465, 46.433636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976242, 34.398731, 46.589668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333523, 34.253536, 46.695827>,  <33.547890, 34.166420, 46.759525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333523, 34.253536, 46.695827>,  <32.976242, 34.398731, 46.589668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333523, 34.253536, 46.695827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329251, -0.125964, 0.935803,
		-0.306252, -0.923241, -0.232024,
		0.893198, -0.362986, 0.265401,
		33.601482, 34.144642, 46.775448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766796, 33.898277, 46.923489>,  <32.976242, 34.398731, 46.589668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766796, 33.898277, 46.923489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139019, 33.975964, 47.047649>,  <33.362354, 34.022575, 47.122147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139019, 33.975964, 47.047649>,  <32.766796, 33.898277, 46.923489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139019, 33.975964, 47.047649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256337, -0.259774, 0.931026,
		0.261451, -0.945938, -0.191950,
		0.930556, 0.194213, 0.310397,
		33.418186, 34.034229, 47.140770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558464, 33.222595, 46.644527>,  <32.766796, 33.898277, 46.923489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558464, 33.222595, 46.644527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223904, 33.007202, 46.603607>,  <32.023167, 32.877968, 46.579056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223904, 33.007202, 46.603607>,  <32.558464, 33.222595, 46.644527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223904, 33.007202, 46.603607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092510, 0.045279, -0.994682,
		0.540253, -0.841418, 0.011944,
		-0.836403, -0.538484, -0.102302,
		31.972982, 32.845657, 46.572918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621941, 32.930134, 46.004879>,  <32.558464, 33.222595, 46.644527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621941, 32.930134, 46.004879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.244061, 32.833366, 46.093441>,  <32.017334, 32.775307, 46.146580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.244061, 32.833366, 46.093441>,  <32.621941, 32.930134, 46.004879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244061, 32.833366, 46.093441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203742, -0.096075, -0.974299,
		0.256970, -0.965529, 0.041473,
		-0.944699, -0.241916, 0.221407,
		31.960651, 32.760792, 46.159863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480225, 32.284496, 45.593842>,  <32.621941, 32.930134, 46.004879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480225, 32.284496, 45.593842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148525, 32.492596, 45.675507>,  <31.949505, 32.617455, 45.724506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148525, 32.492596, 45.675507>,  <32.480225, 32.284496, 45.593842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148525, 32.492596, 45.675507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213371, 0.042921, -0.976028,
		-0.516544, -0.852933, 0.075414,
		-0.829250, 0.520252, 0.204162,
		31.899750, 32.648670, 45.736755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030056, 31.949875, 45.175484>,  <32.480225, 32.284496, 45.593842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030056, 31.949875, 45.175484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878845, 32.306293, 45.275990>,  <31.788118, 32.520145, 45.336292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878845, 32.306293, 45.275990>,  <32.030056, 31.949875, 45.175484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878845, 32.306293, 45.275990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214139, 0.179884, -0.960097,
		-0.900689, -0.416746, 0.122807,
		-0.378025, 0.891047, 0.251261,
		31.765438, 32.573608, 45.351368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401920, 32.041840, 44.827808>,  <32.030056, 31.949875, 45.175484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401920, 32.041840, 44.827808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529022, 32.405773, 44.934563>,  <31.605284, 32.624134, 44.998615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529022, 32.405773, 44.934563>,  <31.401920, 32.041840, 44.827808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529022, 32.405773, 44.934563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108189, 0.314430, -0.943095,
		-0.941981, 0.270798, 0.198345,
		0.317754, 0.909836, 0.266890,
		31.624348, 32.678722, 45.014629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974133, 32.529213, 44.582348>,  <31.401920, 32.041840, 44.827808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974133, 32.529213, 44.582348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299330, 32.758663, 44.622337>,  <31.494448, 32.896336, 44.646332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.299330, 32.758663, 44.622337>,  <30.974133, 32.529213, 44.582348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299330, 32.758663, 44.622337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165627, 0.392421, -0.904750,
		-0.558223, 0.718996, 0.414043,
		0.812992, 0.573629, 0.099973,
		31.543228, 32.930752, 44.652328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853397, 33.288734, 44.340042>,  <30.974133, 32.529213, 44.582348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853397, 33.288734, 44.340042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246685, 33.215851, 44.343597>,  <31.482658, 33.172119, 44.345730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246685, 33.215851, 44.343597>,  <30.853397, 33.288734, 44.340042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246685, 33.215851, 44.343597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080215, 0.388058, -0.918137,
		0.163848, 0.903443, 0.396162,
		0.983219, -0.182213, 0.008887,
		31.541651, 33.161186, 44.346264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.273960, 27.098677, 47.001518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621536, 27.237553, 47.142605>,  <34.830082, 27.320877, 47.227257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621536, 27.237553, 47.142605>,  <34.273960, 27.098677, 47.001518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621536, 27.237553, 47.142605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122031, 0.540372, -0.832530,
		-0.479643, 0.766459, 0.427181,
		0.868937, 0.347188, 0.352717,
		34.882217, 27.341709, 47.248421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271320, 27.789946, 46.800404>,  <34.273960, 27.098677, 47.001518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271320, 27.789946, 46.800404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648399, 27.680485, 46.876762>,  <34.874645, 27.614809, 46.922577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.648399, 27.680485, 46.876762>,  <34.271320, 27.789946, 46.800404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648399, 27.680485, 46.876762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279706, 0.336222, -0.899288,
		0.181909, 0.901149, 0.393497,
		0.942695, -0.273652, 0.190895,
		34.931210, 27.598389, 46.934032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611195, 28.211958, 46.367058>,  <34.271320, 27.789946, 46.800404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611195, 28.211958, 46.367058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914726, 27.972631, 46.469971>,  <35.096844, 27.829035, 46.531719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914726, 27.972631, 46.469971>,  <34.611195, 28.211958, 46.367058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914726, 27.972631, 46.469971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454870, 0.204152, -0.866842,
		0.466122, 0.774815, 0.427073,
		0.758830, -0.598317, 0.257281,
		35.142376, 27.793137, 46.547153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228802, 28.577665, 46.260654>,  <34.611195, 28.211958, 46.367058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228802, 28.577665, 46.260654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332027, 28.191908, 46.237507>,  <35.393963, 27.960453, 46.223618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332027, 28.191908, 46.237507>,  <35.228802, 28.577665, 46.260654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332027, 28.191908, 46.237507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256755, 0.126203, -0.958201,
		0.931387, 0.232415, 0.280181,
		0.258060, -0.964394, -0.057870,
		35.409447, 27.902590, 46.220146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898205, 28.543533, 45.840385>,  <35.228802, 28.577665, 46.260654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898205, 28.543533, 45.840385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696671, 28.198645, 45.819508>,  <35.575748, 27.991713, 45.806980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696671, 28.198645, 45.819508>,  <35.898205, 28.543533, 45.840385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696671, 28.198645, 45.819508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109802, -0.003993, -0.993945,
		0.856791, -0.506519, 0.096685,
		-0.503838, -0.862220, -0.052195,
		35.545521, 27.939980, 45.803848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284615, 28.122858, 45.367783>,  <35.898205, 28.543533, 45.840385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284615, 28.122858, 45.367783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943027, 27.916544, 45.395210>,  <35.738075, 27.792755, 45.411667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943027, 27.916544, 45.395210>,  <36.284615, 28.122858, 45.367783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943027, 27.916544, 45.395210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011437, -0.150350, -0.988567,
		0.520199, -0.843421, 0.134294,
		-0.853969, -0.515787, 0.068566,
		35.686836, 27.761808, 45.415779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404175, 27.502741, 45.088406>,  <36.284615, 28.122858, 45.367783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404175, 27.502741, 45.088406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.011971, 27.567663, 45.044117>,  <35.776649, 27.606617, 45.017544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.011971, 27.567663, 45.044117>,  <36.404175, 27.502741, 45.088406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011971, 27.567663, 45.044117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113124, 0.005626, -0.993565,
		-0.160639, -0.986725, -0.023877,
		-0.980509, 0.162306, -0.110719,
		35.717819, 27.616354, 45.010902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289734, 27.000795, 44.617294>,  <36.404175, 27.502741, 45.088406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289734, 27.000795, 44.617294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000507, 27.276924, 44.607246>,  <35.826969, 27.442600, 44.601219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000507, 27.276924, 44.607246>,  <36.289734, 27.000795, 44.617294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000507, 27.276924, 44.607246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265305, 0.243949, -0.932793,
		-0.637797, -0.681137, -0.359537,
		-0.723068, 0.690320, -0.025119,
		35.783588, 27.484020, 44.599712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992298, 26.930601, 43.935158>,  <36.289734, 27.000795, 44.617294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992298, 26.930601, 43.935158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814304, 27.276592, 44.027935>,  <35.707508, 27.484186, 44.083603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814304, 27.276592, 44.027935>,  <35.992298, 26.930601, 43.935158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814304, 27.276592, 44.027935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125086, 0.316495, -0.940311,
		-0.886758, -0.389414, -0.249034,
		-0.444988, 0.864978, 0.231944,
		35.680809, 27.536085, 44.097519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519066, 26.973156, 43.417217>,  <35.992298, 26.930601, 43.935158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519066, 26.973156, 43.417217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574120, 27.334772, 43.579090>,  <35.607151, 27.551741, 43.676216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574120, 27.334772, 43.579090>,  <35.519066, 26.973156, 43.417217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574120, 27.334772, 43.579090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157111, 0.383476, -0.910089,
		-0.977943, 0.188840, -0.089256,
		0.137634, 0.904038, 0.404687,
		35.615410, 27.605984, 43.700497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149193, 27.466471, 43.027363>,  <35.519066, 26.973156, 43.417217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149193, 27.466471, 43.027363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433453, 27.700497, 43.183659>,  <35.604008, 27.840912, 43.277435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433453, 27.700497, 43.183659>,  <35.149193, 27.466471, 43.027363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433453, 27.700497, 43.183659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220535, 0.342147, -0.913400,
		-0.668088, 0.735279, 0.114119,
		0.710649, 0.585065, 0.390739,
		35.646648, 27.876017, 43.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051247, 28.148422, 42.922562>,  <35.149193, 27.466471, 43.027363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051247, 28.148422, 42.922562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448883, 28.115242, 42.950542>,  <35.687466, 28.095333, 42.967331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448883, 28.115242, 42.950542>,  <35.051247, 28.148422, 42.922562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448883, 28.115242, 42.950542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096269, 0.376815, -0.921272,
		0.050061, 0.922567, 0.382576,
		0.994096, -0.082950, 0.069951,
		35.747112, 28.090357, 42.971527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777500, 28.719912, 43.351906>,  <35.051247, 28.148422, 42.922562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777500, 28.719912, 43.351906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436165, 28.906229, 43.258228>,  <34.231365, 29.018021, 43.202023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436165, 28.906229, 43.258228>,  <34.777500, 28.719912, 43.351906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436165, 28.906229, 43.258228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428566, -0.370903, 0.823871,
		0.296891, 0.803409, 0.516129,
		-0.853339, 0.465795, -0.234196,
		34.180164, 29.045967, 43.187969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640404, 29.215660, 43.892879>,  <34.777500, 28.719912, 43.351906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640404, 29.215660, 43.892879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297474, 29.139984, 43.701378>,  <34.091717, 29.094580, 43.586475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297474, 29.139984, 43.701378>,  <34.640404, 29.215660, 43.892879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297474, 29.139984, 43.701378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464384, -0.117101, 0.877858,
		-0.222144, 0.974933, 0.012537,
		-0.857321, -0.189188, -0.478757,
		34.040279, 29.083227, 43.557751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213619, 29.586777, 44.200024>,  <34.640404, 29.215660, 43.892879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213619, 29.586777, 44.200024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948055, 29.332867, 44.041893>,  <33.788715, 29.180521, 43.947014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948055, 29.332867, 44.041893>,  <34.213619, 29.586777, 44.200024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948055, 29.332867, 44.041893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565205, 0.079786, 0.821083,
		-0.489662, 0.768566, -0.411749,
		-0.663909, -0.634776, -0.395330,
		33.748882, 29.142433, 43.923294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547291, 29.893610, 44.310574>,  <34.213619, 29.586777, 44.200024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547291, 29.893610, 44.310574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473919, 29.502960, 44.265743>,  <33.429897, 29.268570, 44.238846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473919, 29.502960, 44.265743>,  <33.547291, 29.893610, 44.310574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473919, 29.502960, 44.265743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493907, -0.007020, 0.869486,
		-0.849947, 0.214843, -0.481074,
		-0.183426, -0.976623, -0.112079,
		33.418892, 29.209972, 44.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838333, 29.805185, 44.605904>,  <33.547291, 29.893610, 44.310574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838333, 29.805185, 44.605904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965210, 29.426479, 44.583881>,  <33.041336, 29.199257, 44.570667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965210, 29.426479, 44.583881>,  <32.838333, 29.805185, 44.605904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965210, 29.426479, 44.583881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484898, -0.211797, 0.848537,
		-0.815024, -0.242451, -0.526263,
		0.317190, -0.946763, -0.055055,
		33.060368, 29.142450, 44.567364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228912, 29.308371, 44.757282>,  <32.838333, 29.805185, 44.605904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228912, 29.308371, 44.757282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.570091, 29.115627, 44.837582>,  <32.774799, 28.999981, 44.885761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.570091, 29.115627, 44.837582>,  <32.228912, 29.308371, 44.757282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570091, 29.115627, 44.837582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358988, -0.262268, 0.895736,
		-0.378968, -0.836078, -0.396681,
		0.852942, -0.481860, 0.200751,
		32.825974, 28.971069, 44.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043297, 28.676155, 44.974068>,  <32.228912, 29.308371, 44.757282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043297, 28.676155, 44.974068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400249, 28.748268, 45.139553>,  <32.614422, 28.791536, 45.238842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400249, 28.748268, 45.139553>,  <32.043297, 28.676155, 44.974068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400249, 28.748268, 45.139553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403321, -0.092676, 0.910353,
		0.202463, -0.979239, -0.009990,
		0.892379, 0.180284, 0.413711,
		32.667965, 28.802353, 45.263668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990650, 28.495165, 45.654808>,  <32.043297, 28.676155, 44.974068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990650, 28.495165, 45.654808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358860, 28.650719, 45.669796>,  <32.579784, 28.744051, 45.678787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358860, 28.650719, 45.669796>,  <31.990650, 28.495165, 45.654808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358860, 28.650719, 45.669796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008670, -0.116214, 0.993186,
		0.390590, -0.913927, -0.110349,
		0.920524, 0.388885, 0.037468,
		32.635017, 28.767384, 45.681038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287720, 28.129995, 46.189934>,  <31.990650, 28.495165, 45.654808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287720, 28.129995, 46.189934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523209, 28.452707, 46.169868>,  <32.664501, 28.646334, 46.157829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523209, 28.452707, 46.169868>,  <32.287720, 28.129995, 46.189934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523209, 28.452707, 46.169868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020603, 0.047059, 0.998680,
		0.808073, -0.588978, 0.011082,
		0.588722, 0.806778, -0.050162,
		32.699825, 28.694740, 46.154819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733047, 28.013073, 46.754887>,  <32.287720, 28.129995, 46.189934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733047, 28.013073, 46.754887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.710102, 28.400526, 46.658176>,  <32.696335, 28.632998, 46.600151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.710102, 28.400526, 46.658176>,  <32.733047, 28.013073, 46.754887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710102, 28.400526, 46.658176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181131, 0.228058, 0.956651,
		0.981784, 0.098675, 0.162366,
		-0.057368, 0.968635, -0.241777,
		32.692890, 28.691116, 46.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833652, 28.364887, 47.492817>,  <32.733047, 28.013073, 46.754887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833652, 28.364887, 47.492817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713036, 28.635132, 47.223709>,  <32.640663, 28.797279, 47.062244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713036, 28.635132, 47.223709>,  <32.833652, 28.364887, 47.492817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713036, 28.635132, 47.223709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572289, 0.436118, 0.694468,
		0.762598, 0.594433, 0.255136,
		-0.301545, 0.675612, -0.672770,
		32.622574, 28.837816, 47.021877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931908, 28.899567, 47.837830>,  <32.833652, 28.364887, 47.492817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931908, 28.899567, 47.837830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665226, 29.008129, 47.560169>,  <32.505219, 29.073267, 47.393574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665226, 29.008129, 47.560169>,  <32.931908, 28.899567, 47.837830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665226, 29.008129, 47.560169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646741, 0.252241, 0.719793,
		0.370448, 0.928824, 0.007359,
		-0.666704, 0.271406, -0.694150,
		32.465214, 29.089550, 47.351925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788967, 29.604761, 47.975567>,  <32.931908, 28.899567, 47.837830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788967, 29.604761, 47.975567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487598, 29.441189, 47.769604>,  <32.306778, 29.343046, 47.646027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.487598, 29.441189, 47.769604>,  <32.788967, 29.604761, 47.975567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487598, 29.441189, 47.769604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641820, 0.287205, 0.711041,
		-0.142883, 0.866193, -0.478847,
		-0.753426, -0.408930, -0.514903,
		32.261570, 29.318510, 47.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261646, 30.005585, 48.155933>,  <32.788967, 29.604761, 47.975567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261646, 30.005585, 48.155933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060509, 29.706215, 47.982956>,  <31.939825, 29.526592, 47.879169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060509, 29.706215, 47.982956>,  <32.261646, 30.005585, 48.155933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060509, 29.706215, 47.982956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640446, -0.013385, 0.767887,
		-0.580494, 0.663085, -0.472595,
		-0.502848, -0.748425, -0.432439,
		31.909655, 29.481688, 47.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606970, 30.208479, 48.188728>,  <32.261646, 30.005585, 48.155933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606970, 30.208479, 48.188728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587975, 29.811348, 48.144833>,  <31.576578, 29.573071, 48.118496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587975, 29.811348, 48.144833>,  <31.606970, 30.208479, 48.188728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587975, 29.811348, 48.144833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491285, -0.072439, 0.867982,
		-0.869704, 0.095128, -0.484320,
		-0.047486, -0.992826, -0.109735,
		31.573729, 29.513500, 48.111912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025391, 30.684177, 47.924553>,  <31.606970, 30.208479, 48.188728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025391, 30.684177, 47.924553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739868, 30.759911, 47.654846>,  <30.568556, 30.805351, 47.493023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739868, 30.759911, 47.654846>,  <31.025391, 30.684177, 47.924553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739868, 30.759911, 47.654846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110219, 0.981136, 0.158819,
		0.691617, 0.039049, -0.721208,
		-0.713805, 0.189333, -0.674267,
		30.525726, 30.816710, 47.452568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168804, 31.487316, 47.905190>,  <31.025391, 30.684177, 47.924553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168804, 31.487316, 47.905190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.376787, 31.751810, 48.121490>,  <31.501577, 31.910505, 48.251270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.376787, 31.751810, 48.121490>,  <31.168804, 31.487316, 47.905190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376787, 31.751810, 48.121490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226648, 0.503568, -0.833697,
		-0.823574, 0.556048, 0.111967,
		0.519959, 0.661233, 0.540753,
		31.532774, 31.950180, 48.283718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890911, 32.202423, 47.903374>,  <31.168804, 31.487316, 47.905190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890911, 32.202423, 47.903374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.289789, 32.176826, 47.918900>,  <31.529116, 32.161469, 47.928215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.289789, 32.176826, 47.918900>,  <30.890911, 32.202423, 47.903374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289789, 32.176826, 47.918900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064057, 0.461528, -0.884810,
		0.038707, 0.884815, 0.464333,
		0.997195, -0.063992, 0.038814,
		31.588947, 32.157627, 47.930542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073969, 32.884422, 47.873768>,  <30.890911, 32.202423, 47.903374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073969, 32.884422, 47.873768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404575, 32.680393, 47.778519>,  <31.602940, 32.557976, 47.721371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404575, 32.680393, 47.778519>,  <31.073969, 32.884422, 47.873768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404575, 32.680393, 47.778519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123359, 0.576859, -0.807475,
		0.549232, 0.638016, 0.539704,
		0.826515, -0.510068, -0.238124,
		31.652531, 32.527374, 47.707081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665642, 33.340481, 47.712677>,  <31.073969, 32.884422, 47.873768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665642, 33.340481, 47.712677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745832, 32.995544, 47.526699>,  <31.793947, 32.788582, 47.415112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745832, 32.995544, 47.526699>,  <31.665642, 33.340481, 47.712677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745832, 32.995544, 47.526699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154704, 0.496492, -0.854145,
		0.967407, 0.099305, 0.232942,
		0.200475, -0.862343, -0.464947,
		31.805975, 32.736843, 47.387215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071968, 33.503105, 47.214249>,  <31.665642, 33.340481, 47.712677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071968, 33.503105, 47.214249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921045, 33.146084, 47.115459>,  <31.830492, 32.931870, 47.056187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921045, 33.146084, 47.115459>,  <32.071968, 33.503105, 47.214249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921045, 33.146084, 47.115459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064909, 0.240536, -0.968467,
		0.923813, -0.381435, -0.032820,
		-0.377302, -0.892552, -0.246969,
		31.807854, 32.878319, 47.041370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793503, 33.365639, 47.382004>,  <32.071968, 33.503105, 47.214249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793503, 33.365639, 47.382004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095676, 33.604778, 47.489258>,  <33.276981, 33.748264, 47.553612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095676, 33.604778, 47.489258>,  <32.793503, 33.365639, 47.382004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095676, 33.604778, 47.489258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228790, -0.142785, 0.962947,
		0.613984, -0.788788, 0.028918,
		0.755432, 0.597851, 0.268135,
		33.322308, 33.784134, 47.569698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292679, 32.949753, 47.798485>,  <32.793503, 33.365639, 47.382004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292679, 32.949753, 47.798485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366299, 33.331108, 47.894131>,  <33.410473, 33.559921, 47.951519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366299, 33.331108, 47.894131>,  <33.292679, 32.949753, 47.798485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366299, 33.331108, 47.894131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094051, -0.259239, 0.961223,
		0.978406, -0.154426, -0.137381,
		0.184053, 0.953387, 0.239118,
		33.421513, 33.617123, 47.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894604, 32.975952, 48.208546>,  <33.292679, 32.949753, 47.798485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894604, 32.975952, 48.208546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681480, 33.301159, 48.302464>,  <33.553608, 33.496281, 48.358814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681480, 33.301159, 48.302464>,  <33.894604, 32.975952, 48.208546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681480, 33.301159, 48.302464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111851, -0.207360, 0.971850,
		0.838812, 0.544071, 0.019547,
		-0.532808, 0.813012, 0.234790,
		33.521637, 33.545063, 48.372902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060432, 33.118855, 48.824722>,  <33.894604, 32.975952, 48.208546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060432, 33.118855, 48.824722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741596, 33.360394, 48.823212>,  <33.550293, 33.505318, 48.822304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741596, 33.360394, 48.823212>,  <34.060432, 33.118855, 48.824722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741596, 33.360394, 48.823212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072344, -0.089277, 0.993376,
		0.599508, 0.792086, 0.114846,
		-0.797093, 0.603845, -0.003780,
		33.502468, 33.541546, 48.822079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185703, 33.589863, 49.404331>,  <34.060432, 33.118855, 48.824722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185703, 33.589863, 49.404331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793427, 33.601856, 49.327034>,  <33.558060, 33.609051, 49.280655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793427, 33.601856, 49.327034>,  <34.185703, 33.589863, 49.404331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793427, 33.601856, 49.327034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195010, -0.075985, 0.977853,
		0.014637, 0.996658, 0.080365,
		-0.980692, 0.029984, -0.193247,
		33.499218, 33.610851, 49.269058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889881, 34.082546, 49.767365>,  <34.185703, 33.589863, 49.404331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889881, 34.082546, 49.767365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587040, 33.829727, 49.701256>,  <33.405334, 33.678036, 49.661591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587040, 33.829727, 49.701256>,  <33.889881, 34.082546, 49.767365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587040, 33.829727, 49.701256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127848, -0.104747, 0.986247,
		-0.640669, 0.767815, -0.001503,
		-0.757098, -0.632050, -0.165272,
		33.359909, 33.640114, 49.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405193, 34.270206, 50.256546>,  <33.889881, 34.082546, 49.767365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405193, 34.270206, 50.256546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286572, 33.909199, 50.131634>,  <33.215397, 33.692593, 50.056686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286572, 33.909199, 50.131634>,  <33.405193, 34.270206, 50.256546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286572, 33.909199, 50.131634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235207, -0.247891, 0.939802,
		-0.925598, 0.352153, -0.138765,
		-0.296555, -0.902518, -0.312277,
		33.197605, 33.638443, 50.037952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800842, 34.085335, 50.602875>,  <33.405193, 34.270206, 50.256546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800842, 34.085335, 50.602875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947327, 33.733673, 50.480900>,  <33.035217, 33.522678, 50.407715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947327, 33.733673, 50.480900>,  <32.800842, 34.085335, 50.602875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947327, 33.733673, 50.480900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007687, -0.324829, 0.945741,
		-0.930500, -0.348685, -0.112198,
		0.366211, -0.879150, -0.304934,
		33.057190, 33.469929, 50.389420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400635, 33.656029, 50.868923>,  <32.800842, 34.085335, 50.602875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400635, 33.656029, 50.868923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.749645, 33.470665, 50.807014>,  <32.959049, 33.359447, 50.769867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.749645, 33.470665, 50.807014>,  <32.400635, 33.656029, 50.868923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749645, 33.470665, 50.807014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070149, -0.194684, 0.978354,
		-0.483512, -0.864493, -0.137358,
		0.872522, -0.463411, -0.154776,
		33.011402, 33.331642, 50.760582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.256538, 36.592457, 35.083012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596096, 36.383564, 35.115650>,  <36.799831, 36.258228, 35.135235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596096, 36.383564, 35.115650>,  <36.256538, 36.592457, 35.083012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596096, 36.383564, 35.115650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185098, -0.149109, 0.971342,
		-0.495096, -0.839669, -0.223241,
		0.848893, -0.522229, 0.081598,
		36.850765, 36.226894, 35.140129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090282, 35.854809, 35.434132>,  <36.256538, 36.592457, 35.083012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090282, 35.854809, 35.434132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464138, 35.985207, 35.490963>,  <36.688450, 36.063446, 35.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464138, 35.985207, 35.490963>,  <36.090282, 35.854809, 35.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464138, 35.985207, 35.490963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002092, -0.394481, 0.918902,
		0.355603, -0.859135, -0.368014,
		0.934635, 0.325994, 0.142076,
		36.744530, 36.083004, 35.533585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571186, 35.274506, 35.577850>,  <36.090282, 35.854809, 35.434132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571186, 35.274506, 35.577850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735661, 35.599003, 35.744133>,  <36.834347, 35.793701, 35.843903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735661, 35.599003, 35.744133>,  <36.571186, 35.274506, 35.577850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735661, 35.599003, 35.744133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181850, -0.373869, 0.909479,
		0.893228, -0.449562, -0.006205,
		0.411187, 0.811243, 0.415703,
		36.859016, 35.842377, 35.868843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682510, 35.046246, 36.183914>,  <36.571186, 35.274506, 35.577850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682510, 35.046246, 36.183914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707184, 35.439522, 36.252651>,  <36.721989, 35.675488, 36.293896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707184, 35.439522, 36.252651>,  <36.682510, 35.046246, 36.183914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707184, 35.439522, 36.252651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361479, -0.138479, 0.922039,
		0.930338, -0.118990, 0.346861,
		0.061681, 0.983191, 0.171844,
		36.725689, 35.734478, 36.304203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048336, 35.172020, 36.843025>,  <36.682510, 35.046246, 36.183914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048336, 35.172020, 36.843025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827805, 35.498177, 36.772404>,  <36.695484, 35.693871, 36.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827805, 35.498177, 36.772404>,  <37.048336, 35.172020, 36.843025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827805, 35.498177, 36.772404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538804, -0.186433, 0.821543,
		0.636963, 0.548070, 0.542122,
		-0.551333, 0.815390, -0.176552,
		36.662403, 35.742794, 36.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966263, 35.441765, 37.484200>,  <37.048336, 35.172020, 36.843025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966263, 35.441765, 37.484200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677551, 35.613045, 37.266693>,  <36.504326, 35.715813, 37.136189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677551, 35.613045, 37.266693>,  <36.966263, 35.441765, 37.484200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677551, 35.613045, 37.266693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572076, 0.073120, 0.816934,
		0.389568, 0.900723, 0.192184,
		-0.721779, 0.428196, -0.543767,
		36.461018, 35.741505, 37.103561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792618, 36.114307, 37.844463>,  <36.966263, 35.441765, 37.484200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792618, 36.114307, 37.844463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485035, 35.992649, 37.619537>,  <36.300484, 35.919655, 37.484581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485035, 35.992649, 37.619537>,  <36.792618, 36.114307, 37.844463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485035, 35.992649, 37.619537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562785, -0.095203, 0.821103,
		-0.303269, 0.947856, -0.097962,
		-0.768961, -0.304147, -0.562311,
		36.254345, 35.901405, 37.450844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312664, 36.496361, 37.995052>,  <36.792618, 36.114307, 37.844463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312664, 36.496361, 37.995052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109615, 36.190273, 37.836678>,  <35.987785, 36.006622, 37.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109615, 36.190273, 37.836678>,  <36.312664, 36.496361, 37.995052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109615, 36.190273, 37.836678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542482, -0.073143, 0.836877,
		-0.669350, 0.639607, -0.377986,
		-0.507626, -0.765214, -0.395934,
		35.957329, 35.960709, 37.717896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669476, 36.747070, 38.137928>,  <36.312664, 36.496361, 37.995052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669476, 36.747070, 38.137928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632385, 36.355350, 38.065968>,  <35.610130, 36.120319, 38.022789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632385, 36.355350, 38.065968>,  <35.669476, 36.747070, 38.137928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632385, 36.355350, 38.065968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554397, -0.099306, 0.826307,
		-0.827071, 0.176358, -0.533715,
		-0.092724, -0.979304, -0.179906,
		35.604568, 36.061558, 38.011997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928986, 36.578606, 38.243549>,  <35.669476, 36.747070, 38.137928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928986, 36.578606, 38.243549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128780, 36.235703, 38.293549>,  <35.248657, 36.029961, 38.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128780, 36.235703, 38.293549>,  <34.928986, 36.578606, 38.243549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128780, 36.235703, 38.293549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443452, -0.129057, 0.886958,
		-0.744218, -0.498456, -0.444614,
		0.499490, -0.857255, 0.124995,
		35.278625, 35.978527, 38.331047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410339, 36.043198, 38.338486>,  <34.928986, 36.578606, 38.243549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410339, 36.043198, 38.338486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757542, 35.934849, 38.504951>,  <34.965862, 35.869839, 38.604832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757542, 35.934849, 38.504951>,  <34.410339, 36.043198, 38.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757542, 35.934849, 38.504951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440936, -0.035067, 0.896853,
		-0.228342, -0.961975, -0.149877,
		0.868006, -0.270876, 0.416163,
		35.017944, 35.853588, 38.629799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189365, 35.521393, 38.743637>,  <34.410339, 36.043198, 38.338486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189365, 35.521393, 38.743637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554001, 35.620651, 38.874744>,  <34.772781, 35.680206, 38.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554001, 35.620651, 38.874744>,  <34.189365, 35.521393, 38.743637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554001, 35.620651, 38.874744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261798, -0.264334, 0.928219,
		0.316977, -0.931960, -0.175998,
		0.911585, 0.248149, 0.327773,
		34.827477, 35.695095, 38.973076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749031, 34.959400, 38.891678>,  <34.189365, 35.521393, 38.743637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749031, 34.959400, 38.891678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361137, 35.014393, 38.810959>,  <33.128403, 35.047390, 38.762527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361137, 35.014393, 38.810959>,  <33.749031, 34.959400, 38.891678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361137, 35.014393, 38.810959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225880, 0.191220, -0.955203,
		-0.092740, -0.971870, -0.216487,
		-0.969730, 0.137486, -0.201793,
		33.070217, 35.055637, 38.750420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618366, 34.569305, 38.264576>,  <33.749031, 34.959400, 38.891678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618366, 34.569305, 38.264576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323643, 34.838657, 38.288830>,  <33.146809, 35.000267, 38.303383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323643, 34.838657, 38.288830>,  <33.618366, 34.569305, 38.264576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323643, 34.838657, 38.288830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178857, 0.280618, -0.943008,
		-0.652013, -0.683973, -0.327200,
		-0.736810, 0.673376, 0.060633,
		33.102600, 35.040668, 38.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184200, 34.517822, 37.622967>,  <33.618366, 34.569305, 38.264576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184200, 34.517822, 37.622967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053627, 34.867233, 37.767403>,  <32.975285, 35.076881, 37.854065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053627, 34.867233, 37.767403>,  <33.184200, 34.517822, 37.622967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053627, 34.867233, 37.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039782, 0.368982, -0.928585,
		-0.944383, -0.317485, -0.085697,
		-0.326432, 0.873530, 0.361091,
		32.955696, 35.129292, 37.875729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474808, 34.519947, 37.474194>,  <33.184200, 34.517822, 37.622967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474808, 34.519947, 37.474194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647991, 34.878464, 37.512566>,  <32.751900, 35.093575, 37.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647991, 34.878464, 37.512566>,  <32.474808, 34.519947, 37.474194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647991, 34.878464, 37.512566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208757, 0.203227, -0.956619,
		-0.876908, 0.394150, 0.275096,
		0.432958, 0.896295, 0.095930,
		32.777878, 35.147354, 37.541344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989038, 34.740467, 37.012047>,  <32.474808, 34.519947, 37.474194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989038, 34.740467, 37.012047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283230, 34.999405, 37.092060>,  <32.459743, 35.154770, 37.140068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283230, 34.999405, 37.092060>,  <31.989038, 34.740467, 37.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283230, 34.999405, 37.092060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222097, 0.509258, -0.831462,
		-0.640113, 0.567096, 0.518322,
		0.735478, 0.647348, 0.200032,
		32.503872, 35.193607, 37.152069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687536, 35.363842, 36.841011>,  <31.989038, 34.740467, 37.012047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687536, 35.363842, 36.841011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086151, 35.379498, 36.811668>,  <32.325321, 35.388889, 36.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086151, 35.379498, 36.811668>,  <31.687536, 35.363842, 36.841011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086151, 35.379498, 36.811668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082123, 0.325304, -0.942037,
		-0.013004, 0.944799, 0.327391,
		0.996537, 0.039136, -0.073359,
		32.385113, 35.391239, 36.789661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805487, 36.003819, 36.484688>,  <31.687536, 35.363842, 36.841011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805487, 36.003819, 36.484688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136986, 35.787941, 36.425488>,  <32.335884, 35.658413, 36.389969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136986, 35.787941, 36.425488>,  <31.805487, 36.003819, 36.484688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136986, 35.787941, 36.425488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111953, 0.419005, -0.901056,
		0.548310, 0.730179, 0.407670,
		0.828748, -0.539698, -0.148000,
		32.385609, 35.626030, 36.381088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294365, 36.501110, 36.330433>,  <31.805487, 36.003819, 36.484688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294365, 36.501110, 36.330433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407116, 36.146618, 36.183388>,  <32.474766, 35.933922, 36.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407116, 36.146618, 36.183388>,  <32.294365, 36.501110, 36.330433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407116, 36.146618, 36.183388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005348, 0.384592, -0.923071,
		0.959437, 0.258223, 0.113146,
		0.281873, -0.886234, -0.367611,
		32.491676, 35.880749, 36.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750004, 36.716438, 35.933056>,  <32.294365, 36.501110, 36.330433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750004, 36.716438, 35.933056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676254, 36.342663, 35.811180>,  <32.632004, 36.118397, 35.738056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676254, 36.342663, 35.811180>,  <32.750004, 36.716438, 35.933056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676254, 36.342663, 35.811180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177978, 0.273137, -0.945367,
		0.966607, -0.228531, 0.115949,
		-0.184375, -0.934435, -0.304690,
		32.620941, 36.062332, 35.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225868, 36.542675, 35.405354>,  <32.750004, 36.716438, 35.933056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225868, 36.542675, 35.405354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943573, 36.270145, 35.327652>,  <32.774197, 36.106628, 35.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943573, 36.270145, 35.327652>,  <33.225868, 36.542675, 35.405354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943573, 36.270145, 35.327652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066845, 0.208926, -0.975644,
		0.705314, -0.701532, -0.101904,
		-0.705736, -0.681324, -0.194252,
		32.731853, 36.065750, 35.269375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494152, 36.166363, 34.775898>,  <33.225868, 36.542675, 35.405354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494152, 36.166363, 34.775898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103729, 36.079590, 34.769630>,  <32.869476, 36.027527, 34.765869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103729, 36.079590, 34.769630>,  <33.494152, 36.166363, 34.775898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103729, 36.079590, 34.769630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011310, 0.122563, -0.992396,
		0.217209, -0.968461, -0.122083,
		-0.976060, -0.216938, -0.015669,
		32.810909, 36.014511, 34.764931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332253, 35.559139, 34.366432>,  <33.494152, 36.166363, 34.775898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332253, 35.559139, 34.366432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023819, 35.813831, 34.366405>,  <32.838760, 35.966648, 34.366390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023819, 35.813831, 34.366405>,  <33.332253, 35.559139, 34.366432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023819, 35.813831, 34.366405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002514, -0.003144, -0.999992,
		-0.636730, -0.771077, 0.004025,
		-0.771083, 0.636734, -0.000064,
		32.792496, 36.004852, 34.366386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874737, 35.201111, 34.752499>,  <33.332253, 35.559139, 34.366432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874737, 35.201111, 34.752499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959396, 34.818142, 34.673954>,  <34.010193, 34.588360, 34.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959396, 34.818142, 34.673954>,  <33.874737, 35.201111, 34.752499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959396, 34.818142, 34.673954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670080, 0.288406, -0.683970,
		0.711477, 0.013181, 0.702586,
		0.211645, -0.957417, -0.196362,
		34.022888, 34.530918, 34.615044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582664, 34.840511, 34.930107>,  <33.874737, 35.201111, 34.752499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582664, 34.840511, 34.930107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426331, 34.705444, 34.587593>,  <34.332531, 34.624405, 34.382084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426331, 34.705444, 34.587593>,  <34.582664, 34.840511, 34.930107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426331, 34.705444, 34.587593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828695, 0.275835, -0.487010,
		0.400643, -0.899941, 0.172020,
		-0.390832, -0.337670, -0.856289,
		34.309082, 34.604145, 34.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064419, 34.513840, 34.560417>,  <34.582664, 34.840511, 34.930107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064419, 34.513840, 34.560417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817387, 34.586040, 34.254211>,  <34.669167, 34.629360, 34.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817387, 34.586040, 34.254211>,  <35.064419, 34.513840, 34.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817387, 34.586040, 34.254211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785635, 0.187474, -0.589603,
		0.037087, -0.965542, -0.257592,
		-0.617578, 0.180507, -0.765516,
		34.632114, 34.640194, 34.024555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110706, 33.950970, 34.133396>,  <35.064419, 34.513840, 34.560417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110706, 33.950970, 34.133396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498180, 34.030262, 34.193195>,  <35.730667, 34.077839, 34.229076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498180, 34.030262, 34.193195>,  <35.110706, 33.950970, 34.133396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498180, 34.030262, 34.193195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096709, 0.253327, -0.962535,
		-0.228678, 0.946852, 0.226223,
		0.968687, 0.198232, 0.149499,
		35.788788, 34.089733, 34.238045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786747, 33.783211, 33.791695>,  <35.110706, 33.950970, 34.133396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786747, 33.783211, 33.791695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104771, 33.577915, 33.920982>,  <36.295586, 33.454739, 33.998554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104771, 33.577915, 33.920982>,  <35.786747, 33.783211, 33.791695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104771, 33.577915, 33.920982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533081, -0.337083, 0.776015,
		-0.289330, -0.789277, -0.541599,
		0.795055, -0.513241, 0.323221,
		36.343288, 33.423943, 34.017948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468925, 33.097950, 33.822468>,  <35.786747, 33.783211, 33.791695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468925, 33.097950, 33.822468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780937, 33.142788, 34.068718>,  <35.968143, 33.169689, 34.216469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780937, 33.142788, 34.068718>,  <35.468925, 33.097950, 33.822468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780937, 33.142788, 34.068718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519305, -0.432924, 0.736817,
		0.349110, -0.894434, -0.279483,
		0.780029, 0.112093, 0.615622,
		36.014946, 33.176414, 34.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454014, 32.541733, 34.127327>,  <35.468925, 33.097950, 33.822468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454014, 32.541733, 34.127327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700062, 32.744267, 34.369072>,  <35.847691, 32.865788, 34.514118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700062, 32.744267, 34.369072>,  <35.454014, 32.541733, 34.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700062, 32.744267, 34.369072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482213, -0.364847, 0.796465,
		0.623778, -0.781352, 0.019738,
		0.615119, 0.506336, 0.604362,
		35.884598, 32.896168, 34.550381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425049, 32.092747, 34.684616>,  <35.454014, 32.541733, 34.127327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425049, 32.092747, 34.684616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575905, 32.437698, 34.819710>,  <35.666416, 32.644669, 34.900768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575905, 32.437698, 34.819710>,  <35.425049, 32.092747, 34.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575905, 32.437698, 34.819710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314862, -0.223559, 0.922433,
		0.870993, -0.454225, 0.187219,
		0.377138, 0.862381, 0.337736,
		35.689045, 32.696411, 34.921032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727581, 31.887197, 35.292908>,  <35.425049, 32.092747, 34.684616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727581, 31.887197, 35.292908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665623, 32.278450, 35.348427>,  <35.628448, 32.513203, 35.381737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665623, 32.278450, 35.348427>,  <35.727581, 31.887197, 35.292908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665623, 32.278450, 35.348427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320350, -0.182627, 0.929528,
		0.934550, 0.099514, 0.341633,
		-0.154893, 0.978133, 0.138795,
		35.619156, 32.571892, 35.390064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132812, 32.123970, 35.874454>,  <35.727581, 31.887197, 35.292908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132812, 32.123970, 35.874454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828228, 32.379974, 35.833340>,  <35.645477, 32.533577, 35.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828228, 32.379974, 35.833340>,  <36.132812, 32.123970, 35.874454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828228, 32.379974, 35.833340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169244, -0.043226, 0.984626,
		0.625730, 0.767147, 0.141234,
		-0.761458, 0.640013, -0.102787,
		35.599792, 32.571980, 35.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226341, 32.748936, 36.331585>,  <36.132812, 32.123970, 35.874454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226341, 32.748936, 36.331585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835678, 32.682003, 36.277699>,  <35.601280, 32.641842, 36.245369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835678, 32.682003, 36.277699>,  <36.226341, 32.748936, 36.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835678, 32.682003, 36.277699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121905, -0.084633, 0.988927,
		-0.176879, 0.982261, 0.062259,
		-0.976654, -0.167331, -0.134713,
		35.542683, 32.631805, 36.237286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962902, 33.066269, 36.865688>,  <36.226341, 32.748936, 36.331585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962902, 33.066269, 36.865688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693104, 32.798042, 36.742146>,  <35.531223, 32.637108, 36.668018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693104, 32.798042, 36.742146>,  <35.962902, 33.066269, 36.865688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693104, 32.798042, 36.742146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223893, -0.212861, 0.951085,
		-0.703511, 0.710654, -0.006562,
		-0.674495, -0.670568, -0.308861,
		35.490757, 32.596870, 36.649487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486401, 32.928444, 37.527618>,  <35.962902, 33.066269, 36.865688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486401, 32.928444, 37.527618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339249, 32.644230, 37.287682>,  <35.250957, 32.473701, 37.143719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339249, 32.644230, 37.287682>,  <35.486401, 32.928444, 37.527618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339249, 32.644230, 37.287682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305189, -0.517084, 0.799677,
		-0.878364, 0.477250, -0.026622,
		-0.367880, -0.710532, -0.599840,
		35.228886, 32.431068, 37.107731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728420, 32.822041, 37.685272>,  <35.486401, 32.928444, 37.527618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728420, 32.822041, 37.685272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868954, 32.487736, 37.516479>,  <34.953274, 32.287151, 37.415203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868954, 32.487736, 37.516479>,  <34.728420, 32.822041, 37.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868954, 32.487736, 37.516479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321234, -0.530962, 0.784148,
		-0.879417, -0.139942, -0.455019,
		0.351333, -0.835761, -0.421983,
		34.974354, 32.237007, 37.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171646, 32.386559, 37.616566>,  <34.728420, 32.822041, 37.685272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171646, 32.386559, 37.616566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474762, 32.125786, 37.627407>,  <34.656631, 31.969322, 37.633911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474762, 32.125786, 37.627407>,  <34.171646, 32.386559, 37.616566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474762, 32.125786, 37.627407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395233, -0.425563, 0.814056,
		-0.519175, -0.627597, -0.580154,
		0.757791, -0.651934, 0.027106,
		34.702099, 31.930206, 37.635540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874332, 31.817438, 37.819550>,  <34.171646, 32.386559, 37.616566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874332, 31.817438, 37.819550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263592, 31.805500, 37.910839>,  <34.497147, 31.798336, 37.965611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263592, 31.805500, 37.910839>,  <33.874332, 31.817438, 37.819550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263592, 31.805500, 37.910839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193785, -0.641256, 0.742454,
		0.124188, -0.766746, -0.629824,
		0.973152, -0.029847, 0.228220,
		34.555538, 31.796545, 37.979305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004608, 31.121351, 37.884937>,  <33.874332, 31.817438, 37.819550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004608, 31.121351, 37.884937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313438, 31.308264, 38.057236>,  <34.498737, 31.420410, 38.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313438, 31.308264, 38.057236>,  <34.004608, 31.121351, 37.884937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313438, 31.308264, 38.057236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058505, -0.622647, 0.780313,
		0.632830, -0.627663, -0.453393,
		0.772078, 0.467280, 0.430751,
		34.545063, 31.448448, 38.186462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433079, 30.543663, 38.213150>,  <34.004608, 31.121351, 37.884937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433079, 30.543663, 38.213150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567070, 30.875969, 38.390965>,  <34.647465, 31.075354, 38.497654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567070, 30.875969, 38.390965>,  <34.433079, 30.543663, 38.213150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567070, 30.875969, 38.390965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007654, -0.474182, 0.880393,
		0.942194, -0.291511, -0.165199,
		0.334979, 0.830766, 0.444541,
		34.667564, 31.125198, 38.524326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079903, 30.372808, 38.577713>,  <34.433079, 30.543663, 38.213150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079903, 30.372808, 38.577713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949844, 30.704903, 38.758816>,  <34.871811, 30.904160, 38.867477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949844, 30.704903, 38.758816>,  <35.079903, 30.372808, 38.577713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949844, 30.704903, 38.758816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010034, -0.481777, 0.876237,
		0.945610, 0.280362, 0.164979,
		-0.325147, 0.830234, 0.452760,
		34.852299, 30.953972, 38.894642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534981, 30.504457, 39.215599>,  <35.079903, 30.372808, 38.577713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534981, 30.504457, 39.215599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190411, 30.701279, 39.265938>,  <34.983669, 30.819372, 39.296143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190411, 30.701279, 39.265938>,  <35.534981, 30.504457, 39.215599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190411, 30.701279, 39.265938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069193, -0.359171, 0.930703,
		0.503157, 0.793019, 0.343444,
		-0.861421, 0.492054, 0.125848,
		34.931984, 30.848894, 39.303692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670807, 30.888975, 39.754333>,  <35.534981, 30.504457, 39.215599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670807, 30.888975, 39.754333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271980, 30.858688, 39.749779>,  <35.032684, 30.840517, 39.747047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271980, 30.858688, 39.749779>,  <35.670807, 30.888975, 39.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271980, 30.858688, 39.749779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010263, -0.015227, 0.999831,
		-0.075878, 0.997013, 0.014405,
		-0.997064, -0.075717, -0.011388,
		34.972862, 30.835974, 39.746361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452026, 31.125563, 40.358212>,  <35.670807, 30.888975, 39.754333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452026, 31.125563, 40.358212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126850, 30.910940, 40.267677>,  <34.931744, 30.782167, 40.213356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126850, 30.910940, 40.267677>,  <35.452026, 31.125563, 40.358212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126850, 30.910940, 40.267677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218828, -0.078715, 0.972583,
		-0.539662, 0.840185, -0.053422,
		-0.812945, -0.536557, -0.226336,
		34.882965, 30.749973, 40.199776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917965, 31.545353, 40.636478>,  <35.452026, 31.125563, 40.358212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917965, 31.545353, 40.636478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794903, 31.166868, 40.596409>,  <34.721066, 30.939777, 40.572369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794903, 31.166868, 40.596409>,  <34.917965, 31.545353, 40.636478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794903, 31.166868, 40.596409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080961, -0.078865, 0.993592,
		-0.948049, 0.313790, -0.052343,
		-0.307651, -0.946212, -0.100172,
		34.702606, 30.883005, 40.566357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606144, 31.443680, 41.232052>,  <34.917965, 31.545353, 40.636478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606144, 31.443680, 41.232052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563705, 31.074411, 41.084270>,  <34.538242, 30.852850, 40.995602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563705, 31.074411, 41.084270>,  <34.606144, 31.443680, 41.232052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563705, 31.074411, 41.084270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242421, -0.336325, 0.910010,
		-0.964352, 0.186111, -0.188114,
		-0.106095, -0.923173, -0.369453,
		34.531876, 30.797459, 40.973434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095871, 31.277271, 41.604073>,  <34.606144, 31.443680, 41.232052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095871, 31.277271, 41.604073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278843, 30.956009, 41.451389>,  <34.388626, 30.763252, 41.359779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278843, 30.956009, 41.451389>,  <34.095871, 31.277271, 41.604073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278843, 30.956009, 41.451389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257535, -0.530503, 0.807615,
		-0.851136, -0.271125, -0.449509,
		0.457430, -0.803155, -0.381706,
		34.416073, 30.715063, 41.336876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550900, 30.699699, 41.595005>,  <34.095871, 31.277271, 41.604073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550900, 30.699699, 41.595005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922054, 30.551943, 41.574699>,  <34.144749, 30.463289, 41.562515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922054, 30.551943, 41.574699>,  <33.550900, 30.699699, 41.595005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922054, 30.551943, 41.574699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220900, -0.654294, 0.723258,
		-0.300381, -0.659887, -0.688709,
		0.927887, -0.369389, -0.050768,
		34.200420, 30.441126, 41.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491665, 29.976772, 41.552071>,  <33.550900, 30.699699, 41.595005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491665, 29.976772, 41.552071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858917, 30.034342, 41.699760>,  <34.079269, 30.068884, 41.788376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858917, 30.034342, 41.699760>,  <33.491665, 29.976772, 41.552071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858917, 30.034342, 41.699760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204758, -0.625412, 0.752950,
		0.339284, -0.766906, -0.544739,
		0.918129, 0.143924, 0.369223,
		34.134357, 30.077518, 41.810528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668129, 29.289915, 41.662266>,  <33.491665, 29.976772, 41.552071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668129, 29.289915, 41.662266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906967, 29.511395, 41.894436>,  <34.050270, 29.644281, 42.033737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906967, 29.511395, 41.894436>,  <33.668129, 29.289915, 41.662266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906967, 29.511395, 41.894436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112220, -0.658796, 0.743905,
		0.794279, -0.509320, -0.331230,
		0.597099, 0.553697, 0.580424,
		34.086098, 29.677504, 42.068562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919010, 28.815176, 42.042881>,  <33.668129, 29.289915, 41.662266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919010, 28.815176, 42.042881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056980, 29.139496, 42.232040>,  <34.139763, 29.334087, 42.345535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056980, 29.139496, 42.232040>,  <33.919010, 28.815176, 42.042881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056980, 29.139496, 42.232040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037177, -0.515224, 0.856249,
		0.937894, -0.277760, -0.207856,
		0.344924, 0.810798, 0.472899,
		34.160458, 29.382736, 42.373909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586105, 28.617079, 42.534225>,  <33.919010, 28.815176, 42.042881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586105, 28.617079, 42.534225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372410, 28.929430, 42.663727>,  <34.244194, 29.116840, 42.741428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372410, 28.929430, 42.663727>,  <34.586105, 28.617079, 42.534225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372410, 28.929430, 42.663727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124539, -0.451516, 0.883529,
		0.836109, 0.431696, 0.338468,
		-0.534239, 0.780879, 0.323753,
		34.212139, 29.163694, 42.760853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339001, 28.630430, 42.315952>,  <34.586105, 28.617079, 42.534225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339001, 28.630430, 42.315952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676041, 28.478613, 42.468773>,  <35.878265, 28.387524, 42.560467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676041, 28.478613, 42.468773>,  <35.339001, 28.630430, 42.315952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676041, 28.478613, 42.468773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502411, 0.298563, -0.811445,
		0.193909, 0.875676, 0.442256,
		0.842604, -0.379541, 0.382055,
		35.928822, 28.364750, 42.583389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895519, 29.202700, 42.297215>,  <35.339001, 28.630430, 42.315952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895519, 29.202700, 42.297215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090359, 28.853724, 42.313152>,  <36.207260, 28.644339, 42.322716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090359, 28.853724, 42.313152>,  <35.895519, 29.202700, 42.297215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090359, 28.853724, 42.313152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470302, 0.223591, -0.853711,
		0.735902, 0.434578, 0.519221,
		0.487097, -0.872439, 0.039841,
		36.236488, 28.591991, 42.325104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625130, 29.310282, 42.262165>,  <35.895519, 29.202700, 42.297215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625130, 29.310282, 42.262165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552002, 28.937073, 42.138199>,  <36.508125, 28.713148, 42.063820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552002, 28.937073, 42.138199>,  <36.625130, 29.310282, 42.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552002, 28.937073, 42.138199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274903, 0.254141, -0.927276,
		0.943931, -0.254718, 0.210030,
		-0.182816, -0.933023, -0.309914,
		36.497158, 28.657166, 42.045223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217251, 29.007034, 41.962269>,  <36.625130, 29.310282, 42.262165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217251, 29.007034, 41.962269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947704, 28.751997, 41.812931>,  <36.785976, 28.598974, 41.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947704, 28.751997, 41.812931>,  <37.217251, 29.007034, 41.962269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947704, 28.751997, 41.812931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321340, 0.202095, -0.925147,
		0.665318, -0.743392, 0.068700,
		-0.673864, -0.637593, -0.373340,
		36.745544, 28.560719, 41.700928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561165, 28.546238, 41.633152>,  <37.217251, 29.007034, 41.962269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561165, 28.546238, 41.633152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189400, 28.557867, 41.485996>,  <36.966339, 28.564844, 41.397701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189400, 28.557867, 41.485996>,  <37.561165, 28.546238, 41.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189400, 28.557867, 41.485996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346308, 0.413182, -0.842230,
		0.127523, -0.910184, -0.394085,
		-0.929413, 0.029071, -0.367894,
		36.910576, 28.566587, 41.375629>
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
